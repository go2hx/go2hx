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
		case c <- true:
			_ = c
		}
	}()
	<-c
	wg.Wait()
}
