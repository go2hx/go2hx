package main

func main() {
	File{}.close()
}

type File struct {
	Input
}

type Input struct{}

func (Input) close() {}
