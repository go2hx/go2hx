package main

func main() {
	if test() != nil {
		panic("not nil error")
	}
}

type Error struct {
	x int
}

func test() error {
	return nil
}
