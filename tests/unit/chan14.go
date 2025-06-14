package main

func main() {
	c := make(chan any, 10)
	select {
	case c <- 10:

	}
}
