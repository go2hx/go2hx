package main

type Named bool

type Inter interface {
	Test()
}

func (x *Named) Test() {
	*x = true
}

func main() {
	var y Named = false
	x := &y
	z := Inter(x)
	if z == nil {
		panic("wrong value")
	}
}
