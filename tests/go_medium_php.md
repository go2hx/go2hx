# go_medium
## convF_criteria
```go
// run

// Copyright 2021 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

import "fmt"

type myStruct struct {
	F0 [0]struct{}
	F1 float32
}

type myStruct2 struct {
	F0 [0]struct{}
	F1 float32
	F2 [0]struct{}
}

func main() {
	x := myStruct{F1: -1.25}
	fmt.Println(x)
	x2 := myStruct2{F1: -7.97}
	fmt.Println(x2)
}

```
## convT64_criteria
```go
// run

// Copyright 2021 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

import (
	"fmt"
)

type MyStruct struct {
	F0 [0]float64
	F1 byte
	F2 int16
	_  struct {
		F0 uint32
	}
}

func main() {
	p0 := MyStruct{F0: [0]float64{}, F1: byte(27), F2: int16(9887)}
	fmt.Println(p0)
}

```
## armimm
```go
// run

// Copyright 2017 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// This file tests the splitting of constants into
// multiple immediates on arm.

package main

import "fmt"

const c32a = 0x00aa00dd
const c32s = 0x00ffff00
const c64a = 0x00aa00dd55000066
const c64s = 0x00ffff00004fff00

//go:noinline
func add32a(x uint32) uint32 {
	return x + c32a
}

//go:noinline
func add32s(x uint32) uint32 {
	return x + c32s
}

//go:noinline
func sub32a(x uint32) uint32 {
	return x - c32a
}

//go:noinline
func sub32s(x uint32) uint32 {
	return x - c32s
}

//go:noinline
func or32(x uint32) uint32 {
	return x | c32a
}

//go:noinline
func xor32(x uint32) uint32 {
	return x ^ c32a
}

//go:noinline
func subr32a(x uint32) uint32 {
	return c32a - x
}

//go:noinline
func subr32s(x uint32) uint32 {
	return c32s - x
}

//go:noinline
func bic32(x uint32) uint32 {
	return x &^ c32a
}

//go:noinline
func add64a(x uint64) uint64 {
	return x + c64a
}

//go:noinline
func add64s(x uint64) uint64 {
	return x + c64s
}

//go:noinline
func sub64a(x uint64) uint64 {
	return x - c64a
}

//go:noinline
func sub64s(x uint64) uint64 {
	return x - c64s
}

//go:noinline
func or64(x uint64) uint64 {
	return x | c64a
}

//go:noinline
func xor64(x uint64) uint64 {
	return x ^ c64a
}

//go:noinline
func subr64a(x uint64) uint64 {
	return c64a - x
}

//go:noinline
func subr64s(x uint64) uint64 {
	return c64s - x
}

//go:noinline
func bic64(x uint64) uint64 {
	return x &^ c64a
}

// Note: x-c gets rewritten to x+(-c), so SUB and SBC are not directly testable.
// I disabled that rewrite rule before running this test.

func main() {
	test32()
	test64()
}

func test32() {
	var a uint32 = 0x11111111
	var want, got uint32
	if want, got = a+c32a, add32a(a); got != want {
		panic(fmt.Sprintf("add32a(%x) = %x, want %x", a, got, want))
	}
	if want, got = a+c32s, add32s(a); got != want {
		panic(fmt.Sprintf("add32s(%x) = %x, want %x", a, got, want))
	}
	if want, got = a-c32a, sub32a(a); got != want {
		panic(fmt.Sprintf("sub32a(%x) = %x, want %x", a, got, want))
	}
	if want, got = a-c32s, sub32s(a); got != want {
		panic(fmt.Sprintf("sub32s(%x) = %x, want %x", a, got, want))
	}
	if want, got = a|c32a, or32(a); got != want {
		panic(fmt.Sprintf("or32(%x) = %x, want %x", a, got, want))
	}
	if want, got = a^c32a, xor32(a); got != want {
		panic(fmt.Sprintf("xor32(%x) = %x, want %x", a, got, want))
	}
	if want, got = c32a-a, subr32a(a); got != want {
		panic(fmt.Sprintf("subr32a(%x) = %x, want %x", a, got, want))
	}
	if want, got = c32s-a, subr32s(a); got != want {
		panic(fmt.Sprintf("subr32s(%x) = %x, want %x", a, got, want))
	}
	if want, got = a&^c32a, bic32(a); got != want {
		panic(fmt.Sprintf("bic32(%x) = %x, want %x", a, got, want))
	}
}

func test64() {
	var a uint64 = 0x1111111111111111
	var want, got uint64
	if want, got = a+c64a, add64a(a); got != want {
		panic(fmt.Sprintf("add64a(%x) = %x, want %x", a, got, want))
	}
	if want, got = a+c64s, add64s(a); got != want {
		panic(fmt.Sprintf("add64s(%x) = %x, want %x", a, got, want))
	}
	if want, got = a-c64a, sub64a(a); got != want {
		panic(fmt.Sprintf("sub64a(%x) = %x, want %x", a, got, want))
	}
	if want, got = a-c64s, sub64s(a); got != want {
		panic(fmt.Sprintf("sub64s(%x) = %x, want %x", a, got, want))
	}
	if want, got = a|c64a, or64(a); got != want {
		panic(fmt.Sprintf("or64(%x) = %x, want %x", a, got, want))
	}
	if want, got = a^c64a, xor64(a); got != want {
		panic(fmt.Sprintf("xor64(%x) = %x, want %x", a, got, want))
	}
	if want, got = c64a-a, subr64a(a); got != want {
		panic(fmt.Sprintf("subr64a(%x) = %x, want %x", a, got, want))
	}
	if want, got = c64s-a, subr64s(a); got != want {
		panic(fmt.Sprintf("subr64s(%x) = %x, want %x", a, got, want))
	}
	if want, got = a&^c64a, bic64(a); got != want {
		panic(fmt.Sprintf("bic64(%x) = %x, want %x", a, got, want))
	}
}

```
## clear
```go
// run

// Copyright 2022 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

import "math"

func checkClearSlice() {
	s := []int{1, 2, 3}
	clear(s)
	for i := range s {
		if s[i] != 0 {
			panic("clear not zeroing slice elem")
		}
	}

	clear([]int{})
}

func checkClearMap() {
	m1 := make(map[int]int)
	m1[0] = 0
	m1[1] = 1
	clear(m1)
	if len(m1) != 0 {
		panic("m1 is not cleared")
	}

	// map contains NaN keys is also cleared.
	m2 := make(map[float64]int)
	m2[math.NaN()] = 1
	m2[math.NaN()] = 1
	clear(m2)
	if len(m2) != 0 {
		panic("m2 is not cleared")
	}

	clear(map[int]int{})
}

func main() {
	checkClearSlice()
	checkClearMap()
}

```
## cmplxdivide
```go
// run cmplxdivide1.go

// Copyright 2010 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Driver for complex division table defined in cmplxdivide1.go
// For details, see the comment at the top of cmplxdivide.c.

package main

import (
	"fmt"
	"math"
)

func calike(a, b complex128) bool {
	if imag(a) != imag(b) && !(math.IsNaN(imag(a)) && math.IsNaN(imag(b))) {
		return false
	}

	if real(a) != real(b) && !(math.IsNaN(real(a)) && math.IsNaN(real(b))) {
		return false
	}

	return true
}

func main() {
	bad := false
	for _, t := range tests {
		x := t.f / t.g
		if !calike(x, t.out) {
			if !bad {
				fmt.Printf("BUG\n")
				bad = true
			}
			fmt.Printf("%v/%v: expected %v error; got %v\n", t.f, t.g, t.out, x)
		}
	}
	if bad {
		panic("cmplxdivide failed.")
	}
}

```
## const3
```go
// run

// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Test typed integer constants.

package main

import "fmt"

type T int

func (t T) String() string { return fmt.Sprintf("T%d", int(t)) }

const (
	A T = 1 << (1 << iota)
	B
	C
	D
	E
)

func main() {
	s := fmt.Sprintf("%v %v %v %v %v", A, B, C, D, E)
	if s != "T2 T4 T16 T256 T65536" {
		println("type info didn't propagate in const: got", s)
		panic("fail")
	}
	x := uint(5)
	y := float64(uint64(1)<<x)	// used to fail to compile
	if y != 32 {
		println("wrong y", y)
		panic("fail")
	}
}

```
## defer
```go
// run

// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Test defer.

package main

import "fmt"

var result string

func addInt(i int) { result += fmt.Sprint(i) }

func test1helper() {
	for i := 0; i < 10; i++ {
		defer addInt(i)
	}
}

func test1() {
	result = ""
	test1helper()
	if result != "9876543210" {
		fmt.Printf("test1: bad defer result (should be 9876543210): %q\n", result)
		panic("defer")
	}
}

func addDotDotDot(v ...interface{}) { result += fmt.Sprint(v...) }

func test2helper() {
	for i := 0; i < 10; i++ {
		defer addDotDotDot(i)
	}
}

func test2() {
	result = ""
	test2helper()
	if result != "9876543210" {
		fmt.Printf("test2: bad defer result (should be 9876543210): %q\n", result)
		panic("defer")
	}
}

func main() {
	test1()
	test2()
}

```
## divide
```go
// run

// Copyright 2011 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Test divide corner cases.

package main

import "fmt"

func f8(x, y, q, r int8) {
	if t := x / y; t != q {
		fmt.Printf("%d/%d = %d, want %d\n", x, y, t, q)
		panic("divide")
	}
	if t := x % y; t != r {
		fmt.Printf("%d%%%d = %d, want %d\n", x, y, t, r)
		panic("divide")
	}
}

func f16(x, y, q, r int16) {
	if t := x / y; t != q {
		fmt.Printf("%d/%d = %d, want %d\n", x, y, t, q)
		panic("divide")
	}
	if t := x % y; t != r {
		fmt.Printf("%d%%%d = %d, want %d\n", x, y, t, r)
		panic("divide")
	}
}

func f32(x, y, q, r int32) {
	if t := x / y; t != q {
		fmt.Printf("%d/%d = %d, want %d\n", x, y, t, q)
		panic("divide")
	}
	if t := x % y; t != r {
		fmt.Printf("%d%%%d = %d, want %d\n", x, y, t, r)
		panic("divide")
	}
}

func f64(x, y, q, r int64) {
	if t := x / y; t != q {
		fmt.Printf("%d/%d = %d, want %d\n", x, y, t, q)
		panic("divide")
	}
	if t := x % y; t != r {
		fmt.Printf("%d%%%d = %d, want %d\n", x, y, t, r)
		panic("divide")
	}
}

func main() {
	f8(-1<<7, -1, -1<<7, 0)
	f16(-1<<15, -1, -1<<15, 0)
	f32(-1<<31, -1, -1<<31, 0)
	f64(-1<<63, -1, -1<<63, 0)
}

```
## bug027
```go
// run

// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

import "fmt"

type Element interface {
}

type Vector struct {
	nelem int
	elem  []Element
}

func New() *Vector {
	v := new(Vector)
	v.nelem = 0
	v.elem = make([]Element, 10)
	return v
}

func (v *Vector) At(i int) Element {
	return v.elem[i]
}

func (v *Vector) Insert(e Element) {
	v.elem[v.nelem] = e
	v.nelem++
}

func main() {
	type I struct{ val int }
	i0 := new(I)
	i0.val = 0
	i1 := new(I)
	i1.val = 11
	i2 := new(I)
	i2.val = 222
	i3 := new(I)
	i3.val = 3333
	i4 := new(I)
	i4.val = 44444
	v := New()
	r := "hi\n"
	v.Insert(i4)
	v.Insert(i3)
	v.Insert(i2)
	v.Insert(i1)
	v.Insert(i0)
	for i := 0; i < v.nelem; i++ {
		var x *I
		x = v.At(i).(*I)
		r += fmt.Sprintln(i, x.val) // prints correct list
	}
	for i := 0; i < v.nelem; i++ {
		r += fmt.Sprintln(i, v.At(i).(*I).val)
	}
	expect := `hi
0 44444
1 3333
2 222
3 11
4 0
0 44444
1 3333
2 222
3 11
4 0
`
	if r != expect {
		panic(r)
	}
}

/*
bug027.go:50: illegal types for operand
	(<Element>I{}) CONV (<I>{})
bug027.go:50: illegal types for operand
	(<Element>I{}) CONV (<I>{})
*/

```
## bug070
```go
// run

// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

import "fmt"

func main() {
	var i, k int
	var r string
outer:
	for k = 0; k < 2; k++ {
		r += fmt.Sprintln("outer loop top k", k)
		if k != 0 {
			panic("k not zero")
		} // inner loop breaks this one every time
		for i = 0; i < 2; i++ {
			if i != 0 {
				panic("i not zero")
			} // loop breaks every time
			r += fmt.Sprintln("inner loop top i", i)
			if true {
				r += "do break\n"
				break outer
			}
		}
	}
	r += "broke\n"
	expect := `outer loop top k 0
