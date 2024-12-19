package main

import (
	"unicode"
	"unicode/utf8"
)

var EqualFoldTests = []struct {
	s, t string
	out  bool
}{
	{"abc", "abc", true},
	{"ABcd", "ABcd", true},
	{"123abc", "123ABC", true},
	{"αβδ", "ΑΒΔ", true}, // 3
	{"abc", "xyz", false},
	{"abc", "XYZ", false},
	{"abcdefghijk", "abcdefghijX", false},
	{"abcdefghijk", "abcdefghij\u212A", true},
	{"abcdefghijK", "abcdefghij\u212A", true},
	{"abcdefghijkz", "abcdefghij\u212Ay", false},
	{"abcdefghijKz", "abcdefghij\u212Ay", false},
}

func main() {
	for i, tt := range EqualFoldTests {
		if i != 3 {
			continue
		}
		println("i:", i)
		if out := EqualFold(tt.s, tt.t); out != tt.out {
			println("out:", out)
			println("tt.out:", tt.out)
			panic("not equal")
		}
		if out := EqualFold(tt.t, tt.s); out != tt.out {
			println("out:", out)
			println("tt.out:", tt.out)
			panic("not equal")
		}
	}
}

func EqualFold(s, t string) bool {
	// ASCII fast path
	i := 0
	for ; i < len(s) && i < len(t); i++ {
		sr := s[i]
		tr := t[i]
		if sr|tr >= utf8.RuneSelf {
			goto hasUnicode
		}

		// Easy case.
		if tr == sr {
			continue
		}

		// Make sr < tr to simplify what follows.
		if tr < sr {
			tr, sr = sr, tr
		}
		// ASCII only, sr/tr must be upper/lower case
		if 'A' <= sr && sr <= 'Z' && tr == sr+'a'-'A' {
			continue
		}
		return false
	}
	// Check if we've exhausted both strings.
	return len(s) == len(t)

hasUnicode:
	s = s[i:]
	t = t[i:]
	for _, sr := range s {
		println("start")
		// If t is exhausted the strings are not equal.
		if len(t) == 0 {
			println("return 0")
			return false
		}

		// Extract first rune from second string.
		var tr rune
		println("t[0]:", t[0])
		if t[0] < utf8.RuneSelf {
			tr, t = rune(t[0]), t[1:]
		} else {
			r, size := utf8.DecodeRuneInString(t)
			println("size:", size)
			tr, t = r, t[size:]
		}

		// If they match, keep going; if not, return false.

		// Easy case.
		if tr == sr {
			println("easy case")
			continue
		}

		// Make sr < tr to simplify what follows.
		if tr < sr {
			tr, sr = sr, tr
		}
		// Fast check for ASCII.
		if tr < utf8.RuneSelf {
			// ASCII only, sr/tr must be upper/lower case
			if 'A' <= sr && sr <= 'Z' && tr == sr+'a'-'A' {
				println("return ASCII only")
				continue
			}
			println("return 1")
			return false
		}

		// General case. SimpleFold(x) returns the next equivalent rune > x
		// or wraps around to smaller values.
		r := unicode.SimpleFold(sr)
		for r != sr && r < tr {
			r = unicode.SimpleFold(r)
		}
		if r == tr {
			println("continue equal")
			continue
		}
		println("return 2")
		return false
	}

	// First string is empty, so check if the second one is also empty.
	println("end:", len(t))
	return len(t) == 0
}
