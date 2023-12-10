package main

type y struct {
	x int
}

func main() {
	x := map[any]struct{}{}
	ok, value := x["a"]
	ok, value = x[struct{}{}]
	ok, value = x[y{}]
	_ = ok
	_ = value
	_ = x
}
