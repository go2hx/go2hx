package main

func main() {
	x := Pointer[int]{10}
	x.load()
}

type Pointer[T any] struct {
	v T
}

func (p Pointer[T]) load() T {
	return p.v
}
