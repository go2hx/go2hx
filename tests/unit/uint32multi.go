package main

func main() {
	var i uint32 = 1711317249
	i *= 16777619
	if i != 2482861203 {
		panic("invalid value")
	}
}
