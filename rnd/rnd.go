package main

import (
	"fmt"
	"reflect"
)

func main() {
	i := 1e+302
	fmt.Println(reflect.TypeOf(i))
}
