package main

type Palette []int

func main() {
	var p Palette
	if p != nil {
		panic("p must be nil")
	}
}
