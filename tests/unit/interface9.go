package main

type x string

func (x) j() {

}

type y interface {
	j()
}

func main() {
	z := x("hello")
	l := y(z)
	l.j()
}
