package repository

import (
	"context"
)

// Repository is a generic CRUD interface.
type Repository[T any, ID any] interface {
	GetAll(ctx context.Context) ([]T, error)
	GetByID(ctx context.Context, id ID) (*T, error)
	Create(ctx context.Context, entity *T) error
	Update(ctx context.Context, entity *T) error
	Delete(ctx context.Context, id ID) error
}
