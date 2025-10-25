package main

// Use simple []byte instead of bytes.Buffer to avoid large dependency.
type buffer []byte

type f struct {
	buf *buffer
}

func (b *buffer) writeString(s string) {
	*b = append(*b, s...)
}

// pp is used to store a printer's state and is reused with sync.Pool to avoid allocations.
type pp struct {
	buf buffer
}

func (p *pp) fmtString(v string) {
	p.buf.writeString(v)
}

func main() {
	p := &pp{}
	p.fmtString("h")
	println(string(p.buf))
}
