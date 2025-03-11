package main

import (
	"fmt"
	"io"
)

func main() {
	println("start")
	c := make(chan int)
	println("pipe")
	r, w := io.Pipe()
	println("after pipe")
	var buf = make([]byte, 64)
	go checkWrite(w, []byte("hello, world"), c)
	println("before read")
	n, err := r.Read(buf)
	println("after read")
	if err != nil {
		fmt.Printf("read: %v", err)
		panic("issue")
	} else if n != 12 || string(buf[0:12]) != "hello, world" {
		fmt.Printf("bad read: got %q", buf[0:n])
		panic("issue")
	}
	println(0)
	<-c
	println(1)
	r.Close()
	w.Close()
}

func checkWrite(w io.Writer, data []byte, c chan int) {
	println("before write")
	n, err := w.Write(data)
	println("after write")
	if err != nil {
		fmt.Printf("write: %v", err)
		panic("issue")
	}
	if n != len(data) {
		fmt.Printf("short write: %d != %d", n, len(data))
		panic("issue")
	}
	c <- 0
}
