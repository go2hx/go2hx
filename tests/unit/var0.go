package main

func main() {
	dc := 632
	extra := 7
	extraMask := 127
	dc, fracc := dc>>extra, dc&extraMask
	if dc != 4 || fracc != 120 {
		panic("wrong values")
	}
}
