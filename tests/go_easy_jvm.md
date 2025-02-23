# go_easy_jvm
## defer_aggregate
```go
// run

// Copyright 2021 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

const p0exp = "foo"
const p1exp = 10101
const p2exp = 3030303
const p3exp = 505050505
const p4exp = 70707070707

//go:noinline
//go:registerparams
func callee(p0 string, p1 uint64, p2 uint64, p3 uint64, p4 uint64) {
	if p0 != p0exp {
		panic("bad p0")
	}
	if p1 != p1exp {
		panic("bad p1")
	}
	if p2 != p2exp {
		panic("bad p2")
	}
	if p3 != p3exp {
		panic("bad p3")
	}
	if p4 != p4exp {
		panic("bad p4")
	}
	defer func(p0 string, p2 uint64) {
		if p0 != p0exp {
			panic("defer bad p0")
		}
		if p1 != p1exp {
			panic("defer bad p1")
		}
		if p2 != p2exp {
			panic("defer bad p2")
		}
	}(p0, p2)
}

func main() {
	callee(p0exp, p1exp, p2exp, p3exp, p4exp)
}

```
## defer_recover_results
```go
// run

// Copyright 2021 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Test that when a function recovers from a panic, it
// returns the correct results to the caller (in particular,
// setting the result registers correctly).

package main

type S struct {
	x uint8
	y uint16
	z uint32
	w float64
}

var a0, b0, c0, d0 = 10, "hello", S{1, 2, 3, 4}, [2]int{111, 222}

//go:noinline
//go:registerparams
func F() (a int, b string, _ int, c S, d [2]int) {
	a, b, c, d = a0, b0, c0, d0
	defer func() { recover() }()
	panic("XXX")
	return
}

func main() {
	a1, b1, zero, c1, d1 := F()
	if a1 != a0 || b1 != b0 || c1 != c0 || d1 != d0 || zero != 0 { // unnamed result gets zero value
		panic("FAIL")
	}
}

```
## method_wrapper
```go
// run

// Copyright 2021 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

type S int

type T struct {
	a int
	S
}

//go:noinline
func (s *S) M(a int, x [2]int, b float64, y [2]float64) (S, int, [2]int, float64, [2]float64) {
	return *s, a, x, b, y
}

var s S = 42
var t = &T{S: s}

var fn = (*T).M // force a method wrapper

func main() {
	a := 123
	x := [2]int{456, 789}
	b := 1.2
	y := [2]float64{3.4, 5.6}
	s1, a1, x1, b1, y1 := fn(t, a, x, b, y)
	if a1 != a || x1 != x || b1 != b || y1 != y || s1 != s {
		panic("FAIL")
	}
}

```
## open_defer_1
```go
// run

// Copyright 2021 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// For #45062, miscompilation of open defer of method invocation

package main

func main() {
	var x, y, z int = -1, -2, -3
	F(x, y, z)
}

//go:noinline
func F(x, y, z int) {
	defer i.M(x, y, z)
	defer func() { recover() }()
	panic("XXX")
}

type T int

func (t *T) M(x, y, z int) {
	if x == -1 && y == -2 && z == -3 {
		return
	}
	println("FAIL: Expected -1, -2, -3, but x, y, z =", x, y, z)
}

var t T = 42

type I interface{ M(x, y, z int) }

var i I = &t

```
## result_regalloc
```go
// run

// Copyright 2021 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Bug: in (*bb).d, the value to be returned was not allocated to
// a register that satisfies its register mask.

package main

type bb struct {
	r float64
	x []float64
}

//go:noinline
func B(r float64, x []float64) I {
	return bb{r, x}
}

func (b bb) d() (int, int) {
	if b.r == 0 {
		return 0, len(b.x)
	}
	return len(b.x), len(b.x)
}

type I interface { d() (int, int) }

func D(r I) (int, int) { return r.d() }

//go:noinline
func F() (int, int) {
	r := float64(1)
	x := []float64{0, 1, 2}
	b := B(r, x)
	return D(b)
}

func main() {
	x, y := F()
	if x != 3 || y != 3 {
		panic("FAIL")
	}
}

```
## store_reg_args
```go
// run

// Copyright 2021 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// When the function Store an Arg and also use it in another place,
// be sure not to generate duplicated OpArgXXXReg values, which confuses
// the register allocator.

package main

//go:noinline
//go:registerparams
func F(x, y float32) {
	if x < 0 {
		panic("FAIL")
	}
	g = [4]float32{x, y, x, y}
}

var g [4]float32

func main() {
	F(1, 2)
	if g[0] != 1 || g[1] != 2 || g[2] != 1 || g[3] != 2 {
		panic("FAIL")
	}
}

```
## bigmap
```go
// run

// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Internally a map holds elements in up to 255 bytes of key+value.
// When key or value or both are too large, it uses pointers to key+value
// instead.  Test all the combinations.

package main

func seq(x, y int) [1000]byte {
	var r [1000]byte
	for i := 0; i < len(r); i++ {
		r[i] = byte(x + i*y)
	}
	return r
}

func cmp(x, y [1000]byte) {
	for i := 0; i < len(x); i++ {
		if x[i] != y[i] {
			panic("BUG mismatch")
		}
	}
}

func main() {
	m := make(map[int][1000]byte)
	m[1] = seq(11, 13)
	m[2] = seq(2, 9)
	m[3] = seq(3, 17)

	cmp(m[1], seq(11, 13))
	cmp(m[2], seq(2, 9))
	cmp(m[3], seq(3, 17))
	

	{
		type T [1]byte
		type V [1]byte
		m := make(map[T]V)
		m[T{}] = V{1}
		m[T{1}] = V{2}
		if x, y := m[T{}][0], m[T{1}][0]; x != 1 || y != 2 {
			println(x, y)
			panic("bad map")
		}
  	}
	{
		type T [100]byte
		type V [1]byte
		m := make(map[T]V)
		m[T{}] = V{1}
		m[T{1}] = V{2}
		if x, y := m[T{}][0], m[T{1}][0]; x != 1 || y != 2 {
			println(x, y)
			panic("bad map")
		}
	}
	{
		type T [1]byte
		type V [100]byte
		m := make(map[T]V)
		m[T{}] = V{1}
		m[T{1}] = V{2}
		if x, y := m[T{}][0], m[T{1}][0]; x != 1 || y != 2 {
			println(x, y)
			panic("bad map")
		}
	}
	{
		type T [1000]byte
		type V [1]byte
		m := make(map[T]V)
		m[T{}] = V{1}
		m[T{1}] = V{2}
		if x, y := m[T{}][0], m[T{1}][0]; x != 1 || y != 2 {
			println(x, y)
			panic("bad map")
		}
	}
	{
		type T [1]byte
		type V [1000]byte
		m := make(map[T]V)
		m[T{}] = V{1}
		m[T{1}] = V{2}
		if x, y := m[T{}][0], m[T{1}][0]; x != 1 || y != 2 {
			println(x, y)
			panic("bad map")
		}
	}
	{
		type T [1000]byte
		type V [1000]byte
		m := make(map[T]V)
		m[T{}] = V{1}
		m[T{1}] = V{2}
		if x, y := m[T{}][0], m[T{1}][0]; x != 1 || y != 2 {
			println(x, y)
			panic("bad map")
		}
	}
	{
		type T [200]byte
		type V [1]byte
		m := make(map[T]V)
		m[T{}] = V{1}
		m[T{1}] = V{2}
		if x, y := m[T{}][0], m[T{1}][0]; x != 1 || y != 2 {
			println(x, y)
			panic("bad map")
		}
	}
	{
		type T [1]byte
		type V [200]byte
		m := make(map[T]V)
		m[T{}] = V{1}
		m[T{1}] = V{2}
		if x, y := m[T{}][0], m[T{1}][0]; x != 1 || y != 2 {
			println(x, y)
			panic("bad map")
		}
	}
	{
		type T [200]byte
		type V [200]byte
		m := make(map[T]V)
		m[T{}] = V{1}
		m[T{1}] = V{2}
		if x, y := m[T{}][0], m[T{1}][0]; x != 1 || y != 2 {
			println(x, y)
			panic("bad map")
  		}
  	}
}

```
## closure2
```go
// run

// Copyright 2015 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Check that these do not use "by value" capturing,
// because changes are made to the value during the closure.

package main

var never bool

func main() {
	{
		type X struct {
			v int
		}
		var x X
		func() {
			x.v++
		}()
		if x.v != 1 {
			panic("x.v != 1")
		}

		type Y struct {
			X
		}
		var y Y
		func() {
			y.v = 1
		}()
		if y.v != 1 {
			panic("y.v != 1")
		}
	}

	{
		type Z struct {
			a [3]byte
		}
		var z Z
		func() {
			i := 0
			for z.a[1] = 1; i < 10; i++ {
			}
		}()
		if z.a[1] != 1 {
			panic("z.a[1] != 1")
		}
	}

	{
		w := 0
		tmp := 0
		f := func() {
			if w != 1 {
				panic("w != 1")
			}
		}
		func() {
			tmp = w // force capture of w, but do not write to it yet
			_ = tmp
			func() {
				func() {
					w++ // write in a nested closure
				}()
			}()
		}()
		f()
	}

	{
		var g func() int
		var i int
		for i = range [2]int{} {
			if i == 0 {
				g = func() int {
					return i // test that we capture by ref here, i is mutated on every interaction
				}
			}
		}
		if g() != 1 {
			panic("g() != 1")
		}
	}

	{
		var g func() int
		q := 0
		for range [2]int{} {
			q++
			g = func() int {
				return q // test that we capture by ref here
				// q++ must on a different decldepth than q declaration
			}
		}
		if g() != 2 {
			panic("g() != 2")
		}
	}

	{
		var g func() int
		var a [2]int
		q := 0
		for a[func() int {
			q++
			return 0
		}()] = range [2]int{} {
			g = func() int {
				return q // test that we capture by ref here
				// q++ must on a different decldepth than q declaration
			}
		}
		if g() != 2 {
			panic("g() != 2")
		}
	}

	{
		var g func() int
		q := 0
		q, g = 1, func() int { return q }
		if never {
			g = func() int { return 2 }
		}
		if g() != 1 {
			panic("g() != 1")
		}
	}
}

```
## closure4
```go
// run

// Copyright 2018 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Check that calling a nil func causes a proper panic.

package main

func main() {
	defer func() {
		err := recover()
		if err == nil {
			panic("panic expected")
		}
	}()

	var f func()
	f()
}

```
## convert4
```go
// run

// Copyright 2020 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Test conversion from slice to array pointer.

package main

func wantPanic(fn func(), s string) {
	defer func() {
		err := recover()
		if err == nil {
			panic("expected panic")
		}
		if got := err.(error).Error(); got != s {
			panic("expected panic " + s + " got " + got)
		}
	}()
	fn()
}

func main() {
	s := make([]byte, 8, 10)
	for i := range s {
		s[i] = byte(i)
	}
	if p := (*[8]byte)(s); &p[0] != &s[0] {
		panic("*[8]byte conversion failed")
	}
	if [8]byte(s) != *(*[8]byte)(s) {
		panic("[8]byte conversion failed")
	}
	wantPanic(
		func() {
			_ = (*[9]byte)(s)
		},
		"runtime error: cannot convert slice with length 8 to array or pointer to array with length 9",
	)
	wantPanic(
		func() {
			_ = [9]byte(s)
		},
		"runtime error: cannot convert slice with length 8 to array or pointer to array with length 9",
	)

	var n []byte
	if p := (*[0]byte)(n); p != nil {
		panic("nil slice converted to *[0]byte should be nil")
	}
	_ = [0]byte(n)

	z := make([]byte, 0)
	if p := (*[0]byte)(z); p == nil {
		panic("empty slice converted to *[0]byte should be non-nil")
	}
	_ = [0]byte(z)

	var p *[]byte
	wantPanic(
		func() {
			_ = [0]byte(*p) // evaluating *p should still panic
		},
		"runtime error: invalid memory address or nil pointer dereference",
	)

	// Test with named types
	type Slice []int
	type Int4 [4]int
	type PInt4 *[4]int
	ii := make(Slice, 4)
	if p := (*Int4)(ii); &p[0] != &ii[0] {
		panic("*Int4 conversion failed")
	}
	if p := PInt4(ii); &p[0] != &ii[0] {
		panic("PInt4 conversion failed")
	}
}

// test static variable conversion

var (
	ss  = make([]string, 10)
	s5  = (*[5]string)(ss)
	s10 = (*[10]string)(ss)

	ns  []string
	ns0 = (*[0]string)(ns)

	zs  = make([]string, 0)
	zs0 = (*[0]string)(zs)
)

func init() {
	if &ss[0] != &s5[0] {
		panic("s5 conversion failed")
	}
	if &ss[0] != &s10[0] {
		panic("s5 conversion failed")
	}
	if ns0 != nil {
		panic("ns0 should be nil")
	}
	if zs0 == nil {
		panic("zs0 should not be nil")
	}
}

```
## ddd
```go
// run

// Copyright 2010 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Test variadic functions and calls (dot-dot-dot).

package main

func sum(args ...int) int {
	s := 0
	for _, v := range args {
		s += v
	}
	return s
}

func sumC(args ...int) int { return func() int { return sum(args...) }() }

var sumD = func(args ...int) int { return sum(args...) }

var sumE = func() func(...int) int { return func(args ...int) int { return sum(args...) } }()

var sumF = func(args ...int) func() int { return func() int { return sum(args...) } }

func sumA(args []int) int {
	s := 0
	for _, v := range args {
		s += v
	}
	return s
}

func sumB(args []int) int { return sum(args...) }

func sum2(args ...int) int { return 2 * sum(args...) }

func sum3(args ...int) int { return 3 * sumA(args) }

func sum4(args ...int) int { return 4 * sumB(args) }

func intersum(args ...interface{}) int {
	s := 0
	for _, v := range args {
		s += v.(int)
	}
	return s
}

type T []T

func ln(args ...T) int { return len(args) }

func ln2(args ...T) int { return 2 * ln(args...) }

func (*T) Sum(args ...int) int { return sum(args...) }

type U struct {
	*T
}

type I interface {
	Sum(...int) int
}

func main() {
	if x := sum(1, 2, 3); x != 6 {
		println("sum 6", x)
		panic("fail")
	}
	if x := sum(); x != 0 {
		println("sum 0", x)
		panic("fail")
	}
	if x := sum(10); x != 10 {
		println("sum 10", x)
		panic("fail")
	}
	if x := sum(1, 8); x != 9 {
		println("sum 9", x)
		panic("fail")
	}
	if x := sumC(4, 5, 6); x != 15 {
		println("sumC 15", x)
		panic("fail")
	}
	if x := sumD(4, 5, 7); x != 16 {
		println("sumD 16", x)
		panic("fail")
	}
	if x := sumE(4, 5, 8); x != 17 {
		println("sumE 17", x)
		panic("fail")
	}
	if x := sumF(4, 5, 9)(); x != 18 {
		println("sumF 18", x)
		panic("fail")
	}
	if x := sum2(1, 2, 3); x != 2*6 {
		println("sum 6", x)
		panic("fail")
	}
	if x := sum2(); x != 2*0 {
		println("sum 0", x)
		panic("fail")
	}
	if x := sum2(10); x != 2*10 {
		println("sum 10", x)
		panic("fail")
	}
	if x := sum2(1, 8); x != 2*9 {
		println("sum 9", x)
		panic("fail")
	}
	if x := sum3(1, 2, 3); x != 3*6 {
		println("sum 6", x)
		panic("fail")
	}
	if x := sum3(); x != 3*0 {
		println("sum 0", x)
		panic("fail")
	}
	if x := sum3(10); x != 3*10 {
		println("sum 10", x)
		panic("fail")
	}
	if x := sum3(1, 8); x != 3*9 {
		println("sum 9", x)
		panic("fail")
	}
	if x := sum4(1, 2, 3); x != 4*6 {
		println("sum 6", x)
		panic("fail")
	}
	if x := sum4(); x != 4*0 {
		println("sum 0", x)
		panic("fail")
	}
	if x := sum4(10); x != 4*10 {
		println("sum 10", x)
		panic("fail")
	}
	if x := sum4(1, 8); x != 4*9 {
		println("sum 9", x)
		panic("fail")
	}
	if x := intersum(1, 2, 3); x != 6 {
		println("intersum 6", x)
		panic("fail")
	}
	if x := intersum(); x != 0 {
		println("intersum 0", x)
		panic("fail")
	}
	if x := intersum(10); x != 10 {
		println("intersum 10", x)
		panic("fail")
	}
	if x := intersum(1, 8); x != 9 {
		println("intersum 9", x)
		panic("fail")
	}

	if x := ln(nil, nil, nil); x != 3 {
		println("ln 3", x)
		panic("fail")
	}
	if x := ln([]T{}); x != 1 {
		println("ln 1", x)
		panic("fail")
	}
	if x := ln2(nil, nil, nil); x != 2*3 {
		println("ln2 3", x)
		panic("fail")
	}
	if x := ln2([]T{}); x != 2*1 {
		println("ln2 1", x)
		panic("fail")
	}
	if x := ((*T)(nil)).Sum(1, 3, 5, 7); x != 16 {
		println("(*T)(nil).Sum", x)
		panic("fail")
	}
	if x := (*T).Sum(nil, 1, 3, 5, 6); x != 15 {
		println("(*T).Sum", x)
		panic("fail")
	}
	if x := (&U{}).Sum(1, 3, 5, 5); x != 14 {
		println("(&U{}).Sum", x)
		panic("fail")
	}
	var u U
	if x := u.Sum(1, 3, 5, 4); x != 13 {
		println("u.Sum", x)
		panic("fail")
	}
	if x := (&u).Sum(1, 3, 5, 3); x != 12 {
		println("(&u).Sum", x)
		panic("fail")
	}
	var i interface {
		Sum(...int) int
	} = &u
	if x := i.Sum(2, 3, 5, 7); x != 17 {
		println("i(=&u).Sum", x)
		panic("fail")
	}
	i = u
	if x := i.Sum(2, 3, 5, 6); x != 16 {
		println("i(=u).Sum", x)
		panic("fail")
	}
	var s struct {
		I
	}
	s.I = &u
	if x := s.Sum(2, 3, 5, 8); x != 18 {
		println("s{&u}.Sum", x)
		panic("fail")
	}
	if x := (*U).Sum(&U{}, 1, 3, 5, 2); x != 11 {
		println("(*U).Sum", x)
		panic("fail")
	}
	if x := U.Sum(U{}, 1, 3, 5, 1); x != 10 {
		println("U.Sum", x)
		panic("fail")
	}
}

```
## decl
```go
// run

// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Test correct short declarations and redeclarations.

package main

func f1() int                    { return 1 }
func f2() (float32, int)         { return 1, 2 }
func f3() (float32, int, string) { return 1, 2, "3" }

func x() (s string) {
	a, b, s := f3()
	_, _ = a, b
	return // tests that result var is in scope for redeclaration
}

func main() {
	i, f, s := f3()
	j, f := f2() // redeclare f
	k := f1()
	m, g, s := f3()
	m, h, s := f3()
	{
		// new block should be ok.
		i, f, s := f3()
		j, f := f2() // redeclare f
		k := f1()
		m, g, s := f3()
		m, h, s := f3()
		_, _, _, _, _, _, _, _, _ = i, f, s, j, k, m, g, s, h
	}
	if y := x(); y != "3" {
		println("x() failed", y)
		panic("fail")
	}
	_, _, _, _, _, _, _, _, _ = i, f, s, j, k, m, g, s, h
}

```
## defernil
```go
// run

// Copyright 2019 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Check that deferring a nil function causes a proper
// panic when the deferred function is invoked (not
// when the function is deferred).
// See Issue #8047 and #34926.

package main

var x = 0

func main() {
	defer func() {
		err := recover()
		if err == nil {
			panic("did not panic")
		}
		if x != 1 {
			panic("FAIL")
		}
	}()
	f()
}

func f() {
	var nilf func()
	defer nilf()
	x = 1
}

```
## escape3
```go
// run

// Copyright 2011 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Test the run-time behavior of escape analysis-related optimizations.

package main

func main() {
	test1()
}

func test1() {
	check1(0)
	check1(1)
	check1(2)
}

type T1 struct {
	X, Y, Z int
}

func f() int {
	return 1
}

func check1(pass int) T1 {
	v := []T1{{X: f(), Z: f()}}
	if v[0].Y != 0 {
		panic("nonzero init")
	}
	v[0].Y = pass
	return v[0]
}

```
## bug017
```go
// run

// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

func main() {
	var s2 string = "\a\b\f\n\r\t\v";  // \r is miscompiled
	_ = s2;
}
/*
main.go.c: In function ‘main_main’:
main.go.c:20: error: missing terminating " character
main.go.c:21: error: missing terminating " character
main.go.c:24: error: ‘def’ undeclared (first use in this function)
main.go.c:24: error: (Each undeclared identifier is reported only once
main.go.c:24: error: for each function it appears in.)
main.go.c:24: error: syntax error before ‘def’
main.go.c:24: error: missing terminating " character
main.go.c:25: warning: excess elements in struct initializer
main.go.c:25: warning: (near initialization for ‘slit’)
main.go.c:36: error: syntax error at end of input
*/

```
## bug021
```go
// run

// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

func main() {
	s1 := "hi";
	s2 := "ho";
	s1 += s2;
}

```
## bug024
```go
// run

// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

func main() {
	var i int;
	i = '\'';
	i = '\\';
	var s string;
	s = "\"";
	_, _ = i, s;
}
/*
bug.go:5: unknown escape sequence: '
bug.go:6: unknown escape sequence: \
bug.go:8: unknown escape sequence: "
*/

```
## bug031
```go
// run

// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

func main() {
prog := "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"+
"xxxxxxxxxx"+
"xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"+
"xxxxxxxxxxxxxxxxxxxxxx"+
"xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"+
"xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"+
"xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"+
"xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"+
"xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"+
"xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"+
"xxxxxxxxxxxxxxxxxxx"+
"xxxxxx"+
"xxxxxxxxxxxxxxxxxxxx"+
"xxxxxxxx"+
"xxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
;
_ = prog;
}

/* Segmentation fault */

```
## bug045
```go
// run

// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

type T struct {
	i int
}

func main() {
	var ta []*T;

	ta = new([1]*T)[0:];
	ta[0] = nil;
}
/*
bug045.go:13: fatal error: goc: exit 1
*/

```
## bug047
```go
// run

// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

func main() {

	type T struct {
		s string
		f float64
	}
	var s string = "hello"
	var f float64 = 0.2
	t := T{s, f}

	type M map[int]int
	m0 := M{7: 8}

	_, _ = t, m0
}

```
## bug052
```go
// run

// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

func main() {
	c := 10;
	d := 7;
	var x [10]int;
	i := 0;
	/* this works:
	q := c/d;
	x[i] = q;
	*/
	// this doesn't:
	x[i] = c/d;	// BUG segmentation fault
}

```
## bug054
```go
// run

// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

type Element interface {
}

type Vector struct {
	elem []Element;
}

func (v *Vector) At(i int) Element {
	return v.elem[i];
}

type TStruct struct {
	name string;
	fields *Vector;
}

func (s *TStruct) field(i int) *TStruct {
	return s.fields.At(i).(*TStruct);
}

func main() {
	v := new(Vector);
	v.elem = make([]Element, 10);
	t := new(TStruct);
	t.name = "hi";
	v.elem[0] = t;
	s := new(TStruct);
	s.name = "foo";
	s.fields = v;
	if s.field(0).name != "hi" {
		panic("bad name")
	}
}

```
## bug058
```go
// run

// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

type Box struct {};
var m map[string] *Box;

func main() {
	m := make(map[string] *Box);
	s := "foo";
	var x *Box = nil;
	m[s] = x;
}

/*
bug058.go:9: illegal types for operand: INDEX
	(MAP[<string>*STRING]*<Box>{})
	(<string>*STRING)
*/

```
## bug061
```go
// run

// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

func main() {
	var s string;
	s = "0000000000000000000000000000000000000000000000000000000000"[0:7];
	_ = s;
}

/*
uetli:~/Source/go1/test/bugs gri$ 6g bug061.go
Bus error
*/

```
## bug075
```go
// run

// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

type T struct { m map[int]int }
func main() {
	t := new(T);
	t.m = make(map[int]int);
	var x int;
	var ok bool;
	x, ok = t.m[0];  //bug075.go:11: bad shape across assignment - cr=1 cl=2
	_, _ = x, ok;
}

```
## bug092
```go
// run

// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

func main() {
	var a [1000] int64;  // this alone works
	var b [10000] int64;  // this causes a runtime crash
	_, _ = a, b;
}

/*
uetli:~/Source/go1/test/bugs gri$ 6g bug092.go && 6l bug092.6 && 6.out
Illegal instruction

gri: array size matters, possibly related to stack overflow check?
*/

```
## bug097
```go
// run

// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

type A []int

func main() {
	var a [3]A
	for i := 0; i < 3; i++ {
		a[i] = A{i}
	}
	if a[0][0] != 0 {
		panic("fail a[0][0]")
	}
	if a[1][0] != 1 {
		panic("fail a[1][0]")
	}
	if a[2][0] != 2 {
		panic("fail a[2][0]")
	}
}

/*
uetli:~/Source/go1/test/bugs gri$ 6g bug097.go && 6l bug097.6 && 6.out

panic on line 342 PC=0x13c2
0x13c2?zi
	main·main(1, 0, 1606416416, ...)
	main·main(0x1, 0x7fff5fbff820, 0x0, ...)
SIGTRAP: trace trap
Faulting address: 0x4558
pc: 0x4558

0x4558?zi
	sys·Breakpoint(40960, 0, 45128, ...)
	sys·Breakpoint(0xa000, 0xb048, 0xa000, ...)
0x156a?zi
	sys·panicl(342, 0, 0, ...)
	sys·panicl(0x156, 0x300000000, 0xb024, ...)
0x13c2?zi
	main·main(1, 0, 1606416416, ...)
	main·main(0x1, 0x7fff5fbff820, 0x0, ...)
*/

/* An array composite literal needs to be created freshly every time.
It is a "construction" of an array after all. If I pass the address
of the array to some function, it may store it globally. Same applies
to struct literals.
*/

```
## bug101
```go
// run

// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

var a = []int { 1, 2, 3 }

func main() {
	if len(a) != 3 { panic("array len") }
	// print(a[0], " ", a[1], " ", a[2], "\n")
	if a[0] != 1 || a[1] != 2 || a[2] != 3 { panic("array contents") }
}

```
## bug102
```go
// run

// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

func main() {
	var b [0]byte
	s := string(b[0:]) // out of bounds trap
	if s != "" {
		panic("bad convert")
	}
	var b1 = [5]byte{'h', 'e', 'l', 'l', 'o'}
	if string(b1[0:]) != "hello" {
		panic("bad convert 1")
	}
	var b2 = make([]byte, 5)
	for i := 0; i < 5; i++ {
		b2[i] = b1[i]
	}
	if string(b2) != "hello" {
		panic("bad convert 2")
	}
}

```
## bug119
```go
// run

// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

func foo(a []int) int {
	return a[0] // this seems to do the wrong thing
}

func main() {
	a := &[]int{12}
	if x := (*a)[0]; x != 12 {
		panic(2)
	}
	if x := foo(*a); x != 12 {
		// fails (x is incorrect)
		panic(3)
	}
}

/*
uetli:~/Source/go1/test/bugs gri$ 6go bug119
3 70160

panic on line 83 PC=0x14d6
0x14d6?zi
	main·main(23659, 0, 1, ...)
	main·main(0x5c6b, 0x1, 0x7fff5fbff830, ...)
0x52bb?zi
	mainstart(1, 0, 1606416432, ...)
	mainstart(0x1, 0x7fff5fbff830, 0x0, ...)
uetli:~/Source/go1/test/bugs gri$
*/

```
## bug148
```go
// run

// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

type T struct {a, b int};

func println(x, y int) { }

func f(x interface{}) interface{} {
	type T struct {a, b int};

	if x == nil {
		return T{2, 3};
	}

	t := x.(T);
	println(t.a, t.b);
	return x;
}

func main() {
	inner_T := f(nil);
	f(inner_T);

	shouldPanic(p1)
}

func p1() {
	outer_T := T{5, 7};
	f(outer_T);
}

func shouldPanic(f func()) {
	defer func() {
		if recover() == nil {
			panic("function should panic")
		}
	}()
	f()
}

/*
This prints:

2 3
5 7

but it should crash: The type assertion on line 18 should fail
for the 2nd call to f with outer_T.
*/

```
## bug1515
```go
// run

// Copyright 2011 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

const (
	joao = "João"
	jose = "José"
)

func main() {
	s1 := joao
	s2 := jose
	if (s1 < s2) != (joao < jose) {
		panic("unequal")
	}
}

```
## bug152
```go
// run

// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

func main() {
	s := 0;
	for _, v := range []int{1} {
		s += v;
	}
	if s != 1 {
		println("BUG: s =", s);
	}
}

```
## bug168
```go
// run

// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

var g byte = 123
var f *byte = &g
var b = make([]byte, 5)

func main() {
	b[0:1][0] = *f
	if b[0] != 123 {
		println("want 123 got", b[0])
		panic("fail")
	}
}

```
## bug194
```go
// run

// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

var v1 = T1(1)
var v2 = T2{2}
var v3 = T3{0: 3, 1: 4}
var v4 = T4{0: 5, 1: 6}
var v5 = T5{0: 7, 1: 8}
var v6 = T2{f: 9}
var v7 = T4{f: 10}
var v8 = T5{f: 11}
var pf func(T1)

func main() {
	if v1 != 1 || v2.f != 2 || v3[0] != 3 || v3[1] != 4 ||
		v4[0] != 5 || v4[1] != 6 || v5[0] != 7 || v5[1] != 8 ||
		v6.f != 9 || v7[0] != 10 || v8[0] != 11 {
		panic("fail")
	}
}

type T1 int
type T2 struct {
	f int
}
type T3 []int
type T4 [2]int
type T5 map[int]int

const f = 0

```
## bug199
```go
// run

// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

type S struct {
	a []int
}

var s = &S{make([]int, 10)}

func main() {
	s.a[f()] = 1 // 6g used to call f twice here
}

var n int

func f() int {
	if n++; n > 1 {
		println("f twice")
		panic("fail")
	}
	return 0
}

```
## bug202
```go
// run

// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main
func f() {
	v := [...]string{"a", "b"};
	_ = v;
}
func main() {
	f();
}



```
## bug203
```go
// run

// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

var s [8]string

func
init() {
       s = [...]string{ "now", "is", "the", "time", "to", "fix", "this", "bug"}
}

func
main() {
}

```
## bug204
```go
// run

// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

func main() {
	nchar := 0
	a := []rune{'日', '本', '語', 0xFFFD}
	for _, char := range "日本語\xc0" {
		if nchar >= len(a) {
			println("BUG")
			break
		}
		if char != a[nchar] {
			println("expected", a[nchar], "got", char)
			println("BUG")
			break
		}
		nchar++
	}
}

```
## bug221
```go
// run

// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// function call arg reordering was picking out 1 call that
// didn't need to be in a temporary, but it was picking
// out the first call instead of the last call.
// https://golang.org/issue/370

package main

var gen = 'a'

func f(n int) string {
	s := string(gen) + string(n+'A'-1)
	gen++
	return s
}

func g(x, y string) string {
	return x + y
}

func main() {
	s := f(1) + f(2)
	if s != "aAbB" {
		println("BUG: bug221a: ", s)
		panic("fail")
	}
	s = g(f(3), f(4))
	if s != "cCdD" {
		println("BUG: bug221b: ", s)
		panic("fail")
	}
	s = f(5) + f(6) + f(7) + f(8) + f(9)
	if s != "eEfFgGhHiI" {
		println("BUG: bug221c: ", s)
		panic("fail")
	}
}

```
## bug227
```go
// run

// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

var (
	nf      int
	x, y, z = f(), f(), f()
	m       = map[string]string{"a": "A"}
	a, aok  = m["a"]
	b, bok  = m["b"]
)

func look(s string) (string, bool) {
	x, ok := m[s]
	return x, ok
}

func f() int {
	nf++
	return nf
}

func main() {
	if nf != 3 || x != 1 || y != 2 || z != 3 {
		println("nf=", nf, " x=", x, " y=", y)
		panic("fail")
	}
	if a != "A" || aok != true || b != "" || bok != false {
		println("a=", a, " aok=", aok, " b=", b, " bok=", bok)
		panic("fail")
	}
}

```
## bug236
```go
// run

// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

var gen = 'a'

func f(n int) string {
	s := string(gen) + string(n+'A'-1)
	gen++
	return s
}

func g(x, y string) string { return x + y }

var v1 = f(1) + f(2)
var v2 = g(f(3), f(4))
var v3 = f(5) + f(6) + f(7) + f(8) + f(9)

func main() {
	gen = 'a'

	if v1 != "aAbB" {
		panic("BUG: bug236a")
	}
	if v2 != "cCdD" {
		panic("BUG: bug236b")
	}
	if v3 != "eEfFgGhHiI" {
		panic("BUG: bug236c")
	}

	switch "aAbB" {
	case f(1) + f(2):
	default:
		panic("BUG: bug236d")
	}

	switch "cCdD" {
	case g(f(3), f(4)):
	default:
		panic("BUG: bug236e")
	}

	switch "eEfFgGhHiI" {
	case f(5) + f(6) + f(7) + f(8) + f(9):
	default:
		panic("BUG: bug236f")
	}
}

```
## bug244
```go
// run

// Copyright 2010 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

var nf int
var ng int

func f() (int, int, int) {
	nf++
	return 1, 2, 3
}

func g() int {
	ng++
	return 4
}

var x, y, z = f()
var m = make(map[int]int)
var v, ok = m[g()]

func main() {
	if x != 1 || y != 2 || z != 3 || nf != 1 || v != 0 || ok != false || ng != 1 {
		println("x=", x, " y=", y, " z=", z, " nf=", nf, " v=", v, " ok=", ok, " ng=", ng)
		panic("fail")
	}
}

```
## bug261
```go
// run

// Copyright 2010 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

var n int

func f() int {
	n++
	return n
}

func main() {
	x := []int{0,1,2,3,4,5,6,7,8,9,10}
	n = 5
	y := x[f():f()]
	if len(y) != 1 || y[0] != 6 {
		println("BUG bug261", len(y), y[0])
	}
}

```
## bug263
```go
// run

// Copyright 2010 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

func main() {
	data := make(map[int]string, 1)
	data[0] = "hello, "
	data[0] += "world!"
	if data[0] != "hello, world!" {
		panic("BUG: " + data[0])
	}
}

```
## bug266
```go
// run

// Copyright 2010 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

func f() int {
	defer func() {
		recover()
	}()
	panic("oops")
}

func g() int {	
	return 12345
}

func main() {
	g()	// leave 12345 on stack
	x := f()
	if x != 0 {
		panic(x)
	}
}

```
## bug272
```go
// run

// Copyright 2010 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// https://golang.org/issue/589

package main

func main() {	
	n := int64(100)
	x := make([]int, n)
	x[99] = 234;	
	z := x[n-1]
	if z != 234 {
		println("BUG")
	}
	n |= 1<<32
	defer func() {
		recover()
	}()
	z = x[n-1]
	println("BUG2")
}

```
## bug286
```go
// run

// Copyright 2010 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Test case for issue 849.

package main

type I interface {
	f()
}

var callee string
var error_ bool

type T int

func (t *T) f() { callee = "f" }
func (i *T) g() { callee = "g" }

// test1 and test2 are the same except that in the interface J
// the entries are swapped. test2 and test3 are the same except
// that in test3 the interface J is declared outside the function.
//
// Error: test2 calls g instead of f

func test1(x I) {
	type J interface {
		I
		g()
	}
	x.(J).f()
	if callee != "f" {
		println("test1 called", callee)
		error_ = true
	}
}

func test2(x I) {
	type J interface {
		g()
		I
	}
	x.(J).f()
	if callee != "f" {
		println("test2 called", callee)
		error_ = true
	}
}

type J interface {
	g()
	I
}

func test3(x I) {
	x.(J).f()
	if callee != "f" {
		println("test3 called", callee)
		error_ = true
	}
}

func main() {
	x := new(T)
	test1(x)
	test2(x)
	test3(x)
	if error_ {
		panic("wrong method called")
	}
}

/*
6g bug286.go && 6l bug286.6 && 6.out
test2 called g
panic: wrong method called

panic PC=0x24e040
runtime.panic+0x7c /home/gri/go1/src/pkg/runtime/proc.c:1012
	runtime.panic(0x0, 0x24e0a0)
main.main+0xef /home/gri/go1/test/bugs/bug286.go:76
	main.main()
mainstart+0xf /home/gri/go1/src/pkg/runtime/amd64/asm.s:60
	mainstart()
goexit /home/gri/go1/src/pkg/runtime/proc.c:145
	goexit()
*/

```
## bug293
```go
// run

// Copyright 2010 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// https://golang.org/issue/846

package main

func x() (a int, b bool) {
	defer func(){
		a++
	}()
	a, b = y()
	return
}

func x2() (a int, b bool) {
	defer func(){
		a++
	}()
	return y()
}

func y() (int, bool) {
	return 4, false
}

func main() {
	if a, _ := x(); a != 5 {
		println("BUG", a)
	}
	if a, _ := x2(); a != 5 {
		println("BUG", a)
	}
}

```
## bug294
```go
// run

// Copyright 2010 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// https://golang.org/issue/800

package main

var log string

type T int

func (t T) a(s string) T {
	log += "a(" + s + ")"
	return t
}

func (T) b(s string) string {
	log += "b"
	return s
}

type F func(s string) F

func a(s string) F {
	log += "a(" + s + ")"
	return F(a)
}

func b(s string) string {
	log += "b"
	return s
}

type I interface {
	a(s string) I
	b(s string) string
}

type T1 int

func (t T1) a(s string) I {
	log += "a(" + s + ")"
	return t
}

func (T1) b(s string) string {
	log += "b"
	return s
}

var ok = true

func bad() {
	if !ok {
		println("BUG")
		ok = false
	}
	println(log)
}

func main() {
	var t T
	if t.a("1").a(t.b("2")); log != "a(1)ba(2)" {
		bad()
	}
	log = ""
	if a("3")(b("4"))(b("5")); log != "a(3)ba(4)ba(5)" {
		bad()
	}
	log = ""
	var i I = T1(0)
	if i.a("6").a(i.b("7")).a(i.b("8")).a(i.b("9")); log != "a(6)ba(7)ba(8)ba(9)" {
		bad()
	}
}


```
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
## bug311
```go
// run

// Copyright 2010 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

func main() {
	m := make(map[string][1000]byte)
	m["hi"] = [1000]byte{1}
	
	v := m["hi"]
	
	for k, vv := range m {
		if k != "hi" || string(v[:]) != string(vv[:]) {
			panic("bad iter")
		}
	}
}

```
## bug317
```go
// run

// Copyright 2011 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

func main() {
	x := []uint{0}
	x[0] &^= f()
}

func f() uint {
	return 1<<31 // doesn't panic with 1<<31 - 1
}

```
## bug333
```go
// run

// Copyright 2011 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Issue 1709

package main

func main() {
       type Ts string
       var ts Ts
       _ = []byte(ts)
}

/*
bug333.go:14: cannot use ts (type Ts) as type string in function argument
*/

```
## bug343
```go
// run

// Copyright 2011 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// issue 1900

package main

func getArgs(data map[string]interface{}, keys ...string) map[string]string {
       ret := map[string]string{}
       var ok bool
       for _, k := range keys {
               ret[k], ok = data[k].(string)
               if !ok {}
       }
       return ret
}

func main() {
	x := getArgs(map[string]interface{}{"x":"y"}, "x")
	if x["x"] != "y" {
		println("BUG bug343", x)
	}
}
	

/*
typecheck [1008592b0]
.   INDREG a(1) l(15) x(24) tc(2) runtime.ret G0 string
bug343.go:15: internal compiler error: typecheck INDREG
*/

```
## bug352
```go
// run

// Copyright 2011 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

var x [10][0]byte
var y = make([]struct{}, 10)

func main() {
	if &x[1] != &x[2] {
		println("BUG: bug352 [0]byte")
	}
	if &y[1] != &y[2] {
		println("BUG: bug352 struct{}")
	}
}

```
## bug356
```go
// run

// Copyright 2011 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// issue 1808

package main

func main() {
	var i uint64
	var x int = 12345

	if y := x << (i&5); y != 12345<<0 {
		println("BUG bug344", y)
		return
	}
	
	i++
	if y := x << (i&5); y != 12345<<1 {
		println("BUG bug344a", y)
	}
	
	i = 70
	if y := x << i; y != 0 {
		println("BUG bug344b", y)
	}
	
	i = 1<<32
	if y := x << i; y != 0 {
		println("BUG bug344c", y)
	}
}
	

/*
typecheck [1008592b0]
.   INDREG a(1) l(15) x(24) tc(2) runtime.ret G0 string
bug343.go:15: internal compiler error: typecheck INDREG
*/

```
## bug366
```go
// run

// Copyright 2011 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Issue 2206.  Incorrect sign extension of div arguments.

package main

func five(x int64) {
	if x != 5 {
		panic(x)
	}
}

func main() {
       // 5
       five(int64(5 / (5 / 3)))

       // 5
       five(int64(byte(5) / (byte(5) / byte(3))))

       // 5
       var a, b byte = 5, 3
       five(int64(a / (a / b)))
       
       // integer divide by zero in golang.org sandbox
       // 0 on windows/amd64
       x := [3]byte{2, 3, 5}
       five(int64(x[2] / (x[2] / x[1])))

       // integer divide by zero in golang.org sandbox
       // crash on windows/amd64
       y := x[1:3]
       five(int64(y[1] / (y[1] / y[0])))
}
```
## bug372
```go
// run

// Copyright 2011 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Issue 2355
package main

type T struct {}
func (T) m() string { return "T" }

type TT struct {
	T
	m func() string
}


func ff() string { return "ff" }

func main() {
	var tt TT
	tt.m = ff

	if tt.m() != "ff" {
		println(tt.m(), "!= \"ff\"")
	}
}

```
## bug375
```go
// run

// Copyright 2011 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Issue 2423

package main

func main() {
	var x interface{} = "hello"

	switch x {
	case "hello":
	default:
		println("FAIL")
	}
}

```
## bug406
```go
// run

// Copyright 2012 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Issue 2821
package main

type matrix struct {
	e []int
}

func (a matrix) equal() bool {
	for _ = range a.e {
	}
	for range a.e {
	}
	return true
}

func main() {
	var a matrix
	var i interface{}
	i = true && a.equal()
	_ = i
}

```
## bug409
```go
// run

// Copyright 2012 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Multiple inlined calls to a function that causes
// redundant address loads.

package main

func F(v [2]float64) [2]float64 {
	return [2]float64{v[0], v[1]}
}

func main() {
	a := F([2]float64{1, 2})
	b := F([2]float64{3, 4})
	println(a[0], a[1], b[0], b[1])
}

```
## bug428
```go
// run

// Copyright 2012 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Test that when the compiler expands append inline it does not
// overwrite a value before it needs it (issue 3369).

package main

func main() {
	s := make([]byte, 5, 6)
	copy(s, "12346")
	s = append(s[:len(s)-1], '5', s[len(s)-1])
	if string(s) != "123456" {
		panic(s)
	}
}

```
## bug442
```go
// run

// Copyright 2012 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Used to crash generating hash and == functions for struct
// with leading _ field.  Issue 3607.

package main

type T struct {
	_ int
	X interface{}
	_ string
	Y float64
}

func main() {
	m := map[T]int{}
	m[T{X: 1, Y: 2}] = 1
	m[T{X: 2, Y: 3}] = 2
	m[T{X: 1, Y: 2}] = 3  // overwrites first entry
	if len(m) != 2 {
		println("BUG")
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
## bug454
```go
// run

