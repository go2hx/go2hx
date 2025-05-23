package main

import (
	"fmt"
	"os"
	"unicode/utf8"
)

type Utf8Map struct {
	r   rune
	str string
}

func main() {
	var utf8map = []Utf8Map{
		{0x0000, "\x00"},
		{0x0001, "\x01"},
		{0x007e, "\x7e"},
		{0x007f, "\x7f"},
		{0x0080, "\xc2\x80"},
		{0x0081, "\xc2\x81"},
		{0x00bf, "\xc2\xbf"},
		{0x00c0, "\xc3\x80"},
		{0x00c1, "\xc3\x81"},
		{0x00c8, "\xc3\x88"},
		{0x00d0, "\xc3\x90"},
		{0x00e0, "\xc3\xa0"},
		{0x00f0, "\xc3\xb0"},
		{0x00f8, "\xc3\xb8"},
		{0x00ff, "\xc3\xbf"},
		{0x0100, "\xc4\x80"},
		{0x07ff, "\xdf\xbf"},
		{0x0400, "\xd0\x80"},
		{0x0800, "\xe0\xa0\x80"},
		{0x0801, "\xe0\xa0\x81"},
		{0x1000, "\xe1\x80\x80"},
		{0xd000, "\xed\x80\x80"},
		{0xd7ff, "\xed\x9f\xbf"}, // last code point before surrogate half.
		{0xe000, "\xee\x80\x80"}, // first code point after surrogate half.
		{0xfffe, "\xef\xbf\xbe"},
		{0xffff, "\xef\xbf\xbf"},
		{0x10000, "\xf0\x90\x80\x80"}, // 26
		{0x10001, "\xf0\x90\x80\x81"},
		{0x40000, "\xf1\x80\x80\x80"},
		{0x10fffe, "\xf4\x8f\xbf\xbe"},
		{0x10ffff, "\xf4\x8f\xbf\xbf"},
		{0xFFFD, "\xef\xbf\xbd"},
	}

	for _, m := range utf8map {
		b := []byte(m.str)
		r, size := utf8.DecodeRune(b)
		if r != m.r || size != len(b) {
			fmt.Printf("utf8.DecodeRune(%q) = %#04x, %d want %#04x, %d", b, r, size, m.r, len(b))
			os.Exit(1)
		}
		s := m.str
		r, size = utf8.DecodeRuneInString(s)
		if r != m.r || size != len(b) {
			fmt.Printf("utf8.DecodeRuneInString(%q) = %#04x, %d want %#04x, %d", s, r, size, m.r, len(b))
			os.Exit(1)
		}

		// there's an extra byte that bytes left behind - make sure trailing byte works
		r, size = utf8.DecodeRune(b[0:cap(b)])
		if r != m.r || size != len(b) {
			fmt.Printf("utf8.DecodeRune(%q) = %#04x, %d want %#04x, %d", b, r, size, m.r, len(b))
			os.Exit(1)
		}
		s = m.str + "\x00"
		r, size = utf8.DecodeRuneInString(s)
		if r != m.r || size != len(b) {
			fmt.Printf("utf8.DecodeRuneInString(%q) = %#04x, %d want %#04x, %d", s, r, size, m.r, len(b))
			os.Exit(1)
		}

		// make sure missing bytes fail
		wantsize := 1
		if wantsize >= len(b) {
			wantsize = 0
		}
		r, size = utf8.DecodeRune(b[0 : len(b)-1])
		if r != RuneError || size != wantsize {
			fmt.Printf("utf8.DecodeRune(%q) = %#04x, %d want %#04x, %d", b[0:len(b)-1], r, size, RuneError, wantsize)
			os.Exit(1)
		}
		s = m.str[0 : len(m.str)-1]
		r, size = utf8.DecodeRuneInString(s)
		if r != RuneError || size != wantsize {

			fmt.Printf("utf8.DecodeRuneInString(%q) = %#04x, %d want %#04x, %d", s, r, size, RuneError, wantsize)
			os.Exit(1)
		}

		// make sure bad sequences fail
		if len(b) == 1 {
			b[0] = 0x80
		} else {
			b[len(b)-1] = 0x7F
		}
		r, size = utf8.DecodeRune(b)
		if r != RuneError || size != 1 {
			fmt.Printf("utf8.DecodeRune(%q) = %#04x, %d want %#04x, %d", b, r, size, RuneError, 1)
			os.Exit(1)
		}
		s = string(b)
		r, size = utf8.DecodeRuneInString(s)
		if r != RuneError || size != 1 {
			fmt.Printf("utf8.DecodeRuneInString(%q) = %#04x, %d want %#04x, %d", s, r, size, RuneError, 1)
			os.Exit(1)
		}

	}

}

// Numbers fundamental to the encoding.
const (
	RuneError = '\uFFFD'     // the "error" Rune or "Unicode replacement character"
	RuneSelf  = 0x80         // characters below RuneSelf are represented as themselves in a single byte.
	MaxRune   = '\U0010FFFF' // Maximum valid Unicode code point.
	UTFMax    = 4            // maximum number of bytes of a UTF-8 encoded Unicode character.
)
