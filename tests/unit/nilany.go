package main

func main() {
	var err error
	if any(err) != nil {
		panic("nil interface not nil any")
	}
}
