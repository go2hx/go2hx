package main

import "reflect"

type Value interface {
	String() string
	Set(string) string
}

type Data string

func (d *Data) String() string {
	return string(*d)
}

func (d *Data) Set(s string) string {
	*d = Data(s)
	return string(*d)
}

func main() {
	var d Data = ""
	g := &d
	var x Value = g
	if x.Set("hello world") != x.String() {
		panic("not matching")
	}
	var j interface{} = x
	switch j.(type) {
	case Value:
	default:
		println(reflect.TypeOf(j).String())
		panic("wrong type")
	}
	switch x.(type) {
	case Value:
	default:
		println(reflect.TypeOf(x).String())
		panic("wrong type")
	}
}
