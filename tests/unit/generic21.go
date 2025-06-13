package main

func main() {
	s := &S{0}

	f(s)
}

func f[T any](a *T) {

}

type S struct{ i int }
