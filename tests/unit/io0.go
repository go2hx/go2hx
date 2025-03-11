package main

import (
	"bytes"
	"fmt"
	"io"
)

func main() {
	src := []byte("hello, world")
	dst := make([]byte, len(src))
	rb := bytes.NewBuffer(src)
	wb := new(bytes.Buffer)
	r := io.TeeReader(rb, wb)
	if n, err := io.ReadFull(r, dst); err != nil || n != len(src) {
		fmt.Printf("ReadFull(r, dst) = %d, %v; want %d, nil", n, err, len(src))
	}
	if !bytes.Equal(dst, src) {
		fmt.Printf("bytes read = %q want %q", dst, src)
		return
	}
	if !bytes.Equal(wb.Bytes(), src) {
		fmt.Printf("bytes written = %q want %q", wb.Bytes(), src)
		return
	}
	if n, err := r.Read(dst); n != 0 || err != io.EOF {
		fmt.Printf("r.Read at EOF = %d, %v want 0, EOF", n, err)
		return
	}
	rb = bytes.NewBuffer(src)
	println("before pipe")
	pr, pw := io.Pipe()
	println("after pipe")
	pr.Close()
	println("close")
	r = io.TeeReader(rb, pw)
	println("after teareader")
	if n, err := io.ReadFull(r, dst); n != 0 || err != io.ErrClosedPipe {
		fmt.Printf("closed tee: ReadFull(r, dst) = %d, %v; want 0, EPIPE", n, err)
		return
	}
	println("after readFull")
}
