package main

import (
	"encoding"
	"reflect"
)

var (
	x                 = (*encoding.TextMarshaler)(nil)
	textMarshalerType = reflect.TypeOf(x).Elem()
)

func main() {
	if textMarshalerType.Kind() != 20 {
		panic("wrong kind")
	}
}
