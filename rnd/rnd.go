package main

import "fmt"

func main() {
	var c Closer = &Bar{}
	fmt.Println(c.ee())
}

type Bar struct {
	X int
}

func (b *Bar) ee() error {
	return nil
}

func (b Bar) a() error {
	return nil
}

type Closer interface {
	ee() error
	a() error
}


