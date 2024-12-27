# go_easy
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
## bug494
```go
// run

// Copyright 2014 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Gccgo incorrectly executed functions multiple times when they
// appeared in a composite literal that required a conversion between
// different interface types.

package main

type MyInt int

var c MyInt

func (c *MyInt) S(i int) {
	*c = MyInt(i)
}

func (c *MyInt) V() int {
	return int(*c)
}

type i1 interface {
	S(int)
	V() int
}

type i2 interface {
	V() int
}

type s struct {
	i i2
}

func f() i1 {
	c++
	return &c
}

func main() {
	p := &s{f()}
	if v := p.i.V(); v != 1 {
		panic(v)
	}
	if c != 1 {
		panic(c)
	}
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
## issue23305
```go
// run

// Copyright 2018 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

func mask1(a, b uint64) uint64 {
	op1 := int32(a)
	op2 := int32(b)
	return uint64(uint32(op1 / op2))
}

var mask2 = mask1

func main() {
	res1 := mask1(0x1, 0xfffffffeffffffff)
	res2 := mask2(0x1, 0xfffffffeffffffff)
	if res1 != 0xffffffff {
		println("got", res1, "want", 0xffffffff)
		panic("FAIL")
	}
	if res2 != 0xffffffff {
		println("got", res2, "want", 0xffffffff)
		panic("FAIL")
	}
}

```
## issue26407
```go
// run

// Copyright 2018 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Issue 26407: ensure that stack variables which have
// had their address taken and then used in a comparison,
// but are otherwise unused, are cleared.

package main

func main() {
	poison()
	test()
}

//go:noinline
func poison() {
	// initialise the stack with invalid pointers
	var large [256]uintptr
	for i := range large {
		large[i] = 1
	}
	use(large[:])
}

//go:noinline
func test() {
	a := 2
	x := &a
	if x != compare(&x) {
		panic("not possible")
	}
}

//go:noinline
func compare(x **int) *int {
	var y *int
	if x == &y {
		panic("not possible")
	}
	// grow the stack to trigger a check for invalid pointers
	grow()
	if x == &y {
		panic("not possible")
	}
	return *x
}

//go:noinline
func grow() {
	var large [1 << 16]uintptr
	use(large[:])
}

//go:noinline
func use(_ []uintptr) { }

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
## issue37753
```go
// run

// Copyright 2020 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

//go:noinline
func f(a, b uint) int {
	return int(a-b) / 8
}

func main() {
	if x := f(1, 2); x != 0 {
		panic(x)
	}
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
## issue47928
```go
// run -goexperiment fieldtrack

// Copyright 2021 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

func main() {
	var i interface{} = new(T)
	if _, ok := i.(interface{ Bad() }); ok {
		panic("FAIL")
	}
}

type T struct{ U }

type U struct{}

