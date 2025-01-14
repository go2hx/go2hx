# go_medium_php
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
