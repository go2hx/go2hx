package main

func main() {
	str := []rune("]b")
	str = append(str, 'a')
	println("0", string(str))
	var str2 []rune
	copy(str[1:], str2)
	println("1", string(str))
	str[0] = 'a'
	if string(str) != "aba" {
		panic("wrong value")
	}
}
