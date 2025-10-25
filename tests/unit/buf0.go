package main

// Use simple []byte instead of bytes.Buffer to avoid large dependency.
type buffer []byte

func (b *buffer) writeString(s string) {
	*b = append(*b, s...)
}

func main() {
	b := &buffer{}
	b.writeString("h")
	if string(([]byte)(*b)) != "h" {
		panic("wrong value")
	}
}
