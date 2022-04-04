package main

import "fmt"

type fileSize string

func (fileSize) Error() string {
	return ""
}

func main() {
	fmt.Println(t())
}

func t() (int, error) {
	var x fileSize = ""
	return 0, x
}
