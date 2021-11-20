package main

import (
	"reflect"
)

type Value interface {
	String() string
	Set(string) error
}
type stringValue string

func newStringValue(val string, p *string) *stringValue {
	*p = val
	return (*stringValue)(p)
}

func (s *stringValue) Set(val string) error {
	*s = stringValue(val)
	return nil
}

func (s *stringValue) Get() interface{} { return string(*s) }

func (s *stringValue) String() string { return string(*s) }

func main() {
	x := stringValue("hello")
	z := &x
	y := Value(z)
	if x, ok := y.(*stringValue); ok {
		kind := reflect.TypeOf(x).Kind()
		switch kind {
		case reflect.Ptr:
		default:
			panic("not pointer")
		}
	}
}
