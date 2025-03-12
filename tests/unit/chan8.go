package main

import "fmt"

func f1(ch chan string) {
	defer close(ch)
	println("before send")
	ch <- "foo"
	println("after send")
}

func main() {
	println("start")
	ch := make(chan string, 1)
	f1(ch)
	println("before for loop")
	for s := range ch {
		println("SSSSSS")
		fmt.Println(s)
	}
	println("after for loop")
}

// Output:
// foo
