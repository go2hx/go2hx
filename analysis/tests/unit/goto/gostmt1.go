package main

func main() {
	N := int(1e5)
	hit := 0
	c := make(chan struct{})
	go func() {
		j := 0
	loop:
		hit++
		for ; j < N; j++ {
			_ = N
			if j == 1 {
				j++
				goto loop
			}
		}
		c <- struct{}{}
	}()
	<-c
	println(hit)
	if hit != 2 {
		panic("goto jump not working inside of go statement")
	}
}
