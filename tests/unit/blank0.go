package main

func main() {
	_ = 10
	s := &S{}
	*s = S{20}
}

type S struct {
	_ int
}
