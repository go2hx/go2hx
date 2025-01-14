package main

import (
	"reflect"
)

type AST struct {
	Num      int
	Children []AST
}

type AST2 []AST2

func newAST(num int, root AST, children ...AST) AST {
	return AST{num, append([]AST{root}, children...)}
}

func main() {
	ast := newAST(1, AST{}, AST{})
	k := reflect.ValueOf(ast).Field(1).Kind()
	if k != 23 {
		println(k)
		panic("invalid value")
	}
	k = reflect.ValueOf(AST2{{}}).Index(0).Kind()
	if k != 23 {
		println(k)
		panic("invalid value")
	}
	k = reflect.ValueOf(ast).Field(1).Index(0).Type().Kind()
	if k != 25 {
		println(k)
		panic("invalid value")
	}
}
