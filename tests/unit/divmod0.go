package main

func main() {
	divzerouint64(0, 0)
}

func divzerouint64(x, y uint64) uint64 {
	defer checkudivzero("uint64", uint64(x))
	return x / y
}

func checkudivzero(typ string, x uint64) {
	if recover() == nil {
		print(typ, "(", x, " / 0) did not panic")
	}
}
