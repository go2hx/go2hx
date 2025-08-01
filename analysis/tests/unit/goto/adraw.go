package main

const (
	MaxX = 16
	MaxY = 16
	MinY = 0
	MinX = 0
)

func main() {
	// infinite timeout
loop:
	for i := 0; i < 3; i++ {
		for y := MinY; y < MaxY; y++ {
			if false { // this if stmt causes an infinite loop setting s:= MinX

			}
			for x := MinX; x < MaxX; x++ {
				if false {
					continue loop
				}
			}
		}
	}
	println("done")
}
