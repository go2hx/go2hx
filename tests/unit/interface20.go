package main

func main() {
	s := S{}
	a := any(s)
	i := a.(I)
	i.Func()
	if count != 1 {
		panic("issue")
	}
}

type S struct{}

type I interface {
	Func()
}

var count = 0

func (S) Func() {
	count++
}
