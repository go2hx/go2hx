package main

func main() {
	s.test(10)
}

type s int

func (t s) test() {
	_ = t
}
