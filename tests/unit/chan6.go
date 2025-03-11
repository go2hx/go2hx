package main

func main() {
	c := make(chan int)
	go func() {
		select {
		case c <- 2: // send

		}
	}()
	select {
	case <-c: // get
	}
	go func() {
		select {
		case <-c: // get

		}
	}()
	select {
	case c <- 2: // send
	}
}
