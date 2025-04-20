package main

func main() {
	switch x := 10; x {
	case 10:
		println(&x)
	}
}