// Copyright 2012 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Issue 4173

package main

func main() {
	var arr *[10]int
	s := 0
	for i, _ := range arr {
		// used to panic trying to access arr[i]
		s += i
	}
	if s != 45 {
		println("BUG")
	}
}

```
## bug473
```go
// run

// Copyright 2013 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Used to be miscompiled by gccgo, due to a bug in handling
// initialization ordering.

package main

func F(a ...interface{}) interface{} {
	s := 0
	for _, v := range a {
		s += v.(int)
	}
	return s
}

var V1 = F(V10, V4, V3, V11)

var V2 = F(V1)

var V3 = F(1)

var V4 = F(2)

var V5 = F(3)

var V6 = F(4)

var V7 = F(5)

var V8 = F(V14, V7, V3, V6, V5)

var V9 = F(V4, F(V12))

var V10 = F(V4, V9)

var V11 = F(6)

var V12 = F(V5, V3, V8)

var V13 = F(7)

var V14 = F(8)

func expect(name string, a interface{}, b int) {
	if a.(int) != b {
		panic(name)
	}
}

func main() {
	expect("V1", V1, 38)
	expect("V2", V2, 38)
	expect("V3", V3, 1)
	expect("V4", V4, 2)
	expect("V5", V5, 3)
	expect("V6", V6, 4)
	expect("V7", V7, 5)
	expect("V8", V8, 21)
	expect("V9", V9, 27)
	expect("V10", V10, 29)
	expect("V11", V11, 6)
	expect("V12", V12, 25)
	expect("V13", V13, 7)
	expect("V14", V14, 8)
}

```
## bug485
```go
// run

// Copyright 2014 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Gccgo chose the wrong embedded method when the same type appeared
// at different levels and the correct choice was not the first
// appearance of the type in a depth-first search.

package main

type embedded string

func (s embedded) val() string {
	return string(s)
}

type A struct {
	embedded
}

type B struct {
	A
	embedded
}

func main() {
	b := &B{
		A: A{
			embedded: "a",
		},
		embedded: "b",
	}
	s := b.val()
	if s != "b" {
		panic(s)
	}
}

```
## bug491
```go
// run

// Copyright 2014 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Test order of calls to builtin functions.
// Discovered during CL 144530045 review.

package main

func main() {
	// append
	{
		x := make([]int, 0)
		f := func() int { x = make([]int, 2); return 2 }
		a, b, c := append(x, 1), f(), append(x, 1)
		if len(a) != 1 || len(c) != 3 {
			bug()
			println("append call not ordered:", len(a), b, len(c))
		}
	}

	// cap
	{
		x := make([]int, 1)
		f := func() int { x = make([]int, 3); return 2 }
		a, b, c := cap(x), f(), cap(x)
		if a != 1 || c != 3 {
			bug()
			println("cap call not ordered:", a, b, c)
		}
	}

	// complex
	{
		x := 1.0
		f := func() int { x = 3; return 2 }
		a, b, c := complex(x, 0), f(), complex(x, 0)
		if real(a) != 1 || real(c) != 3 {
			bug()
			println("complex call not ordered:", a, b, c)
		}
	}

	// copy
	{
		tmp := make([]int, 100)
		x := make([]int, 1)
		f := func() int { x = make([]int, 3); return 2 }
		a, b, c := copy(tmp, x), f(), copy(tmp, x)
		if a != 1 || c != 3 {
			bug()
			println("copy call not ordered:", a, b, c)
		}
	}

	// imag
	{
		x := 1i
		f := func() int { x = 3i; return 2 }
		a, b, c := imag(x), f(), imag(x)
		if a != 1 || c != 3 {
			bug()
			println("imag call not ordered:", a, b, c)
		}
	}

	// len
	{
		x := make([]int, 1)
		f := func() int { x = make([]int, 3); return 2 }
		a, b, c := len(x), f(), len(x)
		if a != 1 || c != 3 {
			bug()
			println("len call not ordered:", a, b, c)
		}
	}

	// make
	{
		x := 1
		f := func() int { x = 3; return 2 }
		a, b, c := make([]int, x), f(), make([]int, x)
		if len(a) != 1 || len(c) != 3 {
			bug()
			println("make call not ordered:", len(a), b, len(c))
		}
	}

	// real
	{
		x := 1 + 0i
		f := func() int { x = 3; return 2 }
		a, b, c := real(x), f(), real(x)
		if a != 1 || c != 3 {
			bug()
			println("real call not ordered:", a, b, c)
		}
	}
}

var bugged = false

func bug() {
	if !bugged {
		println("BUG")
		bugged = true
	}
}
```
## bug497
```go
// run

// Copyright 2015 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Gccgo used to miscompile passing a global variable with a
// zero-sized type to a function.

package main

type T struct {
	field s
}

type s struct{}

var X T

func F(_ T, c interface{}) int {
	return len(c.(string))
}

func main() {
	if v := F(X, "hi"); v != 2 {
		panic(v)
	}
}

```
## bug501
```go
// run

// Copyright 2016 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Gccgo got a compiler crash compiling the addition of more than five
// strings with mixed constants and variables.

package main

func F(s string) (string, error) {
	return s, nil
}

func G(a, b, c string) (string, error) {
	return F("a" + a + "b" + b + "c" + c)
}

func main() {
	if got, _ := G("x", "y", "z"); got != "axbycz" {
		panic(got)
	}
}

```
## gcc61258
```go
// run

// Copyright 2014 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// PR61258: gccgo crashed when deleting a zero-sized key from a map.

package main

func main() {
	delete(make(map[[0]bool]int), [0]bool{})
}

```
## issue10135
```go
// run

// Copyright 2015 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Issue 10135: append a slice with zero-sized element used
// to always return a slice with the same data pointer as the
// old slice, even if it's nil, so this program used to panic
// with nil pointer dereference because after append, s is a
// slice with nil data pointer but non-zero len and cap.

package main

type empty struct{}

func main() {
	var s []empty

	s = append(s, empty{})

	for _, v := range s {
		_ = v
	}
}

```
## issue10253
```go
// run

// Copyright 2015 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// issue 10253: cmd/7g: bad codegen, probably regopt related

package main

func main() {
	if !eq() {
		panic("wrong value")
	}
}

var text = "abc"
var s = &str{text}

func eq() bool {
	return text[0] == s.text[0]
}

type str struct {
	text string
}

```
## issue11369
```go
// run

// Copyright 2015 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Test that the half multiply resulting from a division
// by a constant generates correct code.

package main

func main() {
	var _ = 7 / "0"[0] // test case from #11369
	var _ = 1 / "."[0] // test case from #11358
	var x = 0 / "0"[0]
	var y = 48 / "0"[0]
	var z = 5 * 48 / "0"[0]
	if x != 0 {
		panic("expected 0")
	}
	if y != 1 {
		panic("expected 1")
	}
	if z != 5 {
		panic("expected 5")
	}
}

```
## issue1304
```go
// run

// Copyright 2014 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

var a = 1

func main() {
	defer func() {
		recover()
		if a != 2 {
			println("BUG a =", a)
		}
	}()
	a = 2
	b := a - a
	c := 4
	a = c / b
	a = 3
}

```
## issue15039
```go
// run

// Copyright 2016 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

func main() {
	const fffd = "\uFFFD"

	// runtime.intstring used to convert int64 to rune without checking
	// for truncation.
	u := uint64(0x10001f4a9)
	big := string(u)
	if big != fffd {
		panic("big != bad")
	}

	// cmd/compile used to require integer constants to fit into an "int".
	const huge = string(1<<100)
	if huge != fffd {
		panic("huge != bad")
	}
}

```
## issue15252
```go
// run

// Copyright 2016 The Go Authors.  All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// This test makes sure that we use all 64 bits of an
// index, even on 32 bit machines.  It also tests that nacl
// can compile 64 bit indexes loaded from ODOTPTR properly.

package main

type T struct {
	i int64
}

func f(t *T) byte {
	b := [2]byte{3, 4}
	return b[t.i]
}

func main() {
	t := &T{0x100000001}
	defer func() {
		r := recover()
		if r == nil {
			panic("panic wasn't recoverable")
		}
	}()
	f(t)
	panic("index didn't panic")
}

```
## issue15902
```go
// run

// Copyright 2016 The Go Authors.  All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// This test makes sure we don't use 4-byte unaligned writes
// to zero memory on architectures that don't support them.

package main

type T struct {
	a byte
	b [10]byte
}

//go:noinline
func f(t *T) {
	// t will be aligned, so &t.b won't be.
	t.b = [10]byte{}
}

var t T

func main() {
	f(&t)
}

```
## issue15975
```go
// run

// Copyright 2016 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

var fail bool

type Closer interface {
	Close()
}

func nilInterfaceDeferCall() {
	var x Closer
	defer x.Close()
	// if it panics when evaluating x.Close, it should not reach here
	fail = true
}

func shouldPanic(f func()) {
	defer func() {
		if recover() == nil {
			panic("did not panic")
		}
	}()
	f()
}

func main() {
	shouldPanic(nilInterfaceDeferCall)
	if fail {
		panic("fail")
	}
}

```
## issue17039
```go
// run

// Copyright 2016 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

type S []S

func main() {
	var s S
	s = append(s, s) // append a nil value to s
	if s[0] != nil {
		println("BUG: s[0] != nil")
	}
}

```
## issue17752
```go
// run

// Copyright 2016 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

func f(m map[string]int) int {
	return m["a"]
}

func g(m map[[8]string]int) int {
	return m[[8]string{"a", "a", "a", "a", "a", "a", "a", "a"}]
}

func main() {
	m := map[[8]string]int{}
	g(m)
}

