package main

func main() {
	x := equal[int]
	f := equalToCmp(x)
	i := CompareFunc([]int{10}, []int{11}, f)
	println(i)
}

// equal is simply ==.
func equal[T comparable](v1, v2 T) bool {
	return v1 == v2
}

func CompareFunc[S1 []E1, S2 []E2, E1 any, E2 any](s1 S1, s2 S2, cmp func(E1, E2) int) int {
	return 0
}

func equalToCmp[T comparable](eq func(T, T) bool) func(T, T) int {
	return func(v1, v2 T) int {
		if eq(v1, v2) {
			return 0
		}
		return 1
	}
}
