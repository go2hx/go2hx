package main

import (
	"bytes"
	"fmt"
)

func main() {
	runIndexTests(bytes.Index, "Index", indexTests)
}

type BinOpTest struct {
	a string
	b string
	i int
}

var indexTests = []BinOpTest{
	{"", "", 0},
	{"", "a", -1},
	{"", "foo", -1},
	{"fo", "foo", -1},
	{"foo", "baz", -1},
	{"foo", "foo", 0},
	{"oofofoofooo", "f", 2},
	{"oofofoofooo", "foo", 4},
	{"barfoobarfoo", "foo", 3},
	{"foo", "", 0},
	{"foo", "o", 1},
	{"abcABCabc", "A", 3},
	// cases with one byte strings - test IndexByte and special case in Index()
	{"", "a", -1},
	{"x", "a", -1},
	{"x", "x", 0},
	{"abc", "a", 0},
	{"abc", "b", 1},
	{"abc", "c", 2},
	{"abc", "x", -1},
	{"barfoobarfooyyyzzzyyyzzzyyyzzzyyyxxxzzzyyy", "x", 33},
	{"fofofofooofoboo", "oo", 7},
	{"fofofofofofoboo", "ob", 11},
	{"fofofofofofoboo", "boo", 12},
	{"fofofofofofoboo", "oboo", 11},
	{"fofofofofoooboo", "fooo", 8},
	{"fofofofofofoboo", "foboo", 10},
	{"fofofofofofoboo", "fofob", 8},
	{"fofofofofofofoffofoobarfoo", "foffof", 12},
	{"fofofofofoofofoffofoobarfoo", "foffof", 13},
	{"fofofofofofofoffofoobarfoo", "foffofo", 12},
	{"fofofofofoofofoffofoobarfoo", "foffofo", 13},
	{"fofofofofoofofoffofoobarfoo", "foffofoo", 13},
	{"fofofofofofofoffofoobarfoo", "foffofoo", 12},
	{"fofofofofoofofoffofoobarfoo", "foffofoob", 13},
	{"fofofofofofofoffofoobarfoo", "foffofoob", 12},
	{"fofofofofoofofoffofoobarfoo", "foffofooba", 13},
	{"fofofofofofofoffofoobarfoo", "foffofooba", 12},
	{"fofofofofoofofoffofoobarfoo", "foffofoobar", 13},
	{"fofofofofofofoffofoobarfoo", "foffofoobar", 12},
	{"fofofofofoofofoffofoobarfoo", "foffofoobarf", 13},
	{"fofofofofofofoffofoobarfoo", "foffofoobarf", 12},
	{"fofofofofoofofoffofoobarfoo", "foffofoobarfo", 13},
	{"fofofofofofofoffofoobarfoo", "foffofoobarfo", 12},
	{"fofofofofoofofoffofoobarfoo", "foffofoobarfoo", 13},
	{"fofofofofofofoffofoobarfoo", "foffofoobarfoo", 12},
	{"fofofofofoofofoffofoobarfoo", "ofoffofoobarfoo", 12},
	{"fofofofofofofoffofoobarfoo", "ofoffofoobarfoo", 11},
	{"fofofofofoofofoffofoobarfoo", "fofoffofoobarfoo", 11},
	{"fofofofofofofoffofoobarfoo", "fofoffofoobarfoo", 10},
	{"fofofofofoofofoffofoobarfoo", "foobars", -1},
	{"foofyfoobarfoobar", "y", 4},
	{"oooooooooooooooooooooo", "r", -1},
	{"oxoxoxoxoxoxoxoxoxoxoxoy", "oy", 22},
	{"oxoxoxoxoxoxoxoxoxoxoxox", "oy", -1},
	// test fallback to Rabin-Karp.
	{"000000000000000000000000000000000000000000000000000000000000000000000001", "0000000000000000000000000000000000000000000000000000000000000000001", 5},
}

func runIndexTests(f func(s, sep []byte) int, funcName string, testCases []BinOpTest) {
	for _, test := range testCases {
		a := []byte(test.a)
		b := []byte(test.b)
		actual := f(a, b)
		if actual != test.i {
			fmt.Printf("%s(%q,%q) = %v; want %v\n", funcName, a, b, actual, test.i)
			panic("not equal")
		}
	}
}
