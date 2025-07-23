package main

func main() {
	buf := make([]byte, 10)
	defer put(&buf)
}

func put(a any) {}
