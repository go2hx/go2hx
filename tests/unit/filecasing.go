package main

var (
	pP int = 1
	pp int = 2
)

type xX int
type xx int

func main() {
	println(pp, pP)
	if pP != 1 || pp != 2 {
		panic("incorrect value(s)")
	}
	println(xX(0), xx(2))
}
