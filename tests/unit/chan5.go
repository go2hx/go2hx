package main

func main() {
	c := make(chan int)
	go func() {
		switch {
		case <-c == 1:
		}
	}()
	c <- 1
}
