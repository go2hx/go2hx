package main

import (
	"fmt"
	"io"
)

func main() {
	c := make(chan int)
	r, w := io.Pipe()
	go reader(r, c)
	var buf = make([]byte, 64)
	for i := 0; i < 5; i++ {
		p := buf[0 : 5+i*10]
		println("w.Write")
		n, err := w.Write(p)
		println("w.Write after")
		if n != len(p) {
			fmt.Printf("wrote %d, got %d", len(p), n)
			panic("issue")
		}
		if err != nil {
			fmt.Printf("write: %v", err)
			panic("issue")
		}
		println("before read")
		nn := <-c
		println("after read")
		if nn != n {
			fmt.Printf("wrote %d, read got %d", n, nn)
			panic("issue")
		}
	}
	w.Close()
	nn := <-c
	if nn != 0 {
		fmt.Printf("final read got %d", nn)
		panic("issue")
	}
}

func reader(r *io.PipeReader, c chan int) {
	var buf = make([]byte, 64)
	for {
		println("r.Read")
		n, err := r.Read(buf)
		println("r.Read after")
		if err == io.EOF {
			c <- 0
			println("finish")
			break
		}
		if err != nil {
			fmt.Printf("read: %v", err)
			panic("issue")
		}
		println("before send")
		c <- n
		println("after send")
	}
}
