package main

import (
	"fmt"
	"reflect"
)

type SE []any // slice of empty; notational compactness.

func main() {
	fmts := "%]d"
	val := SE{2, 1}
	println(reflect.TypeOf(val[1]).Kind().String())
	s := fmt.Sprintf(fmts, val[0], val[1])
	println(s)
	if s != "%!](int=2)d%!(EXTRA int=1)" {
		panic("incorrect string")
	}
}
