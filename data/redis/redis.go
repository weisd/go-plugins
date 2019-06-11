package redis

import (
	"github.com/micro/go-micro/data"
	"github.com/micro/go-micro/options"
	redis "gopkg.in/redis.v3"
)

type rkv struct {
	options.Options
	Client *redis.Client
}

func (r *rkv) Read(key string) (*data.Record, error) {
	val, err := r.Client.Get(key).Bytes()

	if err != nil && err == redis.Nil {
		return nil, data.ErrNotFound
	} else if err != nil {
		return nil, err
	}

	if val == nil {
		return nil, data.ErrNotFound
	}

	d, err := r.Client.TTL(key).Result()
	if err != nil {
		return nil, err
	}

	return &data.Record{
		Key:        key,
		Value:      val,
		Expiration: d,
	}, nil
}

func (r *rkv) Delete(key string) error {
	return r.Client.Del(key).Err()
}

func (r *rkv) Write(record *data.Record) error {
	return r.Client.Set(record.Key, record.Value, record.Expiration).Err()
}

func (r *rkv) Dump() ([]*data.Record, error) {
	keys, err := r.Client.Keys("*").Result()
	if err != nil {
		return nil, err
	}
	var vals []*data.Record
	for _, k := range keys {
		i, err := r.Read(k)
		if err != nil {
			return nil, err
		}
		vals = append(vals, i)
	}
	return vals, nil
}

func (r *rkv) String() string {
	return "redis"
}

func NewData(opts ...options.Option) data.Data {
	options := options.NewOptions(opts...)

	var nodes []string

	if n, ok := options.Values().Get("data.nodes"); ok {
		nodes = n.([]string)
	}

	if len(nodes) == 0 {
		nodes = []string{"127.0.0.1:6379"}
	}

	return &rkv{
		Options: options,
		Client: redis.NewClient(&redis.Options{
			Addr:     nodes[0],
			Password: "", // no password set
			DB:       0,  // use default DB
		}),
	}
}
