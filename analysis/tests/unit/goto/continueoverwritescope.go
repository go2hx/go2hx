package main

func main() {
	b := true
	for b {
		println("start")
		for j := 0; j < 10; j++ {
			println("j:", j)
		}
		if !b {
			panic("already set to false, invalid controlFlow")
		}
		println("start here?")
		b = true
		switch {
		case true:
			println("b set false")
			if !b {
				panic("already set to false, invalid controlFlow")
			}
			b = false
			println("continue")
			continue
		}
	}
	goto JUMP
JUMP:
	println("end")
}
