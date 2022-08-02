package main

type appendSliceWriter []byte

func main() {
	w := &appendSliceWriter{}
	p := []byte{0, 1}
	*w = append(*w, p...)
	if len(*w) != 2 {
		panic("wrong length")
	}
}
