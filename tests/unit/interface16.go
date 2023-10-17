package main

type i interface {
	foo()
}

type s struct {
	x int
}

func (s s) foo() {

}

func main() {
	x := s{0}
	y := s{1}
	if i(x) == i(y) {
		panic("x == y")
	}
}