//go:nointerface
func (*U) Bad() {}

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
## intcvt
```go
// run

// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Test implicit and explicit conversions of constants.

package main

const (
	ci8  = -1 << 7
	ci16 = -1<<15 + 100
	ci32 = -1<<31 + 100000
	ci64 = -1<<63 + 10000000001

	cu8  = 1<<8 - 1
	cu16 = 1<<16 - 1234
	cu32 = 1<<32 - 1234567
	cu64 = 1<<64 - 1234567890123

	cf32 = 1e8 + 0.5
	cf64 = -1e8 + 0.5
)

var (
	i8  int8  = ci8
	i16 int16 = ci16
	i32 int32 = ci32
	i64 int64 = ci64

	u8  uint8  = cu8
	u16 uint16 = cu16
	u32 uint32 = cu32
	u64 uint64 = cu64

	//	f32 float32 = 1e8 + 0.5
	//	f64 float64 = -1e8 + 0.5
)

func chki8(i, v int8) {
	if i != v {
		println(i, "!=", v)
		panic("fail")
	}
}
func chki16(i, v int16) {
	if i != v {
		println(i, "!=", v)
		panic("fail")
	}
}
func chki32(i, v int32) {
	if i != v {
		println(i, "!=", v)
		panic("fail")
	}
}
func chki64(i, v int64) {
	if i != v {
		println(i, "!=", v)
		panic("fail")
	}
}
func chku8(i, v uint8) {
	if i != v {
		println(i, "!=", v)
		panic("fail")
	}
}
func chku16(i, v uint16) {
	if i != v {
		println(i, "!=", v)
		panic("fail")
	}
}
func chku32(i, v uint32) {
	if i != v {
		println(i, "!=", v)
		panic("fail")
	}
}
func chku64(i, v uint64) {
	if i != v {
		println(i, "!=", v)
		panic("fail")
	}
}
//func chkf32(f, v float32) { if f != v { println(f, "!=", v); panic("fail") } }
//func chkf64(f, v float64) { if f != v { println(f, "!=", v); panic("fail") } }

func main() {
	chki8(int8(i8), ci8&0xff-1<<8)
	chki8(int8(i16), ci16&0xff)
	chki8(int8(i32), ci32&0xff-1<<8)
	chki8(int8(i64), ci64&0xff)
	chki8(int8(u8), cu8&0xff-1<<8)
	chki8(int8(u16), cu16&0xff)
	chki8(int8(u32), cu32&0xff)
	chki8(int8(u64), cu64&0xff)
	//	chki8(int8(f32), 0)
	//	chki8(int8(f64), 0)

	chki16(int16(i8), ci8&0xffff-1<<16)
	chki16(int16(i16), ci16&0xffff-1<<16)
	chki16(int16(i32), ci32&0xffff-1<<16)
	chki16(int16(i64), ci64&0xffff-1<<16)
	chki16(int16(u8), cu8&0xffff)
	chki16(int16(u16), cu16&0xffff-1<<16)
	chki16(int16(u32), cu32&0xffff)
	chki16(int16(u64), cu64&0xffff-1<<16)
	//	chki16(int16(f32), 0)
	//	chki16(int16(f64), 0)

	chki32(int32(i8), ci8&0xffffffff-1<<32)
	chki32(int32(i16), ci16&0xffffffff-1<<32)
	chki32(int32(i32), ci32&0xffffffff-1<<32)
	chki32(int32(i64), ci64&0xffffffff)
	chki32(int32(u8), cu8&0xffffffff)
	chki32(int32(u16), cu16&0xffffffff)
	chki32(int32(u32), cu32&0xffffffff-1<<32)
	chki32(int32(u64), cu64&0xffffffff-1<<32)
	//	chki32(int32(f32), 0)
	//	chki32(int32(f64), 0)

	chki64(int64(i8), ci8&0xffffffffffffffff-1<<64)
	chki64(int64(i16), ci16&0xffffffffffffffff-1<<64)
	chki64(int64(i32), ci32&0xffffffffffffffff-1<<64)
	chki64(int64(i64), ci64&0xffffffffffffffff-1<<64)
	chki64(int64(u8), cu8&0xffffffffffffffff)
	chki64(int64(u16), cu16&0xffffffffffffffff)
	chki64(int64(u32), cu32&0xffffffffffffffff)
	chki64(int64(u64), cu64&0xffffffffffffffff-1<<64)
	//	chki64(int64(f32), 0)
	//	chki64(int64(f64), 0)


	chku8(uint8(i8), ci8&0xff)
	chku8(uint8(i16), ci16&0xff)
	chku8(uint8(i32), ci32&0xff)
	chku8(uint8(i64), ci64&0xff)
	chku8(uint8(u8), cu8&0xff)
	chku8(uint8(u16), cu16&0xff)
	chku8(uint8(u32), cu32&0xff)
	chku8(uint8(u64), cu64&0xff)
	//	chku8(uint8(f32), 0)
	//	chku8(uint8(f64), 0)

	chku16(uint16(i8), ci8&0xffff)
	chku16(uint16(i16), ci16&0xffff)
	chku16(uint16(i32), ci32&0xffff)
	chku16(uint16(i64), ci64&0xffff)
	chku16(uint16(u8), cu8&0xffff)
	chku16(uint16(u16), cu16&0xffff)
	chku16(uint16(u32), cu32&0xffff)
	chku16(uint16(u64), cu64&0xffff)
	//	chku16(uint16(f32), 0)
	//	chku16(uint16(f64), 0)

	chku32(uint32(i8), ci8&0xffffffff)
	chku32(uint32(i16), ci16&0xffffffff)
	chku32(uint32(i32), ci32&0xffffffff)
	chku32(uint32(i64), ci64&0xffffffff)
	chku32(uint32(u8), cu8&0xffffffff)
	chku32(uint32(u16), cu16&0xffffffff)
	chku32(uint32(u32), cu32&0xffffffff)
	chku32(uint32(u64), cu64&0xffffffff)
	//	chku32(uint32(f32), 0)
	//	chku32(uint32(f64), 0)

	chku64(uint64(i8), ci8&0xffffffffffffffff)
	chku64(uint64(i16), ci16&0xffffffffffffffff)
	chku64(uint64(i32), ci32&0xffffffffffffffff)
	chku64(uint64(i64), ci64&0xffffffffffffffff)
	chku64(uint64(u8), cu8&0xffffffffffffffff)
	chku64(uint64(u16), cu16&0xffffffffffffffff)
	chku64(uint64(u32), cu32&0xffffffffffffffff)
	chku64(uint64(u64), cu64&0xffffffffffffffff)
	//	chku64(uint64(f32), 0)
	//	chku64(uint64(f64), 0)
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
## receiver
```go
// run

// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Test Implicit methods for embedded types and
// mixed pointer and non-pointer receivers.

package main

type T int

var nv, np int

func (t T) V() {
	if t != 42 {
		panic(t)
	}
	nv++
}

func (t *T) P() {
	if *t != 42 {
		println(t, *t)
		panic("fail")
	}
	np++
}

type V interface {
	V()
}
type P interface {
	P()
	V()
}

type S struct {
	T
}

type SP struct {
	*T
}

func main() {
	var t T
	var v V
	var p P

	t = 42

	t.P()
	t.V()

	v = t
	v.V()

	p = &t
	p.P()
	p.V()

	v = &t
	v.V()

	//	p = t	// ERROR
	var i interface{} = t
	if _, ok := i.(P); ok {
		println("dynamic i.(P) succeeded incorrectly")
		panic("fail")
	}

	//	println("--struct--");
	var s S
	s.T = 42
	s.P()
	s.V()

	v = s
	s.V()

	p = &s
	p.P()
	p.V()

	v = &s
	v.V()

	//	p = s	// ERROR
	var j interface{} = s
	if _, ok := j.(P); ok {
		println("dynamic j.(P) succeeded incorrectly")
		panic("fail")
	}

	//	println("--struct pointer--");
	var sp SP
	sp.T = &t
	sp.P()
	sp.V()

	v = sp
	sp.V()

	p = &sp
	p.P()
	p.V()

	v = &sp
	v.V()

	p = sp // not error
	p.P()
	p.V()

	if nv != 13 || np != 7 {
		println("bad count", nv, np)
		panic("fail")
	}
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
## divmod
```go
// run

// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Test integer division and modulus.

package main

const (
	// example from the spec
	n1 = +5
	n2 = -5
	d1 = +3
	d2 = -3

	q1 = +1
	q2 = -1
	q3 = -1
	q4 = +1

	r1 = +2
	r2 = -2
	r3 = +2
	r4 = -2
)

func main() {
	/* ideals */
	if n1/d1 != q1 || n1%d1 != r1 {
		println("ideal-1", n1, d1, n1/d1, n1%d1)
		panic("fail")
	}
	if n2/d1 != q2 || n2%d1 != r2 {
		println("ideal-2", n2, d1, n2/d1, n2%d1)
		panic("fail")
	}
	if n1/d2 != q3 || n1%d2 != r3 {
		println("ideal-3", n1, d2, n1/d2, n1%d2)
		panic("fail")
	}
	if n2/d2 != q4 || n2%d2 != r4 {
		println("ideal-4", n2, d2, n2/d2, n2%d2)
		panic("fail")
	}

	/* int */
	var in1 int = +5
	var in2 int = -5
	var id1 int = +3
	var id2 int = -3

	if in1/id1 != q1 || in1%id1 != r1 {
		println("int-1", in1, id1, in1/id1, in1%id1)
		panic("fail")
	}
	if in2/id1 != q2 || in2%id1 != r2 {
		println("int-2", in2, id1, in2/id1, in2%id1)
		panic("fail")
	}
	if in1/id2 != q3 || in1%id2 != r3 {
		println("int-3", in1, id2, in1/id2, in1%id2)
		panic("fail")
	}
	if in2/id2 != q4 || in2%id2 != r4 {
		println("int-4", in2, id2, in2/id2, in2%id2)
		panic("fail")
	}

	/* int8 */
	var bn1 int8 = +5
	var bn2 int8 = -5
	var bd1 int8 = +3
	var bd2 int8 = -3

	if bn1/bd1 != q1 || bn1%bd1 != r1 {
		println("int8-1", bn1, bd1, bn1/bd1, bn1%bd1)
		panic("fail")
	}
	if bn2/bd1 != q2 || bn2%bd1 != r2 {
		println("int8-2", bn2, bd1, bn2/bd1, bn2%bd1)
		panic("fail")
	}
	if bn1/bd2 != q3 || bn1%bd2 != r3 {
		println("int8-3", bn1, bd2, bn1/bd2, bn1%bd2)
		panic("fail")
	}
	if bn2/bd2 != q4 || bn2%bd2 != r4 {
		println("int8-4", bn2, bd2, bn2/bd2, bn2%bd2)
		panic("fail")
	}

	/* int16 */
	var sn1 int16 = +5
	var sn2 int16 = -5
	var sd1 int16 = +3
	var sd2 int16 = -3

	if sn1/sd1 != q1 || sn1%sd1 != r1 {
		println("int16-1", sn1, sd1, sn1/sd1, sn1%sd1)
		panic("fail")
	}
	if sn2/sd1 != q2 || sn2%sd1 != r2 {
		println("int16-2", sn2, sd1, sn2/sd1, sn2%sd1)
		panic("fail")
	}
	if sn1/sd2 != q3 || sn1%sd2 != r3 {
		println("int16-3", sn1, sd2, sn1/sd2, sn1%sd2)
		panic("fail")
	}
	if sn2/sd2 != q4 || sn2%sd2 != r4 {
		println("int16-4", sn2, sd2, sn2/sd2, sn2%sd2)
		panic("fail")
	}

	/* int32 */
	var ln1 int32 = +5
	var ln2 int32 = -5
	var ld1 int32 = +3
	var ld2 int32 = -3

	if ln1/ld1 != q1 || ln1%ld1 != r1 {
		println("int32-1", ln1, ld1, ln1/ld1, ln1%ld1)
		panic("fail")
	}
	if ln2/ld1 != q2 || ln2%ld1 != r2 {
		println("int32-2", ln2, ld1, ln2/ld1, ln2%ld1)
		panic("fail")
	}
	if ln1/ld2 != q3 || ln1%ld2 != r3 {
		println("int32-3", ln1, ld2, ln1/ld2, ln1%ld2)
		panic("fail")
	}
	if ln2/ld2 != q4 || ln2%ld2 != r4 {
		println("int32-4", ln2, ld2, ln2/ld2, ln2%ld2)
		panic("fail")
	}

	/* int64 */
	var qn1 int64 = +5
	var qn2 int64 = -5
	var qd1 int64 = +3
	var qd2 int64 = -3

	if qn1/qd1 != q1 || qn1%qd1 != r1 {
		println("int64-1", qn1, qd1, qn1/qd1, qn1%qd1)
		panic("fail")
	}
	if qn2/qd1 != q2 || qn2%qd1 != r2 {
		println("int64-2", qn2, qd1, qn2/qd1, qn2%qd1)
		panic("fail")
	}
	if qn1/qd2 != q3 || qn1%qd2 != r3 {
		println("int64-3", qn1, qd2, qn1/qd2, qn1%qd2)
		panic("fail")
	}
	if qn2/qd2 != q4 || qn2%qd2 != r4 {
		println("int64-4", qn2, qd2, qn2/qd2, qn2%qd2)
		panic("fail")
	}

	if n1/qd1 != q1 || n1%qd1 != r1 {
		println("mixed int64-1", n1, qd1, n1/qd1, n1%qd1)
		panic("fail")
	}
	if n2/qd1 != q2 || n2%qd1 != r2 {
		println("mixed int64-2", n2, qd1, n2/qd1, n2%qd1)
		panic("fail")
	}
	if n1/qd2 != q3 || n1%qd2 != r3 {
		println("mixed int64-3", n1, qd2, n1/qd2, n1%qd2)
		panic("fail")
	}
	if n2/qd2 != q4 || n2%qd2 != r4 {
		println("mixed int64-4", n2, qd2, n2/qd2, n2%qd2)
		panic("fail")
	}

	if qn1/d1 != q1 || qn1%d1 != r1 {
		println("mixed int64-5", qn1, d1, qn1/d1, qn1%d1)
		panic("fail")
	}
	if qn2/d1 != q2 || qn2%d1 != r2 {
		println("mixed int64-6", qn2, d1, qn2/d1, qn2%d1)
		panic("fail")
	}
	if qn1/d2 != q3 || qn1%d2 != r3 {
		println("mixed int64-7", qn1, d2, qn1/d2, qn1%d2)
		panic("fail")
	}
	if qn2/d2 != q4 || qn2%d2 != r4 {
		println("mixed int64-8", qn2, d2, qn2/d2, qn2%d2)
		panic("fail")
	}

	/* uint */
	var uin1 uint = +5
	var uid1 uint = +3

	if uin1/uid1 != q1 || uin1%uid1 != r1 {
		println("uint", uin1, uid1, uin1/uid1, uin1%uid1)
		panic("fail")
	}

	/* uint8 */
	var ubn1 uint8 = +5
	var ubd1 uint8 = +3

	if ubn1/ubd1 != q1 || ubn1%ubd1 != r1 {
		println("uint8", ubn1, ubd1, ubn1/ubd1, ubn1%ubd1)
		panic("fail")
	}

	/* uint16 */
	var usn1 uint16 = +5
	var usd1 uint16 = +3

	if usn1/usd1 != q1 || usn1%usd1 != r1 {
		println("uint16", usn1, usd1, usn1/usd1, usn1%usd1)
		panic("fail")
	}

	/* uint32 */
	var uln1 uint32 = +5
	var uld1 uint32 = +3

	if uln1/uld1 != q1 || uln1%uld1 != r1 {
		println("uint32", uln1, uld1, uln1/uld1, uln1%uld1)
		panic("fail")
	}

	/* uint64 */
	var uqn1 uint64 = +5
	var uqd1 uint64 = +3

	if uqn1/uqd1 != q1 || uqn1%uqd1 != r1 {
		println("uint64", uqn1, uqd1, uqn1/uqd1, uqn1%uqd1)
		panic("fail")
	}
	if n1/uqd1 != q1 || n1%uqd1 != r1 {
		println("mixed uint64-1", n1, uqd1, n1/uqd1, n1%uqd1)
		panic("fail")
	}
	if uqn1/d1 != q1 || uqn1%d1 != r1 {
		println("mixed uint64-2", uqn1, d1, uqn1/d1, uqn1%d1)
		panic("fail")
	}
}

```
## for_
```go
// run

// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Test simple for loop.

package main

func
main() {
	var t,i int;

	for i=0; i<100; i=i+1 {
		t = t+i;
	}
	if t != 50*99  { panic(t); }
}

```
## slicearray
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
## method
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
## method5
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
