package main

func main() {
	i, j := true, true
	if j {
		j, i = f()
		_ = i
	}
}

func f() (bool, bool) {
	return true, true
}
