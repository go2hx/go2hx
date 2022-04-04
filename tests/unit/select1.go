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
		case c <- true:
			fmt.Println("sent")
		}
		fmt.Println("select is done")
	}()
	<-c
	wg.Wait()
}
