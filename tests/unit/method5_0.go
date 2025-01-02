// run

// Copyright 2013 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

// Concrete types implementing M method.
// Smaller than a word, word-sized, larger than a word.
// Value and pointer receivers.

type Tinter interface {
	M(int, byte) (byte, int)
}

type Tsmallv byte

func (v Tsmallv) M(x int, b byte) (byte, int) { return b, x + int(v) }

type Tsmallp byte

func (p *Tsmallp) M(x int, b byte) (byte, int) { return b, x + int(*p) }

type Twordv uintptr

func (v Twordv) M(x int, b byte) (byte, int) { return b, x + int(v) }

type Twordp uintptr

func (p *Twordp) M(x int, b byte) (byte, int) { return b, x + int(*p) }

type Tbigv [2]uintptr

func (v Tbigv) M(x int, b byte) (byte, int) { return b, x + int(v[0]) + int(v[1]) }

type Tbigp [2]uintptr

func (p *Tbigp) M(x int, b byte) (byte, int) { return b, x + int(p[0]) + int(p[1]) }

// Again, with an unexported method.

type tsmallv byte

func (v tsmallv) m(x int, b byte) (byte, int) { return b, x + int(v) }

type tsmallp byte

func (p *tsmallp) m(x int, b byte) (byte, int) { return b, x + int(*p) }

type twordv uintptr

func (v twordv) m(x int, b byte) (byte, int) { return b, x + int(v) }

type twordp uintptr

func (p *twordp) m(x int, b byte) (byte, int) { return b, x + int(*p) }

type tbigv [2]uintptr

func (v tbigv) m(x int, b byte) (byte, int) { return b, x + int(v[0]) + int(v[1]) }

type tbigp [2]uintptr

func (p *tbigp) m(x int, b byte) (byte, int) { return b, x + int(p[0]) + int(p[1]) }

type tinter interface {
	m(int, byte) (byte, int)
}

// Embedding via pointer.

type T1 struct {
	T2
}

type T2 struct {
	*T3
}

type T3 struct {
	*T4
}

type T4 struct {
}

func (t4 T4) M(x int, b byte) (byte, int) { return b, x + 40 }

var failed = false

func CheckI(name string, i Tinter, inc int) {
	b, x := i.M(1000, 99)
	if b != 99 || x != 1000+inc {
		failed = true
		print(name, ".M(1000, 99) = ", b, ", ", x, " want 99, ", 1000+inc, "\n")
	}

	CheckF("(i="+name+")", i.M, inc)
}

func CheckF(name string, f func(int, byte) (byte, int), inc int) {
	b, x := f(1000, 99)
	if b != 99 || x != 1000+inc {
		failed = true
		print(name, "(1000, 99) = ", b, ", ", x, " want 99, ", 1000+inc, "\n")
	}
}

func checkI(name string, i tinter, inc int) {
	b, x := i.m(1000, 99)
	if b != 99 || x != 1000+inc {
		failed = true
		print(name, ".m(1000, 99) = ", b, ", ", x, " want 99, ", 1000+inc, "\n")
	}

	checkF("(i="+name+")", i.m, inc)
}

func checkF(name string, f func(int, byte) (byte, int), inc int) {
	b, x := f(1000, 99)
	if b != 99 || x != 1000+inc {
		failed = true
		print(name, "(1000, 99) = ", b, ", ", x, " want 99, ", 1000+inc, "\n")
	}
}

func shouldPanic(f func()) {
	defer func() {
		if recover() == nil {
			panic("not panicking")
		}
	}()
	f()
}

func shouldNotPanic(f func()) {
	f()
}

func main() {
	t4 := T4{}
	t3 := T3{&t4}
	t2 := T2{&t3}
	t1 := T1{t2}
	CheckI("&t1", &t1, 40)
}
