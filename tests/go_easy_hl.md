# go_easy_hl
## bug113
```go
// run

// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

type I interface{}

func foo1(i int) int     { return i }
func foo2(i int32) int32 { return i }
func main() {
	var i I
	i = 1
	var v1 = i.(int)
	if foo1(v1) != 1 {
		panic(1)
	}
	var v2 = int32(i.(int))
	if foo2(v2) != 1 {
		panic(2)
	}
	
	shouldPanic(p1)
}

func p1() {
	var i I
	i = 1
	var v3 = i.(int32) // This type conversion should fail at runtime.
	if foo2(v3) != 1 {
		panic(3)
	}
}

func shouldPanic(f func()) {
	defer func() {
		if recover() == nil {
			panic("function should panic")
		}
	}()
	f()
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
## issue4316
```go
// run

// Copyright 2012 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Issue 4316: the stack overflow check in the linker
// is confused when it encounters a split-stack function
// that needs 0 bytes of stack space.

package main

type Peano *Peano

func makePeano(n int) *Peano {
	if n == 0 {
		return nil
	}
	p := Peano(makePeano(n - 1))
	return &p
}

var countArg Peano
var countResult int

func countPeano() {
	if countArg == nil {
		countResult = 0
		return
	}
	countArg = *countArg
	countPeano()
	countResult++
}

var s = "(())"
var pT = 0

func p() {
	if pT >= len(s) {
		return
	}
	if s[pT] == '(' {
		pT += 1
		p()
		if pT < len(s) && s[pT] == ')' {
			pT += 1
		} else {
			return
		}
		p()
	}
}

func main() {
	countArg = makePeano(4096)
	countPeano()
	if countResult != 4096 {
		println("countResult =", countResult)
		panic("countResult != 4096")
	}

	p()
}

```
## issue50672
```go
// run

// Copyright 2022 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

var ok = false

func f() func(int, int) int {
	ok = true
	return func(int, int) int { return 0 }
}

func g() (int, int) {
	if !ok {
		panic("FAIL")
	}
	return 0, 0
}

var _ = f()(g())

func main() {
	f1()
	f2()
	f3()
	f4()
}

func f1() {
	ok := false

	f := func() func(int, int) {
		ok = true
		return func(int, int) {}
	}
	g := func() (int, int) {
		if !ok {
			panic("FAIL")
		}
		return 0, 0
	}

	f()(g())
}

type S struct{}

func (S) f(int, int) {}

func f2() {
	ok := false

	f := func() S {
		ok = true
		return S{}
	}
	g := func() (int, int) {
		if !ok {
			panic("FAIL")
		}
		return 0, 0
	}

	f().f(g())
}

func f3() {
	ok := false

	f := func() []func(int, int) {
		ok = true
		return []func(int, int){func(int, int) {}}
	}
	g := func() (int, int) {
		if !ok {
			panic("FAIL")
		}
		return 0, 0
	}
	f()[0](g())
}

type G[T any] struct{}

func (G[T]) f(int, int) {}

func f4() {
	ok := false

	f := func() G[int] {
		ok = true
		return G[int]{}
	}
	g := func() (int, int) {
		if !ok {
			panic("FAIL")
		}
		return 0, 0
	}

	f().f(g())
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