```
## issue18906
```go
// run

// Copyright 2017 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

//go:noinline
func f(x int) {
}

//go:noinline
func val() int8 {
	return -1
}

var (
	array = [257]int{}
	slice = array[1:]
)

func init() {
	for i := range array {
		array[i] = i - 1
	}
}

func main() {
	x := val()
	y := int(uint8(x))
	f(y) // try and force y to be calculated and spilled
	if slice[y] != 255 {
		panic("incorrect value")
	}
}

```
## issue19710
```go
// run

// Copyright 2017 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Issue 19710: mishandled defer delete(...)

package main

func main() {
	if n := len(f()); n != 0 {
		println("got", n, "want 0")
		panic("bad defer delete")
	}
}

func f() map[int]bool {
	m := map[int]bool{}
	for i := 0; i < 3; i++ {
		m[i] = true
		defer delete(m, i)
	}
	return m
}

```
## issue20811
```go
// run

// Copyright 2017 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Issue 20811: slice-in-bound check is lowered incorrectly on
// amd64p32.

package main

func main() {
	i := g()
	_ = "x"[int32(i)]
	j := g()
	_ = "x"[:int32(j)]
}

//go:noinline
func g() int64 {
	return 4398046511104
}


```
## issue21048
```go
// run

// Copyright 2017 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Issue 21048: s390x merged address generation into stores
// to unaligned global variables. This resulted in an illegal
// instruction.

package main

type T struct {
	_ [1]byte
	a [2]byte // offset: 1
	_ [3]byte
	b [2]uint16 // offset: 6
	_ [2]byte
	c [2]uint32 // offset: 12
	_ [2]byte
	d [2]int16 // offset: 22
	_ [2]byte
	e [2]int32 // offset: 28
}

var Source, Sink T

func newT() T {
	return T{
		a: [2]byte{1, 2},
		b: [2]uint16{1, 2},
		c: [2]uint32{1, 2},
		d: [2]int16{1, 2},
		e: [2]int32{1, 2},
	}
}

//go:noinline
func moves() {
	Sink.a = Source.a
	Sink.b = Source.b
	Sink.c = Source.c
	Sink.d = Source.d
	Sink.e = Source.e
}

//go:noinline
func loads() *T {
	t := newT()
	t.a = Source.a
	t.b = Source.b
	t.c = Source.c
	t.d = Source.d
	t.e = Source.e
	return &t
}

//go:noinline
func stores() {
	t := newT()
	Sink.a = t.a
	Sink.b = t.b
	Sink.c = t.c
	Sink.d = t.d
	Sink.e = t.e
}

func main() {
	moves()
	loads()
	stores()
}

```
## issue21687
```go
// run

// Copyright 2017 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Issue 21687: cmd/compile evaluates x twice in "x op= y", which was
// detectable if evaluating y affects x.

package main

func ptrs() (int, int) {
	one := 1
	two := 2

	x := &one
	*x += func() int {
		x = &two
		return 0
	}()

	return one, two
}

func slices() (int, int) {
	one := []int{1}
	two := []int{2}

	x := one
	x[0] += func() int {
		x = two
		return 0
	}()

	return one[0], two[0]
}

func maps() (int, int) {
	one := map[int]int{0: 1}
	two := map[int]int{0: 2}

	x := one
	x[0] += func() int {
		x = two
		return 0
	}()

	return one[0], two[0]
}

var tests = [...]func() (int, int){
	ptrs,
	slices,
	maps,
}

func main() {
	bad := 0
	for i, f := range tests {
		if a, b := f(); a+b != 3 {
			println(i, a, b)
			bad++
		}
	}
	if bad != 0 {
		panic(bad)
	}
}

```
## issue22326
```go
// run

// Copyright 2019 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

var (
	_ = d
	_ = f("_", c, b)
	a = f("a")
	b = f("b")
	c = f("c")
	d = f("d")
)

func f(s string, rest ...int) int {
	print(s)
	return 0
}

func main() {
	println()
}

```
## issue23188
```go
// run

// Copyright 2018 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Test order of evaluation of index operations.

package main

func main() {
	arr := []int{1, 2}

	// The spec says that in an assignment statement the operands
	// of all index expressions and pointer indirections on the
	// left, and the expressions on the right, are evaluated in
	// the usual order. The usual order means function calls and
	// channel operations are done first. Then the assignments are
	// carried out one at a time. The operands of an index
	// expression include both the array and the index. So this
	// evaluates as
	//   tmp1 := arr
	//   tmp2 := len(arr) - 1
	//   tmp3 := len(arr)
	//   arr = arr[:tmp3-1]
	//   tmp1[tmp2] = 3
	arr, arr[len(arr)-1] = arr[:len(arr)-1], 3

	if len(arr) != 1 || arr[0] != 1 || arr[:2][1] != 3 {
		panic(arr)
	}
}

```
## issue23536
```go
// run

// Copyright 2022 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Test case where a slice of a user-defined byte type (not uint8 or byte) is
// converted to a string.  Same for slice of runes.

package main

type MyByte byte

type MyRune rune

func main() {
	var y []MyByte
	_ = string(y)

	var z []MyRune
	_ = string(z)
}

```
## issue23719
```go
// run

// Copyright 2018 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

func main() {
	v1 := [2]int32{-1, 88}
	v2 := [2]int32{-1, 99}
	if v1 == v2 {
		panic("bad comparison")
	}

	w1 := [2]int16{-1, 88}
	w2 := [2]int16{-1, 99}
	if w1 == w2 {
		panic("bad comparison")
	}
	x1 := [4]int16{-1, 88, 88, 88}
	x2 := [4]int16{-1, 99, 99, 99}
	if x1 == x2 {
		panic("bad comparison")
	}

	a1 := [2]int8{-1, 88}
	a2 := [2]int8{-1, 99}
	if a1 == a2 {
		panic("bad comparison")
	}
	b1 := [4]int8{-1, 88, 88, 88}
	b2 := [4]int8{-1, 99, 99, 99}
	if b1 == b2 {
		panic("bad comparison")
	}
	c1 := [8]int8{-1, 88, 88, 88, 88, 88, 88, 88}
	c2 := [8]int8{-1, 99, 99, 99, 99, 99, 99, 99}
	if c1 == c2 {
		panic("bad comparison")
	}
}

```
## issue23734
```go
// run

// Copyright 2018 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

func main() {
	m := map[interface{}]int{}
	k := []int{}

	mustPanic(func() {
		_ = m[k]
	})
	mustPanic(func() {
		_, _ = m[k]
	})
	mustPanic(func() {
		delete(m, k)
	})
}

func mustPanic(f func()) {
	defer func() {
		r := recover()
		if r == nil {
			panic("didn't panic")
		}
	}()
	f()
}

```
## issue23814
```go
// run

// Copyright 2022 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Examples from the language spec section on string conversions.

package main

func main() {
	// 1
	_ = string('a')  // "a"
	_ = string(-1)   // "\ufffd" == "\xef\xbf\xbd"
	_ = string(0xf8) // "\u00f8" == "ø" == "\xc3\xb8"

	type myString string
	_ = myString(0x65e5) // "\u65e5" == "日" == "\xe6\x97\xa5"

	// 2
	_ = string([]byte{'h', 'e', 'l', 'l', '\xc3', '\xb8'}) // "hellø"
	_ = string([]byte{})                                   // ""
	_ = string([]byte(nil))                                // ""

	type bytes []byte
	_ = string(bytes{'h', 'e', 'l', 'l', '\xc3', '\xb8'}) // "hellø"

	type myByte byte
	_ = string([]myByte{'w', 'o', 'r', 'l', 'd', '!'})     // "world!"
	_ = myString([]myByte{'\xf0', '\x9f', '\x8c', '\x8d'}) // "🌍

	// 3
	_ = string([]rune{0x767d, 0x9d6c, 0x7fd4}) // "\u767d\u9d6c\u7fd4" == "白鵬翔"
	_ = string([]rune{})                       // ""
	_ = string([]rune(nil))                    // ""

	type runes []rune
	_ = string(runes{0x767d, 0x9d6c, 0x7fd4}) // "\u767d\u9d6c\u7fd4" == "白鵬翔"

	type myRune rune
	_ = string([]myRune{0x266b, 0x266c}) // "\u266b\u266c" == "♫♬"
	_ = myString([]myRune{0x1f30e})      // "\U0001f30e" == "🌎

	// 4
	_ = []byte("hellø") // []byte{'h', 'e', 'l', 'l', '\xc3', '\xb8'}
	_ = []byte("")      // []byte{}

	_ = bytes("hellø") // []byte{'h', 'e', 'l', 'l', '\xc3', '\xb8'}

	_ = []myByte("world!")      // []myByte{'w', 'o', 'r', 'l', 'd', '!'}
	_ = []myByte(myString("🌏")) // []myByte{'\xf0', '\x9f', '\x8c', '\x8f'}

	// 5
	_ = []rune(myString("白鵬翔")) // []rune{0x767d, 0x9d6c, 0x7fd4}
	_ = []rune("")              // []rune{}

	_ = runes("白鵬翔") // []rune{0x767d, 0x9d6c, 0x7fd4}

	_ = []myRune("♫♬")          // []myRune{0x266b, 0x266c}
	_ = []myRune(myString("🌐")) // []myRune{0x1f310}
}

```
## issue23837
```go
// run

// Copyright 2018 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

//go:noinline
func f(p, q *struct{}) bool {
	return *p == *q
}

type T struct {
	x struct{}
	y int
}

//go:noinline
func g(p, q *T) bool {
	return p.x == q.x
}

//go:noinline
func h(p, q func() struct{}) bool {
	return p() == q()
}

func fi(p, q *struct{}) bool {
	return *p == *q
}

func gi(p, q *T) bool {
	return p.x == q.x
}

func hi(p, q func() struct{}) bool {
	return p() == q()
}

func main() {
	shouldPanic(func() { f(nil, nil) })
	shouldPanic(func() { g(nil, nil) })
	shouldPanic(func() { h(nil, nil) })
	shouldPanic(func() { fi(nil, nil) })
	shouldPanic(func() { gi(nil, nil) })
	shouldPanic(func() { hi(nil, nil) })
	n := 0
	inc := func() struct{} {
		n++
		return struct{}{}
	}
	h(inc, inc)
	if n != 2 {
		panic("inc not called")
	}
	hi(inc, inc)
	if n != 4 {
		panic("inc not called")
	}
}

func shouldPanic(x func()) {
	defer func() {
		if recover() == nil {
			panic("did not panic")
		}
	}()
	x()
}

```
## issue24503
```go
// run

// Copyright 2018 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Issue 24503: Handle == and != of addresses taken of symbols consistently.

package main

func test() string {
	type test struct{}
	o1 := test{}
	o2 := test{}
	if &o1 == &o2 {
		return "equal"
	}
	if &o1 != &o2 {
		return "unequal"
	}
	return "failed"
}

func main() {
	if test() == "failed" {
		panic("expected either 'equal' or 'unequal'")
	}
}

```
## issue24937
```go
// run

// Copyright 2018 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

func main() {
	x := []byte{'a'}
	switch string(x) {
	case func() string { x[0] = 'b'; return "b" }():
		panic("FAIL")
	}
}

```
## issue26116
```go
// run

// Copyright 2018 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

func main() {
	s := []int{0, 1, 2}
	i := 1
	for i > 0 && s[i] != 2 {
		i++
	}
	if i != 2 {
		panic("loop didn't run")
	}
}

```
## issue2615
```go
// run

// Copyright 2012 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Issue 2615: a long chain of else if's causes an overflow
// in the parser stack.

package main

// test returns the index of the lowest set bit in a 256-bit vector.
func test(x [4]uint64) int {
	if x[0]&(1<<0) != 0 {
		return 0
	} else if x[0]&(1<<1) != 0 {
		return 1
	} else if x[0]&(1<<2) != 0 {
		return 2
	} else if x[0]&(1<<3) != 0 {
		return 3
	} else if x[0]&(1<<4) != 0 {
		return 4
	} else if x[0]&(1<<5) != 0 {
		return 5
	} else if x[0]&(1<<6) != 0 {
		return 6
	} else if x[0]&(1<<7) != 0 {
		return 7
	} else if x[0]&(1<<8) != 0 {
		return 8
	} else if x[0]&(1<<9) != 0 {
		return 9
	} else if x[0]&(1<<10) != 0 {
		return 10
	} else if x[0]&(1<<11) != 0 {
		return 11
	} else if x[0]&(1<<12) != 0 {
		return 12
	} else if x[0]&(1<<13) != 0 {
		return 13
	} else if x[0]&(1<<14) != 0 {
		return 14
	} else if x[0]&(1<<15) != 0 {
		return 15
	} else if x[0]&(1<<16) != 0 {
		return 16
	} else if x[0]&(1<<17) != 0 {
		return 17
	} else if x[0]&(1<<18) != 0 {
		return 18
	} else if x[0]&(1<<19) != 0 {
		return 19
	} else if x[0]&(1<<20) != 0 {
		return 20
	} else if x[0]&(1<<21) != 0 {
		return 21
	} else if x[0]&(1<<22) != 0 {
		return 22
	} else if x[0]&(1<<23) != 0 {
		return 23
	} else if x[0]&(1<<24) != 0 {
		return 24
	} else if x[0]&(1<<25) != 0 {
		return 25
	} else if x[0]&(1<<26) != 0 {
		return 26
	} else if x[0]&(1<<27) != 0 {
		return 27
	} else if x[0]&(1<<28) != 0 {
		return 28
	} else if x[0]&(1<<29) != 0 {
		return 29
	} else if x[0]&(1<<30) != 0 {
		return 30
	} else if x[0]&(1<<31) != 0 {
		return 31
	} else if x[0]&(1<<32) != 0 {
		return 32
	} else if x[0]&(1<<33) != 0 {
		return 33
	} else if x[0]&(1<<34) != 0 {
		return 34
	} else if x[0]&(1<<35) != 0 {
		return 35
	} else if x[0]&(1<<36) != 0 {
		return 36
	} else if x[0]&(1<<37) != 0 {
		return 37
	} else if x[0]&(1<<38) != 0 {
		return 38
	} else if x[0]&(1<<39) != 0 {
		return 39
	} else if x[0]&(1<<40) != 0 {
		return 40
	} else if x[0]&(1<<41) != 0 {
		return 41
	} else if x[0]&(1<<42) != 0 {
		return 42
	} else if x[0]&(1<<43) != 0 {
		return 43
	} else if x[0]&(1<<44) != 0 {
		return 44
	} else if x[0]&(1<<45) != 0 {
		return 45
	} else if x[0]&(1<<46) != 0 {
		return 46
	} else if x[0]&(1<<47) != 0 {
		return 47
	} else if x[0]&(1<<48) != 0 {
		return 48
	} else if x[0]&(1<<49) != 0 {
		return 49
	} else if x[0]&(1<<50) != 0 {
		return 50
	} else if x[0]&(1<<51) != 0 {
		return 51
	} else if x[0]&(1<<52) != 0 {
		return 52
	} else if x[0]&(1<<53) != 0 {
		return 53
	} else if x[0]&(1<<54) != 0 {
		return 54
	} else if x[0]&(1<<55) != 0 {
		return 55
	} else if x[0]&(1<<56) != 0 {
		return 56
	} else if x[0]&(1<<57) != 0 {
		return 57
	} else if x[0]&(1<<58) != 0 {
		return 58
	} else if x[0]&(1<<59) != 0 {
		return 59
	} else if x[0]&(1<<60) != 0 {
		return 60
	} else if x[0]&(1<<61) != 0 {
		return 61
	} else if x[0]&(1<<62) != 0 {
		return 62
	} else if x[0]&(1<<63) != 0 {
		return 63
	} else if x[1]&(1<<0) != 0 {
		return 64
	} else if x[1]&(1<<1) != 0 {
		return 65
	} else if x[1]&(1<<2) != 0 {
		return 66
	} else if x[1]&(1<<3) != 0 {
		return 67
	} else if x[1]&(1<<4) != 0 {
		return 68
	} else if x[1]&(1<<5) != 0 {
		return 69
	} else if x[1]&(1<<6) != 0 {
		return 70
	} else if x[1]&(1<<7) != 0 {
		return 71
	} else if x[1]&(1<<8) != 0 {
		return 72
	} else if x[1]&(1<<9) != 0 {
		return 73
	} else if x[1]&(1<<10) != 0 {
		return 74
	} else if x[1]&(1<<11) != 0 {
		return 75
	} else if x[1]&(1<<12) != 0 {
		return 76
	} else if x[1]&(1<<13) != 0 {
		return 77
	} else if x[1]&(1<<14) != 0 {
		return 78
	} else if x[1]&(1<<15) != 0 {
		return 79
	} else if x[1]&(1<<16) != 0 {
		return 80
	} else if x[1]&(1<<17) != 0 {
		return 81
	} else if x[1]&(1<<18) != 0 {
		return 82
	} else if x[1]&(1<<19) != 0 {
		return 83
	} else if x[1]&(1<<20) != 0 {
		return 84
	} else if x[1]&(1<<21) != 0 {
		return 85
	} else if x[1]&(1<<22) != 0 {
		return 86
	} else if x[1]&(1<<23) != 0 {
		return 87
	} else if x[1]&(1<<24) != 0 {
		return 88
	} else if x[1]&(1<<25) != 0 {
		return 89
	} else if x[1]&(1<<26) != 0 {
		return 90
	} else if x[1]&(1<<27) != 0 {
		return 91
	} else if x[1]&(1<<28) != 0 {
		return 92
	} else if x[1]&(1<<29) != 0 {
		return 93
	} else if x[1]&(1<<30) != 0 {
		return 94
	} else if x[1]&(1<<31) != 0 {
		return 95
	} else if x[1]&(1<<32) != 0 {
		return 96
	} else if x[1]&(1<<33) != 0 {
		return 97
	} else if x[1]&(1<<34) != 0 {
		return 98
	} else if x[1]&(1<<35) != 0 {
		return 99
	} else if x[1]&(1<<36) != 0 {
		return 100
	} else if x[1]&(1<<37) != 0 {
		return 101
	} else if x[1]&(1<<38) != 0 {
		return 102
	} else if x[1]&(1<<39) != 0 {
		return 103
	} else if x[1]&(1<<40) != 0 {
		return 104
	} else if x[1]&(1<<41) != 0 {
		return 105
	} else if x[1]&(1<<42) != 0 {
		return 106
	} else if x[1]&(1<<43) != 0 {
		return 107
	} else if x[1]&(1<<44) != 0 {
		return 108
	} else if x[1]&(1<<45) != 0 {
		return 109
	} else if x[1]&(1<<46) != 0 {
		return 110
	} else if x[1]&(1<<47) != 0 {
		return 111
	} else if x[1]&(1<<48) != 0 {
		return 112
	} else if x[1]&(1<<49) != 0 {
		return 113
	} else if x[1]&(1<<50) != 0 {
		return 114
	} else if x[1]&(1<<51) != 0 {
		return 115
	} else if x[1]&(1<<52) != 0 {
		return 116
	} else if x[1]&(1<<53) != 0 {
		return 117
	} else if x[1]&(1<<54) != 0 {
		return 118
	} else if x[1]&(1<<55) != 0 {
		return 119
	} else if x[1]&(1<<56) != 0 {
		return 120
	} else if x[1]&(1<<57) != 0 {
		return 121
	} else if x[1]&(1<<58) != 0 {
		return 122
	} else if x[1]&(1<<59) != 0 {
		return 123
	} else if x[1]&(1<<60) != 0 {
		return 124
	} else if x[1]&(1<<61) != 0 {
		return 125
	} else if x[1]&(1<<62) != 0 {
		return 126
	} else if x[1]&(1<<63) != 0 {
		return 127
	} else if x[2]&(1<<0) != 0 {
		return 128
	} else if x[2]&(1<<1) != 0 {
		return 129
	} else if x[2]&(1<<2) != 0 {
		return 130
	} else if x[2]&(1<<3) != 0 {
		return 131
	} else if x[2]&(1<<4) != 0 {
		return 132
	} else if x[2]&(1<<5) != 0 {
		return 133
	} else if x[2]&(1<<6) != 0 {
		return 134
	} else if x[2]&(1<<7) != 0 {
		return 135
	} else if x[2]&(1<<8) != 0 {
		return 136
	} else if x[2]&(1<<9) != 0 {
		return 137
	} else if x[2]&(1<<10) != 0 {
		return 138
	} else if x[2]&(1<<11) != 0 {
		return 139
	} else if x[2]&(1<<12) != 0 {
		return 140
	} else if x[2]&(1<<13) != 0 {
		return 141
	} else if x[2]&(1<<14) != 0 {
		return 142
	} else if x[2]&(1<<15) != 0 {
		return 143
	} else if x[2]&(1<<16) != 0 {
		return 144
	} else if x[2]&(1<<17) != 0 {
		return 145
	} else if x[2]&(1<<18) != 0 {
		return 146
	} else if x[2]&(1<<19) != 0 {
		return 147
	} else if x[2]&(1<<20) != 0 {
		return 148
	} else if x[2]&(1<<21) != 0 {
		return 149
	} else if x[2]&(1<<22) != 0 {
		return 150
	} else if x[2]&(1<<23) != 0 {
		return 151
	} else if x[2]&(1<<24) != 0 {
		return 152
	} else if x[2]&(1<<25) != 0 {
		return 153
	} else if x[2]&(1<<26) != 0 {
		return 154
	} else if x[2]&(1<<27) != 0 {
		return 155
	} else if x[2]&(1<<28) != 0 {
		return 156
	} else if x[2]&(1<<29) != 0 {
		return 157
	} else if x[2]&(1<<30) != 0 {
		return 158
	} else if x[2]&(1<<31) != 0 {
		return 159
	} else if x[2]&(1<<32) != 0 {
		return 160
	} else if x[2]&(1<<33) != 0 {
		return 161
	} else if x[2]&(1<<34) != 0 {
		return 162
	} else if x[2]&(1<<35) != 0 {
		return 163
	} else if x[2]&(1<<36) != 0 {
		return 164
	} else if x[2]&(1<<37) != 0 {
		return 165
	} else if x[2]&(1<<38) != 0 {
		return 166
	} else if x[2]&(1<<39) != 0 {
		return 167
	} else if x[2]&(1<<40) != 0 {
		return 168
	} else if x[2]&(1<<41) != 0 {
		return 169
	} else if x[2]&(1<<42) != 0 {
		return 170
	} else if x[2]&(1<<43) != 0 {
		return 171
	} else if x[2]&(1<<44) != 0 {
		return 172
	} else if x[2]&(1<<45) != 0 {
		return 173
	} else if x[2]&(1<<46) != 0 {
		return 174
	} else if x[2]&(1<<47) != 0 {
		return 175
	} else if x[2]&(1<<48) != 0 {
		return 176
	} else if x[2]&(1<<49) != 0 {
		return 177
	} else if x[2]&(1<<50) != 0 {
		return 178
	} else if x[2]&(1<<51) != 0 {
		return 179
	} else if x[2]&(1<<52) != 0 {
		return 180
	} else if x[2]&(1<<53) != 0 {
		return 181
	} else if x[2]&(1<<54) != 0 {
		return 182
	} else if x[2]&(1<<55) != 0 {
		return 183
	} else if x[2]&(1<<56) != 0 {
		return 184
	} else if x[2]&(1<<57) != 0 {
		return 185
	} else if x[2]&(1<<58) != 0 {
		return 186
	} else if x[2]&(1<<59) != 0 {
		return 187
	} else if x[2]&(1<<60) != 0 {
		return 188
	} else if x[2]&(1<<61) != 0 {
		return 189
	} else if x[2]&(1<<62) != 0 {
		return 190
	} else if x[2]&(1<<63) != 0 {
		return 191
	} else if x[3]&(1<<0) != 0 {
		return 192
	} else if x[3]&(1<<1) != 0 {
		return 193
	} else if x[3]&(1<<2) != 0 {
		return 194
	} else if x[3]&(1<<3) != 0 {
		return 195
	} else if x[3]&(1<<4) != 0 {
		return 196
	} else if x[3]&(1<<5) != 0 {
		return 197
	} else if x[3]&(1<<6) != 0 {
		return 198
	} else if x[3]&(1<<7) != 0 {
		return 199
	} else if x[3]&(1<<8) != 0 {
		return 200
	} else if x[3]&(1<<9) != 0 {
		return 201
	} else if x[3]&(1<<10) != 0 {
		return 202
	} else if x[3]&(1<<11) != 0 {
		return 203
	} else if x[3]&(1<<12) != 0 {
		return 204
	} else if x[3]&(1<<13) != 0 {
		return 205
	} else if x[3]&(1<<14) != 0 {
		return 206
	} else if x[3]&(1<<15) != 0 {
		return 207
	} else if x[3]&(1<<16) != 0 {
		return 208
	} else if x[3]&(1<<17) != 0 {
		return 209
	} else if x[3]&(1<<18) != 0 {
		return 210
	} else if x[3]&(1<<19) != 0 {
		return 211
	} else if x[3]&(1<<20) != 0 {
		return 212
	} else if x[3]&(1<<21) != 0 {
		return 213
	} else if x[3]&(1<<22) != 0 {
		return 214
	} else if x[3]&(1<<23) != 0 {
		return 215
	} else if x[3]&(1<<24) != 0 {
		return 216
	} else if x[3]&(1<<25) != 0 {
		return 217
	} else if x[3]&(1<<26) != 0 {
		return 218
	} else if x[3]&(1<<27) != 0 {
		return 219
	} else if x[3]&(1<<28) != 0 {
		return 220
	} else if x[3]&(1<<29) != 0 {
		return 221
	} else if x[3]&(1<<30) != 0 {
		return 222
	} else if x[3]&(1<<31) != 0 {
		return 223
	} else if x[3]&(1<<32) != 0 {
		return 224
	} else if x[3]&(1<<33) != 0 {
		return 225
	} else if x[3]&(1<<34) != 0 {
		return 226
	} else if x[3]&(1<<35) != 0 {
		return 227
	} else if x[3]&(1<<36) != 0 {
		return 228
	} else if x[3]&(1<<37) != 0 {
		return 229
	} else if x[3]&(1<<38) != 0 {
		return 230
	} else if x[3]&(1<<39) != 0 {
		return 231
	} else if x[3]&(1<<40) != 0 {
		return 232
	} else if x[3]&(1<<41) != 0 {
		return 233
	} else if x[3]&(1<<42) != 0 {
		return 234
	} else if x[3]&(1<<43) != 0 {
		return 235
	} else if x[3]&(1<<44) != 0 {
		return 236
	} else if x[3]&(1<<45) != 0 {
		return 237
	} else if x[3]&(1<<46) != 0 {
		return 238
	} else if x[3]&(1<<47) != 0 {
		return 239
	} else if x[3]&(1<<48) != 0 {
		return 240
	} else if x[3]&(1<<49) != 0 {
		return 241
	} else if x[3]&(1<<50) != 0 {
		return 242
	} else if x[3]&(1<<51) != 0 {
		return 243
	} else if x[3]&(1<<52) != 0 {
		return 244
	} else if x[3]&(1<<53) != 0 {
		return 245
	} else if x[3]&(1<<54) != 0 {
		return 246
	} else if x[3]&(1<<55) != 0 {
		return 247
	} else if x[3]&(1<<56) != 0 {
		return 248
	} else if x[3]&(1<<57) != 0 {
		return 249
	} else if x[3]&(1<<58) != 0 {
		return 250
	} else if x[3]&(1<<59) != 0 {
		return 251
	} else if x[3]&(1<<60) != 0 {
		return 252
	} else if x[3]&(1<<61) != 0 {
		return 253
	} else if x[3]&(1<<62) != 0 {
		return 254
	} else if x[3]&(1<<63) != 0 {
		return 255
	}
	return -1
}

