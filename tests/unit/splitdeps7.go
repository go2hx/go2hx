package main

func main() {
	Println("hello world")
}

func Println(a ...any) int {
	return Fprintln(a...)
}

func Fprintln(a ...any) int {
	return 0
}
