package main

func main() {
	var c *chan int
	switch c := any(c).(type) {
	case *chan int:
		if c != nil {
			panic("wrong value")
		}
	}
}