inner loop top i 0
do break
broke
`
	if r != expect {
		panic(r)
	}
}

```
## bug154
```go
// run

// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

import "fmt"

func f0() string {
	const f = 3.141592;
	return fmt.Sprintf("%v", float64(f));
}


func f1() string {
	const f = 3.141592;
	x := float64(float32(f));  // appears to change the precision of f
	_ = x;
	return fmt.Sprintf("%v", float64(f));
}


func main() {
	r0 := f0();
	r1 := f1();
	if r0 != r1 {
		println("r0 =", r0);
		println("r1 =", r1);
		panic("r0 and r1 should be the same");
	}
}

```
## bug184
```go
// run

// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

import "fmt"

type Buffer int

func (*Buffer) Read() {}

type Reader interface {
	Read()
}

func f() *Buffer { return nil }

func g() Reader {
	// implicit interface conversion in assignment during return
	return f()
}

func h() (b *Buffer, ok bool) { return }

func i() (r Reader, ok bool) {
	// implicit interface conversion in multi-assignment during return
	return h()
}

func fmter() (s string, i int, t string) { return "%#x %q", 100, "hello" }

func main() {
	b := g()
	bb, ok := b.(*Buffer)
	_, _, _ = b, bb, ok

	b, ok = i()
	bb, ok = b.(*Buffer)
	_, _, _ = b, bb, ok

	s := fmt.Sprintf(fmter())
	if s != "0x64 \"hello\"" {
		println(s)
		panic("fail")
	}
}

```
## bug207
```go
// run

// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// used to panic because 6g didn't generate
// the code to fill in the ... argument to fmt.Sprint.

package main

import "fmt"

type T struct {
	a, b, c, d, e []int;
}

var t T

func main() {
	if fmt.Sprint("xxx", t) != "yyy" { 
	}
}

```
## bug237
```go
// run

// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

import "fmt"

var indent uint = 10
func main() {
	const dots = ". . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . " +
		". . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . "
	const n = uint(len(dots))
	i := 2 * indent
	var s string
	for ; i > n; i -= n {
		s += fmt.Sprint(dots)
	}
	s += dots[0:i]
	if s != ". . . . . . . . . . " {
		panic(s)
	}
}

```
## bug258
```go
// run

// Copyright 2010 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

import "math"

func f() float64 {
	math.Pow(2, 2)
	return 1
}

func main() {
	for i := 0; i < 10; i++ {
		// 386 float register bug used to load constant before call
		if -5 < f() {
		} else {
			println("BUG 1")
			return
		}
		if f() > -7 {
		} else {
			println("BUG 2")
		}
		
		if math.Pow(2, 3) != 8 {
			println("BUG 3")
		}
	}
}

```
## bug259
```go
// run

// Copyright 2010 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

import "fmt"

var x = uint32(0x01020304)
var y = [...]uint32{1,2,3,4,5}

func main() {
	fmt.Sprint(y[byte(x)])
}

```
## bug262
```go
// run

// Copyright 2010 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

import (
	"errors"
	"strconv"
)

var trace string

func f() string {
	trace += "f"
	return "abc"
}

func g() *error {
	trace += "g"
	var x error
	return &x
}

func h() string {
	trace += "h"
	return "123"
}

func i() *int {
	trace += "i"
	var i int
	return &i
}

func main() {
	m := make(map[string]int)
	m[f()], *g() = strconv.Atoi(h())
	if m["abc"] != 123 || trace != "fgh" {
		println("BUG", m["abc"], trace)
		panic("fail")
	}
	mm := make(map[string]error)
	trace = ""
	mm["abc"] = errors.New("invalid")
	*i(), mm[f()] = strconv.Atoi(h())
	if mm["abc"] != nil || trace != "ifh" {
		println("BUG1", mm["abc"], trace)
		panic("fail")
	}
}

```
## bug271
```go
// run

// Copyright 2010 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// https://golang.org/issue/662

package main

import "fmt"

func f() (int, int) { return 1, 2 }

func main() {
	s := fmt.Sprint(f())
	if s != "1 2" {	// with bug, was "{1 2}"
		println("BUG")
	}
}

```
## bug321
```go
// run

// Copyright 2011 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Troublesome floating point constants. Issue 1463.

package main

import "fmt"

func check(test string, got, want float64) bool {
	if got != want {
		fmt.Println(test, "got", got, "want", want)
		return false
	}
	return true
}

func main() {
	good := true
	// http://www.exploringbinary.com/java-hangs-when-converting-2-2250738585072012e-308/
	good = good && check("2.2250738585072012e-308", 2.2250738585072012e-308, 2.2250738585072014e-308)
	// http://www.exploringbinary.com/php-hangs-on-numeric-value-2-2250738585072011e-308/
	good = good && check("2.2250738585072011e-308", 2.2250738585072011e-308, 2.225073858507201e-308)
	if !good {
		panic("fail")
	}
}

```
## bug364
```go
// run

// Copyright 2011 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

import "fmt"

var s string

func accum(args ...interface{}) {
	s += fmt.Sprintln(args...)
}

func f(){
	v := 0.0
	for i := 0; i < 3; i++ {
		v += 0.1
		defer accum(v)
	}
}

func main() {
	f()
	if s != "0.30000000000000004\n0.2\n0.1\n" {
		println("BUG: defer")
		print(s)
	}
}

```
## bug402
```go
// run

// Copyright 2012 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

import "fmt"

var a = []int64{
	0.0005 * 1e9,
	0.001 * 1e9,
	0.005 * 1e9,
	0.01 * 1e9,
	0.05 * 1e9,
	0.1 * 1e9,
	0.5 * 1e9,
	1 * 1e9,
	5 * 1e9,
}

func main() {
	s := ""
	for _, v := range a {
		s += fmt.Sprint(v) + " "
	}
	if s != "500000 1000000 5000000 10000000 50000000 100000000 500000000 1000000000 5000000000 " {
		panic(s)
	}
}

```
## bug434
```go
// run

// Copyright 2012 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Test that typed and untyped negative zero floating point constants
// are treated as equivalent to zero constants.

package main

import "math"

const zero = 0.0

func main() {
	x := -zero
	b := math.Float64bits(x)
	if b != 0 {
		panic(b)
	}
	x = -float64(zero)
	b = math.Float64bits(x)
	if b != 0 {
		panic(b)
	}
	v := x
	b = math.Float64bits(-v)
	if b != 0x8000000000000000 {
		panic(b)
	}
}

```
## bug470
```go
// run

// Copyright 2012 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Converting constants between types must introduce rounding.

package main

import "fmt"

const (
    F32 = 0.00999999977648258209228515625
    F64 = 0.01000000000000000020816681711721685132943093776702880859375
)

var F = float64(float32(0.01))

func main() {
	// 0.01 rounded to float32 then to float64 is F32.
	// 0.01 represented directly in float64 is F64.
	if F != F32 {
		panic(fmt.Sprintf("F=%.1000g, want %.1000g", F, F32))
	}
}

```
## issue10925
```go
// run

// Copyright 2015 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

import "fmt"

func prototype(xyz []string) {}
func main() {
	var got [][]string
	f := prototype
	f = func(ss []string) { got = append(got, ss) }
	for _, s := range []string{"one", "two", "three"} {
		f([]string{s})
	}
	if got[0][0] != "one" || got[1][0] != "two" || got[2][0] != "three" {
		// Bug's wrong output was [[three] [three] [three]]
		fmt.Println("Expected [[one] [two] [three]], got", got)
	}
}

```
## issue11945
```go
// run

// Copyright 2017 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

import "fmt"

// issue 17446
const (
	_ = real(0) // from bug report
	_ = imag(0) // from bug report

	// same as above, but exported for #43891
	Real0 = real(0)
	Imag0 = imag(0)

	// if the arguments are untyped, the results must be untyped
	// (and compatible with types that can represent the values)
	_ int = real(1)
	_ int = real('a')
	_ int = real(2.0)
	_ int = real(3i)

	_ float32 = real(1)
	_ float32 = real('a')
	_ float32 = real(2.1)
	_ float32 = real(3.2i)

	_ float64 = real(1)
	_ float64 = real('a')
	_ float64 = real(2.1)
	_ float64 = real(3.2i)

	_ int = imag(1)
	_ int = imag('a')
	_ int = imag(2.1 + 3i)
	_ int = imag(3i)

	_ float32 = imag(1)
	_ float32 = imag('a')
	_ float32 = imag(2.1 + 3.1i)
	_ float32 = imag(3i)

	_ float64 = imag(1)
	_ float64 = imag('a')
	_ float64 = imag(2.1 + 3.1i)
	_ float64 = imag(3i)
)

var tests = []struct {
	code      string
	got, want interface{}
}{
	{"real(1)", real(1), 1.0},
	{"real('a')", real('a'), float64('a')},
	{"real(2.0)", real(2.0), 2.0},
	{"real(3.2i)", real(3.2i), 0.0},

	{"imag(1)", imag(1), 0.0},
	{"imag('a')", imag('a'), 0.0},
	{"imag(2.1 + 3.1i)", imag(2.1 + 3.1i), 3.1},
	{"imag(3i)", imag(3i), 3.0},
}

func main() {
	// verify compile-time evaluated constant expressions
	for _, test := range tests {
		if test.got != test.want {
			panic(fmt.Sprintf("%s: %v (%T) != %v (%T)", test.code, test.got, test.got, test.want, test.want))
		}
	}
}

```
## issue11987
```go
// run

// Copyright 2015 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Issue 11987. The ppc64 SRADCC instruction was misassembled in a way
// lost bit 5 of the immediate so v>>32 was assembled as v>>0.  SRADCC
// is only ever inserted by peep so it's hard to be sure when it will
// be used. This formulation worked when the bug was fixed.

package main

import "fmt"

var v int64 = 0x80000000

func main() {
	s := fmt.Sprintf("%v", v>>32 == 0)
	if s != "true" {
		fmt.Printf("BUG: v>>32 == 0 evaluated as %q\n", s)
	}
}

```
## issue12133
```go
// run

// Copyright 2015 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Issue 12133.  The CX register was getting clobbered
// because we did not keep track of its allocation correctly.

package main

import "fmt"

func main() {
	want := uint(48)
	got := f1(48)
	if got != want {
		fmt.Println("got", got, ", wanted", want)
		panic("bad")
	}
}

//go:noinline
func f1(v1 uint) uint {
	return v1 >> ((1 >> v1) + (1 >> v1))
}

```
## issue12226
```go
// run

// Copyright 2015 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

import "fmt"

func main() {
	if []byte("foo")[0] == []byte("b")[0] {
		fmt.Println("BUG: \"foo\" and \"b\" appear to have the same first byte")
	}
}

```
## issue12577
```go
// run

// Copyright 2015 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Issue 12577: Test that there are no -0 floating-point constants.

package main

import "math"

const (
	z0 = 0.0
	z1 = -0.0
	z2 = -z0
	z3 = -z2
)

var (
	x0 float32 = z0
	x1 float32 = z1
	x2 float32 = z2
	x3 float32 = z3

	y0 float64 = z0
	y1 float64 = z1
	y2 float64 = z2
	y3 float64 = z3
)

func test32(f float32) {
	if f != 0 || math.Signbit(float64(f)) {
		println("BUG: got", f, "want 0.0")
		return
	}
}

func test64(f float64) {
	if f != 0 || math.Signbit(f) {
		println("BUG: got", f, "want 0.0")
		return
	}
}

func main() {
	if f := -x0; f != 0 || !math.Signbit(float64(f)) {
		println("BUG: got", f, "want -0.0")
	}

	test32(-0.0)
	test32(x0)
	test32(x1)
	test32(x2)
	test32(x3)

	if f := -y0; f != 0 || !math.Signbit(f) {
		println("BUG: got", f, "want -0.0")
	}

	test64(-0.0)
	test64(y0)
	test64(y1)
	test64(y2)
	test64(y3)
}

```
## issue12621
```go
// run

// Copyright 2018 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Issues 12576 and 12621: Negative untyped floating point constants
// with small magnitude round to 0, not negative zero.

package main

import "math"

var m = -1e-10000

func main() {
	if math.Signbit(m) {
		panic(m)
	}
}

```
## issue13171
```go
// run

// Copyright 2015 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

// Make sure the compiler knows that DUFFCOPY clobbers X0

import "fmt"

//go:noinline
func f(x float64) float64 {
	// y is allocated to X0
	y := x + 5
	// marshals z before y.  Marshaling z
	// calls DUFFCOPY.
	return g(z, y)
}

//go:noinline
func g(b [64]byte, y float64) float64 {
	return y
}

var z [64]byte

func main() {
	got := f(5)
	if got != 10 {
		panic(fmt.Sprintf("want 10, got %f", got))
	}
}

```
## issue14553
```go
// run

// Copyright 2016 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// This test checks if the compiler's internal constant
// arithmetic correctly rounds denormal float32 values.

package main

import (
	"fmt"
	"math"
)

func main() {
	for _, t := range []struct {
		value float32
		bits  uint32
	}{
		{0e+00, 0x00000000},
		{1e-46, 0x00000000},
		{0.5e-45, 0x00000000},
		{0.8e-45, 0x00000001},
		{1e-45, 0x00000001},
		{2e-45, 0x00000001},
		{3e-45, 0x00000002},
		{4e-45, 0x00000003},
		{5e-45, 0x00000004},
		{6e-45, 0x00000004},
		{7e-45, 0x00000005},
		{8e-45, 0x00000006},
		{9e-45, 0x00000006},
		{1.0e-44, 0x00000007},
		{1.1e-44, 0x00000008},
		{1.2e-44, 0x00000009},
	} {
		got := math.Float32bits(t.value)
		want := t.bits
		if got != want {
			panic(fmt.Sprintf("bits(%g) = 0x%08x; want 0x%08x", t.value, got, want))
		}
	}
}

```
## issue14651
```go
// run

// Copyright 2016 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// This test checks if the compiler's internal constant
// arithmetic correctly rounds up floating-point values
// that become the smallest denormal value.
//
// See also related issue 14553 and test issue14553.go.

package main

import (
	"fmt"
	"math"
)

const (
	p149 = 1.0 / (1 << 149) // 1p-149
	p500 = 1.0 / (1 << 500) // 1p-500
	p1074 = p500 * p500 / (1<<74) // 1p-1074
)

const (
	m0000p149 = 0x0 / 16.0 * p149 // = 0.0000p-149
	m1000p149 = 0x8 / 16.0 * p149 // = 0.1000p-149
	m1001p149 = 0x9 / 16.0 * p149 // = 0.1001p-149
	m1011p149 = 0xb / 16.0 * p149 // = 0.1011p-149
	m1100p149 = 0xc / 16.0 * p149 // = 0.1100p-149

	m0000p1074 = 0x0 / 16.0 * p1074 // = 0.0000p-1074
	m1000p1074 = 0x8 / 16.0 * p1074 // = 0.1000p-1074
	m1001p1074 = 0x9 / 16.0 * p1074 // = 0.1001p-1074
	m1011p1074 = 0xb / 16.0 * p1074 // = 0.1011p-1074
	m1100p1074 = 0xc / 16.0 * p1074 // = 0.1100p-1074
)

func main() {
	test32(float32(m0000p149), f32(m0000p149))
	test32(float32(m1000p149), f32(m1000p149))
	test32(float32(m1001p149), f32(m1001p149))
	test32(float32(m1011p149), f32(m1011p149))
	test32(float32(m1100p149), f32(m1100p149))

	test64(float64(m0000p1074), f64(m0000p1074))
	test64(float64(m1000p1074), f64(m1000p1074))
	test64(float64(m1001p1074), f64(m1001p1074))
	test64(float64(m1011p1074), f64(m1011p1074))
	test64(float64(m1100p1074), f64(m1100p1074))
}

func f32(x float64) float32 { return float32(x) }
func f64(x float64) float64 { return float64(x) }

func test32(a, b float32) {
	abits := math.Float32bits(a)
	bbits := math.Float32bits(b)
	if abits != bbits {
		panic(fmt.Sprintf("%08x != %08x\n", abits, bbits))
	}
}

func test64(a, b float64) {
	abits := math.Float64bits(a)
	bbits := math.Float64bits(b)
	if abits != bbits {
		panic(fmt.Sprintf("%016x != %016x\n", abits, bbits))
	}
}

```
## issue14725
```go
// run

// Copyright 2016 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

import "fmt"

func f1() (x int) {
	for {
		defer func() {
			recover()
			x = 1
		}()
		panic(nil)
	}
}

var sink *int

func f2() (x int) {
	sink = &x
	defer func() {
		recover()
		x = 1
	}()
	panic(nil)
}

func f3(b bool) (x int) {
	sink = &x
	defer func() {
		recover()
		x = 1
	}()
	if b {
		panic(nil)
	}
	return
}

func main() {
	if x := f1(); x != 1 {
		panic(fmt.Sprintf("f1 returned %d, wanted 1", x))
	}
	if x := f2(); x != 1 {
		panic(fmt.Sprintf("f2 returned %d, wanted 1", x))
	}
	if x := f3(true); x != 1 {
		panic(fmt.Sprintf("f3(true) returned %d, wanted 1", x))
	}
	if x := f3(false); x != 1 {
		panic(fmt.Sprintf("f3(false) returned %d, wanted 1", x))
	}
}

```
## issue15175
```go
// run

// Copyright 2016 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Make sure unsigned shift results get sign-extended correctly.
package main

import "fmt"

func main() {
	failed := false
	a6 := uint8(253)
	if got := a6 >> 0; got != 253 {
		fmt.Printf("uint8(253)>>0 = %v, wanted 253\n", got)
		failed = true
	}
	if got := f1(0, 2, 1, 0, 0, 1, true); got != 255 {
		fmt.Printf("f1(...) = %v, wanted 255\n", got)
		failed = true
	}
	if got := f2(1); got != 242 {
		fmt.Printf("f2(...) = %v, wanted 242\n", got)
		failed = true
	}
	if got := f3(false, 0, 0); got != 254 {
		fmt.Printf("f3(...) = %v, wanted 254\n", got)
		failed = true
	}
	if failed {
		panic("bad")
	}
}

func f1(a1 uint, a2 int8, a3 int8, a4 int8, a5 uint8, a6 int, a7 bool) uint8 {
	a5--
	a4 += (a2 << a1 << 2) | (a4 ^ a4<<(a1&a1)) - a3                              // int8
	a6 -= a6 >> (2 + uint32(a2)>>3)                                              // int
	a1 += a1                                                                     // uint
	a3 *= a4 << (a1 | a1) << (uint16(3) >> 2 & (1 - 0) & (uint16(1) << a5 << 3)) // int8
	a7 = a7 || ((a2 == a4) || (a7 && a7) || ((a5 == a5) || (a7 || a7)))          // bool
	return a5 >> a1
}

func f2(a1 uint8) uint8 {
	a1--
	a1--
	a1 -= a1 + (a1 << 1) - (a1*a1*a1)<<(2-0+(3|3)-1)                // uint8
	v1 := 0 * ((2 * 1) ^ 1) & ((uint(0) >> a1) + (2+0)*(uint(2)+0)) // uint
	_ = v1
	return a1 >> (((2 ^ 2) >> (v1 | 2)) + 0)
}

func f3(a1 bool, a2 uint, a3 int64) uint8 {
	a3--
	v1 := 1 & (2 & 1 * (1 ^ 2) & (uint8(3*1) >> 0)) // uint8
	_ = v1
	v1 += v1 - (v1 >> a2) + (v1 << (a2 ^ a2) & v1) // uint8
	v1 *= v1                                       // uint8
	a3--
	v1 += v1 & v1 // uint8
	v1--
	v1 = ((v1 << 0) | v1>>0) + v1 // uint8
	return v1 >> 0
}

```
## issue15992
```go
// run

// Copyright 2018 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

import (
	"fmt"
)

func f(a []byte) ([]byte, []byte) {
	return a, []byte("abc")
}

func g(a []byte) ([]byte, string) {
	return a, "abc"
}

func h(m map[int]int) (map[int]int, int) {
	return m, 0
}

func main() {
	a := []byte{1, 2, 3}
	n := copy(f(a))
	fmt.Println(n, a)

	b := []byte{1, 2, 3}
	n = copy(g(b))
	fmt.Println(n, b)

	m := map[int]int{0: 0}
	fmt.Println(len(m))
	delete(h(m))
	fmt.Println(len(m))
}

```
## issue16249
```go
// run

// Copyright 2016 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Liveness calculations were wrong for a result parameter pushed onto
// the heap in a function that used defer.  Program would crash with
//     runtime: bad pointer in frame main.A at 0xc4201e6838: 0x1

package main

import "errors"

var sink interface{}

//go:noinline
func f(err *error) {
	if err != nil {
		sink = err
	}
}

//go:noinline
func A(n, m int64) (res int64, err error) {
	defer f(&err) // output parameter's address escapes to a defer.
	if n < 0 {
		err = errors.New("No negative")
		return
	}
	if n <= 1 {
		res = n
		return
	}
	res = B(m) // This call to B drizzles a little junk on the stack.
	res, err = A(n-1, m)
	res++
	return
}

// B does a little bit of recursion dribbling not-zero onto the stack.
//go:noinline
func B(n int64) (res int64) {
	if n <= 1 { // Prefer to leave a 1 on the stack.
		return n
	}
	return 1 + B(n-1)
}

func main() {
	x, e := A(0, 0)
	for j := 0; j < 4; j++ { // j controls amount of B's stack dribble
		for i := 0; i < 1000; i++ { // try more and more recursion until stack growth occurs in newobject in prologue
			x, e = A(int64(i), int64(j))
		}
	}
	_, _ = x, e
}

```
## issue17640
```go
// run

// Copyright 2016 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

import "fmt"

var results string

type TwoInts struct {
	x, y int
}

func f(x int) int { results = results + fmt.Sprintf("_%d", x); return x }

func main() {
	_ = [19]int{1: f(1), 0: f(0), 2: f(2), 6, 7}
	_ = [2]int{1: f(4), 0: f(3)}
	_ = TwoInts{y: f(6), x: f(5)}
	_ = map[int]int{f(f(9) + 1): f(8), 0: f(7), f(22): -1}
	if results != "_1_0_2_4_3_6_5_9_10_8_7_22" {
		fmt.Printf("unexpected: %s\n", results)
		panic("fail")
	}
}

```
## issue19040
```go
// run

// Copyright 2017 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Check the text of the panic that comes from
// a nil pointer passed to automatically generated method wrapper.

package main

import "fmt"

type T int

type I interface {
	F()
}

func (t T) F() {}

var (
	t *T
	i I = t
)

func main() {
	defer func() {
		got := recover().(error).Error()
		want := "value method main.T.F called using nil *T pointer"
		if got != want {
			fmt.Printf("panicwrap error text:\n\t%q\nwant:\n\t%q\n", got, want)
		}
	}()
	i.F()
}

```
## issue19275
```go
// run

// Copyright 2017 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

import (
	"fmt"
)

type PI struct {
	Enabled bool
}

type SI struct {
	M map[string]*PI
}

//go:noinline
func (s *SI) test(name string) (*int, error) {
	n := new(int)
	*n = 99
	if err := addUpdate(n, s.M[name].Enabled, "enabled"); err != nil { // this was miscompiled
		return nil, fmt.Errorf(" error adding update for enable flag %t : %s",
			s.M[name].Enabled, err)
	}
	return n, nil
}

//go:noinline
func addUpdate(n *int, in interface{}, s ...string) error {
	if *n != 99 {
		println("FAIL, *n should be 99, not", *n)
	}
	return nil
}

func main1() {
	s := &SI{make(map[string]*PI)}
	s.M["dog"] = &PI{}
	s.test("dog")
}

//go:noinline
func g(b *byte, i interface{}) error {
	if *b != 17 {
		println("FAIL, *b should be 17, not", *b)
	}
	return nil
}

//go:noinline
func f(x *byte, m map[string]*bool) {
	if err := g(x, *m["hello"]); err != nil { // this was miscompiled
		return
	}
}

func main2() {
	m := make(map[string]*bool)
	x := false
	m["hello"] = &x
	b := byte(17)
	f(&b, m)
}

func main() {
	main2()
	main1()
}

```
## issue19359
```go
// run

// Copyright 2017 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

import "fmt"

func set(m map[interface{}]interface{}, key interface{}) (err error) {
	defer func() {
		if r := recover(); r != nil {
			err = fmt.Errorf("set failed: %v", r)
		}
	}()
	m[key] = nil
	return nil
}

func del(m map[interface{}]interface{}, key interface{}) (err error) {
	defer func() {
		if r := recover(); r != nil {
			err = fmt.Errorf("del failed: %v", r)
		}
	}()
	delete(m, key)
	return nil
}

func addInt(m map[interface{}]int, key interface{}) (err error) {
	defer func() {
		if r := recover(); r != nil {
			err = fmt.Errorf("addInt failed: %v", r)
		}
	}()
	m[key] += 2018
	return nil
}

func addStr(m map[interface{}]string, key interface{}) (err error) {
	defer func() {
		if r := recover(); r != nil {
			err = fmt.Errorf("addStr failed: %v", r)
		}
	}()
	m[key] += "hello, go"
	return nil
}

func appendInt(m map[interface{}][]int, key interface{}) (err error) {
	defer func() {
		if r := recover(); r != nil {
			err = fmt.Errorf("appendInt failed: %v", r)
		}
	}()
	m[key] = append(m[key], 2018)
	return nil
}

func appendStr(m map[interface{}][]string, key interface{}) (err error) {
	defer func() {
		if r := recover(); r != nil {
			err = fmt.Errorf("addStr failed: %v", r)
		}
	}()
	m[key] = append(m[key], "hello, go")
	return nil
}

func main() {
	m := make(map[interface{}]interface{})
	set(m, []int{1, 2, 3})
	set(m, "abc") // used to throw
	del(m, []int{1, 2, 3})
	del(m, "abc") // used to throw

	mi := make(map[interface{}]int)
	addInt(mi, []int{1, 2, 3})
	addInt(mi, "abc") // used to throw

	ms := make(map[interface{}]string)
	addStr(ms, []int{1, 2, 3})
	addStr(ms, "abc") // used to throw

	mia := make(map[interface{}][]int)
	appendInt(mia, []int{1, 2, 3})

	msa := make(map[interface{}][]string)
	appendStr(msa, "abc") // used to throw
}

```
## issue19911
```go
// run

// Copyright 2017 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

import (
	"fmt"
	"strings"
)

type ET struct{}

func (*ET) Error() string { return "err" }

func main() {
	check("false", fmt.Sprintf("(*ET)(nil) == error(nil): %v", (*ET)(nil) == error(nil)))
	check("true", fmt.Sprintf("(*ET)(nil) != error(nil): %v", (*ET)(nil) != error(nil)))

	nilET := (*ET)(nil)
	nilError := error(nil)

	check("false", fmt.Sprintf("nilET == nilError: %v", nilET == nilError))
	check("true", fmt.Sprintf("nilET != nilError: %v", nilET != nilError))
}

func check(want, gotfull string) {
	got := gotfull[strings.Index(gotfull, ": ")+len(": "):]
	if got != want {
		panic("want " + want + " got " + got + " from " + gotfull)
	}
}

```
## issue21808
```go
// run

// Copyright 2017 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Make sure println() prints a blank line.

package main

import "fmt"

func main() {
	fmt.Println("A")
	println()
	fmt.Println("B")
}

```
## issue21887
```go
// run

// Copyright 2017 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Issue 21887: println(^uint(0)) fails to compile

package main

import "strconv"

func main() {
	if strconv.IntSize == 32 {
		println(^uint(0))
	} else {
		println(^uint32(0))
	}

	if strconv.IntSize == 64 {
		println(^uint(0))
	} else {
		println(^uint64(0))
	}
}

```
## issue23017
```go
// run

// Copyright 2020 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// assignment order in multiple assignments.
// See issue #23017

package main

import "fmt"

func main() {}

func init() {
	var m = map[int]int{}
	var p *int

	defer func() {
		recover()
		check(1, len(m))
		check(42, m[2])
	}()
	m[2], *p = 42, 2
}

func init() {
	var m = map[int]int{}
	p := []int{}

	defer func() {
		recover()
		check(1, len(m))
		check(2, m[2])
	}()
	m[2], p[1] = 2, 2
}

func init() {
	type P struct{ i int }
	var m = map[int]int{}
	var p *P

	defer func() {
		recover()
		check(1, len(m))
		check(3, m[2])
	}()
	m[2], p.i = 3, 2
}

func init() {
	type T struct{ i int }
	var x T
	p := &x
	p, p.i = new(T), 4
	check(4, x.i)
}

func init() {
	var m map[int]int
	var a int
	var p = &a

	defer func() {
		recover()
		check(5, *p)
	}()
	*p, m[2] = 5, 2
}

var g int

func init() {
	var m map[int]int
	defer func() {
		recover()
		check(0, g)
	}()
	m[0], g = 1, 2
}

func init() {
	type T struct{ x struct{ y int } }
	var x T
	p := &x
	p, p.x.y = new(T), 7
	check(7, x.x.y)
	check(0, p.x.y)
}

func init() {
	type T *struct{ x struct{ y int } }
	x := struct{ y int }{0}
	var q T = &struct{ x struct{ y int } }{x}
	p := q
	p, p.x.y = nil, 7
	check(7, q.x.y)
}

func init() {
	x, y := 1, 2
	x, y = y, x
	check(2, x)
	check(1, y)
}

func check(want, got int) {
	if want != got {
		panic(fmt.Sprintf("wanted %d, but got %d", want, got))
	}
}

```
## issue23522
```go
// run

// Copyright 2018 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

import (
	"math"
)

type S struct {
	u int64
	n int32
}

func F1(f float64) *S {
	s := f
	pf := math.Copysign(f, 1)
	u := math.Floor(pf)
	return &S{
		u: int64(math.Copysign(u, s)),
		n: int32(math.Copysign((pf-u)*1e9, s)),
	}
}

func F2(f float64) *S {
	s := f
	f = math.Copysign(f, 1)
	u := math.Floor(f)
	return &S{
		u: int64(math.Copysign(u, s)),
		n: int32(math.Copysign((f-u)*1e9, s)),
	}
}

func main() {
	s1 := F1(-1)
	s2 := F2(-1)
	if *s1 != *s2 {
		println("F1:", s1.u, s1.n)
		println("F2:", s2.u, s2.n)
		panic("different")
	}
}

```
## issue23812
```go
// run

// Copyright 2018 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

import "fmt"

func main() {
	want := int32(0x3edae8)
	got := foo(1)
	if want != got {
		panic(fmt.Sprintf("want %x, got %x", want, got))
	}
}

func foo(a int32) int32 {
	return shr1(int32(shr2(int64(0x14ff6e2207db5d1f), int(a))), 4)
}

func shr1(n int32, m int) int32 { return n >> uint(m) }

func shr2(n int64, m int) int64 {
	if m < 0 {
		m = -m
	}
	if m >= 64 {
		return n
	}

	return n >> uint(m)
}

```
## issue24547
```go
// run

// Copyright 2018 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// When computing method sets with shadowed methods, make sure we
// compute whether a method promotion involved a pointer traversal
// based on the promoted method, not the shadowed method.

package main

import (
	"bytes"
	"fmt"
)

type mystruct struct {
	f int
}

func (t mystruct) String() string {
	return "FAIL"
}

func main() {
	type deep struct {
		mystruct
	}
	s := struct {
		deep
		*bytes.Buffer
	}{
		deep{},
		bytes.NewBufferString("ok"),
	}

	if got := s.String(); got != "ok" {
		panic(got)
	}

	var i fmt.Stringer = s
	if got := i.String(); got != "ok" {
		panic(got)
	}
}

```
## issue24799
```go
// run

// Copyright 2018 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Loads of 8 byte go.strings cannot use DS relocation
// in case the alignment is not a multiple of 4.

package main

import (
        "fmt"
)

type Level string

// The following are all go.strings. A link time error can
// occur if an 8 byte load is used to load a go.string that is
// not aligned to 4 bytes due to the type of relocation that
// is generated for the instruction. A fix was made to avoid
// generating an instruction with DS relocation for go.strings
// since their alignment is not known until link time. 

// This problem only affects go.string since other types have
// correct alignment.

const (
        LevelBad Level = "badvals"
        LevelNone Level = "No"
        LevelMetadata Level = "Metadata"
        LevelRequest Level = "Request"
        LevelRequestResponse Level = "RequestResponse"
)

func ordLevel(l Level) int {
        switch l {
        case LevelMetadata:
                return 1
        case LevelRequest:
                return 2
        case LevelRequestResponse:
                return 3
        default:
                return 0
        }
}

//go:noinline
func test(l Level) {
        if ordLevel(l) < ordLevel(LevelMetadata) {
                fmt.Printf("OK\n")
        }
}

func main() {
        test(LevelMetadata)
}

```
## issue25322
```go
// run

// Copyright 2018 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Missing zero extension when converting a float32
// to a uint64.

package main

import (
	"fmt"
	"math"
)

func Foo(v float32) {
	fmt.Printf("%x\n", uint64(math.Float32bits(v)))
}

func main() {
	Foo(2.0)
}

```
## issue26094
```go
// run

// Copyright 2018 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

import "strings"

var X interface{}

type T struct{}

func scopes() {
	p, ok := recover().(error)
	if ok && strings.Contains(p.Error(), "different scopes") {
		return
	}
	panic(p)
}

func F1() {
	type T struct{}
	X = T{}
}

func F2() {
	type T struct{}
	defer scopes()
	_ = X.(T)
}

func F3() {
	defer scopes()
	_ = X.(T)
}

func F4() {
	X = T{}
}

func main() {
	F1() // set X to F1's T
	F2() // check that X is not F2's T
	F3() // check that X is not package T
	F4() // set X to package T
	F2() // check that X is not F2's T
}

```
## issue27829
```go
// run

// Copyright 2018 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Bad AND/BTR combination rule.

package main

import "fmt"

//go:noinline
func f(x uint64) uint64 {
	return (x >> 48) &^ (uint64(0x4000))
}

func main() {
	bad := false
	if got, want := f(^uint64(0)), uint64(0xbfff); got != want {
		fmt.Printf("got %x, want %x\n", got, want)
		bad = true
	}
	if bad {
		panic("bad")
	}
}

```
## issue27961
```go
// run

// Copyright 2018 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Issue 27961: some optimizations generate OffPtr with wrong
// types, which causes invalid bytecode on Wasm.

package main

import "math"

type Vec2 [2]float64

func main() {
	var a Vec2
	a.A().B().C().D()
}

func (v Vec2) A() Vec2 {
	return Vec2{v[0], v[0]}
}

func (v Vec2) B() Vec2 {
	return Vec2{1.0 / v.D(), 0}
}

func (v Vec2) C() Vec2 {
	return Vec2{v[0], v[0]}
}

func (v Vec2) D() float64 {
	return math.Sqrt(v[0])
}

```
## issue28390
```go
// run

// Copyright 2018 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Issue 28390/28430: Function call arguments were not
// converted correctly under some circumstances.

package main

import "fmt"

type A struct {
	K int
	S string
	M map[string]string
}

func newA(k int, s string) (a A) {
	a.K = k
	a.S = s
	a.M = make(map[string]string)
	a.M[s] = s
	return
}

func proxy() (x int, a A) {
	return 1, newA(2, "3")
}

func consume(x int, a interface{}) {
	fmt.Println(x)
	fmt.Println(a) // used to panic here
}

func main() {
	consume(proxy())
}

```
## issue28688
```go
// run -gcflags=-d=softfloat

// Copyright 2018 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

import (
	"fmt"
)

// When using soft-float, OMUL might be rewritten to function
// call so we should ensure it was evaluated first. Stack frame
// setup for "test" function call should happen after call to runtime.fmul32

var x int32 = 1

func main() {
	var y float32 = 1.0
	test(x, y*y)
}

//go:noinline
func test(id int32, a float32) {

	if id != x {
		fmt.Printf("got: %d, want: %d\n", id, x)
		panic("FAIL")
	}
}

```
## issue28797
```go
// run

// Copyright 2018 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

import (
	"fmt"
)

// test expects f to panic, but not to run out of memory,
// which is a non-panic fatal error.  OOM results from failure
// to properly check negative limit.
func test(f func()) {
	defer func() {
		r := recover()
		if r == nil {
			panic("panic wasn't recoverable")
		}
	}()
	f()
}

//go:noinline
func id(x int) int {
	return x
}

func main() {
	test(foo)
	test(bar)
}

func foo() {
	b := make([]byte, 0)
	b = append(b, 1)
	id(len(b))
	id(len(b) - 2)
	s := string(b[1 : len(b)-2])
	fmt.Println(s)
}

func bar() {
	b := make([]byte, 1)
	b = append(b, 1)
	i := id(-1)
	if i < len(b) { // establish value is not too large.
		s := string(b[1:i]) // should check for negative also.
		fmt.Println(s)
	}
}

```
## issue29190
```go
// run

// Copyright 2018 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

import (
	"strings"
)

type T struct{}

const maxInt = int(^uint(0) >> 1)

func main() {
	s := make([]T, maxInt)
	shouldPanic("len out of range", func() { s = append(s, T{}) })
	var oneElem = make([]T, 1)
	shouldPanic("len out of range", func() { s = append(s, oneElem...) })
}

func shouldPanic(str string, f func()) {
	defer func() {
		err := recover()
		if err == nil {
			panic("did not panic")
		}
		s := err.(error).Error()
		if !strings.Contains(s, str) {
			panic("got panic " + s + ", want " + str)
		}
	}()

	f()
}

```
## issue29264
```go
// run

// Copyright 2018 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Verify that we emit a valid type descriptor for
// a fairly deeply nested type.

package main

import "fmt"
import "strings"

func main() {
	a := [][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][]int{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{42}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}
	got := fmt.Sprint(a)
	want := strings.Repeat("[", 100) + "42" + strings.Repeat("]", 100)
	if got != want {
		fmt.Printf("got  %q\nwant %q\n", got, want)
	}
}

```
## issue29304
```go
// run

// Copyright 2018 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Verify that relocation target go.builtin.error.Error
// is defined and the code links and runs correctly.

package main

import "errors"

func main() {
	err := errors.New("foo")
	if error.Error(err) != "foo" {
		panic("FAILED")
	}
}

```
## issue29312
```go
// run

// Copyright 2020 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// This test is not for a fix of 29312 proper, but for the patch that
// makes sure we at least don't have a security hole because of 29312.

// This code generates lots of types. The binary should contain
// a runtime.slicetype for each of the following 253 types:
//
//     []*pwn
//     [][]*pwn
//     ...
//     [][]...[][]*pwn          - 249 total "[]"
//     [][]...[][][]*pwn        - 250 total "[]"
//     [][]...[][][][]*pwn      - 251 total "[]"
//     [][]...[][][][][]*pwn    - 252 total "[]"
//     [][]...[][][][][][]*pwn  - 253 total "[]"
//
// The type names for these types are as follows. Because we truncate
// the name at depth 250, the last few names are all identical:
//
//     type:[]*"".pwn
//     type:[][]*"".pwn
//     ...
//     type:[][]...[][]*pwn       - 249 total "[]"
//     type:[][]...[][][]*<...>   - 250 total "[]"
//     type:[][]...[][][][]<...>  - 251 total "[]"
//     type:[][]...[][][][]<...>  - 252 total "[]" (but only 251 "[]" in the name)
//     type:[][]...[][][][]<...>  - 253 total "[]" (but only 251 "[]" in the name)
//
// Because the names of the last 3 types are all identical, the
// compiler will generate only a single runtime.slicetype data
// structure for all 3 underlying types. It turns out the compiler
// generates just the 251-entry one. There aren't any
// runtime.slicetypes generated for the final two types.
//
// The compiler passes type:[]...[]<...> (251 total "[]") to
// fmt.Sprintf (instead of the correct 253 one). But the data
// structure at runtime actually has 253 nesting levels. So we end up
// calling String on something that is of type [][]*pwn instead of
// something of type *pwn. The way arg passing in Go works, the
// backing store pointer for the outer slice becomes the "this"
// pointer of the String method, which points to the inner []*pwn
// slice.  The String method then modifies the length of that inner
// slice.
package main

import "fmt"

type pwn struct {
	a [3]uint
}

func (this *pwn) String() string {
	this.a[1] = 7 // update length
	return ""
}

func main() {
	var a pwn
	s := [][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][]*pwn{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{&a}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}} // depth 253
	fmt.Sprint(s)
	n := len(s[0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0]) // depth 252, type []*pwn
	if n != 1 {
		panic(fmt.Sprintf("length was changed, want 1 got %d", n))
	}
}

```
## issue30243
```go
// run

// Copyright 2019 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Compile-time constants, even if they cannot be represented
// accurately, should remain the same in operations that don't
// affect their values.

package main

import "fmt"

func main() {
	const x = 0.01
	const xi = 0.01i
	const xc = complex(0, x)

	if imag(xi) != x {
		fmt.Printf("FAILED: %g != %g\n", imag(xi), x)
	}

	if xi != complex(0, x) {
		fmt.Printf("FAILED: %g != %g\n", xi, complex(0, x))
	}
}

```
## issue30566a
```go
// run

// Copyright 2019 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

import "fmt"

//go:noinline
func ident(s string) string { return s }

func returnSecond(x bool, s string) string { return s }

func identWrapper(s string) string { return ident(s) }

func main() {
	got := returnSecond((false || identWrapper("bad") != ""), ident("good"))
	if got != "good" {
		panic(fmt.Sprintf("wanted \"good\", got \"%s\"", got))
	}
}

```
## issue30566b
```go
// run

// Copyright 2019 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

import (
	"bytes"
	"fmt"
)

func main() {
	_, _ = false || g(1), g(2)
	if !bytes.Equal(x, []byte{1, 2}) {
		panic(fmt.Sprintf("wanted [1,2], got %v", x))
	}
}

var x []byte

//go:noinline
func g(b byte) bool {
	x = append(x, b)
	return false
}

```
## issue30956
```go
// run

// Copyright 2019 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Check for compile generated static data for literal
// composite struct

package main

import "fmt"

type X struct {
	V interface{}

	a int
	b int
	c int
}

func pr(x X) {
	fmt.Println(x.V)
}

func main() {
	pr(X{
		V: struct {
			A int
		}{42},
	})
}

```
## issue31987
```go
// run

// Copyright 2019 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

import "fmt"

type container struct {
	Value string
}

func main() {
	s := []container{
		7: {Value: "string value"},
	}
	if s[7].Value != "string value" {
		panic(fmt.Errorf("wanted \"string value\", got \"%s\"", s[7].Value))
	}
}

```
## issue37975
```go
// run

// Copyright 2020 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Make sure runtime.panicmakeslice* are called.

package main

import "strings"

func main() {
	// Test typechecking passes if len is valid
	// but cap is out of range for len's type.
	var x byte
	_ = make([]int, x, 300)

	capOutOfRange := func() {
		i := 2
		s := make([]int, i, 1)
		s[0] = 1
	}
	lenOutOfRange := func() {
		i := -1
		s := make([]int, i, 3)
		s[0] = 1
	}

	tests := []struct {
		f        func()
		panicStr string
	}{
		{capOutOfRange, "cap out of range"},
		{lenOutOfRange, "len out of range"},
	}

	for _, tc := range tests {
		shouldPanic(tc.panicStr, tc.f)
	}

}

func shouldPanic(str string, f func()) {
	defer func() {
		err := recover()
		runtimeErr := err.(error).Error()
		if !strings.Contains(runtimeErr, str) {
			panic("got panic " + runtimeErr + ", want " + str)
		}
	}()

	f()
}

```
## issue41239
```go
// run

// Copyright 2020 The Go Authors. All rights reserved.  Use of this
// source code is governed by a BSD-style license that can be found in
// the LICENSE file.

package main

import "fmt"

func main() {
	const N = 1024
	var a [N]int
	x := cap(append(a[:N-1:N], 9, 9))
	y := cap(append(a[:N:N], 9))
	if x != y {
		panic(fmt.Sprintf("different capacity on append: %d vs %d", x, y))
	}
}

```
## issue43570
```go
// run

// Copyright 2021 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

import "fmt"

type T [8]*int

//go:noinline
func f(x int) T {
	return T{}
}

//go:noinline
func g(x int, t T) {
	if t != (T{}) {
		panic(fmt.Sprintf("bad: %v", t))
	}
}

func main() {
	const N = 10000
	var q T
	func() {
		for i := 0; i < N; i++ {
			q = f(0)
			g(0, q)
			sink = make([]byte, 1024)
		}
	}()
	// Note that the closure is a trick to get the write to q to be a
	// write to a pointer that is known to be non-nil and requires
	// a write barrier.
}

var sink []byte

```
## issue43619
```go
// run

// Copyright 2021 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

import (
	"fmt"
	"math"
)

//go:noinline
func fcmplt(a, b float64, x uint64) uint64 {
	if a < b {
		x = 0
	}
	return x
}

//go:noinline
func fcmple(a, b float64, x uint64) uint64 {
	if a <= b {
		x = 0
	}
	return x
}

//go:noinline
func fcmpgt(a, b float64, x uint64) uint64 {
	if a > b {
		x = 0
	}
	return x
}

//go:noinline
func fcmpge(a, b float64, x uint64) uint64 {
	if a >= b {
		x = 0
	}
	return x
}

//go:noinline
func fcmpeq(a, b float64, x uint64) uint64 {
	if a == b {
		x = 0
	}
	return x
}

//go:noinline
func fcmpne(a, b float64, x uint64) uint64 {
	if a != b {
		x = 0
	}
	return x
}

func main() {
	type fn func(a, b float64, x uint64) uint64

	type testCase struct {
		f       fn
		a, b    float64
		x, want uint64
	}
	NaN := math.NaN()
	for _, t := range []testCase{
		{fcmplt, 1.0, 1.0, 123, 123},
		{fcmple, 1.0, 1.0, 123, 0},
		{fcmpgt, 1.0, 1.0, 123, 123},
		{fcmpge, 1.0, 1.0, 123, 0},
		{fcmpeq, 1.0, 1.0, 123, 0},
		{fcmpne, 1.0, 1.0, 123, 123},

		{fcmplt, 1.0, 2.0, 123, 0},
		{fcmple, 1.0, 2.0, 123, 0},
		{fcmpgt, 1.0, 2.0, 123, 123},
		{fcmpge, 1.0, 2.0, 123, 123},
		{fcmpeq, 1.0, 2.0, 123, 123},
		{fcmpne, 1.0, 2.0, 123, 0},

		{fcmplt, 2.0, 1.0, 123, 123},
		{fcmple, 2.0, 1.0, 123, 123},
		{fcmpgt, 2.0, 1.0, 123, 0},
		{fcmpge, 2.0, 1.0, 123, 0},
		{fcmpeq, 2.0, 1.0, 123, 123},
		{fcmpne, 2.0, 1.0, 123, 0},

		{fcmplt, 1.0, NaN, 123, 123},
		{fcmple, 1.0, NaN, 123, 123},
		{fcmpgt, 1.0, NaN, 123, 123},
		{fcmpge, 1.0, NaN, 123, 123},
		{fcmpeq, 1.0, NaN, 123, 123},
		{fcmpne, 1.0, NaN, 123, 0},

		{fcmplt, NaN, 1.0, 123, 123},
		{fcmple, NaN, 1.0, 123, 123},
		{fcmpgt, NaN, 1.0, 123, 123},
		{fcmpge, NaN, 1.0, 123, 123},
		{fcmpeq, NaN, 1.0, 123, 123},
		{fcmpne, NaN, 1.0, 123, 0},

		{fcmplt, NaN, NaN, 123, 123},
		{fcmple, NaN, NaN, 123, 123},
		{fcmpgt, NaN, NaN, 123, 123},
		{fcmpge, NaN, NaN, 123, 123},
		{fcmpeq, NaN, NaN, 123, 123},
		{fcmpne, NaN, NaN, 123, 0},
	} {
		got := t.f(t.a, t.b, t.x)
		if got != t.want {
			panic(fmt.Sprintf("want %v, got %v", t.want, got))
		}
	}
}

```
## issue43908
```go
// run

// Copyright 2021 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Verify exact constant evaluation independent of
// (mathematically equivalent) expression form.

package main

import "fmt"

const ulp1 = imag(1i + 2i / 3 - 5i / 3)
const ulp2 = imag(1i + complex(0, 2) / 3 - 5i / 3)

func main() {
	if ulp1 != ulp2 {
		panic(fmt.Sprintf("%g != %g\n", ulp1, ulp2))
	}
}

```
## issue45242
```go
// run

// Copyright 2021 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

import "fmt"

//go:noinline
func repro(b []byte, bit int32) {
	_ = b[3]
	v := uint32(b[0]) | uint32(b[1])<<8 | uint32(b[2])<<16 | uint32(b[3])<<24 | 1<<(bit&31)
	b[0] = byte(v)
	b[1] = byte(v >> 8)
	b[2] = byte(v >> 16)
	b[3] = byte(v >> 24)
}

func main() {
	var b [8]byte
	repro(b[:], 32)
	want := [8]byte{1, 0, 0, 0, 0, 0, 0, 0}
	if b != want {
		panic(fmt.Sprintf("got %v, want %v\n", b, want))
	}
}

```
## issue45851
```go
// run

// Copyright 2021 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// This tickles a stack-allocation bug when the register ABI is enabled.
// The original report was from cue, internal/core/adt/equality.go,
// function equalVertex.

// In the failing case, something bad gets passed to equalTerminal.

package main

import "fmt"

type Kind uint16
type Flag uint16

const (
	allKinds Kind = 1
	TopKind  Kind = (allKinds - 1)
)
type Value interface {
	Kind() Kind
}
type Vertex struct {
	BaseValue Value
	name string
}
func (v *Vertex) Kind() Kind {
	return TopKind
}

func main() {
	vA := &Vertex{name:"vA",}
	vB := &Vertex{name:"vB",}
	vX := &Vertex{name:"vX",}
	vA.BaseValue = vX
	vB.BaseValue = vX
	_ = equalVertex(vA, vB, Flag(1))
}

var foo string

//go:noinline
func (v *Vertex) IsClosedStruct() bool {
	return true
}

func equalVertex(x *Vertex, v Value, flags Flag) bool {
	y, ok := v.(*Vertex)
	if !ok {
		return false
	}
	v, ok1 := x.BaseValue.(Value)
	w, ok2 := y.BaseValue.(Value)
	if !ok1 && !ok2 {
		return true // both are struct or list.
	}
	return equalTerminal(v, w, flags)
}

//go:noinline
func equalTerminal(x Value, y Value, flags Flag) bool {
	foo = fmt.Sprintf("EQclosed %s %s %d\n", x.(*Vertex).name, y.(*Vertex).name, flags)
	return true
}

```
## issue4620
```go
// run

// Copyright 2013 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Issue 4620: map indexes are not evaluated before assignment of other elements

package main

import "fmt"

func main() {
	m := map[int]int{0:1}
	i := 0
	i, m[i] = 1, 2
	if m[0] != 2 {
		fmt.Println(m)
		panic("m[i] != 2")
	}
}

```
## issue48473
```go
// run

// Copyright 2021 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

import "fmt"

func f(x uint64) uint64 {
	s := "\x04"
	c := s[0]
	return x - x<<c<<4
}

func g(x uint32) uint32 {
	s := "\x04"
	c := s[0]
	return x - x<<c<<4
}

func main() {
	if want, got := uint64(0xffffffffffffff01), f(1); want != got {
		panic(fmt.Sprintf("want %x got %x", want, got))
	}
	if want, got := uint32(0xffffff01), g(1); want != got {
		panic(fmt.Sprintf("want %x got %x", want, got))
	}
}

```
## issue48476
```go
// run

// Copyright 2021 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

import "fmt"

//go:noinline
func f(x uint64) uint64 {
	s := "\x04"
	c := s[0]
	return x << c << 4
}
func main() {
	if want, got := uint64(1<<8), f(1); want != got {
		panic(fmt.Sprintf("want %x got %x", want, got))
	}
}

```
## issue49665
```go
// run

// Copyright 2021 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

import "fmt"

var x any
var y interface{}

var _ = &x == &y // assert x and y have identical types

func main() {
	fmt.Printf("%T\n%T\n", &x, &y)
}

```
## issue53600
```go
// run

// Copyright 2022 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

import "math"

func main() {
	f()
	g()
	h()
	j(math.MinInt64)
}
func f() {
	for i := int64(math.MaxInt64); i <= math.MaxInt64; i++ {
		if i < 0 {
			println("done")
			return
		}
		println(i, i < 0)
	}
}
func g() {
	for i := int64(math.MaxInt64) - 1; i <= math.MaxInt64; i++ {
		if i < 0 {
			println("done")
			return
		}
		println(i, i < 0)
	}
}
func h() {
	for i := int64(math.MaxInt64) - 2; i <= math.MaxInt64; i += 2 {
		if i < 0 {
			println("done")
			return
		}
		println(i, i < 0)
	}
}

//go:noinline
func j(i int64) {
	for j := int64(math.MaxInt64); j <= i-1; j++ {
		if j < 0 {
			break
		}
		println(j)
	}
}

```
## issue53653
```go
// run

// Copyright 2022 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

import "math"

func main() {
	f()
	g()
	h()
}
func f() {
	for i := int64(math.MinInt64); i >= math.MinInt64; i-- {
		if i > 0 {
			println("done")
			return
		}
		println(i, i > 0)
	}
}
func g() {
	for i := int64(math.MinInt64) + 1; i >= math.MinInt64; i-- {
		if i > 0 {
			println("done")
			return
		}
		println(i, i > 0)
	}
}
func h() {
	for i := int64(math.MinInt64) + 2; i >= math.MinInt64; i -= 2 {
		if i > 0 {
			println("done")
			return
		}
		println(i, i > 0)
	}
}

```
## issue54467
```go
// run

// Copyright 2022 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

import "fmt"

func main() {
	var x [64]byte
	for i := range x {
		x[i] = byte(i)
	}
	y := x

	copy(x[4:36], x[2:34])
	*(*[32]byte)(y[4:36]) = *(*[32]byte)(y[2:34])

	for i := range x {
		if x[i] != y[i] {
			fmt.Printf("x[%v] = %v; y[%v] = %v\n", i, x[i], i, y[i])
		}
	}
}

```
## issue5809
```go
// run

// Copyright 2013 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// issue 5809: 6g and 8g attempted to constant propagate indexed LEA

package main

import "fmt"

func main() {
	const d16 = "0123456789ABCDEF"
	k := 0x1234
	var x [4]byte
	
	x[0] = d16[k>>12&0xf]
	x[1] = d16[k>>8&0xf]
	x[2] = d16[k>>4&0xf]
	x[3] = d16[k&0xf]
	
	if x != [4]byte{'1','2','3','4'} {
		fmt.Println(x)
		panic("x != [4]byte{'1','2','3','4'}")
	}
}

```
## issue6899
```go
// run

// Copyright 2013 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

import "math"

func main() {
	println(math.Copysign(0, -1))
}

```
## issue7863
```go
// run

// Copyright 2014 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

import (
	"fmt"
)

type Foo int64

func (f *Foo) F() int64 {
	return int64(*f)
}

type Bar int64

func (b Bar) F() int64 {
	return int64(b)
}

type Baz int32

func (b Baz) F() int64 {
	return int64(b)
}

func main() {
	foo := Foo(123)
	f := foo.F
	if foo.F() != f() {
		bug()
		fmt.Println("foo.F", foo.F(), f())
	}
	bar := Bar(123)
	f = bar.F
	if bar.F() != f() {
		bug()
		fmt.Println("bar.F", bar.F(), f()) // duh!
	}

	baz := Baz(123)
	f = baz.F
	if baz.F() != f() {
		bug()
		fmt.Println("baz.F", baz.F(), f())
	}
}

var bugged bool

func bug() {
	if !bugged {
		bugged = true
		fmt.Println("BUG")
	}
}

```
## issue7995
```go
// run

// Copyright 2014 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Issue 7995: globals not flushed quickly enough.

package main

import "fmt"

var (
	p = 1
	q = &p
)

func main() {
	p = 50
	*q = 100
	s := fmt.Sprintln(p, *q)
	if s != "100 100\n" {
		println("BUG:", s)
	}
}

```
## issue8139
```go
// run

// Copyright 2014 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Issue 8139. The x.(T) assertions used to write 1 (unexpected)
// return byte for the 0-byte return value T.

package main

import "fmt"

type T struct{}

func (T) M() {}

type M interface {
	M()
}

var e interface{} = T{}
var i M = T{}
var b bool

func f1() int {
	if b {
		return f1() // convince inliner not to inline
	}
	z := 0x11223344
	_ = e.(T)
	return z
}

func f2() int {
	if b {
		return f1() // convince inliner not to inline
	}
	z := 0x11223344
	_ = i.(T)
	return z
}

func main() {
	x := f1()
	y := f2()
	if x != 0x11223344 || y != 0x11223344 {
		fmt.Printf("BUG: x=%#x y=%#x, want 0x11223344 for both\n", x, y)
	}
}

```
## issue8606
```go
// run

// Copyright 2020 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Check to make sure that we compare fields in order. See issue 8606.

package main

import "fmt"

func main() {
	type A [2]interface{}
	type A2 [6]interface{}
	type S struct{ x, y interface{} }
	type S2 struct{ x, y, z, a, b, c interface{} }
	type T1 struct {
		i interface{}
		a int64
		j interface{}
	}
	type T2 struct {
		i       interface{}
		a, b, c int64
		j       interface{}
	}
	type T3 struct {
		i interface{}
		s string
		j interface{}
	}
	type S3 struct {
		f any
		i int
	}
	type S4 struct {
		a [1000]byte
		b any
	}
	b := []byte{1}
	s1 := S3{func() {}, 0}
	s2 := S3{func() {}, 1}

	for _, test := range []struct {
		panic bool
		a, b  interface{}
	}{
		{false, A{1, b}, A{2, b}},
		{true, A{b, 1}, A{b, 2}},
		{false, A{1, b}, A{"2", b}},
		{true, A{b, 1}, A{b, "2"}},

		{false, A2{1, b}, A2{2, b}},
		{true, A2{b, 1}, A2{b, 2}},
		{false, A2{1, b}, A2{"2", b}},
		{true, A2{b, 1}, A2{b, "2"}},

		{false, S{1, b}, S{2, b}},
		{true, S{b, 1}, S{b, 2}},
		{false, S{1, b}, S{"2", b}},
		{true, S{b, 1}, S{b, "2"}},

		{false, S2{x: 1, y: b}, S2{x: 2, y: b}},
		{true, S2{x: b, y: 1}, S2{x: b, y: 2}},
		{false, S2{x: 1, y: b}, S2{x: "2", y: b}},
		{true, S2{x: b, y: 1}, S2{x: b, y: "2"}},

		{true, T1{i: b, a: 1}, T1{i: b, a: 2}},
		{false, T1{a: 1, j: b}, T1{a: 2, j: b}},
		{true, T2{i: b, a: 1}, T2{i: b, a: 2}},
		{false, T2{a: 1, j: b}, T2{a: 2, j: b}},
		{true, T3{i: b, s: "foo"}, T3{i: b, s: "bar"}},
		{false, T3{s: "foo", j: b}, T3{s: "bar", j: b}},
		{true, T3{i: b, s: "fooz"}, T3{i: b, s: "bar"}},
		{false, T3{s: "fooz", j: b}, T3{s: "bar", j: b}},
		{true, A{s1, s2}, A{s2, s1}},
		{true, s1, s2},
		{false, S4{[1000]byte{0}, func() {}}, S4{[1000]byte{1}, func() {}}},
	} {
		f := func() {
			defer func() {
				if recover() != nil {
					panic(fmt.Sprintf("comparing %#v and %#v panicked", test.a, test.b))
				}
			}()
			if test.a == test.b {
				panic(fmt.Sprintf("values %#v and %#v should not be equal", test.a, test.b))
			}
		}
		if test.panic {
			shouldPanic(fmt.Sprintf("comparing %#v and %#v did not panic", test.a, test.b), f)
		} else {
			f() // should not panic
		}
	}
}

func shouldPanic(name string, f func()) {
	defer func() {
		if recover() == nil {
			panic(name)
		}
	}()
	f()
}

```
## float_lit2
```go
// run

// Check conversion of constant to float32/float64 near min/max boundaries.

// Copyright 2014 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

import (
	"fmt"
	"math"
)

// The largest exact float32 is f₁ = (1+1-1/2²³)×2¹²⁷ = (2-2⁻²³)×2¹²⁷ = 2¹²⁸ - 2¹⁰⁴.
// The next float32 would be f₂ = (1+1)×2¹²⁷ = 1×2¹²⁸, except that exponent is out of range.
// Float32 conversion rounds to the nearest float32, rounding to even mantissa:
// between f₁ and f₂, values closer to f₁ round to f₁ and values closer to f₂ are rejected as out of range.
// f₁ is an odd mantissa, so the halfway point (f₁+f₂)/2 rounds to f₂ and is rejected.
// The halfway point is (f₁+f₂)/2 = 2¹²⁸ - 2¹⁰³.
//
// The same is true of float64, with different constants: s/24/53/ and s/128/1024/.

const (
	two24   = 1.0 * (1 << 24)
	two53   = 1.0 * (1 << 53)
	two64   = 1.0 * (1 << 64)
	two128  = two64 * two64
	two256  = two128 * two128
	two512  = two256 * two256
	two768  = two512 * two256
	two1024 = two512 * two512

	ulp32 = two128 / two24
	max32 = two128 - ulp32

	ulp64 = two1024 / two53
	max64 = two1024 - ulp64
)

var cvt = []struct {
	bits   uint64 // keep us honest
	exact  interface{}
	approx interface{}
	text   string
}{
	// 0
	{0x7f7ffffe, float32(max32 - ulp32), float32(max32 - ulp32 - ulp32/2), "max32 - ulp32 - ulp32/2"},
	{0x7f7ffffe, float32(max32 - ulp32), float32(max32 - ulp32), "max32 - ulp32"},
	{0x7f7ffffe, float32(max32 - ulp32), float32(max32 - ulp32/2), "max32 - ulp32/2"},
	{0x7f7ffffe, float32(max32 - ulp32), float32(max32 - ulp32 + ulp32/2), "max32 - ulp32 + ulp32/2"},
	{0x7f7fffff, float32(max32), float32(max32 - ulp32 + ulp32/2 + ulp32/two64), "max32 - ulp32 + ulp32/2 + ulp32/two64"},
	{0x7f7fffff, float32(max32), float32(max32 - ulp32/2 + ulp32/two64), "max32 - ulp32/2 + ulp32/two64"},
	{0x7f7fffff, float32(max32), float32(max32), "max32"},
	{0x7f7fffff, float32(max32), float32(max32 + ulp32/2 - ulp32/two64), "max32 + ulp32/2 - ulp32/two64"},

	{0xff7ffffe, float32(-(max32 - ulp32)), float32(-(max32 - ulp32 - ulp32/2)), "-(max32 - ulp32 - ulp32/2)"},
	{0xff7ffffe, float32(-(max32 - ulp32)), float32(-(max32 - ulp32)), "-(max32 - ulp32)"},
	{0xff7ffffe, float32(-(max32 - ulp32)), float32(-(max32 - ulp32/2)), "-(max32 - ulp32/2)"},
	{0xff7ffffe, float32(-(max32 - ulp32)), float32(-(max32 - ulp32 + ulp32/2)), "-(max32 - ulp32 + ulp32/2)"},
	{0xff7fffff, float32(-(max32)), float32(-(max32 - ulp32 + ulp32/2 + ulp32/two64)), "-(max32 - ulp32 + ulp32/2 + ulp32/two64)"},
	{0xff7fffff, float32(-(max32)), float32(-(max32 - ulp32/2 + ulp32/two64)), "-(max32 - ulp32/2 + ulp32/two64)"},
	{0xff7fffff, float32(-(max32)), float32(-(max32)), "-(max32)"},
	{0xff7fffff, float32(-(max32)), float32(-(max32 + ulp32/2 - ulp32/two64)), "-(max32 + ulp32/2 - ulp32/two64)"},

	// These are required to work: according to the Go spec, the internal float mantissa must be at least 256 bits,
	// and these expressions can be represented exactly with a 256-bit mantissa.
	{0x7f7fffff, float32(max32), float32(max32 - ulp32 + ulp32/2 + 1), "max32 - ulp32 + ulp32/2 + 1"},
	{0x7f7fffff, float32(max32), float32(max32 - ulp32/2 + 1), "max32 - ulp32/2 + 1"},
	{0x7f7fffff, float32(max32), float32(max32 + ulp32/2 - 1), "max32 + ulp32/2 - 1"},
	{0xff7fffff, float32(-(max32)), float32(-(max32 - ulp32 + ulp32/2 + 1)), "-(max32 - ulp32 + ulp32/2 + 1)"},
	{0xff7fffff, float32(-(max32)), float32(-(max32 - ulp32/2 + 1)), "-(max32 - ulp32/2 + 1)"},
	{0xff7fffff, float32(-(max32)), float32(-(max32 + ulp32/2 - 1)), "-(max32 + ulp32/2 - 1)"},

	{0x7f7fffff, float32(max32), float32(max32 - ulp32 + ulp32/2 + 1/two128), "max32 - ulp32 + ulp32/2 + 1/two128"},
	{0x7f7fffff, float32(max32), float32(max32 - ulp32/2 + 1/two128), "max32 - ulp32/2 + 1/two128"},
	{0x7f7fffff, float32(max32), float32(max32 + ulp32/2 - 1/two128), "max32 + ulp32/2 - 1/two128"},
	{0xff7fffff, float32(-(max32)), float32(-(max32 - ulp32 + ulp32/2 + 1/two128)), "-(max32 - ulp32 + ulp32/2 + 1/two128)"},
	{0xff7fffff, float32(-(max32)), float32(-(max32 - ulp32/2 + 1/two128)), "-(max32 - ulp32/2 + 1/two128)"},
	{0xff7fffff, float32(-(max32)), float32(-(max32 + ulp32/2 - 1/two128)), "-(max32 + ulp32/2 - 1/two128)"},

	{0x7feffffffffffffe, float64(max64 - ulp64), float64(max64 - ulp64 - ulp64/2), "max64 - ulp64 - ulp64/2"},
	{0x7feffffffffffffe, float64(max64 - ulp64), float64(max64 - ulp64), "max64 - ulp64"},
	{0x7feffffffffffffe, float64(max64 - ulp64), float64(max64 - ulp64/2), "max64 - ulp64/2"},
	{0x7feffffffffffffe, float64(max64 - ulp64), float64(max64 - ulp64 + ulp64/2), "max64 - ulp64 + ulp64/2"},
	{0x7fefffffffffffff, float64(max64), float64(max64 - ulp64 + ulp64/2 + ulp64/two64), "max64 - ulp64 + ulp64/2 + ulp64/two64"},
	{0x7fefffffffffffff, float64(max64), float64(max64 - ulp64/2 + ulp64/two64), "max64 - ulp64/2 + ulp64/two64"},
	{0x7fefffffffffffff, float64(max64), float64(max64), "max64"},
	{0x7fefffffffffffff, float64(max64), float64(max64 + ulp64/2 - ulp64/two64), "max64 + ulp64/2 - ulp64/two64"},

	{0xffeffffffffffffe, float64(-(max64 - ulp64)), float64(-(max64 - ulp64 - ulp64/2)), "-(max64 - ulp64 - ulp64/2)"},
	{0xffeffffffffffffe, float64(-(max64 - ulp64)), float64(-(max64 - ulp64)), "-(max64 - ulp64)"},
	{0xffeffffffffffffe, float64(-(max64 - ulp64)), float64(-(max64 - ulp64/2)), "-(max64 - ulp64/2)"},
	{0xffeffffffffffffe, float64(-(max64 - ulp64)), float64(-(max64 - ulp64 + ulp64/2)), "-(max64 - ulp64 + ulp64/2)"},
	{0xffefffffffffffff, float64(-(max64)), float64(-(max64 - ulp64 + ulp64/2 + ulp64/two64)), "-(max64 - ulp64 + ulp64/2 + ulp64/two64)"},
	{0xffefffffffffffff, float64(-(max64)), float64(-(max64 - ulp64/2 + ulp64/two64)), "-(max64 - ulp64/2 + ulp64/two64)"},
	{0xffefffffffffffff, float64(-(max64)), float64(-(max64)), "-(max64)"},
	{0xffefffffffffffff, float64(-(max64)), float64(-(max64 + ulp64/2 - ulp64/two64)), "-(max64 + ulp64/2 - ulp64/two64)"},

	// These are required to work.
	// The mantissas are exactly 256 bits.
	// max64 is just below 2¹⁰²⁴ so the bottom bit we can use is 2⁷⁶⁸.
	{0x7fefffffffffffff, float64(max64), float64(max64 - ulp64 + ulp64/2 + two768), "max64 - ulp64 + ulp64/2 + two768"},
	{0x7fefffffffffffff, float64(max64), float64(max64 - ulp64/2 + two768), "max64 - ulp64/2 + two768"},
	{0x7fefffffffffffff, float64(max64), float64(max64 + ulp64/2 - two768), "max64 + ulp64/2 - two768"},
	{0xffefffffffffffff, float64(-(max64)), float64(-(max64 - ulp64 + ulp64/2 + two768)), "-(max64 - ulp64 + ulp64/2 + two768)"},
	{0xffefffffffffffff, float64(-(max64)), float64(-(max64 - ulp64/2 + two768)), "-(max64 - ulp64/2 + two768)"},
	{0xffefffffffffffff, float64(-(max64)), float64(-(max64 + ulp64/2 - two768)), "-(max64 + ulp64/2 - two768)"},
}

var bugged = false

func bug() {
	if !bugged {
		bugged = true
		fmt.Println("BUG")
	}
}

func main() {
	u64 := math.Float64frombits(0x7fefffffffffffff) - math.Float64frombits(0x7feffffffffffffe)
	if ulp64 != u64 {
		bug()
		fmt.Printf("ulp64=%g, want %g", ulp64, u64)
	}

	u32 := math.Float32frombits(0x7f7fffff) - math.Float32frombits(0x7f7ffffe)
	if ulp32 != u32 {
		bug()
		fmt.Printf("ulp32=%g, want %g", ulp32, u32)
	}

	for _, c := range cvt {
		if bits(c.exact) != c.bits {
			bug()
			fmt.Printf("%s: inconsistent table: bits=%#x (%g) but exact=%g (%#x)\n", c.text, c.bits, fromBits(c.bits, c.exact), c.exact, bits(c.exact))
		}
		if c.approx != c.exact || bits(c.approx) != c.bits {
			bug()
			fmt.Printf("%s: have %g (%#x) want %g (%#x)\n", c.text, c.approx, bits(c.approx), c.exact, c.bits)
		}
	}
}

func bits(x interface{}) interface{} {
	switch x := x.(type) {
	case float32:
		return uint64(math.Float32bits(x))
	case float64:
		return math.Float64bits(x)
	}
	return 0
}

func fromBits(b uint64, x interface{}) interface{} {
	switch x.(type) {
	case float32:
		return math.Float32frombits(uint32(b))
	case float64:
		return math.Float64frombits(b)
	}
	return "?"
}

```
## floatcmp
```go
// run

// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Test floating-point comparison involving NaN.

package main

import "math"

type floatTest struct {
	name string
	expr bool
	want bool
}

var nan float64 = math.NaN()
var f float64 = 1

var tests = []floatTest{
	floatTest{"nan == nan", nan == nan, false},
	floatTest{"nan != nan", nan != nan, true},
	floatTest{"nan < nan", nan < nan, false},
	floatTest{"nan > nan", nan > nan, false},
	floatTest{"nan <= nan", nan <= nan, false},
	floatTest{"nan >= nan", nan >= nan, false},
	floatTest{"f == nan", f == nan, false},
	floatTest{"f != nan", f != nan, true},
	floatTest{"f < nan", f < nan, false},
	floatTest{"f > nan", f > nan, false},
	floatTest{"f <= nan", f <= nan, false},
	floatTest{"f >= nan", f >= nan, false},
	floatTest{"nan == f", nan == f, false},
	floatTest{"nan != f", nan != f, true},
	floatTest{"nan < f", nan < f, false},
	floatTest{"nan > f", nan > f, false},
	floatTest{"nan <= f", nan <= f, false},
	floatTest{"nan >= f", nan >= f, false},
	floatTest{"!(nan == nan)", !(nan == nan), true},
	floatTest{"!(nan != nan)", !(nan != nan), false},
	floatTest{"!(nan < nan)", !(nan < nan), true},
	floatTest{"!(nan > nan)", !(nan > nan), true},
	floatTest{"!(nan <= nan)", !(nan <= nan), true},
	floatTest{"!(nan >= nan)", !(nan >= nan), true},
	floatTest{"!(f == nan)", !(f == nan), true},
	floatTest{"!(f != nan)", !(f != nan), false},
	floatTest{"!(f < nan)", !(f < nan), true},
	floatTest{"!(f > nan)", !(f > nan), true},
	floatTest{"!(f <= nan)", !(f <= nan), true},
	floatTest{"!(f >= nan)", !(f >= nan), true},
	floatTest{"!(nan == f)", !(nan == f), true},
	floatTest{"!(nan != f)", !(nan != f), false},
	floatTest{"!(nan < f)", !(nan < f), true},
	floatTest{"!(nan > f)", !(nan > f), true},
	floatTest{"!(nan <= f)", !(nan <= f), true},
	floatTest{"!(nan >= f)", !(nan >= f), true},
	floatTest{"!!(nan == nan)", !!(nan == nan), false},
	floatTest{"!!(nan != nan)", !!(nan != nan), true},
	floatTest{"!!(nan < nan)", !!(nan < nan), false},
	floatTest{"!!(nan > nan)", !!(nan > nan), false},
	floatTest{"!!(nan <= nan)", !!(nan <= nan), false},
	floatTest{"!!(nan >= nan)", !!(nan >= nan), false},
	floatTest{"!!(f == nan)", !!(f == nan), false},
	floatTest{"!!(f != nan)", !!(f != nan), true},
	floatTest{"!!(f < nan)", !!(f < nan), false},
	floatTest{"!!(f > nan)", !!(f > nan), false},
	floatTest{"!!(f <= nan)", !!(f <= nan), false},
	floatTest{"!!(f >= nan)", !!(f >= nan), false},
	floatTest{"!!(nan == f)", !!(nan == f), false},
	floatTest{"!!(nan != f)", !!(nan != f), true},
	floatTest{"!!(nan < f)", !!(nan < f), false},
	floatTest{"!!(nan > f)", !!(nan > f), false},
	floatTest{"!!(nan <= f)", !!(nan <= f), false},
	floatTest{"!!(nan >= f)", !!(nan >= f), false},
}

func main() {
	bad := false
	for _, t := range tests {
		if t.expr != t.want {
			if !bad {
				bad = true
				println("BUG: floatcmp")
			}
			println(t.name, "=", t.expr, "want", t.want)
		}
	}
	if bad {
		panic("floatcmp failed")
	}
}

```
## cplx4
```go
// run

// Copyright 2010 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Test complex numbers,including fmt support.
// Used to crash.

package main

import "fmt"

const (
	R = 5
	I = 6i

	C1 = R + I // ADD(5,6)
)

func want(s, w string) {
	if s != w {
		panic(s + " != " + w)
	}
}

func doprint(c complex128, w string) {
	s := fmt.Sprintf("%f", c)
	want(s, w)
}

func main() {

	// constants
	s := fmt.Sprintf("%f", -C1)
	want(s, "(-5.000000-6.000000i)")
	doprint(C1, "(5.000000+6.000000i)")

	// variables
	c1 := C1
	s = fmt.Sprintf("%f", c1)
	want(s, "(5.000000+6.000000i)")
	doprint(c1, "(5.000000+6.000000i)")

	// 128
	c2 := complex128(C1)
	s = fmt.Sprintf("%G", c2)
	want(s, "(5+6i)")

	// real, imag, complex
	c3 := complex(real(c2)+3, imag(c2)-5) + c2
	s = fmt.Sprintf("%G", c3)
	want(s, "(13+7i)")

	// compiler used to crash on nested divide
	c4 := complex(real(c3/2), imag(c3/2))
	if c4 != c3/2 {
		fmt.Printf("BUG: c3 = %G != c4 = %G\n", c3, c4)
		panic(0)
	}
}

```
## rob2
```go
// run

// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Test general operation using s-list.
// First Go program ever run (although not in this exact form).

package main

import "fmt"

const nilchar = 0

type Atom struct {
	str     string
	integer int
	next    *Slist /* in hash bucket */
}

type List struct {
	car *Slist
	cdr *Slist
}

type Slist struct {
	isatom   bool
	isstring bool
	//union {
	atom Atom
	list List
	//} u;

}

func (this *Slist) Car() *Slist {
	return this.list.car
}

func (this *Slist) Cdr() *Slist {
	return this.list.cdr
}

func (this *Slist) String() string {
	return this.atom.str
}

func (this *Slist) Integer() int {
	return this.atom.integer
}

func (slist *Slist) Free() {
	if slist == nil {
		return
	}
	if slist.isatom {
		//		free(slist.String());
	} else {
		slist.Car().Free()
		slist.Cdr().Free()
	}
	//	free(slist);
}

//Slist* atom(byte *s, int i);

var token int
var peekc int = -1
var lineno int32 = 1

var input string
var inputindex int = 0
var tokenbuf [100]byte
var tokenlen int = 0

const EOF int = -1

func main() {
	var list *Slist

	OpenFile()
	for {
		list = Parse()
		if list == nil {
			break
		}
		r := list.Print()
		list.Free()
		if r != "(defn foo (add 12 34))" {
			panic(r)
		}
		break
	}
}

func (slist *Slist) PrintOne(doparen bool) string {
	if slist == nil {
		return ""
	}
	var r string
	if slist.isatom {
		if slist.isstring {
			r = slist.String()
		} else {
			r = fmt.Sprintf("%v", slist.Integer())
		}
	} else {
		if doparen {
			r += "("
		}
		r += slist.Car().PrintOne(true)
		if slist.Cdr() != nil {
			r += " "
			r += slist.Cdr().PrintOne(false)
		}
		if doparen {
			r += ")"
		}
	}
	return r
}

func (slist *Slist) Print() string {
	return slist.PrintOne(true)
}

func Get() int {
	var c int

	if peekc >= 0 {
		c = peekc
		peekc = -1
	} else {
		c = int(input[inputindex])
		inputindex++
		if c == '\n' {
			lineno = lineno + 1
		}
		if c == nilchar {
			inputindex = inputindex - 1
			c = EOF
		}
	}
	return c
}

func WhiteSpace(c int) bool {
	return c == ' ' || c == '\t' || c == '\r' || c == '\n'
}

func NextToken() {
	var i, c int

	tokenbuf[0] = nilchar // clear previous token
	c = Get()
	for WhiteSpace(c) {
		c = Get()
	}
	switch c {
	case EOF:
		token = EOF
	case '(', ')':
		token = c
		break
	default:
		for i = 0; i < 100-1; { // sizeof tokenbuf - 1
			tokenbuf[i] = byte(c)
			i = i + 1
			c = Get()
			if c == EOF {
				break
			}
			if WhiteSpace(c) || c == ')' {
				peekc = c
				break
			}
		}
		if i >= 100-1 { // sizeof tokenbuf - 1
			panic("atom too long\n")
		}
		tokenlen = i
		tokenbuf[i] = nilchar
		if '0' <= tokenbuf[0] && tokenbuf[0] <= '9' {
			token = '0'
		} else {
			token = 'A'
		}
	}
}

func Expect(c int) {
	if token != c {
		print("parse error: expected ", c, "\n")
		panic("parse")
	}
	NextToken()
}

// Parse a non-parenthesized list up to a closing paren or EOF
func ParseList() *Slist {
	var slist, retval *Slist

	slist = new(Slist)
	slist.list.car = nil
	slist.list.cdr = nil
	slist.isatom = false
	slist.isstring = false

	retval = slist
	for {
		slist.list.car = Parse()
		if token == ')' || token == EOF { // empty cdr
			break
		}
		slist.list.cdr = new(Slist)
		slist = slist.list.cdr
	}
	return retval
}

func atom(i int) *Slist { // BUG: uses tokenbuf; should take argument)
	var slist *Slist

	slist = new(Slist)
	if token == '0' {
		slist.atom.integer = i
		slist.isstring = false
	} else {
		slist.atom.str = string(tokenbuf[0:tokenlen])
		slist.isstring = true
	}
	slist.isatom = true
	return slist
}

func atoi() int { // BUG: uses tokenbuf; should take argument)
	var v int = 0
	for i := 0; i < tokenlen && '0' <= tokenbuf[i] && tokenbuf[i] <= '9'; i = i + 1 {
		v = 10*v + int(tokenbuf[i]-'0')
	}
	return v
}

func Parse() *Slist {
	var slist *Slist

	if token == EOF || token == ')' {
		return nil
	}
	if token == '(' {
		NextToken()
		slist = ParseList()
		Expect(')')
		return slist
	} else {
		// Atom
		switch token {
		case EOF:
			return nil
		case '0':
			slist = atom(atoi())
		case '"', 'A':
			slist = atom(0)
		default:
			slist = nil
			print("unknown token: ", token, "\n")
		}
		NextToken()
		return slist
	}
	return nil
}

func OpenFile() {
	input = "(defn foo (add 12 34))\n\x00"
	inputindex = 0
	peekc = -1 // BUG
	NextToken()
}

```
## literal2
```go
// run

// Copyright 2019 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Test Go2 literal syntax for basic types.
// Avoid running gofmt on this file to preserve the
// test cases with upper-case prefixes (0B, 0O, 0X).

package main

import "fmt"

func assert(cond bool) {
	if !cond {
		panic("assertion failed")
	}
}

func equal(x, y interface{}) bool {
	if x != y {
		fmt.Printf("%g != %g\n", x, y)
		return false
	}
	return true
}

func main() {
	// 0-octals
	assert(0_1 == 01)
	assert(012 == 012)
	assert(0_1_2 == 012)
	assert(0_1_2i == complex(0, 12)) // decimal digits despite leading 0 for backward-compatibility
	assert(00089i == complex(0, 89)) // decimal digits despite leading 0 for backward-compatibility

	// decimals
	assert(1_000_000 == 1000000)
	assert(1_000i == complex(0, 1000))

	// hexadecimals
	assert(0x_1 == 0x1)
	assert(0x1_2 == 0x12)
	assert(0x_cafe_f00d == 0xcafef00d)
	assert(0x_cafei == complex(0, 0xcafe))

	// octals
	assert(0o_1 == 01)
	assert(0o12 == 012)
	assert(0o_1_2 == 012)
	assert(0o_1_2i == complex(0, 0o12))

	// binaries
	assert(0b_1 == 1)
	assert(0b10 == 2)
	assert(0b_1_0 == 2)
	assert(0b_1_0i == complex(0, 2))

	// decimal floats
	assert(0. == 0.0)
	assert(.0 == 0.0)
	assert(1_0. == 10.0)
	assert(.0_1 == 0.01)
	assert(1_0.0_1 == 10.01)
	assert(1_0.0_1i == complex(0, 10.01))

	assert(0.e1_0 == 0.0e10)
	assert(.0e1_0 == 0.0e10)
	assert(1_0.e1_0 == 10.0e10)
	assert(.0_1e1_0 == 0.01e10)
	assert(1_0.0_1e1_0 == 10.01e10)
	assert(1_0.0_1e1_0i == complex(0, 10.01e10))

	// hexadecimal floats
	assert(equal(0x1p-2, 0.25))
	assert(equal(0x2.p10, 2048.0))
	assert(equal(0x1.Fp+0, 1.9375))
	assert(equal(0x.8p-0, 0.5))
	assert(equal(0x1FFFp-16, 0.1249847412109375))
	assert(equal(0x1.fffffffffffffp1023, 1.7976931348623157e308))
	assert(equal(0x1.fffffffffffffp1023i, complex(0, 1.7976931348623157e308)))

	assert(equal(0x_1p-2, 0.25))
	assert(equal(0x2.p1_0, 2048.0))
	assert(equal(0x1_0.Fp+0, 16.9375))
	assert(equal(0x_0.8p-0, 0.5))
	assert(equal(0x_1FF_Fp-16, 0.1249847412109375))
	assert(equal(0x1.f_ffff_ffff_ffffp1_023, 1.7976931348623157e308))
	assert(equal(0x1.f_ffff_ffff_ffffp1_023i, complex(0, 1.7976931348623157e308)))
}

```
## map_
```go
// run

// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Test maps, almost exhaustively.
// Complexity (linearity) test is in maplinear.go.

package main

import (
	"fmt"
	"math"
	"strconv"
)

const count = 100

func P(a []string) string {
	s := "{"
	for i := 0; i < len(a); i++ {
		if i > 0 {
			s += ","
		}
		s += `"` + a[i] + `"`
	}
	s += "}"
	return s
}

func main() {
	testbasic()
	testfloat()
	testnan()
}

func testbasic() {
	// Test a map literal.
	mlit := map[string]int{"0": 0, "1": 1, "2": 2, "3": 3, "4": 4}
	for i := 0; i < len(mlit); i++ {
		s := string([]byte{byte(i) + '0'})
		if mlit[s] != i {
			panic(fmt.Sprintf("mlit[%s] = %d\n", s, mlit[s]))
		}
	}

	mib := make(map[int]bool)
	mii := make(map[int]int)
	mfi := make(map[float32]int)
	mif := make(map[int]float32)
	msi := make(map[string]int)
	mis := make(map[int]string)
	mss := make(map[string]string)
	mspa := make(map[string][]string)
	// BUG need an interface map both ways too

	type T struct {
		i int64 // can't use string here; struct values are only compared at the top level
		f float32
	}
	mipT := make(map[int]*T)
	mpTi := make(map[*T]int)
	mit := make(map[int]T)
	//	mti := make(map[T] int)

	type M map[int]int
	mipM := make(map[int]M)

	var apT [2 * count]*T

	for i := 0; i < count; i++ {
		s := strconv.Itoa(i)
		s10 := strconv.Itoa(i * 10)
		f := float32(i)
		t := T{int64(i), f}
		apT[i] = new(T)
		apT[i].i = int64(i)
		apT[i].f = f
		apT[2*i] = new(T) // need twice as many entries as we use, for the nonexistence check
		apT[2*i].i = int64(i)
		apT[2*i].f = f
		m := M{i: i + 1}
		mib[i] = (i != 0)
		mii[i] = 10 * i
		mfi[float32(i)] = 10 * i
		mif[i] = 10.0 * f
		mis[i] = s
		msi[s] = i
		mss[s] = s10
		mss[s] = s10
		as := make([]string, 2)
		as[0] = s10
		as[1] = s10
		mspa[s] = as
		mipT[i] = apT[i]
		mpTi[apT[i]] = i
		mipM[i] = m
		mit[i] = t
		//	mti[t] = i
	}

	// test len
	if len(mib) != count {
		panic(fmt.Sprintf("len(mib) = %d\n", len(mib)))
	}
	if len(mii) != count {
		panic(fmt.Sprintf("len(mii) = %d\n", len(mii)))
	}
	if len(mfi) != count {
		panic(fmt.Sprintf("len(mfi) = %d\n", len(mfi)))
	}
	if len(mif) != count {
		panic(fmt.Sprintf("len(mif) = %d\n", len(mif)))
	}
	if len(msi) != count {
		panic(fmt.Sprintf("len(msi) = %d\n", len(msi)))
	}
	if len(mis) != count {
		panic(fmt.Sprintf("len(mis) = %d\n", len(mis)))
	}
	if len(mss) != count {
		panic(fmt.Sprintf("len(mss) = %d\n", len(mss)))
	}
	if len(mspa) != count {
		panic(fmt.Sprintf("len(mspa) = %d\n", len(mspa)))
	}
	if len(mipT) != count {
		panic(fmt.Sprintf("len(mipT) = %d\n", len(mipT)))
	}
	if len(mpTi) != count {
		panic(fmt.Sprintf("len(mpTi) = %d\n", len(mpTi)))
	}
	//	if len(mti) != count {
	//              panic(fmt.Sprintf("len(mti) = %d\n", len(mti)))
	//	}
	if len(mipM) != count {
		panic(fmt.Sprintf("len(mipM) = %d\n", len(mipM)))
	}
	//	if len(mti) != count {
	//		panic(fmt.Sprintf("len(mti) = %d\n", len(mti)))
	//	}
	if len(mit) != count {
		panic(fmt.Sprintf("len(mit) = %d\n", len(mit)))
	}

	// test construction directly
	for i := 0; i < count; i++ {
		s := strconv.Itoa(i)
		s10 := strconv.Itoa(i * 10)
		f := float32(i)
		// BUG m := M(i, i+1)
		if mib[i] != (i != 0) {
			panic(fmt.Sprintf("mib[%d] = %t\n", i, mib[i]))
		}
		if mii[i] != 10*i {
			panic(fmt.Sprintf("mii[%d] = %d\n", i, mii[i]))
		}
		if mfi[f] != 10*i {
			panic(fmt.Sprintf("mfi[%d] = %d\n", i, mfi[f]))
		}
		if mif[i] != 10.0*f {
			panic(fmt.Sprintf("mif[%d] = %g\n", i, mif[i]))
		}
		if mis[i] != s {
			panic(fmt.Sprintf("mis[%d] = %s\n", i, mis[i]))
		}
		if msi[s] != i {
			panic(fmt.Sprintf("msi[%s] = %d\n", s, msi[s]))
		}
		if mss[s] != s10 {
			panic(fmt.Sprintf("mss[%s] = %g\n", s, mss[s]))
		}
		for j := 0; j < len(mspa[s]); j++ {
			if mspa[s][j] != s10 {
				panic(fmt.Sprintf("mspa[%s][%d] = %s\n", s, j, mspa[s][j]))
			}
		}
		if mipT[i].i != int64(i) || mipT[i].f != f {
			panic(fmt.Sprintf("mipT[%d] = %v\n", i, mipT[i]))
		}
		if mpTi[apT[i]] != i {
			panic(fmt.Sprintf("mpTi[apT[%d]] = %d\n", i, mpTi[apT[i]]))
		}
		//	if(mti[t] != i) {
		//		panic(fmt.Sprintf("mti[%s] = %s\n", s, mti[t]))
		//	}
		if mipM[i][i] != i+1 {
			panic(fmt.Sprintf("mipM[%d][%d] = %d\n", i, i, mipM[i][i]))
		}
		//	if(mti[t] != i) {
		//		panic(fmt.Sprintf("mti[%v] = %d\n", t, mti[t]))
		//	}
		if mit[i].i != int64(i) || mit[i].f != f {
			panic(fmt.Sprintf("mit[%d] = {%d %g}\n", i, mit[i].i, mit[i].f))
		}
	}

	// test existence with tuple check
	// failed lookups yield a false value for the boolean.
	for i := 0; i < count; i++ {
		s := strconv.Itoa(i)
		f := float32(i)
		{
			_, b := mib[i]
			if !b {
				panic(fmt.Sprintf("tuple existence decl: mib[%d]\n", i))
			}
			_, b = mib[i]
			if !b {
				panic(fmt.Sprintf("tuple existence assign: mib[%d]\n", i))
			}
		}
		{
			_, b := mii[i]
			if !b {
				panic(fmt.Sprintf("tuple existence decl: mii[%d]\n", i))
			}
			_, b = mii[i]
			if !b {
				panic(fmt.Sprintf("tuple existence assign: mii[%d]\n", i))
			}
		}
		{
			_, b := mfi[f]
			if !b {
				panic(fmt.Sprintf("tuple existence decl: mfi[%d]\n", i))
			}
			_, b = mfi[f]
			if !b {
				panic(fmt.Sprintf("tuple existence assign: mfi[%d]\n", i))
			}
		}
		{
			_, b := mif[i]
			if !b {
				panic(fmt.Sprintf("tuple existence decl: mif[%d]\n", i))
			}
			_, b = mif[i]
			if !b {
				panic(fmt.Sprintf("tuple existence assign: mif[%d]\n", i))
			}
		}
		{
			_, b := mis[i]
			if !b {
				panic(fmt.Sprintf("tuple existence decl: mis[%d]\n", i))
			}
			_, b = mis[i]
			if !b {
				panic(fmt.Sprintf("tuple existence assign: mis[%d]\n", i))
			}
		}
		{
			_, b := msi[s]
			if !b {
				panic(fmt.Sprintf("tuple existence decl: msi[%d]\n", i))
			}
			_, b = msi[s]
			if !b {
				panic(fmt.Sprintf("tuple existence assign: msi[%d]\n", i))
			}
		}
		{
			_, b := mss[s]
			if !b {
				panic(fmt.Sprintf("tuple existence decl: mss[%d]\n", i))
			}
			_, b = mss[s]
			if !b {
				panic(fmt.Sprintf("tuple existence assign: mss[%d]\n", i))
			}
		}
		{
			_, b := mspa[s]
			if !b {
				panic(fmt.Sprintf("tuple existence decl: mspa[%d]\n", i))
			}
			_, b = mspa[s]
			if !b {
				panic(fmt.Sprintf("tuple existence assign: mspa[%d]\n", i))
			}
		}
		{
			_, b := mipT[i]
			if !b {
				panic(fmt.Sprintf("tuple existence decl: mipT[%d]\n", i))
			}
			_, b = mipT[i]
			if !b {
				panic(fmt.Sprintf("tuple existence assign: mipT[%d]\n", i))
			}
		}
		{
			_, b := mpTi[apT[i]]
			if !b {
				panic(fmt.Sprintf("tuple existence decl: mpTi[apT[%d]]\n", i))
			}
			_, b = mpTi[apT[i]]
			if !b {
				panic(fmt.Sprintf("tuple existence assign: mpTi[apT[%d]]\n", i))
			}
		}
		{
			_, b := mipM[i]
			if !b {
				panic(fmt.Sprintf("tuple existence decl: mipM[%d]\n", i))
			}
			_, b = mipM[i]
			if !b {
				panic(fmt.Sprintf("tuple existence assign: mipM[%d]\n", i))
			}
		}
		{
			_, b := mit[i]
			if !b {
				panic(fmt.Sprintf("tuple existence decl: mit[%d]\n", i))
			}
			_, b = mit[i]
			if !b {
				panic(fmt.Sprintf("tuple existence assign: mit[%d]\n", i))
			}
		}
		//		{
		//			_, b := mti[t]
		//			if !b {
		//				panic(fmt.Sprintf("tuple existence decl: mti[%d]\n", i))
		//			}
		//			_, b = mti[t]
		//			if !b {
		//				panic(fmt.Sprintf("tuple existence assign: mti[%d]\n", i))
		//			}
		//		}
	}

	// test nonexistence with tuple check
	// failed lookups yield a false value for the boolean.
	for i := count; i < 2*count; i++ {
		s := strconv.Itoa(i)
		f := float32(i)
		{
			_, b := mib[i]
			if b {
				panic(fmt.Sprintf("tuple nonexistence decl: mib[%d]", i))
			}
			_, b = mib[i]
			if b {
				panic(fmt.Sprintf("tuple nonexistence assign: mib[%d]", i))
			}
		}
		{
			_, b := mii[i]
			if b {
				panic(fmt.Sprintf("tuple nonexistence decl: mii[%d]", i))
			}
			_, b = mii[i]
			if b {
				panic(fmt.Sprintf("tuple nonexistence assign: mii[%d]", i))
			}
		}
		{
			_, b := mfi[f]
			if b {
				panic(fmt.Sprintf("tuple nonexistence decl: mfi[%d]", i))
			}
			_, b = mfi[f]
			if b {
				panic(fmt.Sprintf("tuple nonexistence assign: mfi[%d]", i))
			}
		}
		{
			_, b := mif[i]
			if b {
				panic(fmt.Sprintf("tuple nonexistence decl: mif[%d]", i))
			}
			_, b = mif[i]
			if b {
				panic(fmt.Sprintf("tuple nonexistence assign: mif[%d]", i))
			}
		}
		{
			_, b := mis[i]
			if b {
				panic(fmt.Sprintf("tuple nonexistence decl: mis[%d]", i))
			}
			_, b = mis[i]
			if b {
				panic(fmt.Sprintf("tuple nonexistence assign: mis[%d]", i))
			}
		}
		{
			_, b := msi[s]
			if b {
				panic(fmt.Sprintf("tuple nonexistence decl: msi[%d]", i))
			}
			_, b = msi[s]
			if b {
				panic(fmt.Sprintf("tuple nonexistence assign: msi[%d]", i))
			}
		}
		{
			_, b := mss[s]
			if b {
				panic(fmt.Sprintf("tuple nonexistence decl: mss[%d]", i))
			}
			_, b = mss[s]
			if b {
				panic(fmt.Sprintf("tuple nonexistence assign: mss[%d]", i))
			}
		}
		{
			_, b := mspa[s]
			if b {
				panic(fmt.Sprintf("tuple nonexistence decl: mspa[%d]", i))
			}
			_, b = mspa[s]
			if b {
				panic(fmt.Sprintf("tuple nonexistence assign: mspa[%d]", i))
			}
		}
		{
			_, b := mipT[i]
			if b {
				panic(fmt.Sprintf("tuple nonexistence decl: mipT[%d]", i))
			}
			_, b = mipT[i]
			if b {
				panic(fmt.Sprintf("tuple nonexistence assign: mipT[%d]", i))
			}
		}
		{
			_, b := mpTi[apT[i]]
			if b {
				panic(fmt.Sprintf("tuple nonexistence decl: mpTi[apt[%d]]", i))
			}
			_, b = mpTi[apT[i]]
			if b {
				panic(fmt.Sprintf("tuple nonexistence assign: mpTi[apT[%d]]", i))
			}
		}
		{
			_, b := mipM[i]
			if b {
				panic(fmt.Sprintf("tuple nonexistence decl: mipM[%d]", i))
			}
			_, b = mipM[i]
			if b {
				panic(fmt.Sprintf("tuple nonexistence assign: mipM[%d]", i))
			}
		}
		//		{
		//			_, b := mti[t]
		//			if b {
		//				panic(fmt.Sprintf("tuple nonexistence decl: mti[%d]", i))
		//			}
		//			_, b = mti[t]
		//			if b {
		//				panic(fmt.Sprintf("tuple nonexistence assign: mti[%d]", i))
		//			}
		//		}
		{
			_, b := mit[i]
			if b {
				panic(fmt.Sprintf("tuple nonexistence decl: mit[%d]", i))
			}
			_, b = mit[i]
			if b {
				panic(fmt.Sprintf("tuple nonexistence assign: mit[%d]", i))
			}
		}
	}

	// tests for structured map element updates
	for i := 0; i < count; i++ {
		s := strconv.Itoa(i)
		mspa[s][i%2] = "deleted"
		if mspa[s][i%2] != "deleted" {
			panic(fmt.Sprintf("update mspa[%s][%d] = %s\n", s, i%2, mspa[s][i%2]))

		}

		mipT[i].i += 1
		if mipT[i].i != int64(i)+1 {
			panic(fmt.Sprintf("update mipT[%d].i = %d\n", i, mipT[i].i))

		}
		mipT[i].f = float32(i + 1)
		if mipT[i].f != float32(i+1) {
			panic(fmt.Sprintf("update mipT[%d].f = %g\n", i, mipT[i].f))

		}

		mipM[i][i]++
		if mipM[i][i] != (i+1)+1 {
			panic(fmt.Sprintf("update mipM[%d][%d] = %d\n", i, i, mipM[i][i]))

		}
	}

	// test range on nil map
	var mnil map[string]int
	for _, _ = range mnil {
		panic("range mnil")
	}
}

func testfloat() {
	// Test floating point numbers in maps.
	// Two map keys refer to the same entry if the keys are ==.
	// The special cases, then, are that +0 == -0 and that NaN != NaN.

	{
		var (
			pz   = float32(0)
			nz   = math.Float32frombits(1 << 31)
			nana = float32(math.NaN())
			nanb = math.Float32frombits(math.Float32bits(nana) ^ 2)
		)

		m := map[float32]string{
			pz:   "+0",
			nana: "NaN",
			nanb: "NaN",
		}
		if m[pz] != "+0" {
			panic(fmt.Sprintln("float32 map cannot read back m[+0]:", m[pz]))
		}
		if m[nz] != "+0" {
			fmt.Sprintln("float32 map does not treat", pz, "and", nz, "as equal for read")
			panic(fmt.Sprintln("float32 map does not treat -0 and +0 as equal for read"))
		}
		m[nz] = "-0"
		if m[pz] != "-0" {
			panic(fmt.Sprintln("float32 map does not treat -0 and +0 as equal for write"))
		}
		if _, ok := m[nana]; ok {
			panic(fmt.Sprintln("float32 map allows NaN lookup (a)"))
		}
		if _, ok := m[nanb]; ok {
			panic(fmt.Sprintln("float32 map allows NaN lookup (b)"))
		}
		if len(m) != 3 {
			panic(fmt.Sprintln("float32 map should have 3 entries:", m))
		}
		m[nana] = "NaN"
		m[nanb] = "NaN"
		if len(m) != 5 {
			panic(fmt.Sprintln("float32 map should have 5 entries:", m))
		}
	}

	{
		var (
			pz   = float64(0)
			nz   = math.Float64frombits(1 << 63)
			nana = float64(math.NaN())
			nanb = math.Float64frombits(math.Float64bits(nana) ^ 2)
		)

		m := map[float64]string{
			pz:   "+0",
			nana: "NaN",
			nanb: "NaN",
		}
		if m[nz] != "+0" {
			panic(fmt.Sprintln("float64 map does not treat -0 and +0 as equal for read"))
		}
		m[nz] = "-0"
		if m[pz] != "-0" {
			panic(fmt.Sprintln("float64 map does not treat -0 and +0 as equal for write"))
		}
		if _, ok := m[nana]; ok {
			panic(fmt.Sprintln("float64 map allows NaN lookup (a)"))
		}
		if _, ok := m[nanb]; ok {
			panic(fmt.Sprintln("float64 map allows NaN lookup (b)"))
		}
		if len(m) != 3 {
			panic(fmt.Sprintln("float64 map should have 3 entries:", m))
		}
		m[nana] = "NaN"
		m[nanb] = "NaN"
		if len(m) != 5 {
			panic(fmt.Sprintln("float64 map should have 5 entries:", m))
		}
	}

	{
		var (
			pz   = complex64(0)
			nz   = complex(0, math.Float32frombits(1<<31))
			nana = complex(5, float32(math.NaN()))
			nanb = complex(5, math.Float32frombits(math.Float32bits(float32(math.NaN()))^2))
		)

		m := map[complex64]string{
			pz:   "+0",
			nana: "NaN",
			nanb: "NaN",
		}
		if m[nz] != "+0" {
			panic(fmt.Sprintln("complex64 map does not treat -0 and +0 as equal for read"))
		}
		m[nz] = "-0"
		if m[pz] != "-0" {
			panic(fmt.Sprintln("complex64 map does not treat -0 and +0 as equal for write"))
		}
		if _, ok := m[nana]; ok {
			panic(fmt.Sprintln("complex64 map allows NaN lookup (a)"))
		}
		if _, ok := m[nanb]; ok {
			panic(fmt.Sprintln("complex64 map allows NaN lookup (b)"))
		}
		if len(m) != 3 {
			panic(fmt.Sprintln("complex64 map should have 3 entries:", m))
		}
		m[nana] = "NaN"
		m[nanb] = "NaN"
		if len(m) != 5 {
			panic(fmt.Sprintln("complex64 map should have 5 entries:", m))
		}
	}

	{
		var (
			pz   = complex128(0)
			nz   = complex(0, math.Float64frombits(1<<63))
			nana = complex(5, float64(math.NaN()))
			nanb = complex(5, math.Float64frombits(math.Float64bits(float64(math.NaN()))^2))
		)

		m := map[complex128]string{
			pz:   "+0",
			nana: "NaN",
			nanb: "NaN",
		}
		if m[nz] != "+0" {
			panic(fmt.Sprintln("complex128 map does not treat -0 and +0 as equal for read"))
		}
		m[nz] = "-0"
		if m[pz] != "-0" {
			panic(fmt.Sprintln("complex128 map does not treat -0 and +0 as equal for write"))
		}
		if _, ok := m[nana]; ok {
			panic(fmt.Sprintln("complex128 map allows NaN lookup (a)"))
		}
		if _, ok := m[nanb]; ok {
			panic(fmt.Sprintln("complex128 map allows NaN lookup (b)"))
		}
		if len(m) != 3 {
			panic(fmt.Sprintln("complex128 map should have 3 entries:", m))
		}
		m[nana] = "NaN"
		m[nanb] = "NaN"
		if len(m) != 5 {
			panic(fmt.Sprintln("complex128 map should have 5 entries:", m))
		}
	}
}

func testnan() {
	n := 500
	m := map[float64]int{}
	nan := math.NaN()
	for i := 0; i < n; i++ {
		m[nan] = 1
	}
	if len(m) != n {
		panic("wrong size map after nan insertion")
	}
	iters := 0
	for k, v := range m {
		iters++
		if !math.IsNaN(k) {
			panic("not NaN")
		}
		if v != 1 {
			panic("wrong value")
		}
	}
	if iters != n {
		panic("wrong number of nan range iters")
	}
}

```
## recover2
```go
// run

// Copyright 2010 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Test of recover for run-time errors.

// TODO(rsc):
//	null pointer accesses

package main

import "strings"

var x = make([]byte, 10)

func main() {
	test1()
	test2()
	test3()
	test4()
	test5()
	test6()
	test7()
}

func mustRecover(s string) {
	v := recover()
	if v == nil {
		panic("expected panic")
	}
	if e := v.(error).Error(); strings.Index(e, s) < 0 {
		panic("want: " + s + "; have: " + e)
	}
}

func test1() {
	defer mustRecover("index")
	println(x[123])
}

func test2() {
	defer mustRecover("slice")
	println(x[5:15])
}

func test3() {
	defer mustRecover("slice")
	var lo = 11
	var hi = 9
	println(x[lo:hi])
}

func test4() {
	defer mustRecover("interface")
	var x interface{} = 1
	println(x.(float32))
}

type T struct {
	a, b int
	c    []int
}

func test5() {
	defer mustRecover("uncomparable")
	var x T
	var z interface{} = x
	println(z != z)
}

func test6() {
	defer mustRecover("unhashable type main.T")
	var x T
	var z interface{} = x
	m := make(map[interface{}]int)
	m[z] = 1
}

func test7() {
	defer mustRecover("divide by zero")
	var x, y int
	println(x / y)
}

```
## shift3
```go
// run

// Copyright 2022 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Test that the compiler's noder uses the correct type
// for RHS shift operands that are untyped. Must compile;
// run for good measure.

package main

import (
	"fmt"
	"math"
)

func f(x, y int) {
	if x != y {
		panic(fmt.Sprintf("%d != %d", x, y))
	}
}

func main() {
	var x int = 1
	f(x<<1, 2)
	f(x<<1., 2)
	f(x<<(1+0i), 2)
	f(x<<0i, 1)

	f(x<<(1<<x), 4)
	f(x<<(1.<<x), 4)
	f(x<<((1+0i)<<x), 4)
	f(x<<(0i<<x), 1)

	// corner cases
	const M = math.MaxUint
	f(x<<(M+0), 0)     // shift by untyped int representable as uint
	f(x<<(M+0.), 0)    // shift by untyped float representable as uint
	f(x<<(M+0.+0i), 0) // shift by untyped complex representable as uint
}

```
## typeswitch1
```go
// run

// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Test simple type switches on basic types.

package main

import "fmt"

const (
	a = iota
	b
	c
	d
	e
)

var x = []int{1, 2, 3}

func f(x int, len *byte) {
	*len = byte(x)
}

func whatis(x interface{}) string {
	switch xx := x.(type) {
	default:
		return fmt.Sprint("default ", xx)
	case int, int8, int16, int32:
		return fmt.Sprint("signed ", xx)
	case int64:
		return fmt.Sprint("signed64 ", int64(xx))
	case uint, uint8, uint16, uint32:
		return fmt.Sprint("unsigned ", xx)
	case uint64:
		return fmt.Sprint("unsigned64 ", uint64(xx))
	case nil:
		return fmt.Sprint("nil ", xx)
	}
	panic("not reached")
}

func whatis1(x interface{}) string {
	xx := x
	switch xx.(type) {
	default:
		return fmt.Sprint("default ", xx)
	case int, int8, int16, int32:
		return fmt.Sprint("signed ", xx)
	case int64:
		return fmt.Sprint("signed64 ", xx.(int64))
	case uint, uint8, uint16, uint32:
		return fmt.Sprint("unsigned ", xx)
	case uint64:
		return fmt.Sprint("unsigned64 ", xx.(uint64))
	case nil:
		return fmt.Sprint("nil ", xx)
	}
	panic("not reached")
}

func check(x interface{}, s string) {
	w := whatis(x)
	if w != s {
		fmt.Println("whatis", x, "=>", w, "!=", s)
		panic("fail")
	}

	w = whatis1(x)
	if w != s {
		fmt.Println("whatis1", x, "=>", w, "!=", s)
		panic("fail")
	}
}

func main() {
	check(1, "signed 1")
	check(uint(1), "unsigned 1")
	check(int64(1), "signed64 1")
	check(uint64(1), "unsigned64 1")
	check(1.5, "default 1.5")
	check(nil, "nil <nil>")
}

```
## utf
```go
// run

// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Test UTF-8 in strings and character constants.

package main

import "unicode/utf8"

func main() {
	var chars [6]rune
	chars[0] = 'a'
	chars[1] = 'b'
	chars[2] = 'c'
	chars[3] = '\u65e5'
	chars[4] = '\u672c'
	chars[5] = '\u8a9e'
	s := ""
	for i := 0; i < 6; i++ {
		s += string(chars[i])
	}
	var l = len(s)
	for w, i, j := 0, 0, 0; i < l; i += w {
		var r rune
		r, w = utf8.DecodeRuneInString(s[i:len(s)])
		if w == 0 {
			panic("zero width in string")
		}
		if r != chars[j] {
			panic("wrong value from string")
		}
		j++
	}
	// encoded as bytes:  'a' 'b' 'c' e6 97 a5 e6 9c ac e8 aa 9e
	const L = 12
	if L != l {
		panic("wrong length constructing array")
	}
	a := make([]byte, L)
	a[0] = 'a'
	a[1] = 'b'
	a[2] = 'c'
	a[3] = 0xe6
	a[4] = 0x97
	a[5] = 0xa5
	a[6] = 0xe6
	a[7] = 0x9c
	a[8] = 0xac
	a[9] = 0xe8
	a[10] = 0xaa
	a[11] = 0x9e
	for w, i, j := 0, 0, 0; i < L; i += w {
		var r rune
		r, w = utf8.DecodeRune(a[i:L])
		if w == 0 {
			panic("zero width in bytes")
		}
		if r != chars[j] {
			panic("wrong value from bytes")
		}
		j++
	}
}

```
