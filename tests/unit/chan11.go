package main

import "time"

func main() {
	c := make(chan int, 1)
	c <- 1
	done := make(chan bool)
	go func() {
		c <- 2 // supposed to block forever because it's full
		done <- true
	}()
	select {
	case <-done:
		panic("done")
	case <-time.After(time.Second * 1):
		println("timeout")
	}
}
