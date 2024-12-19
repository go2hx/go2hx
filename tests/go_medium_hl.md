# go_medium
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
