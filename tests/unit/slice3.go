package main

func main() {
	s := "123456789"
	s = s[2:5]
	s = s[1:]
	if len(s) != 2 {
		panic("error")
	}
}
