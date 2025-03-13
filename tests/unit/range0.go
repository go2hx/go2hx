package main

func main() {
	a := [...]int{2, 1, 0}
	for _, v := range a {
		a[v] = v
	}
	if a[0] != 0 || a[1] != 1 || a[2] != 2 {
		panic("wrong values")
	}
}

// Output:
// [0 1 2]
