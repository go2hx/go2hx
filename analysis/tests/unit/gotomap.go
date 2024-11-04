package main

func main() {
	for _, key := range map[string]int{"hello": 0} {
		println(key)
	}
	goto JUMP
JUMP:
}
