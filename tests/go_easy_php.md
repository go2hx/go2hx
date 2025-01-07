# go_easy_php
## bug296
```go
// run

// Copyright 2010 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

type I interface {
	m(a, b, c, d, e, f, g, h byte)
}

type Int8 int8

func (x Int8) m(a, b, c, d, e, f, g, h byte) {
	check("Int8", int64(x), 0x01, a, b, c, d, e, f, g, h)
}

type Uint8 uint8

func (x Uint8) m(a, b, c, d, e, f, g, h byte) {
	check("Uint8", int64(x), 0x01, a, b, c, d, e, f, g, h)
}

type Int16 int16

func (x Int16) m(a, b, c, d, e, f, g, h byte) {
	check("Int16", int64(x), 0x0102, a, b, c, d, e, f, g, h)
}

type Uint16 uint16

func (x Uint16) m(a, b, c, d, e, f, g, h byte) {
	check("Uint16", int64(x), 0x0102, a, b, c, d, e, f, g, h)
}

type Int32 int32

func (x Int32) m(a, b, c, d, e, f, g, h byte) {
	check("Int32", int64(x), 0x01020304, a, b, c, d, e, f, g, h)
}

type Uint32 uint32

func (x Uint32) m(a, b, c, d, e, f, g, h byte) {
	check("Uint32", int64(x), 0x01020304, a, b, c, d, e, f, g, h)
}

type Int64 int64

func (x Int64) m(a, b, c, d, e, f, g, h byte) {
	check("Int64", int64(x), 0x0102030405060708, a, b, c, d, e, f, g, h)
}

type Uint64 uint64

func (x Uint64) m(a, b, c, d, e, f, g, h byte) {
	check("Uint64", int64(x), 0x0102030405060708, a, b, c, d, e, f, g, h)
}

var test = []I{
	Int8(0x01),
	Uint8(0x01),
	Int16(0x0102),
	Uint16(0x0102),
	Int32(0x01020304),
	Uint32(0x01020304),
	Int64(0x0102030405060708),
	Uint64(0x0102030405060708),
}

func main() {
	for _, t := range test {
		t.m(0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17)
	}
}

var bug = false

func check(desc string, have, want int64, a, b, c, d, e, f, g, h byte) {
	if have != want || a != 0x10 || b != 0x11 || c != 0x12 || d != 0x13 || e != 0x14 || f != 0x15 || g != 0x16 || h != 0x17 {
		if !bug {
			bug = true
			println("BUG")
		}
		println(desc, "check", have, want, a, b, c, d, e, f, g, h)
	}
}

```
## bug453
```go
// run

// Copyright 2012 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Issue 4138: bug in floating-point registers numbering.
// Makes 6g unable to use more than 11 registers.

package main

func formula() float32 {
	mA := [1]float32{1.0}
	det1 := mA[0]
	det2 := mA[0]
	det3 := mA[0]
	det4 := mA[0]
	det5 := mA[0]
	det6 := mA[0]
	det7 := mA[0]
	det8 := mA[0]
	det9 := mA[0]
	det10 := mA[0]
	det11 := mA[0]
	det12 := mA[0]

	return det1 + det2*det3 +
		det4*det5 + det6*det7 +
		det8*det9 + det10*det11 +
		det12
}

func main() {
	x := formula()
	if x != 7.0 {
		println(x, 7.0)
		panic("x != 7.0")
	}
}

```
## issue32288
```go
// run

// Copyright 2019 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

type T struct {
	s   [1]string
	pad [16]uintptr
}

//go:noinline
func f(t *int, p *int) []T {
	var res []T
	for {
		var e *T
		res = append(res, *e)
	}
}

func main() {
	defer func() {
		useStack(100) // force a stack copy
		// We're expecting a panic.
		// The bug in this issue causes a throw, which this recover() will not squash.
		recover()
	}()
	junk() // fill the stack with invalid pointers
	f(nil, nil)
}

func useStack(n int) {
	if n == 0 {
		return
	}
	useStack(n - 1)
}

//go:noinline
func junk() uintptr {
	var a [128]uintptr // 1k of bad pointers on the stack
	for i := range a {
		a[i] = 0xaa
	}
	return a[12]
}

```
## method
```go
// run

// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Test string operations including printing.

package main

func main() {
	var c string

	a := `abc`
	b := `xyz`

	/* print a literal */
	print(`abc`)

	/* print a variable */
	print(b, "-")

	/* catenate literals */
	print(`abc`+`xyz`, "-")

	/* catenate variables */
	print(a+b, "-")

	/* compare literals */
	if `abc` == `xyz` || `abc` != "abc" || `abc` > `xyz` {
		panic("compare literals")
	}

	/* compare variables */
	if a == b || a != a || a > b {
		panic("compare variables")
	}

	/* cat */
	c = a + b
	print(c, "-")

	/* catequal */
	c = a
	c += b
	print(c, "-")

	/* clumsy evaluation */
	c = b
	c = a + c
	print(c, "-")

	/* len */
	if len(c) != 6 {
		print("len ", len(c))
		panic("fail")
	}

	/* index strings */
	for i := 0; i < len(c); i = i + 1 {
		if c[i] != (a + b)[i] {
			print("index ", i, " ", c[i], " ", (a + b)[i])
			panic("fail")
		}
	}

	/* slice strings */
	print(c[0:3], c[3:])

	print("\n")

	/* create string with integer constant */
	c = string('x')
	if c != "x" {
		panic("create int " + c)
	}

	/* create string with integer variable */
	v := 'x'
	c = string(v)
	if c != "x" {
		panic("create int " + c)
	}

	/* create string with byte array */
	var z1 [3]byte
	z1[0] = 'a'
	z1[1] = 'b'
	z1[2] = 'c'
	c = string(z1[0:])
	if c != "abc" {
		panic("create byte array " + c)
	}

	/* create string with int array */
	var z2 [3]rune
	z2[0] = 'a'
	z2[1] = '\u1234'
	z2[2] = 'c'
	c = string(z2[0:])
	if c != "a\u1234c" {
		panic("create int array " + c)
	}

	/* create string with byte array pointer */
	z3 := new([3]byte)
	z3[0] = 'a'
	z3[1] = 'b'
	z3[2] = 'c'
	c = string(z3[0:])
	if c != "abc" {
		panic("create array pointer " + c)
	}
}

```
