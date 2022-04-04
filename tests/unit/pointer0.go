package main

type int64Value int64

func main() {
	x := int64(10)
	y := &x
	println(newInt64Value(10, y) != nil)
}

func newInt64Value(val int64, p *int64) *int64Value {
	*p = val
	return (*int64Value)(p)
}
