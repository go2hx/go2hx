package main

func main() {
	c := make(chan int, 1)
	c <- 1
	select {
	case c <- 0:
		panic("unreachable")
	case <-c:
		println("send")
	}
}
