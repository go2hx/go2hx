package main

func main() {
	str := []rune("]b")
	str = append(str, 'a')
	println("0", string(str))
	copy(str[1:], str)
	println("1", string(str))
	str[0] = 'a'
	if string(str) != "a]b" {
		panic("wrong value")
	}
}
