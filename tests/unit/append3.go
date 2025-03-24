package main

type termlist []int

func (t termlist) norm() {}

func main() {
	x1 := termlist{}
	append(x1, 2).norm()
}
