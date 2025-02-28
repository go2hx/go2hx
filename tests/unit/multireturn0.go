package main

func main() {
	a()
}

func a() (WriterInterface, error) {
	return b()
}

func b() (Writer, error) {
	return Writer{}, nil
}

type Writer struct{}

func (Writer) Write() {}

type WriterInterface interface {
	Write()
}
