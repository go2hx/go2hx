package main

type A[T int64 | float32] int

func (a *A[T]) add() {}

func main() {
	var x A[int64]
	x = -2147483647 - 2
	if x != -2147483649 {
		panic("incorrect value")
	}
	x.add()
}
