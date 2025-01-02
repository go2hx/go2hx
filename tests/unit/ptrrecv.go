package main

type S struct {
	Xy string
	XY string
}

func main() {
	var pwp *Twordp
	f := pwp.M
	f(0, 0)
}

type Twordp uintptr

func (p *Twordp) M(x int, b byte) (byte, int) {
	return 0, 0
}
