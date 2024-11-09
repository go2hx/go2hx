package main

func main() {
	p := 0
	for _ = range s {
		switch p = get(); p {
		case 10:
			println(p)
		default:
			println("p:", p)
		}
	}
	goto JUMP
JUMP:
}

var s = []int{10, 11}
var pos = 0

func get() int {
	v := s[pos]
	pos++
	return v
}
