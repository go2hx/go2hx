package main

type X struct {
	path string
}

func main() {
	var y X = struct{ path string }{"test"}
	if y.path != "test" {
		panic("wrong value")
	}
}
