package main

import (
	"sync"
)

func main() {
	c := make(chan bool)
	var wg sync.WaitGroup

	go func() {
		wg.Add(1)
		defer wg.Done()
		select {
		case m := <-c:
			_ = m
		}
	}()

	c <- true
	wg.Wait()
}
