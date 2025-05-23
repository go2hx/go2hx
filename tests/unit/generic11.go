package main

func leadingInt[bytes []byte | string](s bytes) (x uint64, rem bytes) {
	if ns := s[0]; ns != 9 {
		return 2, s
	}
	return
}

func main() {
	leadingInt([]byte{10})
	leadingInt("hello")
}
