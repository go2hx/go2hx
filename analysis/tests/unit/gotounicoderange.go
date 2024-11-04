package main

func main() {
	s := "楷书"
	for i, v := range s {
		println(i, v)
	}
	goto JUMP
JUMP:
}
