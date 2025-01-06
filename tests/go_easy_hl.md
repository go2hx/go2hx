# go_easy_hl
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
