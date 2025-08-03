package main

func main() {
	N := int(0)
	go func() {
		N = 10
	loop:
		for j := 0; j < N; j++ {
			_ = N
			continue loop
		}
	}()
}
