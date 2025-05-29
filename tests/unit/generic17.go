package main

func main() {
	var _ = Pointer[int]{}
}

type Pointer[T any] struct {
	// Mention *T in a field to disallow conversion between Pointer types.
	// See go.dev/issue/56603 for more details.
	// Use *T, not T, to avoid spurious recursive type definition errors.
	_ [0]*T
}
