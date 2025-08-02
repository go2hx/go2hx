package main

func main() {
	switch {
	case true:
		{
			println("0")
			if true {
				println("1")
			}
			println("2")
		}
	}
	goto JUMP
JUMP:
}
