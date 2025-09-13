package main

import (
	"time"
)

func main() {
	rangeOver := false

	go func() {
		var s chan int
		for i := range s {
			_ = i
			panic("Fail: in nil range")
		}
		rangeOver = true
	}()

	<-time.After(time.Second)

	if rangeOver {
		panic("Fail: range over nil channel did not block")
	}
}
