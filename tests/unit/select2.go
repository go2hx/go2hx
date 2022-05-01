package main

import "time"

func main() {
	if !ret() {
		panic("ret return false")
	}
}

func ret() bool {
	c := make(chan int)
	c2 := make(chan int)
	go func() {
		time.Sleep(time.Second)
		c <- 1
		c2 <- 2
	}()

	select {
	case <-c:
		return true
	case <-c2:
		return true
	}
}
