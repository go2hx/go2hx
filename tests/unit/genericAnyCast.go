package main

type Generic[T any] struct{}

func main() {
	f(new(Generic[int]))
}

func f(a any) {

}
