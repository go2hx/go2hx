package main

func main() {
	done := make(chan bool)
	close(done)
	v, ok := <-done
	if v || ok {
		panic("incorrect values")
	}
}
