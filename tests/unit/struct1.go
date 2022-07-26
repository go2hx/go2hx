package main

func main() {
	x := X{10}
	println(x.x)
	if x.x != 10 {
		panic("wrong value")
	}
}

func test(x struct{ x int }) {
	x.x += 1
}

type X struct {
	x int
}
