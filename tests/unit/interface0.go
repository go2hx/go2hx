package main

import (
	"reflect"
)

type x = func() interface {
	s() struct {
		x string
		y interface{ j() string }
	}
}

type t int

func (t) S() struct {
	x string
	y interface{ j() string }
} {
	return struct {
		x string
		y interface{ j() string }
	}{}
}

func (t) s() struct {
	x string
	y interface{ j() string }
} {
	return struct {
		x string
		y interface{ j() string }
	}{}
}

func main() {
	type y interface {
		S() struct {
			x string
			y interface{ j() string }
		}
		s() struct {
			x string
			y interface{ j() string }
		}
	}
	var d t = 10
	var yy y = d
	if reflect.TypeOf(d).NumMethod() != 1 {
		panic("wrong number of methods")
	}
	if reflect.TypeOf(yy).NumMethod() != 1 {
		panic("wrong number of methods")
	}
}
