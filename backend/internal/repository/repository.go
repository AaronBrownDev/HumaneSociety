package repository

import (
	"context"
)

type Repository[T any, ID any] interface {
	GetAll(ctx context.Context) ([]T, error)
	GetByID(ctx context.Context, id ID) (*T, error)
	Create(ctx context.Context, dog *T) error
	Update(ctx context.Context, dog *T) error
	Delete(ctx context.Context, id ID) error
}

