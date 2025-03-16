package main

import (
	"fmt"
	"os"
)

func main() {
	f, err := os.Create("test.txt")
	defer os.Remove("test.txt")
	if err != nil {
		panic(err)
	}
	fmt.Println(f.WriteAt([]byte("hello world"), 0))
	fmt.Println(f.WriteAt([]byte("hello world"), 2))
	b := make([]byte, 5)
	fmt.Println(f.ReadAt(b, 0))
	if string(b) != "hehel" {
		panic("readAt incorrect value got: " + string(b) + " expected: hehel")
	}
	b = make([]byte, 5)
	fmt.Println(f.ReadAt(b, 1))
}
