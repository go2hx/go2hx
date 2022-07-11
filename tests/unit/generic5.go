package main

import "strings"

func main() {
	if !test[strings.Builder]() || test2() {
		panic("fail")
	}
}

func test[T strings.Builder | strings.Reader]() bool {
	return true
}

func test2[T strings.Builder]() bool {
	return false
}
