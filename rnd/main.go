package main

import (
	"fmt"
)

type I[T float32 | float64] int

func (i I[t]) String() string { return fmt.Sprintf("<%d>", int(i)) }

type B struct {
	I I[float32]
	j int
}

type C struct {
	i int
	B
}

func main() {
	fmt.Println(fmt.Errorf("%+v", C{1, B{2, 3}}))
}
