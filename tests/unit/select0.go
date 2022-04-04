package main

import (
	"fmt"
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
			fmt.Println(m)
		}
		fmt.Println("select is done")
	}()

	c <- true
	wg.Wait()
}
