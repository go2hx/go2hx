package main

type A[T int | float32] struct {
	x T
}

type K[T any] struct {
	y T
}

func (a *A[T]) add() {
	a.x = a.x + 10
}

func main() {
	x := A[int]{}
	x.add()
	_ = x.x

	y := K[struct{}]{}
	_ = y
}
