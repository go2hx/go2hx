package main

import (
	"fmt"
	"reflect"
)

func main() {
	test()
}

func test() {
	var i int64 = 102029393838383889
	switch i {
	case 10:
		fmt.Println(10)
	case 102029393838383889:
		fmt.Println("standard")
	}
	fmt.Println(reflect.TypeOf(i))
}
func verify(name string, result, expected interface{}) {
	if !reflect.DeepEqual(result, expected) {
		fmt.Println("verify:",result,"\n\n",expected)
		panic(name)
	}
}