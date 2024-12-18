package main

func main() {
	for i := 0; i < 1; i++ {
		if &i != &i {
			panic("ptrs not equal")
		}
	}

	switch i := 10; i := any(i).(type) {
	case int:
		if &i != &i {
			panic("ptrs not equal")
		}
	}
	switch i := 10; i {
	case 10:
		if &i != &i {
			panic("ptrs not equal")
		}
	}
	if i := 0; i == 0 {
		if &i != &i {
			panic("ptrs not equal")
		}
	}
}
