package main

import (
	"fmt"
	"reflect"
)

func main() {
	x := 1.4i + 10
	fmt.Println(reflect.TypeOf(x))
	fmt.Println(real(x))
	fmt.Println(imag(x))
	fmt.Println(x)
}
