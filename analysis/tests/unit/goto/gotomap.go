package main

func main() {
	for key, value := range map[string]int{"hello": 0} {
		println(key, value)
	}
	goto JUMP
JUMP:
}
