package main

import "time"

func main() {
	println("wait...")
	<-time.After(time.Second)
	println("done")
}
