package main

func main() {
	i := -1
	for true {
		i++
		switch i {
		case 0:
			println("continue0")
			continue
		case 1:
			println("continue1")
			continue
		case 2:
			println("2break")
			break
		case 3:
			println("3return")
			return
		}
		println("end")
	}
	goto JUMP
JUMP:
}
