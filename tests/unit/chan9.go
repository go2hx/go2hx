package main

func main() {
	c := make(chan int, 1)
	c <- 10
	close(c)
	if <-c != 10 {
		panic("wrong value 0")
	}
	if <-c != 0 {
		panic("wrong value 1")
	}
}
