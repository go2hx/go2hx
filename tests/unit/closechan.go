package main

func main() {
	done := make(chan struct{})
	close(done)
	select {
	case <-done:
		println("done")
	default:
		panic("not done")
	}
}
