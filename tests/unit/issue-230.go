package main

import "fmt"

func main() {
	var p *[4]int = nil

	for _, v := range *p {
		fmt.Println(v)
	}
}
