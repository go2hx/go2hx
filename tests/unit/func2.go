package main

func main() {
	x := ret()
	_ = x
}

func ret() int {
	x := 10
	switch x {
	default:
		return 0
	case 4:
		return 3
	}
}
