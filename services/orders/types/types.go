package types

import (
	"context"

	"github.com/phildehovre/go-grpc/services/common/genproto/orders"
)

type OrderService interface {
	CreateOrder(context.Context, *orders.Order) error
}
