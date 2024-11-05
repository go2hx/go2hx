package main

func main() {
	i := 0
	switch i {
	case 0:
		println(0)
		fallthrough
	case 1:
		println(1)
		fallthrough
	case 2:
		println(2)
		break
		println(3)
	}
	goto JUMP
JUMP:
}
