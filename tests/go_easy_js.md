# go_easy_js
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
## issue16760
```go
// run

// Copyright 2016 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Make sure we don't start marshaling (writing to the stack)
// arguments until those arguments are evaluated and known
// not to unconditionally panic. If they unconditionally panic,
// we write some args but never do the call. That messes up
// the logic which decides how big the argout section needs to be.

package main

type W interface {
	Write([]byte)
}

type F func(W)

func foo(f F) {
	defer func() {
		if r := recover(); r != nil {
			usestack(1000)
		}
	}()
	f(nil)
}

func main() {
	foo(func(w W) {
		var x []string
		w.Write([]byte(x[5]))
	})
}

func usestack(n int) {
	if n == 0 {
		return
	}
	usestack(n - 1)
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
## cplx2
```go
// run

// Copyright 2010 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Test simple arithmetic and assignment for complex numbers.

package main

const (
	R = 5
	I = 6i

	C1 = R + I // ADD(5,6)
)

func main() {
	var b bool

	// constants
	b = (5 + 6i) == C1
	if !b {
		println("const bool 1", b)
		panic("fail")
	}

	b = (5 + 6i) != C1
	if b {
		println("const bool 2", b)
		panic("fail")
	}

	b = C1 == (5 + 6i)
	if !b {
		println("const bool 3", b)
		panic("fail")
	}

	b = C1 != (5 + 6i)
	if b {
		println("const bool 4", b)
		panic("fail")
	}

	// vars passed through parameters
	booltest(5+6i, true)
	booltest(5+7i, false)
	booltest(6+6i, false)
	booltest(6+9i, false)
}

func booltest(a complex64, r bool) {
	var b bool

	b = a == C1
	if b != r {
		println("param bool 1", a, b, r)
		panic("fail")
	}

	b = a != C1
	if b == r {
		println("param bool 2", a, b, r)
		panic("fail")
	}

	b = C1 == a
	if b != r {
		println("param bool 3", a, b, r)
		panic("fail")
	}

	b = C1 != a
	if b == r {
		println("param bool 4", a, b, r)
		panic("fail")
	}

	if r {
		if a != C1 {
			println("param bool 5", a, b, r)
			panic("fail")
		}
		if C1 != a {
			println("param bool 6", a, b, r)
			panic("fail")
		}
	} else {
		if a == C1 {
			println("param bool 6", a, b, r)
			panic("fail")
		}
		if C1 == a {
			println("param bool 7", a, b, r)
			panic("fail")
		}
	}
}

```
## literal
```go
// run

// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Test slicing and re-slicing.

package main

var bx []byte
var by []byte
var fx []float64
var fy []float64
var lb, hb int
var t int

func main() {

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

	// width 4 (float64)
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
	bx = make([]byte, 10)
	for i := 0; i < len(bx); i++ {
		bx[i] = byte(i + 20)
	}
	by = nil

	fx = make([]float64, 10)
	for i := 0; i < len(fx); i++ {
		fx[i] = float64(i + 20)
	}
	fy = nil
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
