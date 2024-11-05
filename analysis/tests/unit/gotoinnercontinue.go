package main

func main() {
	i := -1
	for true {
		i++
		switch i {
		case 0:
			println("continue")
			continue
		case 1:
			println("continue")
			continue
		case 2:
			break
		case 3:
			return
		}
		println("end")
	}
	goto JUMP
JUMP:
}
