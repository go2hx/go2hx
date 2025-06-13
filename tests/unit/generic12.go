package main

func main() {
	Contains([]int{10}, 10)
}

// Contains reports whether v is present in s.
func Contains[S []E, E int](s S, v E) bool {
	return true
}
