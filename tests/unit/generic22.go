package main

func main() {
	s := &S{0}

	f(s, nil)
}

func f[T any](a *T, b *T) {

}

type S struct{ i int }
