package main

func main() {
	println(run())
}

func run() int {
	t := "hi"
	c := 'i'
Loop:
	for t != "" {
		switch c {
		default:
			println("hit this?")
			break Loop

		// Flags.
		case 'i':
			c = '-'
			println("-")
		case '-':
			return 0
		}
	}
	return 1
}
