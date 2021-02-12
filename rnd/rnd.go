package main

import (
	"fmt"
)

func main() {
	var (
		nilN interface{}
		nilI *int

		_ = nil == interface{}(nil)
		_ = interface{}(nil) == nil
	)
	pi := func(p *int, i interface{}) bool { return p == i }
	a := ((*int)(nil) == interface{}(nil))
	b := pi(nilI, nilN)
	fmt.Println("a:",a,"b:",b)
	/*assert(((*int)(nil) == interface{}(nil)) == pi(nilI, nilN),
		"for *int==interface{} compiler == runtime")*/
}

func assert(t bool, s string) {
	if !t {
		panic(s)
	}
}
