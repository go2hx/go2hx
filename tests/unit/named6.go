package main

import (
	"fmt"
)

type File struct {
	*file
}

type file struct {
	name string
}

func main() {
	x := File{&file{"test"}}
	if x.name != "test" {
		fmt.Println("wrong value")
	}
}