func main() {
	const ones = ^uint64(0)
	for i := 0; i < 256; i++ {
		bits := [4]uint64{ones, ones, ones, ones}

		// clear bottom i bits
		bits[i/64] ^= 1<<(uint(i)&63) - 1
		for j := i/64 - 1; j >= 0; j-- {
			bits[j] = 0
		}

		k := test(bits)
		if k != i {
			print("test(bits)=", k, " want ", i, "\n")
			panic("failed")
		}
	}
}

```
## issue26153
```go
// run

// Copyright 2018 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Issue 26153. The write to ps was incorrectly
// removed by the dead auto elimination pass.

package main

const hello = "hello world"

func main() {
	var s string
	mangle(&s)
	if s != hello {
		panic("write incorrectly elided")
	}
}

//go:noinline
func mangle(ps *string) {
	if ps == nil {
		var s string
		ps = &s
	}
	*ps = hello
}

```
## issue27278
```go
// run

// Copyright 2018 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Issue 27278: dead auto elim deletes an auto and its
// initialization, but it is live because of a nil check.

package main

type T struct {
	_ [3]string
	T2
}

func (t *T) M() []string {
	return t.T2.M()
}

type T2 struct {
	T3
}

func (t *T2) M() []string {
	return t.T3.M()
}

type T3 struct {
	a string
}

func (t *T3) M() []string {
	return []string{}
}

func main() {
	poison()
	f()
}

//go:noinline
func f() {
	(&T{}).M()
	grow(10000)
}

// grow stack, triggers stack copy
func grow(n int) {
	if n == 0 {
		return
	}
	grow(n-1)
}

// put some junk on stack, which cannot be valid address
//go:noinline
func poison() {
	x := [10]int{1, 2, 3, 4, 5, 6, 7, 8, 9, 10}
	g = x
}

var g [10]int

```
## issue27289
```go
// run

// Copyright 2018 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Make sure we don't prove that the bounds check failure branch is unreachable.

package main

//go:noinline
func f(a []int) {
	_ = a[len(a)-1]
}

func main() {
	defer func() {
		if err := recover(); err != nil {
			return
		}
		panic("f should panic")
	}()
	f(nil)
}

```
## issue29013a
```go
// run

// Copyright 2018 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

type TestSuite struct {
	Tests []int
}

var Suites = []TestSuite{
	Dicts,
}
var Dicts = TestSuite{
	Tests: []int{0},
}

func main() {
	if &Dicts.Tests[0] != &Suites[0].Tests[0] {
		panic("bad")
	}
}

```
## issue29013b
```go
// run

// Copyright 2018 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

type TestSuite struct {
	Tests []Test
}
type Test struct {
	Want interface{}
}
type Int struct {
	i int
}

func NewInt(v int) Int {
	return Int{i: v}
}

var Suites = []TestSuite{
	Dicts,
}
var Dicts = TestSuite{
	Tests: []Test{
		{
			Want: map[Int]bool{NewInt(1): true},
		},
		{
			Want: map[Int]string{
				NewInt(3): "3",
			},
		},
	},
}

func main() {
	if Suites[0].Tests[0].Want.(map[Int]bool)[NewInt(3)] {
		panic("bad")
	}
}

```
## issue29402
```go
// run
  
// Copyright 2018 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Issue 29402: wrong optimization of comparison of
// constant and shift on MIPS.

package main

//go:noinline
func F(s []int) bool {
	half := len(s) / 2
	return half >= 0
}

func main() {
	b := F([]int{1, 2, 3, 4})
	if !b {
		panic("FAIL")
	}
}

```
## issue32680
```go
// run -gcflags=-d=ssa/check/on

// Copyright 2019 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// As of 2019-06, bug affects/ed amd64 and s390x.

package main

var foo = []byte{105, 57, 172, 152}

func main() {
	for i := 0; i < len(foo); i += 4 {
		// Requires inlining and non-constant i
		// Note the bug/fix also apply to different widths, but was unable to reproduce for those.
		println(readLittleEndian32_2(foo[i], foo[i+1], foo[i+2], foo[i+3]))
	}
}

func readLittleEndian32_2(a, b, c, d byte) uint32 {
	return uint32(a) | (uint32(b) << 8) | (uint32(c) << 16) | (uint32(d) << 24)
}

```
## issue33062
```go
// run

// Copyright 2019 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Issue 33062: gccgo generates incorrect type equality
// functions.

package main

type simpleStruct struct {
	int
	string
}

type complexStruct struct {
	int
	simpleStruct
}

func main() {
	x := complexStruct{1, simpleStruct{2, "xxx"}}
	ix := interface{}(x)
	y := complexStruct{1, simpleStruct{2, "yyy"}}
	iy := interface{}(y)
	if ix != ix {
		panic("FAIL")
	}
	if ix == iy {
		panic("FAIL")
	}
}

```
## issue34395
```go
// run

// Copyright 2019 The Go Authors.  All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Test that a binary with a large data section can load. This failed on wasm.

package main

var test = [100 * 1024 * 1024]byte{42}

func main() {
	if test[0] != 42 {
		panic("bad")
	}
}

```
## issue35576
```go
// run

// Copyright 2019 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Check print/println(f()) is allowed where f() is multi-value.

package main

func f() (int16, float64, string) { return -42, 42.0, "x" }

func main() {
	print(f())
	println(f())
}

```
## issue38496
```go
// run

// Copyright 2020 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Make sure bounds check elision isn't confused with nil check elision.

package main

func main() {
	defer func() {
		err := recover()
		if err == nil {
			panic("failed to check nil ptr")
		}
	}()
	var m [2]*int
	_ = *m[1] // need a nil check, but not a bounds check
}

```
## issue39505b
```go
// run

// Copyright 2020 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

func main() {
	ff := []func(){lt_f1, lt_f2, lt_f3, lt_f4, lt_f5, lt_f6, lt_f7, lt_f8, lt_f9,
		gt_f1, gt_f2, gt_f3, le_f1, le_f2, le_f3, ge_f1, ge_f2, ge_f3}

	for _, f := range ff {
		f()
	}
}

func lt_f1() {
	const c = 1
	var a = 0
	var v *int = &a
	if *v-c < len([]int{}) {
	} else {
		panic("bad")
	}
}

func lt_f2() {
	const c = 10
	var a = 0
	var v *int = &a
	if *v+c < len([]int{}) {
		panic("bad")
	}
}

func lt_f3() {
	const c = -10
	var a = 0
	var v *int = &a
	if *v|0xff+c < len([]int{}) {
		panic("bad")
	}
}

func lt_f4() {
	const c = 10
	var a = 0
	var v *int = &a
	if *v|0x0f+c < len([]int{}) {
		panic("bad")
	}
}

func lt_f5() {
	const c int32 = 1
	var a int32 = 0
	var v *int32 = &a
	if *v-c < int32(len([]int32{})) {
	} else {
		panic("bad")
	}
}

func lt_f6() {
	const c int32 = 10
	var a int32 = 0
	var v *int32 = &a
	if *v+c < int32(len([]int32{})) {
		panic("bad")
	}
}

func lt_f7() {
	const c int32 = -10
	var a int32 = 0
	var v *int32 = &a
	if *v|0xff+c < int32(len([]int{})) {
		panic("bad")
	}
}

func lt_f8() {
	const c int32 = 10
	var a int32 = 0
	var v *int32 = &a
	if *v|0x0f+c < int32(len([]int{})) {
		panic("bad")
	}
}

func lt_f9() {
	const c int32 = -10
	var a int32 = 0
	var v *int32 = &a
	if *v|0x0a+c < int32(len([]int{})) {
		panic("bad")
	}
}

func gt_f1() {
	const c = 1
	var a = 0
	var v *int = &a
	if len([]int{}) > *v-c {
	} else {
		panic("bad")
	}
}

func gt_f2() {
	const c = 10
	var a = 0
	var v *int = &a
	if len([]int{}) > *v|0x0f+c {
		panic("bad")
	}
}

func gt_f3() {
	const c int32 = 10
	var a int32 = 0
	var v *int32 = &a
	if int32(len([]int{})) > *v|0x0f+c {
		panic("bad")
	}
}

func le_f1() {
	const c = -10
	var a = 0
	var v *int = &a
	if *v|0xff+c <= len([]int{}) {
		panic("bad")
	}
}

func le_f2() {
	const c = 0xf
	var a = 0
	var v *int = &a
	if *v|0xf-c <= len([]int{}) {
	} else {
		panic("bad")
	}
}

func le_f3() {
	const c int32 = -10
	var a int32 = 0
	var v *int32 = &a
	if *v|0xff+c <= int32(len([]int{})) {
		panic("bad")
	}
}

func ge_f1() {
	const c = -10
	var a = 0
	var v *int = &a
	if len([]int{}) >= *v|0xff+c {
		panic("bad")
	}
}

func ge_f2() {
	const c int32 = 10
	var a int32 = 0
	var v *int32 = &a
	if int32(len([]int{})) >= *v|0x0f+c {
		panic("bad")
	}
}

func ge_f3() {
	const c = -10
	var a = 0
	var v *int = &a
	if len([]int{}) >= *v|0x0a+c {
	} else {
		panic("bad")
	}
}

```
## issue40152
```go
// run

// Copyright 2020 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Gccgo mishandles converting an untyped boolean to an interface type.

package main

func t(args ...interface{}) bool {
        x := true
        return x == args[0]
}

func main() {
	r := t("x" == "x" && "y" == "y")
	if !r {
		panic(r)
	}
}

```
## issue40367
```go
// run

// Copyright 2020 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

func case1() {
	rates := []int32{1,2,3,4,5,6}
	var sink [6]int
	j := len(sink)
	for star, _ := range rates {
		if star+1 < 1 {
			panic("")
		}
		j--
		sink[j] = j
	}
}

func case2() {
	i := 0
	var sink [3]int
	j := len(sink)
top:
	j--
	sink[j] = j
	if i < 2 {
		i++
		if i < 1 {
			return
		}
		goto top
	}
}

func main() {
	case1()
	case2()
}
```
## issue4167
```go
// run

// Copyright 2012 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Issue 4167: inlining of a (*T).Method expression taking
// its arguments from a multiple return breaks the compiler.

package main

type pa []int

type p int

func (this *pa) func1() (v *p, c int) {
	for _ = range *this {
		c++
	}
	v = (*p)(&c)
	return
}

func (this *pa) func2() p {
	return (*p).func3(this.func1())
}

func (this *p) func3(f int) p {
	return *this
}

func (this *pa) func2dots() p {
	return (*p).func3(this.func1())
}

func (this *p) func3dots(f ...int) p {
	return *this
}

func main() {
	arr := make(pa, 13)
	length := arr.func2()
	if int(length) != len(arr) {
		panic("length != len(arr)")
	}
	length = arr.func2dots()
	if int(length) != len(arr) {
		panic("length != len(arr)")
	}
}

```
## issue41780
```go
// run

// Copyright 2020 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Checks that conversion of CMP(x,-y) -> CMN(x,y) is only applied in correct context.

package main

type decimal struct {
	d  [8]byte // digits, big-endian representation
	dp int     // decimal point
}

var powtab = []int{1, 3, 6, 9, 13, 16, 19, 23, 26}

//go:noinline
func foo(d *decimal) int {
	exp := int(d.d[1])
	if d.dp < 0 || d.dp == 0 && d.d[0] < '5' {
		var n int
		if -d.dp >= len(powtab) {
			n = 27
		} else {
			n = powtab[-d.dp] // incorrect CMP -> CMN substitution causes indexing panic.
		}
		exp += n
	}
	return exp
}

func main() {
	var d decimal
	d.d[0] = '1'
	if foo(&d) != 1 {
		println("FAILURE (though not the one this test was written to catch)")
	}
}

```
## issue42876
```go
// run

// Copyright 2020 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

var x = [4]int32{-0x7fffffff, 0x7fffffff, 2, 4}

