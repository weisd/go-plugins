module github.com/micro/go-plugins

require (
	cloud.google.com/go v0.39.0
	contrib.go.opencensus.io/resource v0.1.0 // indirect
	github.com/Shopify/sarama v1.22.1
	github.com/afex/hystrix-go v0.0.0-20180502004556-fa1af6a1f4f5
	github.com/anacrolix/utp v0.0.0-20180219060659-9e0e1d1d0572
	github.com/apache/arrow/go/arrow v0.0.0-20190530181510-c327af0d926c // indirect
	github.com/asim/go-awsxray v0.0.0-20161209120537-0d8a60b6e205
	github.com/asim/go-bson v0.0.0-20160318195205-84522947cabd
	github.com/aws/aws-sdk-go v1.19.41
	github.com/bwmarrin/discordgo v0.19.0
	github.com/chzyer/logex v1.1.10 // indirect
	github.com/chzyer/test v0.0.0-20180213035817-a1ea475d72b1 // indirect
	github.com/coreos/etcd v3.3.13+incompatible
	github.com/eclipse/paho.mqtt.golang v1.2.0
	github.com/forestgiant/sliceutil v0.0.0-20160425183142-94783f95db6c
	github.com/franela/goblin v0.0.0-20181003173013-ead4ad1d2727 // indirect
	github.com/go-log/log v0.1.0
	github.com/go-stomp/stomp v2.0.3+incompatible
	github.com/go-telegram-bot-api/telegram-bot-api v4.6.4+incompatible // indirect
	github.com/golang/protobuf v1.3.1
	github.com/gomodule/redigo v2.0.0+incompatible
	github.com/google/uuid v1.1.1
	github.com/gorilla/websocket v1.4.0
	github.com/hashicorp/vault v1.1.2
	github.com/hudl/fargo v1.2.0
	github.com/json-iterator/go v1.1.6
	github.com/juju/ratelimit v1.0.1
	github.com/lusis/go-slackbot v0.0.0-20180109053408-401027ccfef5 // indirect
	github.com/micro/cli v0.2.0
	github.com/micro/examples v0.1.0
	github.com/micro/go-bot v1.1.0
	github.com/micro/go-config v1.1.0
	github.com/micro/go-log v0.1.0
	github.com/micro/go-micro v1.2.0
	github.com/micro/go-rcache v0.3.0
	github.com/micro/micro v1.2.0
	github.com/micro/util v0.2.0
	github.com/minio/highwayhash v1.0.0
	github.com/mitchellh/hashstructure v1.0.0
	github.com/nats-io/go-nats v1.7.2
	github.com/nats-io/go-nats-streaming v0.4.5
	github.com/nats-io/nats.go v1.7.3-0.20190520162205-769c8a138276
	github.com/nats-io/stan.go v0.4.5
	github.com/nsqio/go-nsq v1.0.7
	github.com/op/go-logging v0.0.0-20160315200505-970db520ece7
	github.com/opentracing/opentracing-go v1.1.0
	github.com/prometheus/client_golang v0.9.3
	github.com/prometheus/client_model v0.0.0-20190129233127-fd36f4220a90
	github.com/prometheus/procfs v0.0.1 // indirect
	github.com/rs/cors v1.6.0
	github.com/samuel/go-zookeeper v0.0.0-20180130194729-c4fab1ac1bec
	github.com/sirupsen/logrus v1.4.2
	github.com/sony/gobreaker v0.4.1
	github.com/streadway/amqp v0.0.0-20190404075320-75d898a42a94
	github.com/stretchr/testify v1.3.0
	github.com/tinylib/msgp v1.1.0
	github.com/vmware/vic v1.5.2 // indirect
	go.etcd.io/etcd v3.3.13+incompatible
	go.opencensus.io v0.22.0
	go.uber.org/ratelimit v0.0.0-20180316092928-c15da0234277
	gocloud.dev v0.15.0
	gocloud.dev/pubsub/rabbitpubsub v0.15.0
	golang.org/x/build v0.0.0-20190530221331-2759dfe1c117 // indirect
	golang.org/x/crypto v0.0.0-20190530122614-20be4c3c3ed5 // indirect
	golang.org/x/net v0.0.0-20190522155817-f3200d17e092
	golang.org/x/oauth2 v0.0.0-20190523182746-aaccbc9213b0
	golang.org/x/sys v0.0.0-20190530182044-ad28b68e88f1 // indirect
	golang.org/x/tools v0.0.0-20190530215528-75312fb06703 // indirect
	google.golang.org/api v0.5.0
	google.golang.org/genproto v0.0.0-20190530194941-fb225487d101
	google.golang.org/grpc v1.21.0
	gopkg.in/DataDog/dd-trace-go.v1 v1.14.0
	gopkg.in/telegram-bot-api.v4 v4.6.4
	honnef.co/go/tools v0.0.0-20190530170028-a1efa522b896 // indirect
	k8s.io/api v0.0.0-20190528154508-67ef80593b24
	k8s.io/apimachinery v0.0.0-20190528154326-e59c2fb0a8e5
	k8s.io/client-go v11.0.0+incompatible
	k8s.io/kube-openapi v0.0.0-20190530181030-b52b5b0f5a7c // indirect
)

exclude (
	github.com/Sirupsen/logrus v1.1.0
	github.com/Sirupsen/logrus v1.1.1
	github.com/Sirupsen/logrus v1.2.0
	github.com/Sirupsen/logrus v1.3.0
	github.com/Sirupsen/logrus v1.4.0
	github.com/Sirupsen/logrus v1.4.1
	github.com/Sirupsen/logrus v1.4.2
	sourcegraph.com/sourcegraph/go-diff v0.5.1
)

replace (
	github.com/golang/lint => github.com/golang/lint v0.0.0-20190227174305-8f45f776aaf1
	github.com/testcontainers/testcontainer-go => github.com/testcontainers/testcontainers-go v0.0.0-20181115231424-8e868ca12c0f
	github.com/ugorji/go/codec => github.com/ugorji/go/codec v0.0.0-20181204163529-d75b2dcb6bc8
)
