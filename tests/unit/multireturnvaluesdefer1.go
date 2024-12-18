package main

func main() {
	f()
}

func f() (x int, y int) {
	defer func() {
		if x != 1 || y != 10 {
			println(x, y)
			panic("incorrect values")
		}
	}()
	return f2()
}

func f2() (x int, y int) {
	return 1, 10
}
