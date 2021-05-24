package main

import (
	"fmt"
	"reflect"
	//"reflect"
)
func main() {
	
	x := []interface{}{}
	var aif interface{} = 42.0
	z := struct{
		x int16
		y bool
	}{0,false}

	x = append(x, aif)
	x = append(x, z)

	a := [3]bool{}
	x = append(x, a)


	i := 42
	p := &i
	x = append(x, p)

	x = append(x, []rune{})
	x = append(x, make(map[string]bool))
	//x = append(x, chan nonStructT)
	x = append(x, reflect.TypeOf(complex(10.3,20.5)))

	for _,ai := range x {
		fmt.Println("----")
		t := reflect.TypeOf(ai)
		value := reflect.ValueOf(ai)
		fmt.Println(t)
		fmt.Println(value)
	}
}
