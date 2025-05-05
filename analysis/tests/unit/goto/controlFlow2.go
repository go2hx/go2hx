package main

func main() {
	if f() != 0 || f2() != 1 || f3() != 2 {
		panic("invalid result")
	}
}

func f() int {
	var b any = "hello"
	for {
		switch b.(type) {
		case int:
			return 0
		}
		b = int(10)
	}
	goto test
test:
	return 10
}

func f2() int {
	for {
		break
	}
	return 1
}

func f3() int {
	if true {
		var b any = "hello"
		doubleBreak := false
		for {
			println("in for loop")
			switch b.(type) {
			case int:
				doubleBreak = true
				break
			}
			println(doubleBreak)
			if doubleBreak {
				break
			}
			b = int(10)
		}
		println("out of for loop")
		goto test
		println("goto middle")
	test:
		println("jump to goto test")
	}
	//test2:

	println("out of if statement")
	return 2
}
