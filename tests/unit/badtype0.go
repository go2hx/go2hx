package main

import (
	"fmt"
	"reflect"
)

func main() {
	type Rec ***Rec
	fmt.Println(reflect.TypeOf(Rec(nil)).String())
}
