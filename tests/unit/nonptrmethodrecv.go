package main

type twordp uintptr

func (p *twordp) m(x int, b byte) (byte, int) { return b, x + int(*p) }

func main() {
	x := twordp(2)
	x.m(10, 0)
}
