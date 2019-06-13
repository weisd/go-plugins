package snssqs

import (
	"github.com/micro/go-micro/broker"
)

type maxMessagesKey struct{}
type visibilityTimeoutKey struct{}
type waitTimeSecondsKey struct{}

// MaxReceiveMessages indicates how many messages a receive operation should pull
// during any single call
func MaxReceiveMessages(max int64) broker.SubscribeOption {
	return setSubscribeOption(maxMessagesKey{}, max)
}

// VisibilityTimeout controls how long a message is hidden from other queue consumers
// before being put back. If a consumer does not delete the message, it will be put back
// even if it was "processed"
func VisibilityTimeout(seconds int64) broker.SubscribeOption {
	return setSubscribeOption(visibilityTimeoutKey{}, seconds)
}

// WaitTimeSeconds controls the length of long polling for available messages
func WaitTimeSeconds(seconds int64) broker.SubscribeOption {
	return setSubscribeOption(waitTimeSecondsKey{}, seconds)
}
