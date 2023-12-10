package main

type y struct {
	x int
}

func main() {
	x := map[string]struct{ x int }{}
	x["a"] = struct{ x int }{10}
	x["b"] = y{}
	_ = x
}
