package main

func main() {
	type S []int
	s2 := S{4, 5, 6}
	apply(s2, Reverse)
}

func apply[T any](v T, f func(T)) {
	f(v)
}

// Reverse reverses the elements of the slice in place.
func Reverse[S ~[]E, E any](s S) {
	for i, j := 0, len(s)-1; i < j; i, j = i+1, j-1 {
		s[i], s[j] = s[j], s[i]
	}
}