func main() {
	if x[0] > x[1] {
		panic("fail 1")
	}
	if x[2]&x[3] < 0 {
		panic("fail 2") // Fails here
	}
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
## issue43444
```go
// run

package main

var sp = ""

func f(name string, _ ...interface{}) int {
	print(sp, name)
	sp = " "
	return 0
}

var a = f("a", x)
var b = f("b", y)
var c = f("c", z)
var d = func() int {
	if false {
		_ = z
	}
	return f("d")
}()
var e = f("e")

var x int
var y int = 42
var z int = func() int { return 42 }()

func main() { println() }

```
## issue4353
```go
// run

// Copyright 2012 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Issue 4353. An optimizer bug in 8g triggers a runtime fault
// instead of an out of bounds panic.

package main

var aib [100000]int
var paib *[100000]int = &aib
var i64 int64 = 100023

func main() {
	defer func() { recover() }()
	_ = paib[i64]
}

```
## issue43835
```go
// run

// Copyright 2021 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

func main() {
	if f() {
		panic("FAIL")
	}
	if bad, _ := g(); bad {
		panic("FAIL")
	}
	if bad, _ := h(); bad {
		panic("FAIL")
	}
}

func f() (bad bool) {
	defer func() {
		recover()
	}()
	var p *int
	bad, _ = true, *p
	return
}

func g() (bool, int) {
	defer func() {
		recover()
	}()
	var p *int
	return true, *p
}


func h() (_ bool, _ int) {
	defer func() {
		recover()
	}()
	var p *int
	return true, *p
}

```
## issue4396a
```go
// run

// Copyright 2012 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Issue 4396. Arrays of bytes are not required to be
// word aligned. 5g should use MOVB to load the address
// of s.g[0] for its nil check.
//
// This test _may_ fail on arm, but requires the host to 
// trap unaligned loads. This is generally done with
//
// echo "4" > /proc/cpu/alignment

package main

var s = struct {
	// based on lzw.decoder
	a, b, c, d, e uint16
	f             [4096]uint8
	g             [4096]uint8
}{}

func main() {
	s.g[0] = 1
}

```
## issue4396b
```go
// run

// Copyright 2012 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// This test _may_ fail on arm, but requires the host to
// trap unaligned loads. This is generally done with
//
// echo "4" > /proc/cpu/alignment

package main

type T struct {
	U uint16
	V T2
}

type T2 struct {
	pad    [4096]byte
	A, B byte
}

var s, t = new(T), new(T)

func main() {
	var u, v *T2 = &s.V, &t.V
	u.B = v.B
}

```
## issue4448
```go
// run

// Copyright 2012 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Issue 4448: 64-bit indices that are statically known
// to be bounded make 5g and 8g generate a dangling branch.

package main

const b26 uint64 = 0x022fdd63cc95386d

var bitPos [64]int

func init() {
	for p := uint(0); p < 64; p++ {
		bitPos[b26<<p>>58] = int(p)
	}
}

func MinPos(w uint64) int {
	if w == 0 {
		panic("bit: MinPos(0) undefined")
	}
	return bitPos[((w&-w)*b26)>>58]
}

func main() {
	const one = uint64(1)
	for i := 0; i < 64; i++ {
		if MinPos(1<<uint(i)) != i {
			println("i =", i)
			panic("MinPos(1<<uint(i)) != i")
		}
	}
}

```
## issue46304
```go
// run

// Copyright 2021 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// This testcase caused a crash when the register ABI was in effect,
// on amd64 (problem with register allocation).

package main

type Op struct {
	tag   string
	_x    []string
	_q    [20]uint64
	plist []P
}

type P struct {
	tag string
	_x  [10]uint64
	b   bool
}

type M int

//go:noinline
func (w *M) walkP(p *P) *P {
	np := &P{}
	*np = *p
	np.tag += "new"
	return np
}

func (w *M) walkOp(op *Op) *Op {
	if op == nil {
		return nil
	}

	orig := op
	cloned := false
	clone := func() {
		if !cloned {
			cloned = true
			op = &Op{}
			*op = *orig
		}
	}

	pCloned := false
	for i := range op.plist {
		if s := w.walkP(&op.plist[i]); s != &op.plist[i] {
			if !pCloned {
				pCloned = true
				clone()
				op.plist = make([]P, len(orig.plist))
				copy(op.plist, orig.plist)
			}
			op.plist[i] = *s
		}
	}

	return op
}

func main() {
	var ww M
	w := &ww
	p1 := P{tag: "a"}
	p1._x[1] = 9
	o := Op{tag: "old", plist: []P{p1}}
	no := w.walkOp(&o)
	if no.plist[0].tag != "anew" {
		panic("bad")
	}
}

```
## issue47771
```go
// run

// Copyright 2021 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// gofrontend miscompiled some cases of append(s, make(typ, ln)...).

package main

var g int

func main() {
	a := []*int{&g, &g, &g, &g}
	a = append(a[:0], make([]*int, len(a) - 1)...)
	if len(a) != 3 || a[0] != nil || a[1] != nil || a[2] != nil {
		panic(a)
	}
}

```
## issue48898
```go
// run

// Copyright 2021 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

func main() {
	defer func() {
		println(recover().(int))
	}()
	func() {
		func() (_ [2]int) { type _ int; return }()
		func() {
			defer func() {
				defer func() {
					recover()
				}()
				defer panic(3)
				panic(2)
			}()
			defer func() {
				recover()
			}()
			panic(1)
		}()
		defer func() {}()
	}()

	var x = 123
	func() {
		// in the original issue, this defer was not executed (which is incorrect)
		defer print(x)
		func() {
			defer func() {}()
			panic(4)
		}()
	}()
}

```
## issue49100b
```go
// run

// Copyright 2021 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

func r(j int) {
loop:
	for i, c := range "goclang" {
		if i == 2 {
			continue loop
		}
		println(string(c))
	}
}

func main() {
loop:
	for j := 0; j < 4; j++ {
		r(j)
		if j == 0 {
			break loop
		}
	}
}

```
## issue49512
```go
// run

// Copyright 2021 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

type S struct{
	m1Called, m2Called bool
}

func (s *S) M1(int) (int, int) {
	s.m1Called = true
	return 0, 0
}

func (s *S) M2(int) (int, int) {
	s.m2Called = true
	return 0, 0
}

type C struct {
	calls []func(int) (int, int)
}

func makeC() Funcs {
	return &C{}
}

func (c *C) Add(fn func(int) (int, int)) Funcs {
	c.calls = append(c.calls, fn)
	return c
}

func (c *C) Call() {
	for _, fn := range c.calls {
		fn(0)
	}
}

type Funcs interface {
	Add(func(int) (int, int)) Funcs
	Call()
}

func main() {
	s := &S{}
	c := makeC().Add(s.M1).Add(s.M2)
	c.Call()
	if !s.m1Called || !s.m2Called {
		panic("missed method call")
	}
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
## issue51101
```go
// run

// Copyright 2022 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Issue 51101: on RISCV64, difference of two pointers
// was marked as pointer and crashes GC.

package main

var a, b int

func main() {
	F(&b, &a)
}

//go:noinline
func F(a, b *int) bool {
	x := a == b
	G(x)
	y := a != b
	return y
}

//go:noinline
func G(bool) {
	grow([1000]int{20})
}

func grow(x [1000]int) {
	if x[0] != 0 {
		x[0]--
		grow(x)
	}
}

```
## issue55122
```go
// run

// Copyright 2022 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

func main() {
	for i := 0; i < 10000; i++ {
		h(i)
		sink = make([]byte, 1024) // generate some garbage
	}
}

func h(iter int) {
	var x [32]byte
	for i := 0; i < 32; i++ {
		x[i] = 99
	}
	g(&x)
	if x == ([32]byte{}) {
		return
	}
	for i := 0; i < 32; i++ {
		println(x[i])
	}
	panic(iter)
}

//go:noinline
func g(x interface{}) {
	switch e := x.(type) {
	case *[32]byte:
		var c [32]byte
		*e = c
	case *[]byte:
		*e = nil
	}
}

var sink []byte

```
## issue55122b
```go
// run

// Copyright 2022 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

func main() {
	for i := 0; i < 10000; i++ {
		h(i)
		sink = make([]byte, 1024) // generate some garbage
	}
}

func h(iter int) {
	var x [32]byte
	for i := 0; i < 32; i++ {
		x[i] = 99
	}
	g(&x)
	if x == ([32]byte{}) {
		return
	}
	for i := 0; i < 32; i++ {
		println(x[i])
	}
	panic(iter)
}

//go:noinline
func g(x interface{}) {
	switch e := x.(type) {
	case *[32]byte:
		var c [32]byte
		*e = c
	case *[3]*byte:
		var c [3]*byte
		*e = c
	}
}

var sink []byte

```
## issue5515
```go
// run

// Copyright 2013 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// issue 5515: miscompilation doing inlining in generated method wrapper

package main

type T uint32

func main() {
        b := make([]T, 8)
        b[0] = 0xdeadbeef
        rs := Slice(b)
        sort(rs)
}

type Slice []T

func (s Slice) Swap(i, j int) {
        tmp := s[i]
        s[i] = s[j]
        s[j] = tmp
}

type Interface interface {
        Swap(i, j int)
}

func sort(data Interface) {
        data.Swap(0, 4)
}

```
## issue5704
```go
// run

// Copyright 2012 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Issue 5704: Conversions of empty strings to byte
// or rune slices return empty but non-nil slices.

package main

type (
	mystring string
	mybytes  []byte
	myrunes  []rune
)

func checkBytes(s []byte, arg string) {
	if len(s) != 0 {
		panic("len(" + arg + ") != 0")
	}
	if s == nil {
		panic(arg + " == nil")
	}
}

func checkRunes(s []rune, arg string) {
	if len(s) != 0 {
		panic("len(" + arg + ") != 0")
	}
	if s == nil {
		panic(arg + " == nil")
	}
}

func main() {
	checkBytes([]byte(""), `[]byte("")`)
	checkBytes([]byte(mystring("")), `[]byte(mystring(""))`)
	checkBytes(mybytes(""), `mybytes("")`)
	checkBytes(mybytes(mystring("")), `mybytes(mystring(""))`)

	checkRunes([]rune(""), `[]rune("")`)
	checkRunes([]rune(mystring("")), `[]rune(mystring(""))`)
	checkRunes(myrunes(""), `myrunes("")`)
	checkRunes(myrunes(mystring("")), `myrunes(mystring(""))`)
}

```
## issue5753
```go
// run

// Copyright 2013 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// issue 5753: bad typecheck info causes escape analysis to
// not run on method thunks.

package main

type Thing struct{}

func (t *Thing) broken(s string) []string {
	foo := [1]string{s}
	return foo[:]
}

func main() {
	t := &Thing{}

	f := t.broken
	s := f("foo")
	_ = f("bar")
	if s[0] != "foo" {
		panic(`s[0] != "foo"`)
	}
	
}

```
## issue5793
```go
// run

// Copyright 2013 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Issue 5793: calling 2-arg builtin with multiple-result f() call expression gives
// spurious error.

package main

func complexArgs() (float64, float64) {
	return 5, 7
}

func appendArgs() ([]string, string) {
	return []string{"foo"}, "bar"
}

func appendMultiArgs() ([]byte, byte, byte) {
	return []byte{'a', 'b'}, '1', '2'
}

func main() {
	if c := complex(complexArgs()); c != 5+7i {
		panic(c)
	}

	if s := append(appendArgs()); len(s) != 2 || s[0] != "foo" || s[1] != "bar" {
		panic(s)
	}

	if b := append(appendMultiArgs()); len(b) != 4 || b[0] != 'a' || b[1] != 'b' || b[2] != '1' || b[3] != '2' {
		panic(b)
	}
}

```
## issue5820
```go
// run

// Copyright 2013 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// issue 5820: register clobber when clearfat and 64 bit arithmetic is interleaved.

package main

func main() {
	array := make([][]int, 2)
	index := uint64(1)
	array[index] = nil
	if array[1] != nil {
		panic("array[1] != nil")
	}
}

```
## issue59367
```go
// run

// Copyright 2023 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

func main() {
	var b [8]byte
	one := uint8(1)
	f16(&one, b[:2])
	if b[1] != 1 {
		println("2-byte value lost")
	}
	f32(&one, b[:4])
	if b[3] != 1 {
		println("4-byte value lost")
	}
	f64(&one, b[:8])
	if b[7] != 1 {
		println("8-byte value lost")
	}
}

//go:noinline
func f16(p *uint8, b []byte) {
	_ = b[1]            // bounds check
	x := *p             // load a byte
	y := uint16(x)      // zero extend to 16 bits
	b[0] = byte(y >> 8) // compute ROLW
	b[1] = byte(y)
	nop()               // spill/restore ROLW
	b[0] = byte(y >> 8) // use ROLW
	b[1] = byte(y)
}

//go:noinline
func f32(p *uint8, b []byte) {
	_ = b[3]             // bounds check
	x := *p              // load a byte
	y := uint32(x)       // zero extend to 32 bits
	b[0] = byte(y >> 24) // compute ROLL
	b[1] = byte(y >> 16)
	b[2] = byte(y >> 8)
	b[3] = byte(y)
	nop()                // spill/restore ROLL
	b[0] = byte(y >> 24) // use ROLL
	b[1] = byte(y >> 16)
	b[2] = byte(y >> 8)
	b[3] = byte(y)
}

//go:noinline
func f64(p *uint8, b []byte) {
	_ = b[7]             // bounds check
	x := *p              // load a byte
	y := uint64(x)       // zero extend to 64 bits
	b[0] = byte(y >> 56) // compute ROLQ
	b[1] = byte(y >> 48)
	b[2] = byte(y >> 40)
	b[3] = byte(y >> 32)
	b[4] = byte(y >> 24)
	b[5] = byte(y >> 16)
	b[6] = byte(y >> 8)
	b[7] = byte(y)
	nop()                // spill/restore ROLQ
	b[0] = byte(y >> 56) // use ROLQ
	b[1] = byte(y >> 48)
	b[2] = byte(y >> 40)
	b[3] = byte(y >> 32)
	b[4] = byte(y >> 24)
	b[5] = byte(y >> 16)
	b[6] = byte(y >> 8)
	b[7] = byte(y)
}

//go:noinline
func nop() {
}

```
## issue59572
```go
// run

// Copyright 2023 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

func foo() {
	println("foo")
}

func main() {
	fn := foo
	for _, fn = range list {
		fn()
	}
}

var list = []func(){
	func() {
		println("1")
	},
	func() {
		println("2")
	},
	func() {
		println("3")
	},
}

```
## issue6269
```go
// run

// Copyright 2013 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// issue 6269: name collision on method names for function local types.

package main

type foo struct{}

func (foo) Error() string {
	return "ok"
}

type bar struct{}

func (bar) Error() string {
	return "fail"
}

func unused() {
	type collision struct {
		bar
	}
	_ = collision{}
}

func main() {
	type collision struct {
		foo
	}
	s := error(collision{})
	if str := s.Error(); str != "ok" {
		println("s.Error() ==", str)
		panic(`s.Error() != "ok"`)
	}
}

```
## issue8047
```go
// run

// Copyright 2014 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Issue 8047.  Stack copier shouldn't crash if there
// is a nil defer.

package main

func stackit(n int) {
	if n == 0 {
		return
	}
	stackit(n - 1)
}

func main() {
	defer func() {
		// catch & ignore panic from nil defer below
		err := recover()
		if err == nil {
			panic("defer of nil func didn't panic")
		}
	}()
	defer ((func())(nil))()
	stackit(1000)
}

```
## issue8047b
```go
// run

// Copyright 2014 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Issue 8047. Defer setup during panic shouldn't crash for nil defer.

package main

func main() {
	defer func() {
		// This recover recovers the panic caused by the nil defer func
		// g(). The original panic(1) was already aborted/replaced by this
		// new panic, so when this recover is done, the program completes
		// normally.
		recover()
	}()
	f()
}

func f() {
	var g func()
	defer g()
	panic(1)
}

```
## issue8325
```go
// run

// Copyright 2014 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Issue 8325: corrupted byte operations during optimization
// pass.

package main

const alphanum = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"

func main() {
	var bytes = []byte{10, 20, 30, 40, 50}

	for i, b := range bytes {
		bytes[i] = alphanum[b%byte(len(alphanum))]
	}

	for _, b := range bytes {
		switch {
		case '0' <= b && b <= '9',
			'A' <= b && b <= 'Z':
		default:
			println("found a bad character", string(b))
			panic("BUG")
		}

	}
}

```
## issue8613
```go
// run

// Copyright 2016 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

var out int
var zero int

func main() {
	wantPanic("test1", func() {
		out = 1 / zero
	})
	wantPanic("test2", func() {
		_ = 1 / zero
	})
	wantPanic("test3", func() {
		v := 0
		_ = 1 / v
	})
	wantPanic("test4", func() { divby(0) })
}

func wantPanic(test string, fn func()) {
	defer func() {
		if e := recover(); e == nil {
			panic(test + ": expected panic")
		}
	}()
	fn()
}

//go:noinline
func divby(v int) {
	_ = 1 / v
}

```
## issue8620
```go
// run

// Copyright 2014 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Issue 8620. Used to fail with -race.

package main

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func test(s1, s2 []struct{}) {
	n := min(len(s1), len(s2))
	if copy(s1, s2) != n {
		panic("bad copy result")
	}
}

func main() {
	var b [100]struct{}
	test(b[:], b[:])
	test(b[1:], b[:])
	test(b[:], b[2:])
}

```
## issue8947
```go
// run

// Copyright 2014 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Some uses of zeroed constants in non-assignment
// expressions broke with our more aggressive zeroing
// of assignments (internal compiler errors).

package main

func f1() {
	type T [2]int
	p := T{0, 1}
	switch p {
	case T{0, 0}:
		panic("wrong1")
	case T{0, 1}:
		// ok
	default:
		panic("wrong2")
	}

	if p == (T{0, 0}) {
		panic("wrong3")
	} else if p == (T{0, 1}) {
		// ok
	} else {
		panic("wrong4")
	}
}

type T struct {
	V int
}

var X = T{}.V

func f2() {
	var x = T{}.V
	if x != 0 {
		panic("wrongx")
	}
	if X != 0 {
		panic("wrongX")
	}
}

func main() {
	f1()
	f2()
}

```
## issue9691
```go
// run

// Copyright 2015 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

func main() {
	s := "foo"
	b := []byte(s)
	m := make(map[string]int)
	// Test that map index can be used in range
	// and that slicebytetostringtmp is not used in this context.
	for m[string(b)] = range s {
	}
	b[0] = 'b'
	if m["foo"] != 2 {
		panic("bad")
	}
}

```
## func
```go
// run

// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Test simple functions.

package main

func assertequal(is, shouldbe int, msg string) {
	if is != shouldbe {
		print("assertion fail", msg, "\n")
		panic(1)
	}
}

func f1() {
}

func f2(a int) {
}

func f3(a, b int) int {
	return a + b
}

func f4(a, b int, c float32) int {
	return (a+b)/2 + int(c)
}

func f5(a int) int {
	return 5
}

func f6(a int) (r int) {
	return 6
}

func f7(a int) (x int, y float32) {
	return 7, 7.0
}


func f8(a int) (x int, y float32) {
	return 8, 8.0
}

type T struct {
	x, y int
}

func (t *T) m10(a int, b float32) int {
	return (t.x + a) * (t.y + int(b))
}


func f9(a int) (i int, f float32) {
	i = 9
	f = 9.0
	return
}


func main() {
	f1()
	f2(1)
	r3 := f3(1, 2)
	assertequal(r3, 3, "3")
	r4 := f4(0, 2, 3.0)
	assertequal(r4, 4, "4")
	r5 := f5(1)
	assertequal(r5, 5, "5")
	r6 := f6(1)
	assertequal(r6, 6, "6")
	r7, s7 := f7(1)
	assertequal(r7, 7, "r7")
	assertequal(int(s7), 7, "s7")
	r8, s8 := f8(1)
	assertequal(r8, 8, "r8")
	assertequal(int(s8), 8, "s8")
	r9, s9 := f9(1)
	assertequal(r9, 9, "r9")
	assertequal(int(s9), 9, "s9")
	var t *T = new(T)
	t.x = 1
	t.y = 2
	r10 := t.m10(1, 3.0)
	assertequal(r10, 10, "10")
}

```
## func8
```go
// run

// Copyright 2011 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Test evaluation order.

package main

var calledf int

func f() int {
	calledf++
	return 0
}

func g() int {
	return calledf
}

var xy string

//go:noinline
func x() bool {
	xy += "x"
	return false
}

//go:noinline
func y() string {
	xy += "y"
	return "abc"
}

func main() {
	if f() == g() {
		panic("wrong f,g order")
	}

	if x() == (y() == "abc") {
		panic("wrong compare")
	}
	if xy != "xy" {
		panic("wrong x,y order")
	}
}

```
## gc1
```go
// run

// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// A simple test of the garbage collector.

package main

func main() {
	for i := 0; i < 1e5; i++ {
		x := new([100]byte)
		_ = x
	}
}

```
## helloworld
```go
// run

// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Test that we can do page 1 of the C book.

package main

func main() {
	print("hello, world\n")
}

```
## if_
```go
// run

// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Test if statements in various forms.

package main

func assertequal(is, shouldbe int, msg string) {
	if is != shouldbe {
		print("assertion fail", msg, "\n")
		panic(1)
	}
}

func main() {
	i5 := 5
	i7 := 7

	var count int

	count = 0
	if true {
		count = count + 1
	}
	assertequal(count, 1, "if true")

	count = 0
	if false {
		count = count + 1
	}
	assertequal(count, 0, "if false")

	count = 0
	if one := 1; true {
		count = count + one
	}
	assertequal(count, 1, "if true one")

	count = 0
	if one := 1; false {
		count = count + 1
		_ = one
	}
	assertequal(count, 0, "if false one")

	count = 0
	if i5 < i7 {
		count = count + 1
	}
	assertequal(count, 1, "if cond")

	count = 0
	if true {
		count = count + 1
	} else {
		count = count - 1
	}
	assertequal(count, 1, "if else true")

	count = 0
	if false {
		count = count + 1
	} else {
		count = count - 1
	}
	assertequal(count, -1, "if else false")

	count = 0
	if t := 1; false {
		count = count + 1
		_ = t
		t := 7
		_ = t
	} else {
		count = count - t
	}
	assertequal(count, -1, "if else false var")

	count = 0
	t := 1
	if false {
		count = count + 1
		t := 7
		_ = t
	} else {
		count = count - t
	}
	_ = t
	assertequal(count, -1, "if else false var outside")
}

```
## indirect
```go
// run

// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Test various safe uses of indirection.

package main

var m0 map[string]int
var m1 *map[string]int
var m2 *map[string]int = &m0
var m3 map[string]int = map[string]int{"a": 1}
var m4 *map[string]int = &m3

var s0 string
var s1 *string
var s2 *string = &s0
var s3 string = "a"
var s4 *string = &s3

var a0 [10]int
var a1 *[10]int
var a2 *[10]int = &a0

var b0 []int
var b1 *[]int
var b2 *[]int = &b0
var b3 []int = []int{1, 2, 3}
var b4 *[]int = &b3

func crash() {
	// these uses of nil pointers
	// would crash but should type check
	println("crash",
		len(a1)+cap(a1))
}

func nocrash() {
	// this is spaced funny so that
	// the compiler will print a different
	// line number for each len call if
	// it decides there are type errors.
	// it might also help in the traceback.
	x :=
		len(m0) +
			len(m3)
	if x != 1 {
		println("wrong maplen")
		panic("fail")
	}

	x =
		len(s0) +
			len(s3)
	if x != 1 {
		println("wrong stringlen")
		panic("fail")
	}

	x =
		len(a0) +
			len(a2)
	if x != 20 {
		println("wrong arraylen")
		panic("fail")
	}

	x =
		len(b0) +
			len(b3)
	if x != 3 {
		println("wrong slicelen")
		panic("fail")
	}

	x =
		cap(b0) +
			cap(b3)
	if x != 3 {
		println("wrong slicecap")
		panic("fail")
	}
}

func main() { nocrash() }

```
## initcomma
```go
// run

// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Test trailing commas. DO NOT gofmt THIS FILE.

package main

var a = []int{1, 2, }
var b = [5]int{1, 2, 3, }
var c = []int{1, }
var d = [...]int{1, 2, 3, }

func main() {
	if len(a) != 2 {
		println("len a", len(a))
		panic("fail")
	}
	if len(b) != 5 {
		println("len b", len(b))
		panic("fail")
	}
	if len(c) != 1 {
		println("len d", len(c))
		panic("fail")
	}
	if len(d) != 3 {
		println("len c", len(d))
		panic("fail")
	}

	if a[0] != 1 {
		println("a[0]", a[0])
		panic("fail")
	}
	if a[1] != 2 {
		println("a[1]", a[1])
		panic("fail")
	}

	if b[0] != 1 {
		println("b[0]", b[0])
		panic("fail")
	}
	if b[1] != 2 {
		println("b[1]", b[1])
		panic("fail")
	}
	if b[2] != 3 {
		println("b[2]", b[2])
		panic("fail")
	}
	if b[3] != 0 {
		println("b[3]", b[3])
		panic("fail")
	}
	if b[4] != 0 {
		println("b[4]", b[4])
		panic("fail")
	}

	if c[0] != 1 {
		println("c[0]", c[0])
		panic("fail")
	}

	if d[0] != 1 {
		println("d[0]", d[0])
		panic("fail")
	}
	if d[1] != 2 {
		println("d[1]", d[1])
		panic("fail")
	}
	if d[2] != 3 {
		println("d[2]", d[2])
		panic("fail")
	}
}

```
## bigdata
```go
// run

// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Test big vs. small, pointer vs. value interface methods.

package main

type I interface { M() int64 }

type BigPtr struct { a, b, c, d int64 }
func (z *BigPtr) M() int64 { return z.a+z.b+z.c+z.d }

type SmallPtr struct { a int32 }
func (z *SmallPtr) M() int64 { return int64(z.a) }

type IntPtr int32
func (z *IntPtr) M() int64 { return int64(*z) }

var bad bool

func test(name string, i I) {
	m := i.M()
	if m != 12345 {
		println(name, m)
		bad = true
	}
}

func ptrs() {
	var bigptr BigPtr = BigPtr{ 10000, 2000, 300, 45 }
	var smallptr SmallPtr = SmallPtr{ 12345 }
	var intptr IntPtr = 12345

//	test("bigptr", bigptr)
	test("&bigptr", &bigptr)
//	test("smallptr", smallptr)
	test("&smallptr", &smallptr)
//	test("intptr", intptr)
	test("&intptr", &intptr)
}

type Big struct { a, b, c, d int64 }
func (z Big) M() int64 { return z.a+z.b+z.c+z.d }

type Small struct { a int32 }
func (z Small) M() int64 { return int64(z.a) }

type Int int32
func (z Int) M() int64 { return int64(z) }

func nonptrs() {
	var big Big = Big{ 10000, 2000, 300, 45 }
	var small Small = Small{ 12345 }
	var int Int = 12345

	test("big", big)
	test("&big", &big)
	test("small", small)
	test("&small", &small)
	test("int", int)
	test("&int", &int)
}

func main() {
	ptrs()
	nonptrs()

	if bad {
		println("BUG: interface4")
	}
}

```
## convert
```go
// run

// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Test all the different interface conversion runtime functions.

package main

type Stringer interface {
	String() string
}
type StringLengther interface {
	String() string
	Length() int
}
type Empty interface{}

type T string

func (t T) String() string {
	return string(t)
}
func (t T) Length() int {
	return len(t)
}

type U string

func (u U) String() string {
	return string(u)
}

var t = T("hello")
var u = U("goodbye")
var e Empty
var s Stringer = t
var sl StringLengther = t
var i int
var ok bool

func hello(s string) {
	if s != "hello" {
		println("not hello: ", s)
		panic("fail")
	}
}

func five(i int) {
	if i != 5 {
		println("not 5: ", i)
		panic("fail")
	}
}

func true(ok bool) {
	if !ok {
		panic("not true")
	}
}

func false(ok bool) {
	if ok {
		panic("not false")
	}
}

func main() {
	// T2I
	s = t
	hello(s.String())

	// I2T
	t = s.(T)
	hello(t.String())

	// T2E
	e = t

	// E2T
	t = e.(T)
	hello(t.String())

	// T2I again
	sl = t
	hello(sl.String())
	five(sl.Length())

	// I2I static
	s = sl
	hello(s.String())

	// I2I dynamic
	sl = s.(StringLengther)
	hello(sl.String())
	five(sl.Length())

	// I2E (and E2T)
	e = s
	hello(e.(T).String())

	// E2I
	s = e.(Stringer)
	hello(s.String())

	// I2T2 true
	t, ok = s.(T)
	true(ok)
	hello(t.String())

	// I2T2 false
	_, ok = s.(U)
	false(ok)

	// I2I2 true
	sl, ok = s.(StringLengther)
	true(ok)
	hello(sl.String())
	five(sl.Length())

	// I2I2 false (and T2I)
	s = u
	sl, ok = s.(StringLengther)
	false(ok)

	// E2T2 true
	t, ok = e.(T)
	true(ok)
	hello(t.String())

	// E2T2 false
	i, ok = e.(int)
	false(ok)

	// E2I2 true
	sl, ok = e.(StringLengther)
	true(ok)
	hello(sl.String())
	five(sl.Length())

	// E2I2 false (and T2E)
	e = u
	sl, ok = e.(StringLengther)
	false(ok)
}

```
## fail
```go
// run

// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Test that interface conversion fails when method is missing.

package main

type I interface {
	Foo()
}

func main() {
	shouldPanic(p1)
}

func p1() {
	var s *S
	var i I
	var e interface{}
	e = s
	i = e.(I)
	_ = i
}

type S struct{}

func (s *S) _() {}

func shouldPanic(f func()) {
	defer func() {
		if recover() == nil {
			panic("function should panic")
		}
	}()
	f()
}

```
## noeq
```go
// run

// Copyright 2011 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Test run-time error detection for interface values containing types
// that cannot be compared for equality.

package main

func main() {
	cmp(1)

	var (
		m map[int]int
		s struct{ x []int }
		f func()
	)
	noCmp(m)
	noCmp(s)
	noCmp(f)
}

func cmp(x interface{}) bool {
	return x == x
}

func noCmp(x interface{}) {
	shouldPanic(func() { cmp(x) })
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
## returntype
```go
// run

// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Test interface methods with different return types are distinct.

package main

type S struct { a int }
type T struct { b string }

func (s *S) Name() int8 { return 1 }
func (t *T) Name() int64 { return 64 }

type I1 interface { Name() int8 }
type I2 interface { Name() int64 }

func main() {
	shouldPanic(p1)
}

func p1() {
	var i1 I1
	var s *S
	i1 = s
	print(i1.(I2).Name())
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
## iota
```go
// run

// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Test iota.

package main

func assert(cond bool, msg string) {
	if !cond {
		print("assertion fail: ", msg, "\n")
		panic(1)
	}
}

const (
	x int = iota
	y = iota
	z = 1 << iota
	f float32 = 2 * iota
	g float32 = 4.5 * float32(iota)
)

const (
	X = 0
	Y
	Z
)

const (
	A = 1 << iota
	B
	C
	D
	E = iota * iota
	F
	G
)

const (
	a = 1
	b = iota << a
	c = iota << b
	d
)

const (
	i = (a << iota) + (b * iota)
	j
	k
	l
)

const (
	m = iota == 0
	n
)

const (
	p = float32(iota)
	q
	r
)

const (
	s = string(iota + 'a')
	t
)

const (
	abit, amask = 1 << iota, 1<<iota - 1
	bbit, bmask = 1 << iota, 1<<iota - 1
	cbit, cmask = 1 << iota, 1<<iota - 1
)

func main() {
	assert(x == 0, "x")
	assert(y == 1, "y")
	assert(z == 4, "z")
	assert(f == 6.0, "f")
	assert(g == 18.0, "g")

	assert(X == 0, "X")
	assert(Y == 0, "Y")
	assert(Z == 0, "Z")

	assert(A == 1, "A")
	assert(B == 2, "B")
	assert(C == 4, "C")
	assert(D == 8, "D")
	assert(E == 16, "E")
	assert(F == 25, "F")

	assert(a == 1, "a")
	assert(b == 2, "b")
	assert(c == 8, "c")
	assert(d == 12, "d")

	assert(i == 1, "i")
	assert(j == 4, "j")
	assert(k == 8, "k")
	assert(l == 14, "l")

	assert(m, "m")
	assert(!n, "n")

	assert(p == 0.0, "p")
	assert(q == 1.0, "q")
	assert(r == 2.0, "r")

	assert(s == "a", "s")
	assert(t == "b", "t")

	assert(abit == 1, "abit")
	assert(amask == 0, "amask")
	assert(bbit == 2, "bbit")
	assert(bmask == 1, "bmask")
	assert(cbit == 4, "cbit")
	assert(cmask == 3, "cmask")
}

```
## array_
```go
// run

// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Test arrays and slices.

package main

func setpd(a []int) {
	//	print("setpd a=", a, " len=", len(a), " cap=", cap(a), "\n");
	for i := 0; i < len(a); i++ {
		a[i] = i
	}
}

func sumpd(a []int) int {
	//	print("sumpd a=", a, " len=", len(a), " cap=", cap(a), "\n");
	t := 0
	for i := 0; i < len(a); i++ {
		t += a[i]
	}
	//	print("sumpd t=", t, "\n");
	return t
}

func setpf(a *[20]int) {
	//	print("setpf a=", a, " len=", len(a), " cap=", cap(a), "\n");
	for i := 0; i < len(a); i++ {
		a[i] = i
	}
}

func sumpf(a *[20]int) int {
	//	print("sumpf a=", a, " len=", len(a), " cap=", cap(a), "\n");
	t := 0
	for i := 0; i < len(a); i++ {
		t += a[i]
	}
	//	print("sumpf t=", t, "\n");
	return t
}

func res(t int, lb, hb int) {
	sb := (hb - lb) * (hb + lb - 1) / 2
	if t != sb {
		print("lb=", lb,
			"; hb=", hb,
			"; t=", t,
			"; sb=", sb,
			"\n")
		panic("res")
	}
}

// call ptr dynamic with ptr dynamic
func testpdpd() {
	a := make([]int, 10, 100)
	if len(a) != 10 && cap(a) != 100 {
		print("len and cap from new: ", len(a), " ", cap(a), "\n")
		panic("fail")
	}

	a = a[0:100]
	setpd(a)

	a = a[0:10]
	res(sumpd(a), 0, 10)

	a = a[5:25]
	res(sumpd(a), 5, 25)

	a = a[30:95]
	res(sumpd(a), 35, 100)
}

// call ptr fixed with ptr fixed
func testpfpf() {
	var a [20]int

	setpf(&a)
	res(sumpf(&a), 0, 20)
}

// call ptr dynamic with ptr fixed from new
func testpdpf1() {
	a := new([40]int)
	setpd(a[0:])
	res(sumpd(a[0:]), 0, 40)

	b := (*a)[5:30]
	res(sumpd(b), 5, 30)
}

// call ptr dynamic with ptr fixed from var
func testpdpf2() {
	var a [80]int

	setpd(a[0:])
	res(sumpd(a[0:]), 0, 80)
}

// generate bounds error with ptr dynamic
func testpdfault() {
	a := make([]int, 100)

	print("good\n")
	for i := 0; i < 100; i++ {
		a[i] = 0
	}
	print("should fault\n")
	a[100] = 0
	print("bad\n")
}

// generate bounds error with ptr fixed
func testfdfault() {
	var a [80]int

	print("good\n")
	for i := 0; i < 80; i++ {
		a[i] = 0
	}
	print("should fault\n")
	x := 80
	a[x] = 0
	print("bad\n")
}

func main() {
	testpdpd()
	testpfpf()
	testpdpf1()
	testpdpf2()
	//	print("testpdfault\n");	testpdfault();
	//	print("testfdfault\n");	testfdfault();
}

```
## complit
```go
// run

// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Test composite literals.

package main

type	M	map[int]int
type	S	struct{ a,b,c int };
type	SS	struct{ aa,bb,cc S };
type	SA	struct{ a,b,c [3]int };
type	SC	struct{ a,b,c []int };
type	SM	struct{ a,b,c M };

func
main() {
	test("s.a", s.a);
	test("s.b", s.b);
	test("s.c", s.c);

	test("ss.aa.a", ss.aa.a);
	test("ss.aa.b", ss.aa.b);
	test("ss.aa.c", ss.aa.c);

	test("ss.bb.a", ss.bb.a);
	test("ss.bb.b", ss.bb.b);
	test("ss.bb.c", ss.bb.c);

	test("ss.cc.a", ss.cc.a);
	test("ss.cc.b", ss.cc.b);
	test("ss.cc.c", ss.cc.c);

	for i:=0; i<3; i++ {
		test("a[i]", a[i]);
		test("c[i]", c[i]);
		test("m[i]", m[i]);

		test("as[i].a", as[i].a);
		test("as[i].b", as[i].b);
		test("as[i].c", as[i].c);

		test("cs[i].a", cs[i].a);
		test("cs[i].b", cs[i].b);
		test("cs[i].c", cs[i].c);

		test("ms[i].a", ms[i].a);
		test("ms[i].b", ms[i].b);
		test("ms[i].c", ms[i].c);

		test("sa.a[i]", sa.a[i]);
		test("sa.b[i]", sa.b[i]);
		test("sa.c[i]", sa.c[i]);

		test("sc.a[i]", sc.a[i]);
		test("sc.b[i]", sc.b[i]);
		test("sc.c[i]", sc.c[i]);

		test("sm.a[i]", sm.a[i]);
		test("sm.b[i]", sm.b[i]);
		test("sm.c[i]", sm.c[i]);

		for j:=0; j<3; j++ {
			test("aa[i][j]", aa[i][j]);
			test("ac[i][j]", ac[i][j]);
			test("am[i][j]", am[i][j]);
			test("ca[i][j]", ca[i][j]);
			test("cc[i][j]", cc[i][j]);
			test("cm[i][j]", cm[i][j]);
			test("ma[i][j]", ma[i][j]);
			test("mc[i][j]", mc[i][j]);
			test("mm[i][j]", mm[i][j]);
		}
	}

}

var	ref	= 0;

func
test(xs string, x int) {

	if ref >= len(answers) {
		println(xs, x);
		return;
	}

	if x != answers[ref] {
		println(xs, "is", x, "should be", answers[ref])
	}
	ref++;
}


var	a	= [3]int{1001, 1002, 1003}
var	s	= S{1101, 1102, 1103}
var	c	= []int{1201, 1202, 1203}
var	m	= M{0:1301, 1:1302, 2:1303}

var	aa	= [3][3]int{[3]int{2001,2002,2003}, [3]int{2004,2005,2006}, [3]int{2007,2008,2009}}
var	as	= [3]S{S{2101,2102,2103},S{2104,2105,2106},S{2107,2108,2109}}
var	ac	= [3][]int{[]int{2201,2202,2203}, []int{2204,2205,2206}, []int{2207,2208,2209}}
var	am	= [3]M{M{0:2301,1:2302,2:2303}, M{0:2304,1:2305,2:2306}, M{0:2307,1:2308,2:2309}}

var	sa	= SA{[3]int{3001,3002,3003},[3]int{3004,3005,3006},[3]int{3007,3008,3009}}
var	ss	= SS{S{3101,3102,3103},S{3104,3105,3106},S{3107,3108,3109}}
var	sc	= SC{[]int{3201,3202,3203},[]int{3204,3205,3206},[]int{3207,3208,3209}}
var	sm	= SM{M{0:3301,1:3302,2:3303}, M{0:3304,1:3305,2:3306}, M{0:3307,1:3308,2:3309}}

var	ca	= [][3]int{[3]int{4001,4002,4003}, [3]int{4004,4005,4006}, [3]int{4007,4008,4009}}
var	cs	= []S{S{4101,4102,4103},S{4104,4105,4106},S{4107,4108,4109}}
var	cc	= [][]int{[]int{4201,4202,4203}, []int{4204,4205,4206}, []int{4207,4208,4209}}
var	cm	= []M{M{0:4301,1:4302,2:4303}, M{0:4304,1:4305,2:4306}, M{0:4307,1:4308,2:4309}}

var	ma	= map[int][3]int{0:[3]int{5001,5002,5003}, 1:[3]int{5004,5005,5006}, 2:[3]int{5007,5008,5009}}
var	ms	= map[int]S{0:S{5101,5102,5103},1:S{5104,5105,5106},2:S{5107,5108,5109}}
var	mc	= map[int][]int{0:[]int{5201,5202,5203}, 1:[]int{5204,5205,5206}, 2:[]int{5207,5208,5209}}
var	mm	= map[int]M{0:M{0:5301,1:5302,2:5303}, 1:M{0:5304,1:5305,2:5306}, 2:M{0:5307,1:5308,2:5309}}

var	answers	= [...]int {
	// s
	1101, 1102, 1103,

	// ss
	3101, 3102, 3103,
	3104, 3105, 3106,
	3107, 3108, 3109,

	// [0]
	1001, 1201, 1301,
	2101, 2102, 2103,
	4101, 4102, 4103,
	5101, 5102, 5103,
	3001, 3004, 3007,
	3201, 3204, 3207,
	3301, 3304, 3307,

	// [0][j]
	2001, 2201, 2301, 4001, 4201, 4301, 5001, 5201, 5301,
	2002, 2202, 2302, 4002, 4202, 4302, 5002, 5202, 5302,
	2003, 2203, 2303, 4003, 4203, 4303, 5003, 5203, 5303,

	// [1]
	1002, 1202, 1302,
	2104, 2105, 2106,
	4104, 4105, 4106,
	5104, 5105, 5106,
	3002, 3005, 3008,
	3202, 3205, 3208,
	3302, 3305, 3308,

	// [1][j]
	2004, 2204, 2304, 4004, 4204, 4304, 5004, 5204, 5304,
	2005, 2205, 2305, 4005, 4205, 4305, 5005, 5205, 5305,
	2006, 2206, 2306, 4006, 4206, 4306, 5006, 5206, 5306,

	// [2]
	1003, 1203, 1303,
	2107, 2108, 2109,
	4107, 4108, 4109,
	5107, 5108, 5109,
	3003, 3006, 3009,
	3203, 3206, 3209,
	3303, 3306, 3309,

	// [2][j]
	2007, 2207, 2307, 4007, 4207, 4307, 5007, 5207, 5307,
	2008, 2208, 2308, 4008, 4208, 4308, 5008, 5208, 5308,
	2009, 2209, 2309, 4009, 4209, 4309, 5009, 5209, 5309,
}

```
## convert
```go
// run

// Copyright 2010 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Test, near-exhaustive, of converting numbers between types.
// No complex numbers though.

package main

var i8 int8;
var u8 uint8;
var i16 int16;
var u16 uint16;
var i32 int32;
var u32 uint32;
var i64 int64;
var u64 uint64;
var f32 float32;
var f64 float64;

type	big	float64

type	t	struct {
	from, to	int
	val		big
}

const (
	ti8	= iota+1
	tu8
	ti16
	tu16
	ti32
	tu32
	ti64
	tu64
	tf32
	tf64
)

var	x = []t{

	/* value good in all types (10) */
	{ ti8,  ti8,  10 }, { ti8,  tu8,  10 }, { ti8,  ti16, 10 }, { ti8,  tu16, 10 },
	{ ti8,  ti32, 10 }, { ti8,  tu32, 10 }, { ti8,  ti64, 10 }, { ti8,  tu64, 10 },
	{ ti8,  tf32, 10 }, { ti8,  tf64, 10 },

	{ tu8,  ti8,  10 }, { tu8,  tu8,  10 }, { tu8,  ti16, 10 }, { tu8,  tu16, 10 },
	{ tu8,  ti32, 10 }, { tu8,  tu32, 10 }, { tu8,  ti64, 10 }, { tu8,  tu64, 10 },
	{ tu8,  tf32, 10 }, { tu8,  tf64, 10 },

	{ ti16, ti8,  10 }, { ti16, tu8,  10 }, { ti16, ti16, 10 }, { ti16, tu16, 10 },
	{ ti16, ti32, 10 }, { ti16, tu32, 10 }, { ti16, ti64, 10 }, { ti16, tu64, 10 },
	{ ti16, tf32, 10 }, { ti16, tf64, 10 },

	{ tu16, ti8,  10 }, { tu16, tu8,  10 }, { tu16, ti16, 10 }, { tu16, tu16, 10 },
	{ tu16, ti32, 10 }, { tu16, tu32, 10 }, { tu16, ti64, 10 }, { tu16, tu64, 10 },
	{ tu16, tf32, 10 }, { tu16, tf64, 10 },

	{ ti32, ti8,  10 }, { ti32, tu8,  10 }, { ti32, ti16, 10 }, { ti32, tu16, 10 },
	{ ti32, ti32, 10 }, { ti32, tu32, 10 }, { ti32, ti64, 10 }, { ti32, tu64, 10 },
	{ ti32, tf32, 10 }, { ti32, tf64, 10 },

	{ tu32, ti8,  10 }, { tu32, tu8,  10 }, { tu32, ti16, 10 }, { tu32, tu16, 10 },
	{ tu32, ti32, 10 }, { tu32, tu32, 10 }, { tu32, ti64, 10 }, { tu32, tu64, 10 },
	{ tu32, tf32, 10 }, { tu32, tf64, 10 },

	{ ti64, ti8,  10 }, { ti64, tu8,  10 }, { ti64, ti16, 10 }, { ti64, tu16, 10 },
	{ ti64, ti32, 10 }, { ti64, tu32, 10 }, { ti64, ti64, 10 }, { ti64, tu64, 10 },
	{ ti64, tf32, 10 }, { ti64, tf64, 10 },

	{ tu64, ti8,  10 }, { tu64, tu8,  10 }, { tu64, ti16, 10 }, { tu64, tu16, 10 },
	{ tu64, ti32, 10 }, { tu64, tu32, 10 }, { tu64, ti64, 10 }, { tu64, tu64, 10 },
	{ tu64, tf32, 10 }, { tu64, tf64, 10 },

	{ tf32, ti8,  10 }, { tf32, tu8,  10 }, { tf32, ti16, 10 }, { tf32, tu16, 10 },
	{ tf32, ti32, 10 }, { tf32, tu32, 10 }, { tf32, ti64, 10 }, { tf32, tu64, 10 },
	{ tf32, tf32, 10 }, { tf32, tf64, 10 },

	{ tf64, ti8,  10 }, { tf64, tu8,  10 }, { tf64, ti16, 10 }, { tf64, tu16, 10 },
	{ tf64, ti32, 10 }, { tf64, tu32, 10 }, { tf64, ti64, 10 }, { tf64, tu64, 10 },
	{ tf64, tf32, 10 }, { tf64, tf64, 10 },

	/* value good in all signed types (-4) */
	{ ti8,  ti8,  -4 }, { ti8,  ti16, -4 },
	{ ti8,  ti32, -4 }, { ti8,  ti64, -4 },
	{ ti8,  tf32, -4 }, { ti8,  tf64, -4 },

	{ ti16, ti8,  -4 }, { ti16, ti16, -4 },
	{ ti16, ti32, -4 }, { ti16, ti64, -4 },
	{ ti16, tf32, -4 },

	{ ti32, ti8,  -4 }, { ti32, ti16, -4 },
	{ ti32, ti32, -4 }, { ti32, ti64, -4 },
	{ ti32, tf32, -4 }, { ti32, tf64, -4 },

	{ ti64, ti8,  -4 }, { ti64, ti16, -4 },
	{ ti64, ti32, -4 }, { ti64, ti64, -4 },
	{ ti64, tf32, -4 },

	{ tf32, ti8,  -4 }, { tf32, ti16, -4 },
	{ tf32, ti32, -4 }, { tf32, ti64, -4 },
	{ tf32, tf32, -4 },

	{ tf64, ti8,  -4 }, { tf64, ti16, -4 },
	{ tf64, ti32, -4 }, { tf64, ti64, -4 },
	{ tf64, tf32, -4 }, { tf64, tf64, -4 },

	/* value good in u8 and up (175) */
	{ tu8,  tu8,  175 }, { tu8,  ti16, 175 }, { tu8,  tu16, 175 },
	{ tu8,  ti32, 175 }, { tu8,  tu32, 175 }, { tu8,  ti64, 175 }, { tu8,  tu64, 175 },
	{ tu8,  tf32, 175 }, { tu8,  tf64, 175 },

	{ ti16, tu8,  175 }, { ti16, ti16, 175 }, { ti16, tu16, 175 },
	{ ti16, ti32, 175 }, { ti16, tu32, 175 }, { ti16, ti64, 175 }, { ti16, tu64, 175 },
	{ ti16, tf32, 175 }, { ti16, tf64, 175 },

	{ tu16, tu8,  175 }, { tu16, ti16, 175 }, { tu16, tu16, 175 },
	{ tu16, ti32, 175 }, { tu16, tu32, 175 }, { tu16, ti64, 175 }, { tu16, tu64, 175 },
	{ tu16, tf32, 175 }, { tu16, tf64, 175 },

	{ ti32, tu8,  175 }, { ti32, ti16, 175 }, { ti32, tu16, 175 },
	{ ti32, ti32, 175 }, { ti32, tu32, 175 }, { ti32, ti64, 175 }, { ti32, tu64, 175 },
	{ ti32, tf32, 175 }, { ti32, tf64, 175 },

	{ tu32, tu8,  175 }, { tu32, ti16, 175 }, { tu32, tu16, 175 },
	{ tu32, ti32, 175 }, { tu32, tu32, 175 }, { tu32, ti64, 175 }, { tu32, tu64, 175 },
	{ tu32, tf32, 175 }, { tu32, tf64, 175 },

	{ ti64, tu8,  175 }, { ti64, ti16, 175 }, { ti64, tu16, 175 },
	{ ti64, ti32, 175 }, { ti64, tu32, 175 }, { ti64, ti64, 175 }, { ti64, tu64, 175 },
	{ ti64, tf32, 175 }, { ti64, tf64, 175 },

	{ tu64, tu8,  175 }, { tu64, ti16, 175 }, { tu64, tu16, 175 },
	{ tu64, ti32, 175 }, { tu64, tu32, 175 }, { tu64, ti64, 175 }, { tu64, tu64, 175 },
	{ tu64, tf32, 175 }, { tu64, tf64, 175 },

	{ tf32, tu8,  175 }, { tf32, ti16, 175 }, { tf32, tu16, 175 },
	{ tf32, ti32, 175 }, { tf32, tu32, 175 }, { tf32, ti64, 175 }, { tf32, tu64, 175 },
	{ tf32, tf32, 175 }, { tf32, tf64, 175 },

	{ tf64, tu8,  175 }, { tf64, ti16, 175 }, { tf64, tu16, 175 },
	{ tf64, ti32, 175 }, { tf64, tu32, 175 }, { tf64, ti64, 175 }, { tf64, tu64, 175 },
	{ tf64, tf32, 175 }, { tf64, tf64, 175 },

	/* value good in u16 and up (41259) */
	{ tu16, tu16, 41259 },
	{ tu16, ti32, 41259 }, { tu16, ti64, 41259 }, { tu16, tu64, 41259 },
	{ tu16, tf32, 41259 }, { tu16, tf64, 41259 },

	{ ti32, tu16, 41259 },
	{ ti32, ti32, 41259 }, { ti32, tu32, 41259 }, { ti32, ti64, 41259 }, { ti32, tu64, 41259 },
	{ ti32, tf32, 41259 }, { ti32, tf64, 41259 },

	{ tu32, tu16, 41259 },
	{ tu32, ti32, 41259 }, { tu32, tu32, 41259 }, { tu32, ti64, 41259 }, { tu32, tu64, 41259 },
	{ tu32, tf32, 41259 }, { tu32, tf64, 41259 },

	{ ti64, tu16, 41259 },
	{ ti64, ti32, 41259 }, { ti64, tu32, 41259 }, { ti64, ti64, 41259 }, { ti64, tu64, 41259 },
	{ ti64, tf32, 41259 }, { ti64, tf64, 41259 },

	{ tu64, tu16, 41259 },
	{ tu64, ti32, 41259 }, { tu64, tu32, 41259 }, { tu64, ti64, 41259 }, { tu64, tu64, 41259 },
	{ tu64, tf32, 41259 }, { tu64, tf64, 41259 },

	{ tf32, tu16, 41259 },
	{ tf32, ti32, 41259 }, { tf32, tu32, 41259 }, { tf32, ti64, 41259 }, { tf32, tu64, 41259 },
	{ tf32, tf32, 41259 }, { tf32, tf64, 41259 },

	{ tf64, tu16, 41259 },
	{ tf64, ti32, 41259 }, { tf64, tu32, 41259 }, { tf64, ti64, 41259 }, { tf64, tu64, 41259 },
	{ tf64, tf32, 41259 }, { tf64, tf64, 41259 },

	/* value good in u32 and up (3758096384) */
	{ tu32, tu32, 3758096384 }, { tu32, ti64, 3758096384 }, { tu32, tu64, 3758096384 },
	{ tu32, tf32, 3758096384 }, { tu32, tf64, 3758096384 },

	{ ti64, tu32, 3758096384 }, { ti64, ti64, 3758096384 }, { ti64, tu64, 3758096384 },
	{ ti64, tf32, 3758096384 }, { ti64, tf64, 3758096384 },

	{ tu64, tu32, 3758096384 }, { tu64, ti64, 3758096384 }, { tu64, tu64, 3758096384 },
	{ tu64, tf32, 3758096384 }, { tu64, tf64, 3758096384 },

	{ tf32, tu32, 3758096384 }, { tf32, ti64, 3758096384 }, { tf32, tu64, 3758096384 },
	{ tf32, tf32, 3758096384 }, { tf32, tf64, 3758096384 },

	{ tf64, tu32, 3758096384 }, { tf64, ti64, 3758096384 }, { tf64, tu64, 3758096384 },
	{ tf64, tf32, 3758096384 }, { tf64, tf64, 3758096384 },

	/* value good in u64 and up (16717361816799281152) */
	{ tu64, tu64, 16717361816799281152 },
	{ tu64, tf32, 16717361816799281152 }, { tu64, tf64, 16717361816799281152 },

	{ tf32, tu64, 16717361816799281152 },
	{ tf32, tf32, 16717361816799281152 }, { tf32, tf64, 16717361816799281152 },

	{ tf64, tu64, 16717361816799281152 },
	{ tf64, tf32, 16717361816799281152 }, { tf64, tf64, 16717361816799281152 },
}

func main() {
	for i:=0; i<len(x); i++ {
		v := x[i].val		// input value
		w := big(0)		// output value
		f := x[i].from		// input type
		t := x[i].to		// output type

		i8  = 0; u8  = 0; i16 = 0; u16 = 0
		i32 = 0; u32 = 0; i64 = 0; u64 = 0
		f32 = 0; f64 = 0

		switch f*100 + t {
		default:
			println("missing case", i, v, f, t)
			w = v

		case ti8*100 + ti8:
			i8 = int8(v); i8 = int8(i8); w = big(i8)
		case ti8*100 + tu8:
			i8 = int8(v); u8 = uint8(i8); w = big(u8)
		case ti8*100 + ti16:
			i8 = int8(v); i16 = int16(i8); w = big(i16)
		case ti8*100 + tu16:
			i8 = int8(v); u16 = uint16(i8); w = big(u16)
		case ti8*100 + ti32:
			i8 = int8(v); i32 = int32(i8); w = big(i32)
		case ti8*100 + tu32:
			i8 = int8(v); u32 = uint32(i8); w = big(u32)
		case ti8*100 + ti64:
			i8 = int8(v); i64 = int64(i8); w = big(i64)
		case ti8*100 + tu64:
			i8 = int8(v); u64 = uint64(i8); w = big(u64)
		case ti8*100 + tf32:
			i8 = int8(v); f32 = float32(i8); w = big(f32)
		case ti8*100 + tf64:
			i8 = int8(v); f64 = float64(i8); w = big(f64)

		case tu8*100 + ti8:
			u8 = uint8(v); i8 = int8(u8); w = big(i8)
		case tu8*100 + tu8:
			u8 = uint8(v); u8 = uint8(u8); w = big(u8)
		case tu8*100 + ti16:
			u8 = uint8(v); i16 = int16(u8); w = big(i16)
		case tu8*100 + tu16:
			u8 = uint8(v); u16 = uint16(u8); w = big(u16)
		case tu8*100 + ti32:
			u8 = uint8(v); i32 = int32(u8); w = big(i32)
		case tu8*100 + tu32:
			u8 = uint8(v); u32 = uint32(u8); w = big(u32)
		case tu8*100 + ti64:
			u8 = uint8(v); i64 = int64(u8); w = big(i64)
		case tu8*100 + tu64:
			u8 = uint8(v); u64 = uint64(u8); w = big(u64)
		case tu8*100 + tf32:
			u8 = uint8(v); f32 = float32(u8); w = big(f32)
		case tu8*100 + tf64:
			u8 = uint8(v); f64 = float64(u8); w = big(f64)

		case ti16*100 + ti8:
			i16 = int16(v); i8 = int8(i16); w = big(i8)
		case ti16*100 + tu8:
			i16 = int16(v); u8 = uint8(i16); w = big(u8)
		case ti16*100 + ti16:
			i16 = int16(v); i16 = int16(i16); w = big(i16)
		case ti16*100 + tu16:
			i16 = int16(v); u16 = uint16(i16); w = big(u16)
		case ti16*100 + ti32:
			i16 = int16(v); i32 = int32(i16); w = big(i32)
		case ti16*100 + tu32:
			i16 = int16(v); u32 = uint32(i16); w = big(u32)
		case ti16*100 + ti64:
			i16 = int16(v); i64 = int64(i16); w = big(i64)
		case ti16*100 + tu64:
			i16 = int16(v); u64 = uint64(i16); w = big(u64)
		case ti16*100 + tf32:
			i16 = int16(v); f32 = float32(i16); w = big(f32)
		case ti16*100 + tf64:
			i16 = int16(v); f64 = float64(i16); w = big(f64)

		case tu16*100 + ti8:
			u16 = uint16(v); i8 = int8(u16); w = big(i8)
		case tu16*100 + tu8:
			u16 = uint16(v); u8 = uint8(u16); w = big(u8)
		case tu16*100 + ti16:
			u16 = uint16(v); i16 = int16(u16); w = big(i16)
		case tu16*100 + tu16:
			u16 = uint16(v); u16 = uint16(u16); w = big(u16)
		case tu16*100 + ti32:
			u16 = uint16(v); i32 = int32(u16); w = big(i32)
		case tu16*100 + tu32:
			u16 = uint16(v); u32 = uint32(u16); w = big(u32)
		case tu16*100 + ti64:
			u16 = uint16(v); i64 = int64(u16); w = big(i64)
		case tu16*100 + tu64:
			u16 = uint16(v); u64 = uint64(u16); w = big(u64)
		case tu16*100 + tf32:
			u16 = uint16(v); f32 = float32(u16); w = big(f32)
		case tu16*100 + tf64:
			u16 = uint16(v); f64 = float64(u16); w = big(f64)

		case ti32*100 + ti8:
			i32 = int32(v); i8 = int8(i32); w = big(i8)
		case ti32*100 + tu8:
			i32 = int32(v); u8 = uint8(i32); w = big(u8)
		case ti32*100 + ti16:
			i32 = int32(v); i16 = int16(i32); w = big(i16)
		case ti32*100 + tu16:
			i32 = int32(v); u16 = uint16(i32); w = big(u16)
		case ti32*100 + ti32:
			i32 = int32(v); i32 = int32(i32); w = big(i32)
		case ti32*100 + tu32:
			i32 = int32(v); u32 = uint32(i32); w = big(u32)
		case ti32*100 + ti64:
			i32 = int32(v); i64 = int64(i32); w = big(i64)
		case ti32*100 + tu64:
			i32 = int32(v); u64 = uint64(i32); w = big(u64)
		case ti32*100 + tf32:
			i32 = int32(v); f32 = float32(i32); w = big(f32)
		case ti32*100 + tf64:
			i32 = int32(v); f64 = float64(i32); w = big(f64)

		case tu32*100 + ti8:
			u32 = uint32(v); i8 = int8(u32); w = big(i8)
		case tu32*100 + tu8:
			u32 = uint32(v); u8 = uint8(u32); w = big(u8)
		case tu32*100 + ti16:
			u32 = uint32(v); i16 = int16(u32); w = big(i16)
		case tu32*100 + tu16:
			u32 = uint32(v); u16 = uint16(u32); w = big(u16)
		case tu32*100 + ti32:
			u32 = uint32(v); i32 = int32(u32); w = big(i32)
		case tu32*100 + tu32:
			u32 = uint32(v); u32 = uint32(u32); w = big(u32)
		case tu32*100 + ti64:
			u32 = uint32(v); i64 = int64(u32); w = big(i64)
		case tu32*100 + tu64:
			u32 = uint32(v); u64 = uint64(u32); w = big(u64)
		case tu32*100 + tf32:
			u32 = uint32(v); f32 = float32(u32); w = big(f32)
		case tu32*100 + tf64:
			u32 = uint32(v); f64 = float64(u32); w = big(f64)

		case ti64*100 + ti8:
			i64 = int64(v); i8 = int8(i64); w = big(i8)
		case ti64*100 + tu8:
			i64 = int64(v); u8 = uint8(i64); w = big(u8)
		case ti64*100 + ti16:
			i64 = int64(v); i16 = int16(i64); w = big(i16)
		case ti64*100 + tu16:
			i64 = int64(v); u16 = uint16(i64); w = big(u16)
		case ti64*100 + ti32:
			i64 = int64(v); i32 = int32(i64); w = big(i32)
		case ti64*100 + tu32:
			i64 = int64(v); u32 = uint32(i64); w = big(u32)
		case ti64*100 + ti64:
			i64 = int64(v); i64 = int64(i64); w = big(i64)
		case ti64*100 + tu64:
			i64 = int64(v); u64 = uint64(i64); w = big(u64)
		case ti64*100 + tf32:
			i64 = int64(v); f32 = float32(i64); w = big(f32)
		case ti64*100 + tf64:
			i64 = int64(v); f64 = float64(i64); w = big(f64)

		case tu64*100 + ti8:
			u64 = uint64(v); i8 = int8(u64); w = big(i8)
		case tu64*100 + tu8:
			u64 = uint64(v); u8 = uint8(u64); w = big(u8)
		case tu64*100 + ti16:
			u64 = uint64(v); i16 = int16(u64); w = big(i16)
		case tu64*100 + tu16:
			u64 = uint64(v); u16 = uint16(u64); w = big(u16)
		case tu64*100 + ti32:
			u64 = uint64(v); i32 = int32(u64); w = big(i32)
		case tu64*100 + tu32:
			u64 = uint64(v); u32 = uint32(u64); w = big(u32)
		case tu64*100 + ti64:
			u64 = uint64(v); i64 = int64(u64); w = big(i64)
		case tu64*100 + tu64:
			u64 = uint64(v); u64 = uint64(u64); w = big(u64)
		case tu64*100 + tf32:
			u64 = uint64(v); f32 = float32(u64); w = big(f32)
		case tu64*100 + tf64:
			u64 = uint64(v); f64 = float64(u64); w = big(f64)

		case tf32*100 + ti8:
			f32 = float32(v); i8 = int8(f32); w = big(i8)
		case tf32*100 + tu8:
			f32 = float32(v); u8 = uint8(f32); w = big(u8)
		case tf32*100 + ti16:
			f32 = float32(v); i16 = int16(f32); w = big(i16)
		case tf32*100 + tu16:
			f32 = float32(v); u16 = uint16(f32); w = big(u16)
		case tf32*100 + ti32:
			f32 = float32(v); i32 = int32(f32); w = big(i32)
		case tf32*100 + tu32:
			f32 = float32(v); u32 = uint32(f32); w = big(u32)
		case tf32*100 + ti64:
			f32 = float32(v); i64 = int64(f32); w = big(i64)
		case tf32*100 + tu64:
			f32 = float32(v); u64 = uint64(f32); w = big(u64)
		case tf32*100 + tf32:
			f32 = float32(v); f32 = float32(f32); w = big(f32)
		case tf32*100 + tf64:
			f32 = float32(v); f64 = float64(f32); w = big(f64)

		case tf64*100 + ti8:
			f64 = float64(v); i8 = int8(f64); w = big(i8)
		case tf64*100 + tu8:
			f64 = float64(v); u8 = uint8(f64); w = big(u8)
		case tf64*100 + ti16:
			f64 = float64(v); i16 = int16(f64); w = big(i16)
		case tf64*100 + tu16:
			f64 = float64(v); u16 = uint16(f64); w = big(u16)
		case tf64*100 + ti32:
			f64 = float64(v); i32 = int32(f64); w = big(i32)
		case tf64*100 + tu32:
			f64 = float64(v); u32 = uint32(f64); w = big(u32)
		case tf64*100 + ti64:
			f64 = float64(v); i64 = int64(f64); w = big(i64)
		case tf64*100 + tu64:
			f64 = float64(v); u64 = uint64(f64); w = big(u64)
		case tf64*100 + tf32:
			f64 = float64(v); f32 = float32(f64); w = big(f32)
		case tf64*100 + tf64:
			f64 = float64(v); f64 = float64(f64); w = big(f64)
		}
		if v != w { println(i, v, w, f, t) }
	}
}

```
## cplx2
```go
// run

// Copyright 2010 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Test arithmetic on complex numbers, including multiplication and division.

package main

const (
	R = 5
	I = 6i

	C1 = R + I    // ADD(5,6)
	C2 = R - I    // SUB(5,-6)
	C3 = -(R + I) // ADD(5,6) NEG(-5,-6)
	C4 = -(R - I) // SUB(5,-6) NEG(-5,6)

	C5 = C1 + R // ADD(10,6)
	C6 = C1 + I // ADD(5,12)

	Ca = C5 + C6 // ADD(15,18)
	Cb = C5 - C6 // SUB(5,-6)

	Cc = C5 * C6 // MUL(-22,-150)
	Cd = C5 / C6 // DIV(0.721893,-0.532544)
	Ce = Cd * C6 // MUL(10,6) sb C5
)

func main() {

	var r complex64 = 5 + 0i
	if r != R {
		println("opcode 1", r, R)
		panic("fail")
	}

	var i complex64 = 6i
	if i != I {
		println("opcode 2", i, I)
		panic("fail")
	}

	c1 := r + i
	if c1 != C1 {
		println("opcode x", c1, C1)
		panic("fail")
	}

	c2 := r - i
	if c2 != C2 {
		println("opcode x", c2, C2)
		panic("fail")
	}

	c3 := -(r + i)
	if c3 != C3 {
		println("opcode x", c3, C3)
		panic("fail")
	}

	c4 := -(r - i)
	if c4 != C4 {
		println("opcode x", c4, C4)
		panic("fail")
	}

	c5 := c1 + r
	if c5 != C5 {
		println("opcode x", c5, C5)
		panic("fail")
	}

	c6 := c1 + i
	if c6 != C6 {
		println("opcode x", c6, C6)
		panic("fail")
	}

	ca := c5 + c6
	if ca != Ca {
		println("opcode x", ca, Ca)
		panic("fail")
	}

	cb := c5 - c6
	if cb != Cb {
		println("opcode x", cb, Cb)
		panic("fail")
	}

	cc := c5 * c6
	if cc != Cc {
		println("opcode x", cc, Cc)
		panic("fail")
	}

	cd := c5 / c6
	if cd != Cd {
		println("opcode x", cd, Cd)
		panic("fail")
	}

	ce := cd * c6
	if ce != Ce {
		println("opcode x", ce, Ce)
		panic("fail")
	}
	
	r32 := real(complex64(ce))
	if r32 != float32(real(Ce)) {
		println("real(complex64(ce))", r32, real(Ce))
		panic("fail")
	}
	
	r64 := real(complex128(ce))
	if r64 != real(Ce) {
		println("real(complex128(ce))", r64, real(Ce))
		panic("fail")
	}
}

```
## interbasic
```go
// run

// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Test embedded fields of structs, including methods.

package main


type I interface {
	test1() int
	test2() int
	test3() int
	test4() int
	test5() int
	test6() int
	test7() int
}

/******
 ******
 ******/

type SubpSubp struct {
	a7 int
	a  int
}

func (p *SubpSubp) test7() int {
	if p.a != p.a7 {
		println("SubpSubp", p, p.a7)
		panic("fail")
	}
	return p.a
}
func (p *SubpSubp) testx() { println("SubpSubp", p, p.a7) }

/******
 ******
 ******/

type SubpSub struct {
	a6 int
	SubpSubp
	a int
}

func (p *SubpSub) test6() int {
	if p.a != p.a6 {
		println("SubpSub", p, p.a6)
		panic("fail")
	}
	return p.a
}
func (p *SubpSub) testx() { println("SubpSub", p, p.a6) }

/******
 ******
 ******/

type SubSubp struct {
	a5 int
	a  int
}

func (p *SubSubp) test5() int {
	if p.a != p.a5 {
		println("SubpSub", p, p.a5)
		panic("fail")
	}
	return p.a
}

/******
 ******
 ******/

type SubSub struct {
	a4 int
	a  int
}

func (p *SubSub) test4() int {
	if p.a != p.a4 {
		println("SubpSub", p, p.a4)
		panic("fail")
	}
	return p.a
}

/******
 ******
 ******/

type Subp struct {
	a3 int
	*SubpSubp
	SubpSub
	a int
}

func (p *Subp) test3() int {
	if p.a != p.a3 {
		println("SubpSub", p, p.a3)
		panic("fail")
	}
	return p.a
}

/******
 ******
 ******/

type Sub struct {
	a2 int
	*SubSubp
	SubSub
	a int
}

func (p *Sub) test2() int {
	if p.a != p.a2 {
		println("SubpSub", p, p.a2)
		panic("fail")
	}
	return p.a
}

/******
 ******
 ******/

type S struct {
	a1 int
	Sub
	*Subp
	a int
}

func (p *S) test1() int {
	if p.a != p.a1 {
		println("SubpSub", p, p.a1)
		panic("fail")
	}
	return p.a
}

/******
 ******
 ******/

func main() {
	var i I
	var s *S

	// allocate
	s = new(S)
	s.Subp = new(Subp)
	s.Sub.SubSubp = new(SubSubp)
	s.Subp.SubpSubp = new(SubpSubp)

	// explicit assignment
	s.a = 1
	s.Sub.a = 2
	s.Subp.a = 3
	s.Sub.SubSub.a = 4
	s.Sub.SubSubp.a = 5
	s.Subp.SubpSub.a = 6
	s.Subp.SubpSubp.a = 7

	// embedded (unique) assignment
	s.a1 = 1
	s.a2 = 2
	s.a3 = 3
	s.a4 = 4
	s.a5 = 5
	s.a6 = 6
	s.a7 = 7

	// unique calls with explicit &
	if s.test1() != 1 {
		println("t1", 1)
		panic("fail")
	}
	if (&s.Sub).test2() != 2 {
		println("t1", 2)
		panic("fail")
	}
	if s.Subp.test3() != 3 {
		println("t1", 3)
		panic("fail")
	}
	if (&s.Sub.SubSub).test4() != 4 {
		println("t1", 4)
		panic("fail")
	}
	if s.Sub.SubSubp.test5() != 5 {
		println("t1", 5)
		panic("fail")
	}
	if (&s.Subp.SubpSub).test6() != 6 {
		println("t1", 6)
		panic("fail")
	}
	if s.Subp.SubpSubp.test7() != 7 {
		println("t1", 7)
		panic("fail")
	}

	// automatic &
	if s.Sub.test2() != 2 {
		println("t2", 2)
		panic("fail")
	}
	if s.Sub.SubSub.test4() != 4 {
		println("t2", 4)
		panic("fail")
	}
	if s.Subp.SubpSub.test6() != 6 {
		println("t2", 6)
		panic("fail")
	}

	// embedded calls
	if s.test1() != s.a1 {
		println("t3", 1)
		panic("fail")
	}
	if s.test2() != s.a2 {
		println("t3", 2)
		panic("fail")
	}
	if s.test3() != s.a3 {
		println("t3", 3)
		panic("fail")
	}
	if s.test4() != s.a4 {
		println("t3", 4)
		panic("fail")
	}
	if s.test5() != s.a5 {
		println("t3", 5)
		panic("fail")
	}
	if s.test6() != s.a6 {
		println("t3", 6)
		panic("fail")
	}
	if s.test7() != s.a7 {
		println("t3", 7)
		panic("fail")
	}

	// run it through an interface
	i = s
	s = i.(*S)

	// same as t3
	if s.test1() != s.a1 {
		println("t4", 1)
		panic("fail")
	}
	if s.test2() != s.a2 {
		println("t4", 2)
		panic("fail")
	}
	if s.test3() != s.a3 {
		println("t4", 3)
		panic("fail")
	}
	if s.test4() != s.a4 {
		println("t4", 4)
		panic("fail")
	}
	if s.test5() != s.a5 {
		println("t4", 5)
		panic("fail")
	}
	if s.test6() != s.a6 {
		println("t4", 6)
		panic("fail")
	}
	if s.test7() != s.a7 {
		println("t4", 7)
		panic("fail")
	}

	// call interface
	if i.test1() != s.test1() {
		println("t5", 1)
		panic("fail")
	}
	if i.test2() != s.test2() {
		println("t5", 2)
		panic("fail")
	}
	if i.test3() != s.test3() {
		println("t5", 3)
		panic("fail")
	}
	if i.test4() != s.test4() {
		println("t5", 4)
		panic("fail")
	}
	if i.test5() != s.test5() {
		println("t5", 5)
		panic("fail")
	}
	if i.test6() != s.test6() {
		println("t5", 6)
		panic("fail")
	}
	if i.test7() != s.test7() {
		println("t5", 7)
		panic("fail")
	}
}

```
## intervar
```go
// run

// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Test interfaces on basic types.

package main

type myint int
type mystring string
type I0 interface{}

func f() {
	var ia, ib I0
	var i myint
	var s mystring

	if ia != ib {
		panic("1")
	}

	i = 1
	ia = i
	ib = i
	if ia != ib {
		panic("2")
	}
	if ia == nil {
		panic("3")
	}

	i = 2
	ia = i
	if ia == ib {
		panic("4")
	}

	ia = nil
	if ia == ib {
		panic("5")
	}

	ib = nil
	if ia != ib {
		panic("6")
	}

	if ia != nil {
		panic("7")
	}

	s = "abc"
	ia = s
	ib = nil
	if ia == ib {
		panic("8")
	}

	s = "def"
	ib = s
	if ia == ib {
		panic("9")
	}

	s = "abc"
	ib = s
	if ia != ib {
		panic("a")
	}
}

func main() {
	var ia [20]I0
	var b bool
	var s string
	var i8 int8
	var i16 int16
	var i32 int32
	var i64 int64
	var u8 uint8
	var u16 uint16
	var u32 uint32
	var u64 uint64

	f()

	ia[0] = "xxx"
	ia[1] = 12345
	ia[2] = true

	s = "now is"
	ia[3] = s
	b = false
	ia[4] = b

	i8 = 29
	ia[5] = i8
	i16 = 994
	ia[6] = i16
	i32 = 3434
	ia[7] = i32
	i64 = 1234567
	ia[8] = i64

	u8 = 12
	ia[9] = u8
	u16 = 799
	ia[10] = u16
	u32 = 4455
	ia[11] = u32
	u64 = 765432
	ia[12] = u64

	s = ia[0].(string)
	if s != "xxx" {
		println(0, s)
		panic("fail")
	}
	i32 = int32(ia[1].(int))
	if i32 != 12345 {
		println(1, i32)
		panic("fail")
	}
	b = ia[2].(bool)
	if b != true {
		println(2, b)
		panic("fail")
	}

	s = ia[3].(string)
	if s != "now is" {
		println(3, s)
		panic("fail")
	}
	b = ia[4].(bool)
	if b != false {
		println(4, b)
		panic("fail")
	}

	i8 = ia[5].(int8)
	if i8 != 29 {
		println(5, i8)
		panic("fail")
	}
	i16 = ia[6].(int16)
	if i16 != 994 {
		println(6, i16)
		panic("fail")
	}
	i32 = ia[7].(int32)
	if i32 != 3434 {
		println(7, i32)
		panic("fail")
	}
	i64 = ia[8].(int64)
	if i64 != 1234567 {
		println(8, i64)
		panic("fail")
	}

	u8 = ia[9].(uint8)
	if u8 != 12 {
		println(5, u8)
		panic("fail")
	}
	u16 = ia[10].(uint16)
	if u16 != 799 {
		println(6, u16)
		panic("fail")
	}
	u32 = ia[11].(uint32)
	if u32 != 4455 {
		println(7, u32)
		panic("fail")
	}
	u64 = ia[12].(uint64)
	if u64 != 765432 {
		println(8, u64)
		panic("fail")
	}
}

```
## range
```go
// run

// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Test method invocation with pointer receivers and function-valued fields.

package main

type C struct {
	a	int;
	x	func(p *C)int;
}

func (this *C) f()int {
	return this.a;
}

func
main() {
	var v int;
	var c *C;

	c = new(C);
	c.a = 6;
	c.x = g;

	v = g(c);
	if v != 6 { panic(v); }

	v = c.x(c);
	if v != 6 { panic(v); }

	v = c.f();
	if v != 6 { panic(v); }
}

func g(p *C)int {
	var v int;

	v = p.a;
	if v != 6 { panic(v); }
	return p.a;
}

```
## rob1
```go
// run

// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Test pointers and the . (selector) operator on structs.

package main

type	x2	struct { a,b,c int; d int; };
var	g1	x2;
var	g2	struct { a,b,c int; d x2; };

func
main() {
	var x int;
	var s1 *x2;
	var s2 *struct { a,b,c int; d x2; };

	s1 = &g1;
	s2 = &g2;

	s1.a = 1;
	s1.b = 2;
	s1.c = 3;
	s1.d = 5;

	s2.a = 7;
	s2.b = 11;
	s2.c = 13;
	s2.d.a = 17;
	s2.d.b = 19;
	s2.d.c = 23;
	s2.d.d = 20;

	if(s2.d.c != 23) { panic(1); }
	if(g2.d.c != 23) { panic(2); }

	x =	s1.a +
		s1.b +
		s1.c +
		s1.d +

		s2.a +
		s2.b +
		s2.c +
		s2.d.a +
		s2.d.b +
		s2.d.c +
		s2.d.d;

	if(x != 121) { panic(x); }
}

```
## robfor
```go
// run

// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Test 'for range' on arrays, slices, and maps.

package main

const size = 16

var a [size]byte
var p []byte
var m map[int]byte

func f(k int) byte {
	return byte(k * 10007 % size)
}

func init() {
	p = make([]byte, size)
	m = make(map[int]byte)
	for k := 0; k < size; k++ {
		v := f(k)
		a[k] = v
		p[k] = v
		m[k] = v
	}
}

func main() {
	var i int

	/*
	 * key only
	 */
	i = 0
	for k := range a {
		v := a[k]
		if v != f(k) {
			println("key array range", k, v, a[k])
			panic("fail")
		}
		i++
	}
	if i != size {
		println("key array size", i)
		panic("fail")
	}

	i = 0
	for k := range p {
		v := p[k]
		if v != f(k) {
			println("key pointer range", k, v, p[k])
			panic("fail")
		}
		i++
	}
	if i != size {
		println("key pointer size", i)
		panic("fail")
	}

	i = 0
	for k := range m {
		v := m[k]
		if v != f(k) {
			println("key map range", k, v, m[k])
			panic("fail")
		}
		i++
	}
	if i != size {
		println("key map size", i)
		panic("fail")
	}

	/*
	 * key,value
	 */
	i = 0
	for k, v := range a {
		if v != f(k) {
			println("key:value array range", k, v, a[k])
			panic("fail")
		}
		i++
	}
	if i != size {
		println("key:value array size", i)
		panic("fail")
	}

	i = 0
	for k, v := range p {
		if v != f(k) {
			println("key:value pointer range", k, v, p[k])
			panic("fail")
		}
		i++
	}
	if i != size {
		println("key:value pointer size", i)
		panic("fail")
	}

	i = 0
	for k, v := range m {
		if v != f(k) {
			println("key:value map range", k, v, m[k])
			panic("fail")
		}
		i++
	}
	if i != size {
		println("key:value map size", i)
		panic("fail")
	}
}

```
## robfunc
```go
// run

// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Test general operation using a list implementation.

package main

type Item interface {
	Print() string
}

type ListItem struct {
	item Item
	next *ListItem
}

type List struct {
	head *ListItem
}

func (list *List) Init() {
	list.head = nil
}

func (list *List) Insert(i Item) {
	item := new(ListItem)
	item.item = i
	item.next = list.head
	list.head = item
}

func (list *List) Print() string {
	r := ""
	i := list.head
	for i != nil {
		r += i.item.Print()
		i = i.next
	}
	return r
}

// Something to put in a list
type Integer struct {
	val int
}

func (this *Integer) Init(i int) *Integer {
	this.val = i
	return this
}

func (this *Integer) Print() string {
	return string(this.val + '0')
}

func main() {
	list := new(List)
	list.Init()
	for i := 0; i < 10; i = i + 1 {
		integer := new(Integer)
		integer.Init(i)
		list.Insert(integer)
	}

	r := list.Print()
	if r != "9876543210" {
		panic(r)
	}
}

```
## shift
```go
// run

// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Test for loops of many forms.

package main

func assertequal(is, shouldbe int, msg string) {
	if is != shouldbe {
		print("assertion fail" + msg + "\n");
		panic(1);
	}
}

func main() {
	var i, sum int;

	i = 0;
	for {
		i = i + 1;
		if i > 5 {
			break;
		}
	}
	assertequal(i, 6, "break");

	sum = 0;
	for i := 0; i <= 10; i++ {
		sum = sum + i;
	}
	assertequal(sum, 55, "all three");

	sum = 0;
	for i := 0; i <= 10; {
		sum = sum + i;
		i++;
	}
	assertequal(sum, 55, "only two");

	sum = 0;
	for sum < 100 {
		sum = sum + 9;
	}
	assertequal(sum, 99 + 9, "only one");

	sum = 0;
	for i := 0; i <= 10; i++ {
		if i % 2 == 0 {
			continue;
		}
		sum = sum + i;
	}
	assertequal(sum, 1+3+5+7+9, "continue");

}

```
## simparray
```go
// run

// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Test functions of many signatures.

package main

func assertequal(is, shouldbe int, msg string) {
	if is != shouldbe {
		print("assertion fail" + msg + "\n")
		panic(1)
	}
}

func f1() {
}

func f2(a int) {
}

func f3(a, b int) int {
	return a + b
}

func f4(a, b int, c float64) int {
	return (a+b)/2 + int(c)
}

func f5(a int) int {
	return 5
}

func f6(a int) (r int) {
	return 6
}

func f7(a int) (x int, y float64) {
	return 7, 7.0
}


func f8(a int) (x int, y float64) {
	return 8, 8.0
}

type T struct {
	x, y int
}

func (t *T) m10(a int, b float64) int {
	return (t.x + a) * (t.y + int(b))
}


func f9(a int) (in int, fl float64) {
	i := 9
	f := float64(9)
	return i, f
}


func main() {
	f1()
	f2(1)
	r3 := f3(1, 2)
	assertequal(r3, 3, "3")
	r4 := f4(0, 2, 3.0)
	assertequal(r4, 4, "4")
	r5 := f5(1)
	assertequal(r5, 5, "5")
	r6 := f6(1)
	assertequal(r6, 6, "6")
	var r7 int
	var s7 float64
	r7, s7 = f7(1)
	assertequal(r7, 7, "r7")
	assertequal(int(s7), 7, "s7")
	var r8 int
	var s8 float64
	r8, s8 = f8(1)
	assertequal(r8, 8, "r8")
	assertequal(int(s8), 8, "s8")
	var r9 int
	var s9 float64
	r9, s9 = f9(1)
	assertequal(r9, 9, "r9")
	assertequal(int(s9), 9, "s9")
	var t *T = new(T)
	t.x = 1
	t.y = 2
	r10 := t.m10(1, 3.0)
	assertequal(r10, 10, "10")
}

```
## simpswitch
```go
// run

// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Test simple arithmetic conversion.

package main

type vlong int64
type short int16

func main() {
	s1 := vlong(0)
	for i := short(0); i < 10; i = i + 1 {
		s1 = s1 + vlong(i)
	}
	if s1 != 45 {
		panic(s1)
	}

	s2 := float64(0)
	for i := 0; i < 10; i = i + 1 {
		s2 = s2 + float64(i)
	}
	if s2 != 45 {
		panic(s2)
	}
}

```
## slicearray
```go
// run

// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Test simple switch.

package main

func main() {
	r := ""
	a := 3
	for i := 0; i < 10; i = i + 1 {
		switch i {
		case 5:
			r += "five"
		case a, 7:
			r += "a"
		default:
			r += string(i + '0')
		}
		r += "out" + string(i+'0')
	}
	if r != "0out01out12out2aout34out4fiveout56out6aout78out89out9" {
		panic(r)
	}
}

```
## sliceslice
```go
// run

// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Test scoping of variables.


package main

var	x,y	int;

func
main() {

	x = 15;
	y = 20;
	{
		var x int;
		x = 25;
		y = 25;
		_ = x;
	}
	x = x+y;
	if(x != 40) { panic(x); }
}

```
## string_
```go
// run

// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Test basic operations of slices and arrays.

package main

var bx [10]byte
var by []byte
var fx [10]float64
var fy []float64
var lb, hb int
var t int

func main() {
	lb = 0
	hb = 10
	by = bx[0:]
	tstb()

	lb = 0
	hb = 10
	fy = fx[0:]
	tstf()

	// width 1 (byte)
	lb = 0
	hb = 10
	by = bx[lb:hb]
	tstb()
	by = bx[lb:10]
	tstb()
	by = bx[lb:]
	tstb()
	by = bx[:hb]
	tstb()
	by = bx[0:hb]
	tstb()
	by = bx[0:10]
	tstb()
	by = bx[0:]
	tstb()
	by = bx[:10]
	tstb()
	by = bx[:]
	tstb()

	lb = 2
	hb = 10
	by = bx[lb:hb]
	tstb()
	by = bx[lb:10]
	tstb()
	by = bx[lb:]
	tstb()
	by = bx[2:hb]
	tstb()
	by = bx[2:10]
	tstb()
	by = bx[2:]
	tstb()

	lb = 0
	hb = 8
	by = bx[lb:hb]
	tstb()
	by = bx[lb:8]
	tstb()
	by = bx[0:hb]
	tstb()
	by = bx[0:8]
	tstb()
	by = bx[:8]
	tstb()
	by = bx[:hb]
	tstb()

	lb = 2
	hb = 8
	by = bx[lb:hb]
	tstb()
	by = bx[lb:8]
	tstb()
	by = bx[2:hb]
	tstb()
	by = bx[2:8]
	tstb()

	// width 8 (float64)
	lb = 0
	hb = 10
	fy = fx[lb:hb]
	tstf()
	fy = fx[lb:10]
	tstf()
	fy = fx[lb:]
	tstf()
	fy = fx[:hb]
	tstf()
	fy = fx[0:hb]
	tstf()
	fy = fx[0:10]
	tstf()
	fy = fx[0:]
	tstf()
	fy = fx[:10]
	tstf()
	fy = fx[:]
	tstf()

	lb = 2
	hb = 10
	fy = fx[lb:hb]
	tstf()
	fy = fx[lb:10]
	tstf()
	fy = fx[lb:]
	tstf()
	fy = fx[2:hb]
	tstf()
	fy = fx[2:10]
	tstf()
	fy = fx[2:]
	tstf()

	lb = 0
	hb = 8
	fy = fx[lb:hb]
	tstf()
	fy = fx[lb:8]
	tstf()
	fy = fx[:hb]
	tstf()
	fy = fx[0:hb]
	tstf()
	fy = fx[0:8]
	tstf()
	fy = fx[:8]
	tstf()

	lb = 2
	hb = 8
	fy = fx[lb:hb]
	tstf()
	fy = fx[lb:8]
	tstf()
	fy = fx[2:hb]
	tstf()
	fy = fx[2:8]
	tstf()
}

func tstb() {
	t++
	if len(by) != hb-lb {
		println("t=", t, "lb=", lb, "hb=", hb,
			"len=", len(by), "hb-lb=", hb-lb)
		panic("fail")
	}
	if cap(by) != len(bx)-lb {
		println("t=", t, "lb=", lb, "hb=", hb,
			"cap=", cap(by), "len(bx)-lb=", len(bx)-lb)
		panic("fail")
	}
	for i := lb; i < hb; i++ {
		if bx[i] != by[i-lb] {
			println("t=", t, "lb=", lb, "hb=", hb,
				"bx[", i, "]=", bx[i],
				"by[", i-lb, "]=", by[i-lb])
			panic("fail")
		}
	}
	by = nil
}

func tstf() {
	t++
	if len(fy) != hb-lb {
		println("t=", t, "lb=", lb, "hb=", hb,
			"len=", len(fy), "hb-lb=", hb-lb)
		panic("fail")
	}
	if cap(fy) != len(fx)-lb {
		println("t=", t, "lb=", lb, "hb=", hb,
			"cap=", cap(fy), "len(fx)-lb=", len(fx)-lb)
		panic("fail")
	}
	for i := lb; i < hb; i++ {
		if fx[i] != fy[i-lb] {
			println("t=", t, "lb=", lb, "hb=", hb,
				"fx[", i, "]=", fx[i],
				"fy[", i-lb, "]=", fy[i-lb])
			panic("fail")
		}
	}
	fy = nil
}

func init() {
	for i := 0; i < len(bx); i++ {
		bx[i] = byte(i + 20)
	}
	by = nil

	for i := 0; i < len(fx); i++ {
		fx[i] = float64(i + 20)
	}
	fy = nil
}

```
## literal
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
## method
```go
// run

// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Test struct-valued variables (not pointers).

package main

type	x2	struct { a,b,c int; d int; };
var	g1	x2;
var	g2	struct { a,b,c int; d x2; };

func
main() {
	var x int;
	var s1 *x2;
	var s2 *struct { a,b,c int; d x2; };
	var s3 struct { a,b,c int; d x2; };

	s1 = &g1;
	s2 = &g2;

	s1.a = 1;
	s1.b = 2;
	s1.c = 3;
	s1.d = 5;

	if(s1.c != 3) { panic(s1.c); }
	if(g1.c != 3) { panic(g1.c); }

	s2.a = 7;
	s2.b = 11;
	s2.c = 13;
	s2.d.a = 17;
	s2.d.b = 19;
	s2.d.c = 23;
	s2.d.d = 29;

	if(s2.d.c != 23) { panic(s2.d.c); }
	if(g2.d.c != 23) { panic(g2.d.c); }

	x =	s1.a +
		s1.b +
		s1.c +
		s1.d +

		s2.a +
		s2.b +
		s2.c +
		s2.d.a +
		s2.d.b +
		s2.d.c +
		s2.d.d;

	if(x != 130) { panic(x); }

	// test an automatic struct
	s3.a = 7;
	s3.b = 11;
	s3.c = 13;
	s3.d.a = 17;
	s3.d.b = 19;
	s3.d.c = 23;
	s3.d.d = 29;

	if(s3.d.c != 23) { panic(s3.d.c); }

	x =	s3.a +
		s3.b +
		s3.c +
		s3.d.a +
		s3.d.b +
		s3.d.c +
		s3.d.d;

	if(x != 119) { panic(x); }
}

```
## method3
```go
// run

// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Test literal syntax for basic types.

package main

var nbad int

func assert(cond bool, msg string) {
	if !cond {
		if nbad == 0 {
			print("BUG")
		}
		nbad++
		print(" ", msg)
	}
}

func equal(a, b float32) bool {
	return a == b
}

func main() {
	// bool
	var t bool = true
	var f bool = false
	assert(t == !f, "bool")

	// int8
	var i00 int8 = 0
	var i01 int8 = 1
	var i02 int8 = -1
	var i03 int8 = 127
	var i04 int8 = -127
	var i05 int8 = -128
	var i06 int8 = +127
	assert(i01 == i00+1, "i01")
	assert(i02 == -i01, "i02")
	assert(i03 == -i04, "i03")
	assert(-(i05+1) == i06, "i05")

	// int16
	var i10 int16 = 0
	var i11 int16 = 1
	var i12 int16 = -1
	var i13 int16 = 32767
	var i14 int16 = -32767
	var i15 int16 = -32768
	var i16 int16 = +32767
	assert(i11 == i10+1, "i11")
	assert(i12 == -i11, "i12")
	assert(i13 == -i14, "i13")
	assert(-(i15+1) == i16, "i15")

	// int32
	var i20 int32 = 0
	var i21 int32 = 1
	var i22 int32 = -1
	var i23 int32 = 2147483647
	var i24 int32 = -2147483647
	var i25 int32 = -2147483648
	var i26 int32 = +2147483647
	assert(i21 == i20+1, "i21")
	assert(i22 == -i21, "i22")
	assert(i23 == -i24, "i23")
	assert(-(i25+1) == i26, "i25")
	assert(i23 == (1<<31)-1, "i23 size")

	// int64
	var i30 int64 = 0
	var i31 int64 = 1
	var i32 int64 = -1
	var i33 int64 = 9223372036854775807
	var i34 int64 = -9223372036854775807
	var i35 int64 = -9223372036854775808
	var i36 int64 = +9223372036854775807
	assert(i31 == i30+1, "i31")
	assert(i32 == -i31, "i32")
	assert(i33 == -i34, "i33")
	assert(-(i35+1) == i36, "i35")
	assert(i33 == (1<<63)-1, "i33 size")

	// uint8
	var u00 uint8 = 0
	var u01 uint8 = 1
	var u02 uint8 = 255
	var u03 uint8 = +255
	assert(u01 == u00+1, "u01")
	assert(u02 == u03, "u02")
	assert(u03 == (1<<8)-1, "u03 size")

	// uint16
	var u10 uint16 = 0
	var u11 uint16 = 1
	var u12 uint16 = 65535
	var u13 uint16 = +65535
	assert(u11 == u10+1, "u11")
	assert(u12 == u13, "u12")

	// uint32
	var u20 uint32 = 0
	var u21 uint32 = 1
	var u22 uint32 = 4294967295
	var u23 uint32 = +4294967295
	assert(u21 == u20+1, "u21")
	assert(u22 == u23, "u22")

	// uint64
	var u30 uint64 = 0
	var u31 uint64 = 1
	var u32 uint64 = 18446744073709551615
	var u33 uint64 = +18446744073709551615
	_, _, _, _ = u30, u31, u32, u33

	// float
	var f00 float32 = 3.14159
	var f01 float32 = -3.14159
	var f02 float32 = +3.14159
	var f03 float32 = 0.0
	var f04 float32 = .0
	var f05 float32 = 0.
	var f06 float32 = -0.0
	var f07 float32 = 1e10
	var f08 float32 = -1e10
	var f09 float32 = 1e-10
	var f10 float32 = 1e+10
	var f11 float32 = 1.e-10
	var f12 float32 = 1.e+10
	var f13 float32 = .1e-10
	var f14 float32 = .1e+10
	var f15 float32 = 1.1e-10
	var f16 float32 = 1.1e+10
	assert(f01 == -f00, "f01")
	assert(f02 == -f01, "f02")
	assert(f03 == f04, "f03")
	assert(f04 == f05, "f04")
	assert(f05 == f06, "f05")
	assert(f07 == -f08, "f07")
	assert(equal(f09, 1/f10), "f09")
	assert(f11 == f09, "f11")
	assert(f12 == f10, "f12")
	assert(equal(f13, f09/10.0), "f13")
	assert(equal(f14, f12/10.0), "f14")
	assert(equal(f15, f16/1e20), "f15")

	// character
	var c0 uint8 = 'a'
	var c1 uint8 = 'ä'
	var c2 uint8 = '\a'
	var c3 uint8 = '\b'
	var c4 uint8 = '\f'
	var c5 uint8 = '\n'
	var c6 uint8 = '\r'
	var c7 uint8 = '\t'
	var c8 uint8 = '\v'
	// var c9 uint8 = '本' // correctly caught as error
	var c9 uint16 = '本'
	assert(c0 == 0x61, "c0")
	assert(c1 == 0xe4, "c1")
	assert(c2 == 0x07, "c2")
	assert(c3 == 0x08, "c3")
	assert(c4 == 0x0c, "c4")
	assert(c5 == 0x0a, "c4")
	assert(c6 == 0x0d, "c6")
	assert(c7 == 0x09, "c7")
	assert(c8 == 0x0b, "c8")
	assert(c9 == 0x672c, "c9")

	var c00 uint8 = '\000'
	var c01 uint8 = '\007'
	var c02 uint8 = '\177'
	var c03 uint8 = '\377'
	assert(c00 == 0, "c00")
	assert(c01 == 7, "c01")
	assert(c02 == 127, "c02")
	assert(c03 == 255, "c03")

	var cx0 uint8 = '\x00'
	var cx1 uint8 = '\x0f'
	var cx2 uint8 = '\xff'
	assert(cx0 == 0, "cx0")
	assert(cx1 == 15, "cx1")
	assert(cx2 == 255, "cx2")

	var cu0 uint16 = '\u1234'
	var cu1 uint32 = '\U00101234'
	assert(cu0 == 0x1234, "cu0")
	assert(cu1 == 0x101234, "cu1")

	// string
	var s0 string = ""
	var s1 string = "hellô"
	assert(s1[0] == 'h', "s1-0")
	assert(s1[4] == 0xc3, "s1-4")
	assert(s1[5] == 0xb4, "s1-5")
	var s2 string = "\a\b\f\n\r\t\v"
	_, _ = s0, s2

	var s00 string = "\000"
	var s01 string = "\007"
	var s02 string = "\377"
	assert(s00[0] == 0, "s00")
	assert(s01[0] == 7, "s01")
	assert(s02[0] == 255, "s02")

	var x00 string = "\x00"
	var x01 string = "\x0f"
	var x02 string = "\xff"
	assert(x00[0] == 0, "x00")
	assert(x01[0] == 15, "x01")
	assert(x02[0] == 255, "x02")

	// these are all the same string
	var sj0 string = "日本語"
	var sj1 string = "\u65e5\u672c\u8a9e"
	var sj2 string = "\U000065e5\U0000672c\U00008a9e"
	var sj3 string = "\xe6\x97\xa5\xe6\x9c\xac\xe8\xaa\x9e"
	assert(sj0 == sj1, "sj1")
	assert(sj0 == sj2, "sj2")
	assert(sj0 == sj3, "sj3")

	if nbad > 0 {
		panic("literal failed")
	}
}

```
## method5
```go
// run

// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Test simple methods of various types, with pointer and
// value receivers.

package main

type S string
type S1 string
type I int
type I1 int
type T struct {
	x int
}
type T1 T

func (s S) val() int   { return 1 }
func (s *S1) val() int { return 2 }
func (i I) val() int   { return 3 }
func (i *I1) val() int { return 4 }
func (t T) val() int   { return 7 }
func (t *T1) val() int { return 8 }

type Val interface {
	val() int
}

func val(v Val) int { return v.val() }

func main() {
	var s S
	var ps *S1
	var i I
	var pi *I1
	var pt *T1
	var t T
	var v Val

	if s.val() != 1 {
		println("s.val:", s.val())
		panic("fail")
	}
	if S.val(s) != 1 {
		println("S.val(s):", S.val(s))
		panic("fail")
	}
	if (*S).val(&s) != 1 {
		println("(*S).val(s):", (*S).val(&s))
		panic("fail")
	}
	if ps.val() != 2 {
		println("ps.val:", ps.val())
		panic("fail")
	}
	if (*S1).val(ps) != 2 {
		println("(*S1).val(ps):", (*S1).val(ps))
		panic("fail")
	}
	if i.val() != 3 {
		println("i.val:", i.val())
		panic("fail")
	}
	if I.val(i) != 3 {
		println("I.val(i):", I.val(i))
		panic("fail")
	}
	if (*I).val(&i) != 3 {
		println("(*I).val(&i):", (*I).val(&i))
		panic("fail")
	}
	if pi.val() != 4 {
		println("pi.val:", pi.val())
		panic("fail")
	}
	if (*I1).val(pi) != 4 {
		println("(*I1).val(pi):", (*I1).val(pi))
		panic("fail")
	}
	if t.val() != 7 {
		println("t.val:", t.val())
		panic("fail")
	}
	if pt.val() != 8 {
		println("pt.val:", pt.val())
		panic("fail")
	}
	if (*T1).val(pt) != 8 {
		println("(*T1).val(pt):", (*T1).val(pt))
		panic("fail")
	}

	if val(s) != 1 {
		println("val(s):", val(s))
		panic("fail")
	}
	if val(ps) != 2 {
		println("val(ps):", val(ps))
		panic("fail")
	}
	if val(i) != 3 {
		println("val(i):", val(i))
		panic("fail")
	}
	if val(pi) != 4 {
		println("val(pi):", val(pi))
		panic("fail")
	}
	if val(t) != 7 {
		println("val(t):", val(t))
		panic("fail")
	}
	if val(pt) != 8 {
		println("val(pt):", val(pt))
		panic("fail")
	}

	if Val.val(i) != 3 {
		println("Val.val(i):", Val.val(i))
		panic("fail")
	}
	v = i
	if Val.val(v) != 3 {
		println("Val.val(v):", Val.val(v))
		panic("fail")
	}

	var zs struct{ S }
	var zps struct{ *S1 }
	var zi struct{ I }
	var zpi struct{ *I1 }
	var zpt struct{ *T1 }
	var zt struct{ T }
	var zv struct{ Val }

	if zs.val() != 1 {
		println("zs.val:", zs.val())
		panic("fail")
	}
	if zps.val() != 2 {
		println("zps.val:", zps.val())
		panic("fail")
	}
	if zi.val() != 3 {
		println("zi.val:", zi.val())
		panic("fail")
	}
	if zpi.val() != 4 {
		println("zpi.val:", zpi.val())
		panic("fail")
	}
	if zt.val() != 7 {
		println("zt.val:", zt.val())
		panic("fail")
	}
	if zpt.val() != 8 {
		println("zpt.val:", zpt.val())
		panic("fail")
	}

	if val(zs) != 1 {
		println("val(zs):", val(zs))
		panic("fail")
	}
	if val(zps) != 2 {
		println("val(zps):", val(zps))
		panic("fail")
	}
	if val(zi) != 3 {
		println("val(zi):", val(zi))
		panic("fail")
	}
	if val(zpi) != 4 {
		println("val(zpi):", val(zpi))
		panic("fail")
	}
	if val(zt) != 7 {
		println("val(zt):", val(zt))
		panic("fail")
	}
	if val(zpt) != 8 {
		println("val(zpt):", val(zpt))
		panic("fail")
	}

	zv.Val = zi
	if zv.val() != 3 {
		println("zv.val():", zv.val())
		panic("fail")
	}

	if (&zs).val() != 1 {
		println("(&zs).val:", (&zs).val())
		panic("fail")
	}
	if (&zps).val() != 2 {
		println("(&zps).val:", (&zps).val())
		panic("fail")
	}
	if (&zi).val() != 3 {
		println("(&zi).val:", (&zi).val())
		panic("fail")
	}
	if (&zpi).val() != 4 {
		println("(&zpi).val:", (&zpi).val())
		panic("fail")
	}
	if (&zt).val() != 7 {
		println("(&zt).val:", (&zt).val())
		panic("fail")
	}
	if (&zpt).val() != 8 {
		println("(&zpt).val:", (&zpt).val())
		panic("fail")
	}

	if val(&zs) != 1 {
		println("val(&zs):", val(&zs))
		panic("fail")
	}
	if val(&zps) != 2 {
		println("val(&zps):", val(&zps))
		panic("fail")
	}
	if val(&zi) != 3 {
		println("val(&zi):", val(&zi))
		panic("fail")
	}
	if val(&zpi) != 4 {
		println("val(&zpi):", val(&zpi))
		panic("fail")
	}
	if val(&zt) != 7 {
		println("val(&zt):", val(&zt))
		panic("fail")
	}
	if val(&zpt) != 8 {
		println("val(&zpt):", val(&zpt))
		panic("fail")
	}

	zv.Val = &zi
	if zv.val() != 3 {
		println("zv.val():", zv.val())
		panic("fail")
	}

	promotion()
}

type A struct{ B }
type B struct {
	C
	*D
}
type C int

func (C) f()  {} // value receiver, direct field of A
func (*C) g() {} // pointer receiver

type D int

func (D) h()  {} // value receiver, indirect field of A
func (*D) i() {} // pointer receiver

func expectPanic() {
	if r := recover(); r == nil {
		panic("expected nil dereference")
	}
}

func promotion() {
	var a A
	// Addressable value receiver.
	a.f()
	a.g()
	func() {
		defer expectPanic()
		a.h() // dynamic error: nil dereference in a.B.D->f()
	}()
	a.i()

	// Non-addressable value receiver.
	A(a).f()
	// A(a).g() // static error: cannot call pointer method on A literal.B.C
	func() {
		defer expectPanic()
		A(a).h() // dynamic error: nil dereference in A().B.D->f()
	}()
	A(a).i()

	// Pointer receiver.
	(&a).f()
	(&a).g()
	func() {
		defer expectPanic()
		(&a).h() // dynamic error: nil deref: nil dereference in (&a).B.D->f()
	}()
	(&a).i()

	c := new(C)
	c.f() // makes a copy
	c.g()
}

```
## method7
```go
// run

// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Test methods on slices.

package main

type T []int

func (t T) Len() int { return len(t) }

type I interface {
	Len() int
}

func main() {
	var t T = T{0, 1, 2, 3, 4}
	var i I
	i = t
	if i.Len() != 5 {
		println("i.Len", i.Len())
		panic("fail")
	}
	if T.Len(t) != 5 {
		println("T.Len", T.Len(t))
		panic("fail")
	}
	if (*T).Len(&t) != 5 {
		println("(*T).Len", (*T).Len(&t))
		panic("fail")
	}
}

```
## nilptr2
```go
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

func (v Tsmallv) M(x int, b byte) (byte, int) { return b, x+int(v) }

type Tsmallp byte

func (p *Tsmallp) M(x int, b byte) (byte, int) { return b, x+int(*p) }

type Twordv uintptr

func (v Twordv) M(x int, b byte) (byte, int) { return b, x+int(v) }

type Twordp uintptr

func (p *Twordp) M(x int, b byte) (byte, int) { return b, x+int(*p) }

type Tbigv [2]uintptr

func (v Tbigv) M(x int, b byte) (byte, int) { return b, x+int(v[0])+int(v[1]) }

type Tbigp [2]uintptr

func (p *Tbigp) M(x int, b byte) (byte, int) { return b, x+int(p[0])+int(p[1]) }

// Again, with an unexported method.

type tsmallv byte

func (v tsmallv) m(x int, b byte) (byte, int) { return b, x+int(v) }

type tsmallp byte

func (p *tsmallp) m(x int, b byte) (byte, int) { return b, x+int(*p) }

type twordv uintptr

func (v twordv) m(x int, b byte) (byte, int) { return b, x+int(v) }

type twordp uintptr

func (p *twordp) m(x int, b byte) (byte, int) { return b, x+int(*p) }

type tbigv [2]uintptr

func (v tbigv) m(x int, b byte) (byte, int) { return b, x+int(v[0])+int(v[1]) }

type tbigp [2]uintptr

func (p *tbigp) m(x int, b byte) (byte, int) { return b, x+int(p[0])+int(p[1]) }

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

func (t4 T4) M(x int, b byte) (byte, int) { return b, x+40 }

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
	sv := Tsmallv(1)
	CheckI("sv", sv, 1)
	CheckF("sv.M", sv.M, 1)
	CheckF("(&sv).M", (&sv).M, 1)
	psv := &sv
	CheckI("psv", psv, 1)
	CheckF("psv.M", psv.M, 1)
	CheckF("(*psv).M", (*psv).M, 1)

	sp := Tsmallp(2)
	CheckI("&sp", &sp, 2)
	CheckF("sp.M", sp.M, 2)
	CheckF("(&sp).M", (&sp).M, 2)
	psp := &sp
	CheckI("psp", psp, 2)
	CheckF("psp.M", psp.M, 2)
	CheckF("(*psp).M", (*psp).M, 2)

	wv := Twordv(3)
	CheckI("wv", wv, 3)
	CheckF("wv.M", wv.M, 3)
	CheckF("(&wv).M", (&wv).M, 3)
	pwv := &wv
	CheckI("pwv", pwv, 3)
	CheckF("pwv.M", pwv.M, 3)
	CheckF("(*pwv).M", (*pwv).M, 3)

	wp := Twordp(4)
	CheckI("&wp", &wp, 4)
	CheckF("wp.M", wp.M, 4)
	CheckF("(&wp).M", (&wp).M, 4)
	pwp := &wp
	CheckI("pwp", pwp, 4)
	CheckF("pwp.M", pwp.M, 4)
	CheckF("(*pwp).M", (*pwp).M, 4)

	bv := Tbigv([2]uintptr{5, 6})
	pbv := &bv
	CheckI("bv", bv, 11)
	CheckF("bv.M", bv.M, 11)
	CheckF("(&bv).M", (&bv).M, 11)
	CheckI("pbv", pbv, 11)
	CheckF("pbv.M", pbv.M, 11)
	CheckF("(*pbv).M", (*pbv).M, 11)
	
	bp := Tbigp([2]uintptr{7,8})
	CheckI("&bp", &bp, 15)
	CheckF("bp.M", bp.M, 15)
	CheckF("(&bp).M", (&bp).M, 15)
	pbp := &bp
	CheckI("pbp", pbp, 15)
	CheckF("pbp.M", pbp.M, 15)
	CheckF("(*pbp).M", (*pbp).M, 15)

	_sv := tsmallv(1)
	checkI("_sv", _sv, 1)
	checkF("_sv.m", _sv.m, 1)
	checkF("(&_sv).m", (&_sv).m, 1)
	_psv := &_sv
	checkI("_psv", _psv, 1)
	checkF("_psv.m", _psv.m, 1)
	checkF("(*_psv).m", (*_psv).m, 1)

	_sp := tsmallp(2)
	checkI("&_sp", &_sp, 2)
	checkF("_sp.m", _sp.m, 2)
	checkF("(&_sp).m", (&_sp).m, 2)
	_psp := &_sp
	checkI("_psp", _psp, 2)
	checkF("_psp.m", _psp.m, 2)
	checkF("(*_psp).m", (*_psp).m, 2)

	_wv := twordv(3)
	checkI("_wv", _wv, 3)
	checkF("_wv.m", _wv.m, 3)
	checkF("(&_wv).m", (&_wv).m, 3)
	_pwv := &_wv
	checkI("_pwv", _pwv, 3)
	checkF("_pwv.m", _pwv.m, 3)
	checkF("(*_pwv).m", (*_pwv).m, 3)

	_wp := twordp(4)
	checkI("&_wp", &_wp, 4)
	checkF("_wp.m", _wp.m, 4)
	checkF("(&_wp).m", (&_wp).m, 4)
	_pwp := &_wp
	checkI("_pwp", _pwp, 4)
	checkF("_pwp.m", _pwp.m, 4)
	checkF("(*_pwp).m", (*_pwp).m, 4)

	_bv := tbigv([2]uintptr{5, 6})
	_pbv := &_bv
	checkI("_bv", _bv, 11)
	checkF("_bv.m", _bv.m, 11)
	checkF("(&_bv).m", (&_bv).m, 11)
	checkI("_pbv", _pbv, 11)
	checkF("_pbv.m", _pbv.m, 11)
	checkF("(*_pbv).m", (*_pbv).m, 11)
	
	_bp := tbigp([2]uintptr{7,8})
	checkI("&_bp", &_bp, 15)
	checkF("_bp.m", _bp.m, 15)
	checkF("(&_bp).m", (&_bp).m, 15)
	_pbp := &_bp
	checkI("_pbp", _pbp, 15)
	checkF("_pbp.m", _pbp.m, 15)
	checkF("(*_pbp).m", (*_pbp).m, 15)
	
	t4 := T4{}
	t3 := T3{&t4}
	t2 := T2{&t3}
	t1 := T1{t2}
	CheckI("t4", t4, 40)
	CheckI("&t4", &t4, 40)
	CheckI("t3", t3, 40)
	CheckI("&t3", &t3, 40)
	CheckI("t2", t2, 40)
	CheckI("&t2", &t2, 40)
	CheckI("t1", t1, 40)
	CheckI("&t1", &t1, 40)
	
	// x.M panics if x is an interface type and is nil,
	// or if x.M expands to (*x).M where x is nil,
	// or if x.M expands to x.y.z.w.M where something
	// along the evaluation of x.y.z.w is nil.
	var f func(int, byte) (byte, int)
	shouldPanic(func() { psv = nil; f = psv.M })
	shouldPanic(func() { pwv = nil; f = pwv.M })
	shouldPanic(func() { pbv = nil; f = pbv.M })
	shouldPanic(func() { var i Tinter; f = i.M })
	shouldPanic(func() { _psv = nil; f = _psv.m })
	shouldPanic(func() { _pwv = nil; f = _pwv.m })
	shouldPanic(func() { _pbv = nil; f = _pbv.m })
	shouldPanic(func() { var _i tinter; f = _i.m })
	shouldPanic(func() { var t1 T1; f = t1.M })
	shouldPanic(func() { var t2 T2; f = t2.M })
	shouldPanic(func() { var t3 *T3; f = t3.M })
	shouldPanic(func() { var t3 T3; f = t3.M })

	if f != nil {
		panic("something set f")
	}
	
	// x.M does not panic if x is a nil pointer and
	// M is a method with a pointer receiver.
	shouldNotPanic(func() { psp = nil; f = psp.M })
	shouldNotPanic(func() { pwp = nil; f = pwp.M })
	shouldNotPanic(func() { pbp = nil; f = pbp.M })
	shouldNotPanic(func() { _psp = nil; f = _psp.m })
	shouldNotPanic(func() { _pwp = nil; f = _pwp.m })
	shouldNotPanic(func() { _pbp = nil; f = _pbp.m })
	shouldNotPanic(func() { var t4 T4; f = t4.M })
	if f == nil {
		panic("nothing set f")
	}
}

```
## print
```go
// run

// Copyright 2017 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Test forms of method expressions T.m where T is
// a literal type.

package main

var got, want string

type I interface {
	m()
}

type S struct {
}

func (S) m()          { got += " m()" }
func (S) m1(s string) { got += " m1(" + s + ")" }

type T int

func (T) m2() { got += " m2()" }

type Outer struct{ *Inner }
type Inner struct{ s string }

func (i Inner) M() string { return i.s }

func main() {
	// method expressions with named receiver types
	I.m(S{})
	want += " m()"

	S.m1(S{}, "a")
	want += " m1(a)"

	// method expressions with literal receiver types
	f := interface{ m1(string) }.m1
	f(S{}, "b")
	want += " m1(b)"

	interface{ m1(string) }.m1(S{}, "c")
	want += " m1(c)"

	x := S{}
	interface{ m1(string) }.m1(x, "d")
	want += " m1(d)"

	g := struct{ T }.m2
	g(struct{ T }{})
	want += " m2()"

	if got != want {
		panic("got" + got + ", want" + want)
	}

	h := (*Outer).M
	got := h(&Outer{&Inner{"hello"}})
	want := "hello"
	if got != want {
		panic("got " + got + ", want " + want)
	}
}

```
## printbig
```go
// run

// Copyright 2013 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

func main() {
	ok := true
	for _, tt := range tests {
		func() {
			defer func() {
				if err := recover(); err == nil {
					println(tt.name, "did not panic")
					ok = false
				}
			}()
			tt.fn()
		}()
	}
	if !ok {
		println("BUG")
	}
}

var intp *int
var slicep *[]byte
var a10p *[10]int
var a10Mp *[1<<20]int
var structp *Struct
var bigstructp *BigStruct
var i int
var m *M
var m1 *M1
var m2 *M2

var V interface{}

func use(x interface{}) {
	V = x
}

var tests = []struct{
	name string
	fn func()
}{
	// Edit .+1,/^}/s/^[^	].+/	{"&", func() { println(&) }},\n	{"\&&", func() { println(\&&) }},/g
	{"*intp", func() { println(*intp) }},
	{"&*intp", func() { println(&*intp) }},
	{"*slicep", func() { println(*slicep) }},
	{"&*slicep", func() { println(&*slicep) }},
	{"(*slicep)[0]", func() { println((*slicep)[0]) }},
	{"&(*slicep)[0]", func() { println(&(*slicep)[0]) }},
	{"(*slicep)[i]", func() { println((*slicep)[i]) }},
	{"&(*slicep)[i]", func() { println(&(*slicep)[i]) }},
	{"*a10p", func() { use(*a10p) }},
	{"&*a10p", func() { println(&*a10p) }},
	{"a10p[0]", func() { println(a10p[0]) }},
	{"&a10p[0]", func() { println(&a10p[0]) }},
	{"a10p[i]", func() { println(a10p[i]) }},
	{"&a10p[i]", func() { println(&a10p[i]) }},
	{"*structp", func() { use(*structp) }},
	{"&*structp", func() { println(&*structp) }},
	{"structp.i", func() { println(structp.i) }},
	{"&structp.i", func() { println(&structp.i) }},
	{"structp.j", func() { println(structp.j) }},
	{"&structp.j", func() { println(&structp.j) }},
	{"structp.k", func() { println(structp.k) }},
	{"&structp.k", func() { println(&structp.k) }},
	{"structp.x[0]", func() { println(structp.x[0]) }},
	{"&structp.x[0]", func() { println(&structp.x[0]) }},
	{"structp.x[i]", func() { println(structp.x[i]) }},
	{"&structp.x[i]", func() { println(&structp.x[i]) }},
	{"structp.x[9]", func() { println(structp.x[9]) }},
	{"&structp.x[9]", func() { println(&structp.x[9]) }},
	{"structp.l", func() { println(structp.l) }},
	{"&structp.l", func() { println(&structp.l) }},
	{"*bigstructp", func() { use(*bigstructp) }},
	{"&*bigstructp", func() { println(&*bigstructp) }},
	{"bigstructp.i", func() { println(bigstructp.i) }},
	{"&bigstructp.i", func() { println(&bigstructp.i) }},
	{"bigstructp.j", func() { println(bigstructp.j) }},
	{"&bigstructp.j", func() { println(&bigstructp.j) }},
	{"bigstructp.k", func() { println(bigstructp.k) }},
	{"&bigstructp.k", func() { println(&bigstructp.k) }},
	{"bigstructp.x[0]", func() { println(bigstructp.x[0]) }},
	{"&bigstructp.x[0]", func() { println(&bigstructp.x[0]) }},
	{"bigstructp.x[i]", func() { println(bigstructp.x[i]) }},
	{"&bigstructp.x[i]", func() { println(&bigstructp.x[i]) }},
	{"bigstructp.x[9]", func() { println(bigstructp.x[9]) }},
	{"&bigstructp.x[9]", func() { println(&bigstructp.x[9]) }},
	{"bigstructp.x[100<<20]", func() { println(bigstructp.x[100<<20]) }},
	{"&bigstructp.x[100<<20]", func() { println(&bigstructp.x[100<<20]) }},
	{"bigstructp.l", func() { println(bigstructp.l) }},
	{"&bigstructp.l", func() { println(&bigstructp.l) }},
	{"m1.F()", func() { println(m1.F()) }},
	{"m1.M.F()", func() { println(m1.M.F()) }},
	{"m2.F()", func() { println(m2.F()) }},
	{"m2.M.F()", func() { println(m2.M.F()) }},
}

type Struct struct {
	i int
	j float64
	k string
	x [10]int
	l []byte
}

type BigStruct struct {
	i int
	j float64
	k string
	x [128<<20]byte
	l []byte
}

type M struct {
}

func (m *M) F() int {return 0}

type M1 struct {
	M
}

type M2 struct {
	x int
	M
}

```
## turing
```go
// run

// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Test that big numbers work as constants and print can print them.

package main

func main() {
	print(-(1<<63), "\n")
	print((1<<63)-1, "\n")
}

```
