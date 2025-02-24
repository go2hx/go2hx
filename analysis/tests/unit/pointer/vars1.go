package main

func main() {
	var (
		buf    int = 10
		logger     = test(&buf)
	)
	_ = logger
}

func test(i *int) int {
	return *i
}
