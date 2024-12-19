package main

// IMPORTANT: maps are not ordered
func main() {
	sliceFunc()
	mapFunc()
}

func sliceFunc() {
	a := []int{1, 2, 3}

	for i := range a {
		println(i)
	}
	for i, v := range a {
		println(i, v)
	}
	b := []int{}
	for i := range b {
		println(i)
	}
	for i, v := range b {
		println(i, v)
	}
	i := 0
	for i = range a {
		println(i)
	}
	var v int
	for i, v = range a {
		println(i, v)
	}

	goto JUMP
JUMP:
}

func mapFunc() {
	a := map[string]int{
		"one":   1,
		"two":   2,
		"three": 3,
	}
	_ = a
	totalK := 0
	for k := range a {
		totalK += len(k)
	}
	println(totalK)
	total := 0
	for k, v := range a {
		_ = k
		total += v
	}
	println(total)
	k := ""
	totalK = 0
	for k = range a {
		totalK += len(k)
	}
	println(totalK)
	totalK = 0
	total = 0
	var v int
	for k, v = range a {
		totalK += len(k)
		total += v
	}
	println(total)
	println(totalK)
	goto JUMP
JUMP:
}
