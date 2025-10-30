package main

import (
	"unicode/utf8"
)

func main() {
	var s buffer = nil
	s.writeRune(10)
	if s == nil {
		panic("not supposed to be nil")
	}
}

// Use simple []byte instead of bytes.Buffer to avoid large dependency.
type buffer []byte

func (bp *buffer) writeRune(r rune) {
	*bp = utf8.AppendRune(*bp, r)
}
