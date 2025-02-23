# unit_hl
## 4darray
```go
// run

// Copyright 2018 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Verify that we emit a valid type descriptor for
// a fairly deeply nested type.

package main

import (
	"fmt"
	"strings"
)

func main() {
	a := [][][][]int{{{{42}}}}
	got := fmt.Sprint(a)
	want := strings.Repeat("[", 4) + "42" + strings.Repeat("]", 4)
	if got != want {
		fmt.Printf("got  %q\nwant %q\n", got, want)
		panic("not matching")
	}
}

```
## append1
```go
// run

// Copyright 2010 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Semi-exhaustive test for the append predeclared function.

package main

import (
	"fmt"
	"reflect"
)

func verify(name string, result, expected interface{}) {
	if !reflect.DeepEqual(result, expected) {
		panic(name)
	}
}

func main() {
	for _, t := range tests {
		verify(t.name, t.result, t.expected)
	}
	verifyStruct()
	verifyInterface()
	verifyType()
}

var (
	zero int = 0
	one  int = 1
)

var tests = []struct {
	name             string
	result, expected interface{}
}{
	{"bool a", append([]bool{}), []bool{}},
	{"bool b", append([]bool{}, true), []bool{true}},
	{"bool c", append([]bool{}, true, false, true, true), []bool{true, false, true, true}},

	{"bool d", append([]bool{true, false, true}), []bool{true, false, true}},
	{"bool e", append([]bool{true, false, true}, false), []bool{true, false, true, false}},
	{"bool f", append([]bool{true, false, true}, false, false, false), []bool{true, false, true, false, false, false}},

	{"bool g", append([]bool{}, []bool{true}...), []bool{true}},
	{"bool h", append([]bool{}, []bool{true, false, true, false}...), []bool{true, false, true, false}},

	{"bool i", append([]bool{true, false, true}, []bool{true}...), []bool{true, false, true, true}},
	{"bool j", append([]bool{true, false, true}, []bool{true, true, true}...), []bool{true, false, true, true, true, true}},

	{"byte a", append([]byte{}), []byte{}},
	{"byte b", append([]byte{}, 0), []byte{0}},
	{"byte c", append([]byte{}, 0, 1, 2, 3), []byte{0, 1, 2, 3}},

	{"byte d", append([]byte{0, 1, 2}), []byte{0, 1, 2}},
	{"byte e", append([]byte{0, 1, 2}, 3), []byte{0, 1, 2, 3}},
	{"byte f", append([]byte{0, 1, 2}, 3, 4, 5), []byte{0, 1, 2, 3, 4, 5}},

	{"byte g", append([]byte{}, []byte{0}...), []byte{0}},
	{"byte h", append([]byte{}, []byte{0, 1, 2, 3}...), []byte{0, 1, 2, 3}},

	{"byte i", append([]byte{0, 1, 2}, []byte{3}...), []byte{0, 1, 2, 3}},
	{"byte j", append([]byte{0, 1, 2}, []byte{3, 4, 5}...), []byte{0, 1, 2, 3, 4, 5}},

	{"bytestr a", append([]byte{}, "0"...), []byte("0")},
	{"bytestr b", append([]byte{}, "0123"...), []byte("0123")},

	{"bytestr c", append([]byte("012"), "3"...), []byte("0123")},
	{"bytestr d", append([]byte("012"), "345"...), []byte("012345")},

	{"int16 a", append([]int16{}), []int16{}},
	{"int16 b", append([]int16{}, 0), []int16{0}},
	{"int16 c", append([]int16{}, 0, 1, 2, 3), []int16{0, 1, 2, 3}},

	{"int16 d", append([]int16{0, 1, 2}), []int16{0, 1, 2}},
	{"int16 e", append([]int16{0, 1, 2}, 3), []int16{0, 1, 2, 3}},
	{"int16 f", append([]int16{0, 1, 2}, 3, 4, 5), []int16{0, 1, 2, 3, 4, 5}},

	{"int16 g", append([]int16{}, []int16{0}...), []int16{0}},
	{"int16 h", append([]int16{}, []int16{0, 1, 2, 3}...), []int16{0, 1, 2, 3}},

	{"int16 i", append([]int16{0, 1, 2}, []int16{3}...), []int16{0, 1, 2, 3}},
	{"int16 j", append([]int16{0, 1, 2}, []int16{3, 4, 5}...), []int16{0, 1, 2, 3, 4, 5}},

	{"uint32 a", append([]uint32{}), []uint32{}},
	{"uint32 b", append([]uint32{}, 0), []uint32{0}},
	{"uint32 c", append([]uint32{}, 0, 1, 2, 3), []uint32{0, 1, 2, 3}},

	{"uint32 d", append([]uint32{0, 1, 2}), []uint32{0, 1, 2}},
	{"uint32 e", append([]uint32{0, 1, 2}, 3), []uint32{0, 1, 2, 3}},
	{"uint32 f", append([]uint32{0, 1, 2}, 3, 4, 5), []uint32{0, 1, 2, 3, 4, 5}},

	{"uint32 g", append([]uint32{}, []uint32{0}...), []uint32{0}},
	{"uint32 h", append([]uint32{}, []uint32{0, 1, 2, 3}...), []uint32{0, 1, 2, 3}},

	{"uint32 i", append([]uint32{0, 1, 2}, []uint32{3}...), []uint32{0, 1, 2, 3}},
	{"uint32 j", append([]uint32{0, 1, 2}, []uint32{3, 4, 5}...), []uint32{0, 1, 2, 3, 4, 5}},

	{"float64 a", append([]float64{}), []float64{}},
	{"float64 b", append([]float64{}, 0), []float64{0}},
	{"float64 c", append([]float64{}, 0, 1, 2, 3), []float64{0, 1, 2, 3}},

	{"float64 d", append([]float64{0, 1, 2}), []float64{0, 1, 2}},
	{"float64 e", append([]float64{0, 1, 2}, 3), []float64{0, 1, 2, 3}},
	{"float64 f", append([]float64{0, 1, 2}, 3, 4, 5), []float64{0, 1, 2, 3, 4, 5}},

	{"float64 g", append([]float64{}, []float64{0}...), []float64{0}},
	{"float64 h", append([]float64{}, []float64{0, 1, 2, 3}...), []float64{0, 1, 2, 3}},

	{"float64 i", append([]float64{0, 1, 2}, []float64{3}...), []float64{0, 1, 2, 3}},
	{"float64 j", append([]float64{0, 1, 2}, []float64{3, 4, 5}...), []float64{0, 1, 2, 3, 4, 5}},

	{"complex128 a", append([]complex128{}), []complex128{}},
	{"complex128 b", append([]complex128{}, 0), []complex128{0}},
	{"complex128 c", append([]complex128{}, 0, 1, 2, 3), []complex128{0, 1, 2, 3}},

	{"complex128 d", append([]complex128{0, 1, 2}), []complex128{0, 1, 2}},
	{"complex128 e", append([]complex128{0, 1, 2}, 3), []complex128{0, 1, 2, 3}},
	{"complex128 f", append([]complex128{0, 1, 2}, 3, 4, 5), []complex128{0, 1, 2, 3, 4, 5}},

	{"complex128 g", append([]complex128{}, []complex128{0}...), []complex128{0}},
	{"complex128 h", append([]complex128{}, []complex128{0, 1, 2, 3}...), []complex128{0, 1, 2, 3}},

	{"complex128 i", append([]complex128{0, 1, 2}, []complex128{3}...), []complex128{0, 1, 2, 3}},
	{"complex128 j", append([]complex128{0, 1, 2}, []complex128{3, 4, 5}...), []complex128{0, 1, 2, 3, 4, 5}},

	{"string a", append([]string{}), []string{}},
	{"string b", append([]string{}, "0"), []string{"0"}},
	{"string c", append([]string{}, "0", "1", "2", "3"), []string{"0", "1", "2", "3"}},

	{"string d", append([]string{"0", "1", "2"}), []string{"0", "1", "2"}},
	{"string e", append([]string{"0", "1", "2"}, "3"), []string{"0", "1", "2", "3"}},
	{"string f", append([]string{"0", "1", "2"}, "3", "4", "5"), []string{"0", "1", "2", "3", "4", "5"}},

	{"string g", append([]string{}, []string{"0"}...), []string{"0"}},
	{"string h", append([]string{}, []string{"0", "1", "2", "3"}...), []string{"0", "1", "2", "3"}},

	{"string i", append([]string{"0", "1", "2"}, []string{"3"}...), []string{"0", "1", "2", "3"}},
	{"string j", append([]string{"0", "1", "2"}, []string{"3", "4", "5"}...), []string{"0", "1", "2", "3", "4", "5"}},

	{"make a", append([]string{}, make([]string, 0)...), []string{}},
	{"make b", append([]string(nil), make([]string, 0)...), []string(nil)},

	{"make c", append([]struct{}{}, make([]struct{}, 0)...), []struct{}{}},
	{"make d", append([]struct{}{}, make([]struct{}, 2)...), make([]struct{}, 2)},

	{"make e", append([]int{0, 1}, make([]int, 0)...), []int{0, 1}},
	{"make f", append([]int{0, 1}, make([]int, 2)...), []int{0, 1, 0, 0}},

	{"make g", append([]*int{&zero, &one}, make([]*int, 0)...), []*int{&zero, &one}},
	{"make h", append([]*int{&zero, &one}, make([]*int, 2)...), []*int{&zero, &one, nil, nil}},
}

func verifyStruct() {
	type T struct {
		a, b, c string
	}
	type S []T
	e := make(S, 100)
	for i := range e {
		e[i] = T{"foo", fmt.Sprintf("%d", i), "bar"}
	}

	verify("struct a", append(S{}), S{})
	verify("struct b", append(S{}, e[0]), e[0:1])
	verify("struct c", append(S{}, e[0], e[1], e[2]), e[0:3])

	verify("struct d", append(e[0:1]), e[0:1])
	verify("struct e", append(e[0:1], e[1]), e[0:2])
	verify("struct f", append(e[0:1], e[1], e[2], e[3]), e[0:4])

	verify("struct g", append(e[0:3]), e[0:3])
	verify("struct h", append(e[0:3], e[3]), e[0:4])
	verify("struct i", append(e[0:3], e[3], e[4], e[5], e[6]), e[0:7])

	for i := range e {
		verify("struct j", append(S{}, e[0:i]...), e[0:i])
		input := make(S, i)
		copy(input, e[0:i])
		verify("struct k", append(input, e[i:]...), e)
		verify("struct k - input modified", input, e[0:i])
	}

	s := make(S, 10, 20)
	r := make(S, len(s)+len(e))
	for i, x := range e {
		r[len(s)+i] = x
	}
	verify("struct l", append(s), s)
	verify("struct m", append(s, e...), r)
}

func verifyInterface() {
	type T interface{}
	type S []T
	e := make(S, 100)
	for i := range e {
		switch i % 4 {
		case 0:
			e[i] = i
		case 1:
			e[i] = "foo"
		case 2:
			e[i] = fmt.Sprintf("%d", i)
		case 3:
			e[i] = float64(i)
		}
	}

	verify("interface a", append(S{}), S{})
	verify("interface b", append(S{}, e[0]), e[0:1])
	verify("interface c", append(S{}, e[0], e[1], e[2]), e[0:3])

	verify("interface d", append(e[0:1]), e[0:1])
	verify("interface e", append(e[0:1], e[1]), e[0:2])
	verify("interface f", append(e[0:1], e[1], e[2], e[3]), e[0:4])

	verify("interface g", append(e[0:3]), e[0:3])
	verify("interface h", append(e[0:3], e[3]), e[0:4])
	verify("interface i", append(e[0:3], e[3], e[4], e[5], e[6]), e[0:7])

	for i := range e {
		verify("interface j", append(S{}, e[0:i]...), e[0:i])
		input := make(S, i)
		copy(input, e[0:i])
		verify("interface k", append(input, e[i:]...), e)
		verify("interface k - input modified", input, e[0:i])
	}

	s := make(S, 10, 20)
	r := make(S, len(s)+len(e))
	for i, x := range e {
		r[len(s)+i] = x
	}
	verify("interface l", append(s), s)
	verify("interface m", append(s, e...), r)
}

type T1 []int
type T2 []int

func verifyType() {
	// The second argument to append has type []E where E is the
	// element type of the first argument.  Test that the compiler
	// accepts two slice types that meet that requirement but are
	// not assignment compatible.  The return type of append is
	// the type of the first argument.
	t1 := T1{1}
	t2 := T2{2}
	verify("T1", append(t1, t2...), T1{1, 2})
}

```
## argMethods
```go
package main

func main() {
	d := &Decoder{}
	d2 := &Decoder2{}
	if d.help != 0.0 {
		panic("invalid value: d.help")
	}
	if d.name() != "test" {
		panic("invalid value: d.name()")
	}
	if d2.name != 0 {
		panic("invalid value: d2.name")
	}
}

type Decoder struct {
	a stack2
	stack
	help float64
}

type stack2 struct {
	name bool
}

type stack struct {
	name int
}

func (stack) help() {}

func (d *Decoder) name() string {
	return "test"
}

type Decoder2 struct {
	a stack2
	stack
}

```
## assigninitptrvar
```go
package main

func main() {
	for i := 0; i < 1; i++ {
		if &i != &i {
			panic("ptrs not equal")
		}
	}

	switch i := 10; i := any(i).(type) {
	case int:
		if &i != &i {
			panic("ptrs not equal")
		}
	}
	switch i := 10; i {
	case 10:
		if &i != &i {
			panic("ptrs not equal")
		}
	}
	if i := 0; i == 0 {
		if &i != &i {
			panic("ptrs not equal")
		}
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

var i8 int8
var u8 uint8
var i16 int16
var u16 uint16
var i32 int32
var u32 uint32
var i64 int64
var u64 uint64
var f32 float32
var f64 float64

type big float64

type t struct {
	from, to int
	val      big
}

const (
	ti8 = iota + 1
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

var x = []t{

	/* value good in all types (10) */
	{ti8, ti8, 10}, {ti8, tu8, 10}, {ti8, ti16, 10}, {ti8, tu16, 10},
	{ti8, ti32, 10}, {ti8, tu32, 10}, {ti8, ti64, 10}, {ti8, tu64, 10},
	{ti8, tf32, 10}, {ti8, tf64, 10},

	{tu8, ti8, 10}, {tu8, tu8, 10}, {tu8, ti16, 10}, {tu8, tu16, 10},
	{tu8, ti32, 10}, {tu8, tu32, 10}, {tu8, ti64, 10}, {tu8, tu64, 10},
	{tu8, tf32, 10}, {tu8, tf64, 10},

	{ti16, ti8, 10}, {ti16, tu8, 10}, {ti16, ti16, 10}, {ti16, tu16, 10},
	{ti16, ti32, 10}, {ti16, tu32, 10}, {ti16, ti64, 10}, {ti16, tu64, 10},
	{ti16, tf32, 10}, {ti16, tf64, 10},

	{tu16, ti8, 10}, {tu16, tu8, 10}, {tu16, ti16, 10}, {tu16, tu16, 10},
	{tu16, ti32, 10}, {tu16, tu32, 10}, {tu16, ti64, 10}, {tu16, tu64, 10},
	{tu16, tf32, 10}, {tu16, tf64, 10},

	{ti32, ti8, 10}, {ti32, tu8, 10}, {ti32, ti16, 10}, {ti32, tu16, 10},
	{ti32, ti32, 10}, {ti32, tu32, 10}, {ti32, ti64, 10}, {ti32, tu64, 10},
	{ti32, tf32, 10}, {ti32, tf64, 10},

	{tu32, ti8, 10}, {tu32, tu8, 10}, {tu32, ti16, 10}, {tu32, tu16, 10},
	{tu32, ti32, 10}, {tu32, tu32, 10}, {tu32, ti64, 10}, {tu32, tu64, 10},
	{tu32, tf32, 10}, {tu32, tf64, 10},

	{ti64, ti8, 10}, {ti64, tu8, 10}, {ti64, ti16, 10}, {ti64, tu16, 10},
	{ti64, ti32, 10}, {ti64, tu32, 10}, {ti64, ti64, 10}, {ti64, tu64, 10},
	{ti64, tf32, 10}, {ti64, tf64, 10},

	{tu64, ti8, 10}, {tu64, tu8, 10}, {tu64, ti16, 10}, {tu64, tu16, 10},
	{tu64, ti32, 10}, {tu64, tu32, 10}, {tu64, ti64, 10}, {tu64, tu64, 10},
	{tu64, tf32, 10}, {tu64, tf64, 10},

	{tf32, ti8, 10}, {tf32, tu8, 10}, {tf32, ti16, 10}, {tf32, tu16, 10},
	{tf32, ti32, 10}, {tf32, tu32, 10}, {tf32, ti64, 10}, {tf32, tu64, 10},
	{tf32, tf32, 10}, {tf32, tf64, 10},

	{tf64, ti8, 10}, {tf64, tu8, 10}, {tf64, ti16, 10}, {tf64, tu16, 10},
	{tf64, ti32, 10}, {tf64, tu32, 10}, {tf64, ti64, 10}, {tf64, tu64, 10},
	{tf64, tf32, 10}, {tf64, tf64, 10},

	/* value good in all signed types (-4) */
	{ti8, ti8, -4}, {ti8, ti16, -4},
	{ti8, ti32, -4}, {ti8, ti64, -4},
	{ti8, tf32, -4}, {ti8, tf64, -4},

	{ti16, ti8, -4}, {ti16, ti16, -4},
	{ti16, ti32, -4}, {ti16, ti64, -4},
	{ti16, tf32, -4},

	{ti32, ti8, -4}, {ti32, ti16, -4},
	{ti32, ti32, -4}, {ti32, ti64, -4},
	{ti32, tf32, -4}, {ti32, tf64, -4},

	{ti64, ti8, -4}, {ti64, ti16, -4},
	{ti64, ti32, -4}, {ti64, ti64, -4},
	{ti64, tf32, -4},

	{tf32, ti8, -4}, {tf32, ti16, -4},
	{tf32, ti32, -4}, {tf32, ti64, -4},
	{tf32, tf32, -4},

	{tf64, ti8, -4}, {tf64, ti16, -4},
	{tf64, ti32, -4}, {tf64, ti64, -4},
	{tf64, tf32, -4}, {tf64, tf64, -4},

	/* value good in u8 and up (175) */
	{tu8, tu8, 175}, {tu8, ti16, 175}, {tu8, tu16, 175},
	{tu8, ti32, 175}, {tu8, tu32, 175}, {tu8, ti64, 175}, {tu8, tu64, 175},
	{tu8, tf32, 175}, {tu8, tf64, 175},

	{ti16, tu8, 175}, {ti16, ti16, 175}, {ti16, tu16, 175},
	{ti16, ti32, 175}, {ti16, tu32, 175}, {ti16, ti64, 175}, {ti16, tu64, 175},
	{ti16, tf32, 175}, {ti16, tf64, 175},

	{tu16, tu8, 175}, {tu16, ti16, 175}, {tu16, tu16, 175},
	{tu16, ti32, 175}, {tu16, tu32, 175}, {tu16, ti64, 175}, {tu16, tu64, 175},
	{tu16, tf32, 175}, {tu16, tf64, 175},

	{ti32, tu8, 175}, {ti32, ti16, 175}, {ti32, tu16, 175},
	{ti32, ti32, 175}, {ti32, tu32, 175}, {ti32, ti64, 175}, {ti32, tu64, 175},
	{ti32, tf32, 175}, {ti32, tf64, 175},

	{tu32, tu8, 175}, {tu32, ti16, 175}, {tu32, tu16, 175},
	{tu32, ti32, 175}, {tu32, tu32, 175}, {tu32, ti64, 175}, {tu32, tu64, 175},
	{tu32, tf32, 175}, {tu32, tf64, 175},

	{ti64, tu8, 175}, {ti64, ti16, 175}, {ti64, tu16, 175},
	{ti64, ti32, 175}, {ti64, tu32, 175}, {ti64, ti64, 175}, {ti64, tu64, 175},
	{ti64, tf32, 175}, {ti64, tf64, 175},

	{tu64, tu8, 175}, {tu64, ti16, 175}, {tu64, tu16, 175},
	{tu64, ti32, 175}, {tu64, tu32, 175}, {tu64, ti64, 175}, {tu64, tu64, 175},
	{tu64, tf32, 175}, {tu64, tf64, 175},

	{tf32, tu8, 175}, {tf32, ti16, 175}, {tf32, tu16, 175},
	{tf32, ti32, 175}, {tf32, tu32, 175}, {tf32, ti64, 175}, {tf32, tu64, 175},
	{tf32, tf32, 175}, {tf32, tf64, 175},

	{tf64, tu8, 175}, {tf64, ti16, 175}, {tf64, tu16, 175},
	{tf64, ti32, 175}, {tf64, tu32, 175}, {tf64, ti64, 175}, {tf64, tu64, 175},
	{tf64, tf32, 175}, {tf64, tf64, 175},

	/* value good in u16 and up (41259) */
	{tu16, tu16, 41259},
	{tu16, ti32, 41259}, {tu16, ti64, 41259}, {tu16, tu64, 41259},
	{tu16, tf32, 41259}, {tu16, tf64, 41259},

	{ti32, tu16, 41259},
	{ti32, ti32, 41259}, {ti32, tu32, 41259}, {ti32, ti64, 41259}, {ti32, tu64, 41259},
	{ti32, tf32, 41259}, {ti32, tf64, 41259},

	{tu32, tu16, 41259},
	{tu32, ti32, 41259}, {tu32, tu32, 41259}, {tu32, ti64, 41259}, {tu32, tu64, 41259},
	{tu32, tf32, 41259}, {tu32, tf64, 41259},

	{ti64, tu16, 41259},
	{ti64, ti32, 41259}, {ti64, tu32, 41259}, {ti64, ti64, 41259}, {ti64, tu64, 41259},
	{ti64, tf32, 41259}, {ti64, tf64, 41259},

	{tu64, tu16, 41259},
	{tu64, ti32, 41259}, {tu64, tu32, 41259}, {tu64, ti64, 41259}, {tu64, tu64, 41259},
	{tu64, tf32, 41259}, {tu64, tf64, 41259},

	{tf32, tu16, 41259},
	{tf32, ti32, 41259}, {tf32, tu32, 41259}, {tf32, ti64, 41259}, {tf32, tu64, 41259},
	{tf32, tf32, 41259}, {tf32, tf64, 41259},

	{tf64, tu16, 41259},
	{tf64, ti32, 41259}, {tf64, tu32, 41259}, {tf64, ti64, 41259}, {tf64, tu64, 41259},
	{tf64, tf32, 41259}, {tf64, tf64, 41259},

	/* value good in u32 and up (3758096384) */
	{tu32, tu32, 3758096384}, {tu32, ti64, 3758096384}, {tu32, tu64, 3758096384},
	{tu32, tf32, 3758096384}, {tu32, tf64, 3758096384},

	{ti64, tu32, 3758096384}, {ti64, ti64, 3758096384}, {ti64, tu64, 3758096384},
	{ti64, tf32, 3758096384}, {ti64, tf64, 3758096384},

	{tu64, tu32, 3758096384}, {tu64, ti64, 3758096384}, {tu64, tu64, 3758096384},
	{tu64, tf32, 3758096384}, {tu64, tf64, 3758096384},

	{tf32, tu32, 3758096384}, {tf32, ti64, 3758096384}, {tf32, tu64, 3758096384},
	{tf32, tf32, 3758096384}, {tf32, tf64, 3758096384},

	{tf64, tu32, 3758096384}, {tf64, ti64, 3758096384}, {tf64, tu64, 3758096384},
	{tf64, tf32, 3758096384}, {tf64, tf64, 3758096384},

	/* value good in u64 and up (16717361816799281152) */
	{tu64, tu64, 16717361816799281152},
	{tu64, tf32, 16717361816799281152}, {tu64, tf64, 16717361816799281152},

	{tf32, tu64, 16717361816799281152},
	{tf32, tf32, 16717361816799281152}, {tf32, tf64, 16717361816799281152},

	{tf64, tu64, 16717361816799281152},
	{tf64, tf32, 16717361816799281152}, {tf64, tf64, 16717361816799281152},
}

func main() {
	for i := 0; i < len(x); i++ {
		v := x[i].val  // input value
		w := big(0)    // output value
		f := x[i].from // input type
		t := x[i].to   // output type

		i8 = 0
		u8 = 0
		i16 = 0
		u16 = 0
		i32 = 0
		u32 = 0
		i64 = 0
		u64 = 0
		f32 = 0
		f64 = 0

		switch f*100 + t {
		default:
			println("missing case", i, v, f, t)
			w = v

		case ti8*100 + ti8:
			i8 = int8(v)
			i8 = int8(i8)
			w = big(i8)
		case ti8*100 + tu8:
			i8 = int8(v)
			u8 = uint8(i8)
			w = big(u8)
		case ti8*100 + ti16:
			i8 = int8(v)
			i16 = int16(i8)
			w = big(i16)
		case ti8*100 + tu16:
			i8 = int8(v)
			u16 = uint16(i8)
			w = big(u16)
		case ti8*100 + ti32:
			i8 = int8(v)
			i32 = int32(i8)
			w = big(i32)
		case ti8*100 + tu32:
			i8 = int8(v)
			u32 = uint32(i8)
			w = big(u32)
		case ti8*100 + ti64:
			i8 = int8(v)
			i64 = int64(i8)
			w = big(i64)
		case ti8*100 + tu64:
			i8 = int8(v)
			u64 = uint64(i8)
			w = big(u64)
		case ti8*100 + tf32:
			i8 = int8(v)
			f32 = float32(i8)
			w = big(f32)
		case ti8*100 + tf64:
			i8 = int8(v)
			f64 = float64(i8)
			w = big(f64)

		case tu8*100 + ti8:
			u8 = uint8(v)
			i8 = int8(u8)
			w = big(i8)
		case tu8*100 + tu8:
			u8 = uint8(v)
			u8 = uint8(u8)
			w = big(u8)
		case tu8*100 + ti16:
			u8 = uint8(v)
			i16 = int16(u8)
			w = big(i16)
		case tu8*100 + tu16:
			u8 = uint8(v)
			u16 = uint16(u8)
			w = big(u16)
		case tu8*100 + ti32:
			u8 = uint8(v)
			i32 = int32(u8)
			w = big(i32)
		case tu8*100 + tu32:
			u8 = uint8(v)
			u32 = uint32(u8)
			w = big(u32)
		case tu8*100 + ti64:
			u8 = uint8(v)
			i64 = int64(u8)
			w = big(i64)
		case tu8*100 + tu64:
			u8 = uint8(v)
			u64 = uint64(u8)
			w = big(u64)
		case tu8*100 + tf32:
			u8 = uint8(v)
			f32 = float32(u8)
			w = big(f32)
		case tu8*100 + tf64:
			u8 = uint8(v)
			f64 = float64(u8)
			w = big(f64)

		case ti16*100 + ti8:
			i16 = int16(v)
			i8 = int8(i16)
			w = big(i8)
		case ti16*100 + tu8:
			i16 = int16(v)
			u8 = uint8(i16)
			w = big(u8)
		case ti16*100 + ti16:
			i16 = int16(v)
			i16 = int16(i16)
			w = big(i16)
		case ti16*100 + tu16:
			i16 = int16(v)
			u16 = uint16(i16)
			w = big(u16)
		case ti16*100 + ti32:
			i16 = int16(v)
			i32 = int32(i16)
			w = big(i32)
		case ti16*100 + tu32:
			i16 = int16(v)
			u32 = uint32(i16)
			w = big(u32)
		case ti16*100 + ti64:
			i16 = int16(v)
			i64 = int64(i16)
			w = big(i64)
		case ti16*100 + tu64:
			i16 = int16(v)
			u64 = uint64(i16)
			w = big(u64)
		case ti16*100 + tf32:
			i16 = int16(v)
			f32 = float32(i16)
			w = big(f32)
		case ti16*100 + tf64:
			i16 = int16(v)
			f64 = float64(i16)
			w = big(f64)

		case tu16*100 + ti8:
			u16 = uint16(v)
			i8 = int8(u16)
			w = big(i8)
		case tu16*100 + tu8:
			u16 = uint16(v)
			u8 = uint8(u16)
			w = big(u8)
		case tu16*100 + ti16:
			u16 = uint16(v)
			i16 = int16(u16)
			w = big(i16)
		case tu16*100 + tu16:
			u16 = uint16(v)
			u16 = uint16(u16)
			w = big(u16)
		case tu16*100 + ti32:
			u16 = uint16(v)
			i32 = int32(u16)
			w = big(i32)
		case tu16*100 + tu32:
			u16 = uint16(v)
			u32 = uint32(u16)
			w = big(u32)
		case tu16*100 + ti64:
			u16 = uint16(v)
			i64 = int64(u16)
			w = big(i64)
		case tu16*100 + tu64:
			u16 = uint16(v)
			u64 = uint64(u16)
			w = big(u64)
		case tu16*100 + tf32:
			u16 = uint16(v)
			f32 = float32(u16)
			w = big(f32)
		case tu16*100 + tf64:
			u16 = uint16(v)
			f64 = float64(u16)
			w = big(f64)

		case ti32*100 + ti8:
			i32 = int32(v)
			i8 = int8(i32)
			w = big(i8)
		case ti32*100 + tu8:
			i32 = int32(v)
			u8 = uint8(i32)
			w = big(u8)
		case ti32*100 + ti16:
			i32 = int32(v)
			i16 = int16(i32)
			w = big(i16)
		case ti32*100 + tu16:
			i32 = int32(v)
			u16 = uint16(i32)
			w = big(u16)
		case ti32*100 + ti32:
			i32 = int32(v)
			i32 = int32(i32)
			w = big(i32)
		case ti32*100 + tu32:
			i32 = int32(v)
			u32 = uint32(i32)
			w = big(u32)
		case ti32*100 + ti64:
			i32 = int32(v)
			i64 = int64(i32)
			w = big(i64)
		case ti32*100 + tu64:
			i32 = int32(v)
			u64 = uint64(i32)
			w = big(u64)
		case ti32*100 + tf32:
			i32 = int32(v)
			f32 = float32(i32)
			w = big(f32)
		case ti32*100 + tf64:
			i32 = int32(v)
			f64 = float64(i32)
			w = big(f64)

		case tu32*100 + ti8:
			u32 = uint32(v)
			i8 = int8(u32)
			w = big(i8)
		case tu32*100 + tu8:
			u32 = uint32(v)
			u8 = uint8(u32)
			w = big(u8)
		case tu32*100 + ti16:
			u32 = uint32(v)
			i16 = int16(u32)
			w = big(i16)
		case tu32*100 + tu16:
			u32 = uint32(v)
			u16 = uint16(u32)
			w = big(u16)
		case tu32*100 + ti32:
			u32 = uint32(v)
			i32 = int32(u32)
			w = big(i32)
		case tu32*100 + tu32:
			u32 = uint32(v)
			u32 = uint32(u32)
			w = big(u32)
		case tu32*100 + ti64:
			u32 = uint32(v)
			i64 = int64(u32)
			w = big(i64)
		case tu32*100 + tu64:
			u32 = uint32(v)
			u64 = uint64(u32)
			w = big(u64)
		case tu32*100 + tf32:
			u32 = uint32(v)
			f32 = float32(u32)
			w = big(f32)
		case tu32*100 + tf64:
			u32 = uint32(v)
			f64 = float64(u32)
			w = big(f64)

		case ti64*100 + ti8:
			i64 = int64(v)
			i8 = int8(i64)
			w = big(i8)
		case ti64*100 + tu8:
			i64 = int64(v)
			u8 = uint8(i64)
			w = big(u8)
		case ti64*100 + ti16:
			i64 = int64(v)
			i16 = int16(i64)
			w = big(i16)
		case ti64*100 + tu16:
			i64 = int64(v)
			u16 = uint16(i64)
			w = big(u16)
		case ti64*100 + ti32:
			i64 = int64(v)
			i32 = int32(i64)
			w = big(i32)
		case ti64*100 + tu32:
			i64 = int64(v)
			u32 = uint32(i64)
			w = big(u32)
		case ti64*100 + ti64:
			i64 = int64(v)
			i64 = int64(i64)
			w = big(i64)
		case ti64*100 + tu64:
			i64 = int64(v)
			u64 = uint64(i64)
			w = big(u64)
		case ti64*100 + tf32:
			i64 = int64(v)
			f32 = float32(i64)
			w = big(f32)
		case ti64*100 + tf64:
			i64 = int64(v)
			f64 = float64(i64)
			w = big(f64)

		case tu64*100 + ti8:
			u64 = uint64(v)
			i8 = int8(u64)
			w = big(i8)
		case tu64*100 + tu8:
			u64 = uint64(v)
			u8 = uint8(u64)
			w = big(u8)
		case tu64*100 + ti16:
			u64 = uint64(v)
			i16 = int16(u64)
			w = big(i16)
		case tu64*100 + tu16:
			u64 = uint64(v)
			u16 = uint16(u64)
			w = big(u16)
		case tu64*100 + ti32:
			u64 = uint64(v)
			i32 = int32(u64)
			w = big(i32)
		case tu64*100 + tu32:
			u64 = uint64(v)
			u32 = uint32(u64)
			w = big(u32)
		case tu64*100 + ti64:
			u64 = uint64(v)
			i64 = int64(u64)
			w = big(i64)
		case tu64*100 + tu64:
			u64 = uint64(v)
			u64 = uint64(u64)
			w = big(u64)
		case tu64*100 + tf32:
			u64 = uint64(v)
			f32 = float32(u64)
			w = big(f32)
		case tu64*100 + tf64:
			u64 = uint64(v)
			f64 = float64(u64)
			w = big(f64)

		case tf32*100 + ti8:
			f32 = float32(v)
			i8 = int8(f32)
			w = big(i8)
		case tf32*100 + tu8:
			f32 = float32(v)
			u8 = uint8(f32)
			w = big(u8)
		case tf32*100 + ti16:
			f32 = float32(v)
			i16 = int16(f32)
			w = big(i16)
		case tf32*100 + tu16:
			f32 = float32(v)
			u16 = uint16(f32)
			w = big(u16)
		case tf32*100 + ti32:
			f32 = float32(v)
			i32 = int32(f32)
			w = big(i32)
		case tf32*100 + tu32:
			f32 = float32(v)
			u32 = uint32(f32)
			w = big(u32)
		case tf32*100 + ti64:
			f32 = float32(v)
			i64 = int64(f32)
			w = big(i64)
		case tf32*100 + tu64:
			f32 = float32(v)
			u64 = uint64(f32)
			w = big(u64)
		case tf32*100 + tf32:
			f32 = float32(v)
			f32 = float32(f32)
			w = big(f32)
		case tf32*100 + tf64:
			f32 = float32(v)
			f64 = float64(f32)
			w = big(f64)

		case tf64*100 + ti8:
			f64 = float64(v)
			i8 = int8(f64)
			w = big(i8)
		case tf64*100 + tu8:
			f64 = float64(v)
			u8 = uint8(f64)
			w = big(u8)
		case tf64*100 + ti16:
			f64 = float64(v)
			i16 = int16(f64)
			w = big(i16)
		case tf64*100 + tu16:
			f64 = float64(v)
			u16 = uint16(f64)
			w = big(u16)
		case tf64*100 + ti32:
			f64 = float64(v)
			i32 = int32(f64)
			w = big(i32)
		case tf64*100 + tu32:
			f64 = float64(v)
			u32 = uint32(f64)
			w = big(u32)
		case tf64*100 + ti64:
			f64 = float64(v)
			i64 = int64(f64)
			w = big(i64)
		case tf64*100 + tu64:
			f64 = float64(v)
			u64 = uint64(f64)
			w = big(u64)
		case tf64*100 + tf32:
			f64 = float64(v)
			f32 = float32(f64)
			w = big(f32)
		case tf64*100 + tf64:
			f64 = float64(v)
			f64 = float64(f64)
			w = big(f64)
		}
		if v != w {
			println(i, v, w, f, t)
			panic("issue")
		}
	}
}

```
## generic0
```go

package main

func main() {
	m(10)
	m(10.2)
}

func m[T int | float64](x T) T {
	return x + x
}

```
## generic1
```go
package main

type A[T int | float32] struct {
	x T
}

type K[T any] struct {
	y T
}

func (a *A[T]) add() {
	a.x = a.x + 10
}

func main() {
	x := A[int]{}
	x.add()
	_ = x.x

	y := K[struct{}]{}
	_ = y
}

```
## generic2
```go
package main

func main() {
	var z X[int] = 10
	z.test()
	if z != 20 {
		panic("not set")
	}
}

type X[T int | string] int

func (x *X[Tx]) test() {
	_ = make([]Tx, 10)
	*x = 20
}

```
## generic3
```go
package main

func main() {
	if test() != 0.0 || test2() != "" {
		panic("error")
	}
}

func test[t float64]() (s t) {
	return
}

func test2[int string]() (s int) {
	return
}

```
## generic4
```go
package main

func main() {
	s, l := test[string, uint64](true)
	switch interface{}(s).(type) {
	case string:

	default:
		panic("error")
	}
	switch interface{}(l).(type) {
	case uint64:

	default:
		panic("error")
	}
}

func test[t float64 | string, k int32 | uint64](i bool) (s t, l k) {
	return
}

```
## generic5
```go
package main

import "strings"

func main() {
	if !test[strings.Builder]() || test2() {
		panic("fail")
	}
}

func test[T strings.Builder | strings.Reader]() bool {
	return true
}

func test2[T strings.Builder]() bool {
	return false
}

```
## generic6
```go
package main

func main() {
	x := test[int]
	if !x() {
		panic("fail")
	}
}

func test[T int | string]() bool {
	return true
}

```
## generic7
```go
package main

type A[T int64 | float32] int64

func (a *A[T]) add() {}

func main() {
	var x A[int64]
	x = -2147483647 - 2
	if x != -2147483649 {
		panic("incorrect value")
	}
	x.add()
}

```
## generic8
```go
package main

func main() {
	x := printValue[int]
	x(10)
}

func printValue[t int | string](v int) {

}

```
## generic9
```go
package main

func main() {
	f(10, []int{})
}

func f[T int | float32, K []T](t T, k K) {

}

```
## genericAnyCast
```go
package main

type Generic[T any] struct{}

func main() {
	f(new(Generic[int]))
}

func f(a any) {

}

```
## named10
```go
package main

func main() {
	var x X[int] = 10
	var z y = &x
	z.test()
	a := z.(*X[int])
	if *a != 20 {
		panic("wrong value")
	}
}

type X[T int | string] int

func (x *X[Tx]) test() {
	_ = make([]Tx, 10)
	*x = 20
}

type y interface {
	test()
}

```
## nilappend
```go
package main

import "os"

type T struct{}

func main() {
	var e *T
	res := []T{}
	defer func() {
		r := recover()
		if r == nil {
			println("no panic")
			os.Exit(1)
		}
	}()
	res = append(res, *e)
}

```
## ptrrecv1
```go
// run

// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Test simple methods of various types, with pointer and
// value receivers.

package main

type S1 string

func (s *S1) val() int { return 2 }

type t2 struct{ *S1 }

func main() {
	var zps t2
	if zps.val() != 2 {
		println("zps.val:", zps.val())
		panic("fail")aqQconst


		
	}
}

```
## recursiveTypeReflect
```go
package main

import (
	"reflect"
)

type AST struct {
	Num      int
	Children []AST
}

type AST2 []AST2

func newAST(num int, root AST, children ...AST) AST {
	return AST{num, append([]AST{root}, children...)}
}

func main() {
	ast := newAST(1, AST{}, AST{})
	k := reflect.ValueOf(ast).Field(1).Kind()
	if k != 23 {
		println(k)
		panic("invalid value")
	}
	k = reflect.ValueOf(AST2{{}}).Index(0).Kind()
	if k != 23 {
		println(k)
		panic("invalid value")
	}
	k = reflect.ValueOf(ast).Field(1).Index(0).Type().Kind()
	if k != 25 {
		println(k)
		panic("invalid value")
	}
}

```
## reflect0
```go
package main

import "reflect"

type s struct {
	x int
	y int
}

func main() {
	x := s{0, 1}
	y := &x
	value := reflect.ValueOf(y)
	value.Elem().Set(reflect.ValueOf(s{1, 1}))
	if y.x != 1 {
		panic("wrong value")
	}
	y.x = 20
	if value.Elem().Interface().(s).x != 20 {
		panic("wrong value")
	}
}

```
## reflect2
```go
// run

// Copyright 2018 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Issue 23545: gccgo didn't lower array comparison to
// proper equality function in some case.

package main

import "reflect"

func main() {
	a := Get()
	b := dummyID(1234)
	if !reflect.TypeOf(a).AssignableTo(reflect.TypeOf(b)) {
		panic("array not assignableTo")
	}
}

func dummyID(x int) [Size]interface{} {
	var out [Size]interface{}
	out[0] = x
	return out
}

const Size = 32

type OutputID [Size]interface{}

//go:noinline
func Get() OutputID {
	return dummyID(1234)
}

```
## reflectcall1
```go
package main

import "reflect"

var count = 0

func main() {
	str := "hello world"
	output := reflect.ValueOf(f).Call([]reflect.Value{reflect.ValueOf(str)})
	if len(output) != 1 {
		panic("len(output) != 1")
	}
	if output[0].Kind() != reflect.String {
		panic("output[0].Kind() != reflect.String")
	}
	if output[0].String() != str {
		panic("output[0].String() != str")
	}
	if count != 1 {
		panic("not called")
	}
}

func f(x string) string {
	count++
	println(x)
	return x
}

```
## time0
```go
package main

import (
	"strconv"
	"time"
)

func main() {
	units := []string{"ns", "µs", "ms", "s", "m", "h"}
	for i := 1; i < 10; i++ {
		for _, unit := range units {
			s := strconv.Itoa(i) + unit
			d, _ := time.ParseDuration(s)
			x := Duration(d)
			if s != x.String()[0:len(s)] {
				panic(s + " does not equal output: " + x.String())
			}
		}
	}
}

type Duration int

func (d Duration) String() string {
	// Largest time is 2540400h10m10.000000000s
	var buf [32]byte
	w := len(buf)

	u := uint64(d)
	neg := d < 0
	if neg {
		u = -u
	}

	if u < uint64(Second) {
		// Special case: if duration is smaller than a second,
		// use smaller units, like 1.2ms
		var prec int
		w--
		buf[w] = 's'
		w--
		switch {
		case u == 0:
			return "0s"
		case u < uint64(Microsecond):
			// print nanoseconds
			prec = 0
			buf[w] = 'n'
		case u < uint64(Millisecond):
			// print microseconds
			prec = 3
			// U+00B5 'µ' micro sign == 0xC2 0xB5
			w-- // Need room for two bytes.
			copy(buf[w:], "µ")
		default:
			// print milliseconds
			prec = 6
			buf[w] = 'm'
		}
		w, u = fmtFrac(buf[:w], u, prec)
		w = fmtInt(buf[:w], u)
	} else {
		w--
		buf[w] = 's'

		w, u = fmtFrac(buf[:w], u, 9)

		// u is now integer seconds
		w = fmtInt(buf[:w], u%60)
		u /= 60

		// u is now integer minutes
		if u > 0 {
			w--
			buf[w] = 'm'
			w = fmtInt(buf[:w], u%60)
			u /= 60

			// u is now integer hours
			// Stop at hours because days can be different lengths.
			if u > 0 {
				w--
				buf[w] = 'h'
				w = fmtInt(buf[:w], u)
			}
		}
	}

	if neg {
		w--
		buf[w] = '-'
	}

	return string(buf[w:])
}

// fmtFrac formats the fraction of v/10**prec (e.g., ".12345") into the
// tail of buf, omitting trailing zeros. It omits the decimal
// point too when the fraction is 0. It returns the index where the
// output bytes begin and the value v/10**prec.
func fmtFrac(buf []byte, v uint64, prec int) (nw int, nv uint64) {
	// Omit trailing zeros up to and including decimal point.
	w := len(buf)
	print := false
	for i := 0; i < prec; i++ {
		digit := v % 10
		print = print || digit != 0
		if print {
			w--
			buf[w] = byte(digit) + '0'
		}
		v /= 10
	}
	if print {
		w--
		buf[w] = '.'
	}
	return w, v
}

// fmtInt formats v into the tail of buf.
// It returns the index where the output begins.
func fmtInt(buf []byte, v uint64) int {
	w := len(buf)
	if v == 0 {
		w--
		buf[w] = '0'
	} else {
		for v > 0 {
			w--
			buf[w] = byte(v%10) + '0'
			v /= 10
		}
	}
	return w
}

const (
	Nanosecond  Duration = 1
	Microsecond          = 1000 * Nanosecond
	Millisecond          = 1000 * Microsecond
	Second               = 1000 * Millisecond
	Minute               = 60 * Second
	Hour                 = 60 * Minute
)

```
## unsafe1
```go
package main

import "unsafe"

func main() {
	v := value{}
	v.getBytes()
	v.getIface()
}

// DoNotCompare can be embedded in a struct to prevent comparability.
type DoNotCompare [0]func()

type value struct {
	DoNotCompare // 0B

	// typ stores the type of the value as a pointer to the Go type.
	typ unsafe.Pointer // 8B

	// ptr stores the data pointer for a String, Bytes, or interface value.
	ptr unsafe.Pointer // 8B

	// num stores a Bool, Int32, Int64, Uint32, Uint64, Float32, Float64, or
	// Enum value as a raw uint64.
	//
	// It is also used to store the length of a String or Bytes value;
	// the capacity is ignored.
	num uint64 // 8B
}

type ifaceHeader struct {
	Type unsafe.Pointer
	Data unsafe.Pointer
}

type sliceHeader struct {
	Data unsafe.Pointer
	Len  int
	Cap  int
}

func (v value) getBytes() (x []byte) {
	*(*sliceHeader)(unsafe.Pointer(&x)) = sliceHeader{Data: v.ptr, Len: int(v.num), Cap: int(v.num)}
	return x
}

func (v value) getIface() (x any) {
	*(*ifaceHeader)(unsafe.Pointer(&x)) = ifaceHeader{Type: v.typ, Data: v.ptr}
	return x
}

```
## unsafeOffset
```go
package main

import "unsafe"

func main() {
	s := struct{ f string }{"hello"}
	println(uintptr(unsafe.Pointer(&s))+unsafe.Offsetof(s.f) == uintptr(unsafe.Pointer(&s.f)))
}

```
## vars1
```go
package main

func main() {
	var (
		buf    int = 10
		logger     = test(&buf)
	)
	_ = logger
}

func test(i *int) int {
	return *i
}

```
## 4darray
```go
// run

// Copyright 2018 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Verify that we emit a valid type descriptor for
// a fairly deeply nested type.

package main

import (
	"fmt"
	"strings"
)

func main() {
	a := [][][][]int{{{{42}}}}
	got := fmt.Sprint(a)
	want := strings.Repeat("[", 4) + "42" + strings.Repeat("]", 4)
	if got != want {
		fmt.Printf("got  %q\nwant %q\n", got, want)
		panic("not matching")
	}
}

```
## append1
```go
// run

// Copyright 2010 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Semi-exhaustive test for the append predeclared function.

package main

import (
	"fmt"
	"reflect"
)

func verify(name string, result, expected interface{}) {
	if !reflect.DeepEqual(result, expected) {
		panic(name)
	}
}

func main() {
	for _, t := range tests {
		verify(t.name, t.result, t.expected)
	}
	verifyStruct()
	verifyInterface()
	verifyType()
}

var (
	zero int = 0
	one  int = 1
)

var tests = []struct {
	name             string
	result, expected interface{}
}{
	{"bool a", append([]bool{}), []bool{}},
	{"bool b", append([]bool{}, true), []bool{true}},
	{"bool c", append([]bool{}, true, false, true, true), []bool{true, false, true, true}},

	{"bool d", append([]bool{true, false, true}), []bool{true, false, true}},
	{"bool e", append([]bool{true, false, true}, false), []bool{true, false, true, false}},
	{"bool f", append([]bool{true, false, true}, false, false, false), []bool{true, false, true, false, false, false}},

	{"bool g", append([]bool{}, []bool{true}...), []bool{true}},
	{"bool h", append([]bool{}, []bool{true, false, true, false}...), []bool{true, false, true, false}},

	{"bool i", append([]bool{true, false, true}, []bool{true}...), []bool{true, false, true, true}},
	{"bool j", append([]bool{true, false, true}, []bool{true, true, true}...), []bool{true, false, true, true, true, true}},

	{"byte a", append([]byte{}), []byte{}},
	{"byte b", append([]byte{}, 0), []byte{0}},
	{"byte c", append([]byte{}, 0, 1, 2, 3), []byte{0, 1, 2, 3}},

	{"byte d", append([]byte{0, 1, 2}), []byte{0, 1, 2}},
	{"byte e", append([]byte{0, 1, 2}, 3), []byte{0, 1, 2, 3}},
	{"byte f", append([]byte{0, 1, 2}, 3, 4, 5), []byte{0, 1, 2, 3, 4, 5}},

	{"byte g", append([]byte{}, []byte{0}...), []byte{0}},
	{"byte h", append([]byte{}, []byte{0, 1, 2, 3}...), []byte{0, 1, 2, 3}},

	{"byte i", append([]byte{0, 1, 2}, []byte{3}...), []byte{0, 1, 2, 3}},
	{"byte j", append([]byte{0, 1, 2}, []byte{3, 4, 5}...), []byte{0, 1, 2, 3, 4, 5}},

	{"bytestr a", append([]byte{}, "0"...), []byte("0")},
	{"bytestr b", append([]byte{}, "0123"...), []byte("0123")},

	{"bytestr c", append([]byte("012"), "3"...), []byte("0123")},
	{"bytestr d", append([]byte("012"), "345"...), []byte("012345")},

	{"int16 a", append([]int16{}), []int16{}},
	{"int16 b", append([]int16{}, 0), []int16{0}},
	{"int16 c", append([]int16{}, 0, 1, 2, 3), []int16{0, 1, 2, 3}},

	{"int16 d", append([]int16{0, 1, 2}), []int16{0, 1, 2}},
	{"int16 e", append([]int16{0, 1, 2}, 3), []int16{0, 1, 2, 3}},
	{"int16 f", append([]int16{0, 1, 2}, 3, 4, 5), []int16{0, 1, 2, 3, 4, 5}},

	{"int16 g", append([]int16{}, []int16{0}...), []int16{0}},
	{"int16 h", append([]int16{}, []int16{0, 1, 2, 3}...), []int16{0, 1, 2, 3}},

	{"int16 i", append([]int16{0, 1, 2}, []int16{3}...), []int16{0, 1, 2, 3}},
	{"int16 j", append([]int16{0, 1, 2}, []int16{3, 4, 5}...), []int16{0, 1, 2, 3, 4, 5}},

	{"uint32 a", append([]uint32{}), []uint32{}},
	{"uint32 b", append([]uint32{}, 0), []uint32{0}},
	{"uint32 c", append([]uint32{}, 0, 1, 2, 3), []uint32{0, 1, 2, 3}},

	{"uint32 d", append([]uint32{0, 1, 2}), []uint32{0, 1, 2}},
	{"uint32 e", append([]uint32{0, 1, 2}, 3), []uint32{0, 1, 2, 3}},
	{"uint32 f", append([]uint32{0, 1, 2}, 3, 4, 5), []uint32{0, 1, 2, 3, 4, 5}},

	{"uint32 g", append([]uint32{}, []uint32{0}...), []uint32{0}},
	{"uint32 h", append([]uint32{}, []uint32{0, 1, 2, 3}...), []uint32{0, 1, 2, 3}},

	{"uint32 i", append([]uint32{0, 1, 2}, []uint32{3}...), []uint32{0, 1, 2, 3}},
	{"uint32 j", append([]uint32{0, 1, 2}, []uint32{3, 4, 5}...), []uint32{0, 1, 2, 3, 4, 5}},

	{"float64 a", append([]float64{}), []float64{}},
	{"float64 b", append([]float64{}, 0), []float64{0}},
	{"float64 c", append([]float64{}, 0, 1, 2, 3), []float64{0, 1, 2, 3}},

	{"float64 d", append([]float64{0, 1, 2}), []float64{0, 1, 2}},
	{"float64 e", append([]float64{0, 1, 2}, 3), []float64{0, 1, 2, 3}},
	{"float64 f", append([]float64{0, 1, 2}, 3, 4, 5), []float64{0, 1, 2, 3, 4, 5}},

	{"float64 g", append([]float64{}, []float64{0}...), []float64{0}},
	{"float64 h", append([]float64{}, []float64{0, 1, 2, 3}...), []float64{0, 1, 2, 3}},

	{"float64 i", append([]float64{0, 1, 2}, []float64{3}...), []float64{0, 1, 2, 3}},
	{"float64 j", append([]float64{0, 1, 2}, []float64{3, 4, 5}...), []float64{0, 1, 2, 3, 4, 5}},

	{"complex128 a", append([]complex128{}), []complex128{}},
	{"complex128 b", append([]complex128{}, 0), []complex128{0}},
	{"complex128 c", append([]complex128{}, 0, 1, 2, 3), []complex128{0, 1, 2, 3}},

	{"complex128 d", append([]complex128{0, 1, 2}), []complex128{0, 1, 2}},
	{"complex128 e", append([]complex128{0, 1, 2}, 3), []complex128{0, 1, 2, 3}},
	{"complex128 f", append([]complex128{0, 1, 2}, 3, 4, 5), []complex128{0, 1, 2, 3, 4, 5}},

	{"complex128 g", append([]complex128{}, []complex128{0}...), []complex128{0}},
	{"complex128 h", append([]complex128{}, []complex128{0, 1, 2, 3}...), []complex128{0, 1, 2, 3}},

	{"complex128 i", append([]complex128{0, 1, 2}, []complex128{3}...), []complex128{0, 1, 2, 3}},
	{"complex128 j", append([]complex128{0, 1, 2}, []complex128{3, 4, 5}...), []complex128{0, 1, 2, 3, 4, 5}},

	{"string a", append([]string{}), []string{}},
	{"string b", append([]string{}, "0"), []string{"0"}},
	{"string c", append([]string{}, "0", "1", "2", "3"), []string{"0", "1", "2", "3"}},

	{"string d", append([]string{"0", "1", "2"}), []string{"0", "1", "2"}},
	{"string e", append([]string{"0", "1", "2"}, "3"), []string{"0", "1", "2", "3"}},
	{"string f", append([]string{"0", "1", "2"}, "3", "4", "5"), []string{"0", "1", "2", "3", "4", "5"}},

	{"string g", append([]string{}, []string{"0"}...), []string{"0"}},
	{"string h", append([]string{}, []string{"0", "1", "2", "3"}...), []string{"0", "1", "2", "3"}},

	{"string i", append([]string{"0", "1", "2"}, []string{"3"}...), []string{"0", "1", "2", "3"}},
	{"string j", append([]string{"0", "1", "2"}, []string{"3", "4", "5"}...), []string{"0", "1", "2", "3", "4", "5"}},

	{"make a", append([]string{}, make([]string, 0)...), []string{}},
	{"make b", append([]string(nil), make([]string, 0)...), []string(nil)},

	{"make c", append([]struct{}{}, make([]struct{}, 0)...), []struct{}{}},
	{"make d", append([]struct{}{}, make([]struct{}, 2)...), make([]struct{}, 2)},

	{"make e", append([]int{0, 1}, make([]int, 0)...), []int{0, 1}},
	{"make f", append([]int{0, 1}, make([]int, 2)...), []int{0, 1, 0, 0}},

	{"make g", append([]*int{&zero, &one}, make([]*int, 0)...), []*int{&zero, &one}},
	{"make h", append([]*int{&zero, &one}, make([]*int, 2)...), []*int{&zero, &one, nil, nil}},
}

func verifyStruct() {
	type T struct {
		a, b, c string
	}
	type S []T
	e := make(S, 100)
	for i := range e {
		e[i] = T{"foo", fmt.Sprintf("%d", i), "bar"}
	}

	verify("struct a", append(S{}), S{})
	verify("struct b", append(S{}, e[0]), e[0:1])
	verify("struct c", append(S{}, e[0], e[1], e[2]), e[0:3])

	verify("struct d", append(e[0:1]), e[0:1])
	verify("struct e", append(e[0:1], e[1]), e[0:2])
	verify("struct f", append(e[0:1], e[1], e[2], e[3]), e[0:4])

	verify("struct g", append(e[0:3]), e[0:3])
	verify("struct h", append(e[0:3], e[3]), e[0:4])
	verify("struct i", append(e[0:3], e[3], e[4], e[5], e[6]), e[0:7])

	for i := range e {
		verify("struct j", append(S{}, e[0:i]...), e[0:i])
		input := make(S, i)
		copy(input, e[0:i])
		verify("struct k", append(input, e[i:]...), e)
		verify("struct k - input modified", input, e[0:i])
	}

	s := make(S, 10, 20)
	r := make(S, len(s)+len(e))
	for i, x := range e {
		r[len(s)+i] = x
	}
	verify("struct l", append(s), s)
	verify("struct m", append(s, e...), r)
}

func verifyInterface() {
	type T interface{}
	type S []T
	e := make(S, 100)
	for i := range e {
		switch i % 4 {
		case 0:
			e[i] = i
		case 1:
			e[i] = "foo"
		case 2:
			e[i] = fmt.Sprintf("%d", i)
		case 3:
			e[i] = float64(i)
		}
	}

	verify("interface a", append(S{}), S{})
	verify("interface b", append(S{}, e[0]), e[0:1])
	verify("interface c", append(S{}, e[0], e[1], e[2]), e[0:3])

	verify("interface d", append(e[0:1]), e[0:1])
	verify("interface e", append(e[0:1], e[1]), e[0:2])
	verify("interface f", append(e[0:1], e[1], e[2], e[3]), e[0:4])

	verify("interface g", append(e[0:3]), e[0:3])
	verify("interface h", append(e[0:3], e[3]), e[0:4])
	verify("interface i", append(e[0:3], e[3], e[4], e[5], e[6]), e[0:7])

	for i := range e {
		verify("interface j", append(S{}, e[0:i]...), e[0:i])
		input := make(S, i)
		copy(input, e[0:i])
		verify("interface k", append(input, e[i:]...), e)
		verify("interface k - input modified", input, e[0:i])
	}

	s := make(S, 10, 20)
	r := make(S, len(s)+len(e))
	for i, x := range e {
		r[len(s)+i] = x
	}
	verify("interface l", append(s), s)
	verify("interface m", append(s, e...), r)
}

type T1 []int
type T2 []int

func verifyType() {
	// The second argument to append has type []E where E is the
	// element type of the first argument.  Test that the compiler
	// accepts two slice types that meet that requirement but are
	// not assignment compatible.  The return type of append is
	// the type of the first argument.
	t1 := T1{1}
	t2 := T2{2}
	verify("T1", append(t1, t2...), T1{1, 2})
}

```
## argMethods
```go
package main

func main() {
	d := &Decoder{}
	d2 := &Decoder2{}
	if d.help != 0.0 {
		panic("invalid value: d.help")
	}
	if d.name() != "test" {
		panic("invalid value: d.name()")
	}
	if d2.name != 0 {
		panic("invalid value: d2.name")
	}
}

type Decoder struct {
	a stack2
	stack
	help float64
}

type stack2 struct {
	name bool
}

type stack struct {
	name int
}

func (stack) help() {}

func (d *Decoder) name() string {
	return "test"
}

type Decoder2 struct {
	a stack2
	stack
}

```
## assigninitptrvar
```go
package main

func main() {
	for i := 0; i < 1; i++ {
		if &i != &i {
			panic("ptrs not equal")
		}
	}

	switch i := 10; i := any(i).(type) {
	case int:
		if &i != &i {
			panic("ptrs not equal")
		}
	}
	switch i := 10; i {
	case 10:
		if &i != &i {
			panic("ptrs not equal")
		}
	}
	if i := 0; i == 0 {
		if &i != &i {
			panic("ptrs not equal")
		}
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

var i8 int8
var u8 uint8
var i16 int16
var u16 uint16
var i32 int32
var u32 uint32
var i64 int64
var u64 uint64
var f32 float32
var f64 float64

type big float64

type t struct {
	from, to int
	val      big
}

const (
	ti8 = iota + 1
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

var x = []t{

	/* value good in all types (10) */
	{ti8, ti8, 10}, {ti8, tu8, 10}, {ti8, ti16, 10}, {ti8, tu16, 10},
	{ti8, ti32, 10}, {ti8, tu32, 10}, {ti8, ti64, 10}, {ti8, tu64, 10},
	{ti8, tf32, 10}, {ti8, tf64, 10},

	{tu8, ti8, 10}, {tu8, tu8, 10}, {tu8, ti16, 10}, {tu8, tu16, 10},
	{tu8, ti32, 10}, {tu8, tu32, 10}, {tu8, ti64, 10}, {tu8, tu64, 10},
	{tu8, tf32, 10}, {tu8, tf64, 10},

	{ti16, ti8, 10}, {ti16, tu8, 10}, {ti16, ti16, 10}, {ti16, tu16, 10},
	{ti16, ti32, 10}, {ti16, tu32, 10}, {ti16, ti64, 10}, {ti16, tu64, 10},
	{ti16, tf32, 10}, {ti16, tf64, 10},

	{tu16, ti8, 10}, {tu16, tu8, 10}, {tu16, ti16, 10}, {tu16, tu16, 10},
	{tu16, ti32, 10}, {tu16, tu32, 10}, {tu16, ti64, 10}, {tu16, tu64, 10},
	{tu16, tf32, 10}, {tu16, tf64, 10},

	{ti32, ti8, 10}, {ti32, tu8, 10}, {ti32, ti16, 10}, {ti32, tu16, 10},
	{ti32, ti32, 10}, {ti32, tu32, 10}, {ti32, ti64, 10}, {ti32, tu64, 10},
	{ti32, tf32, 10}, {ti32, tf64, 10},

	{tu32, ti8, 10}, {tu32, tu8, 10}, {tu32, ti16, 10}, {tu32, tu16, 10},
	{tu32, ti32, 10}, {tu32, tu32, 10}, {tu32, ti64, 10}, {tu32, tu64, 10},
	{tu32, tf32, 10}, {tu32, tf64, 10},

	{ti64, ti8, 10}, {ti64, tu8, 10}, {ti64, ti16, 10}, {ti64, tu16, 10},
	{ti64, ti32, 10}, {ti64, tu32, 10}, {ti64, ti64, 10}, {ti64, tu64, 10},
	{ti64, tf32, 10}, {ti64, tf64, 10},

	{tu64, ti8, 10}, {tu64, tu8, 10}, {tu64, ti16, 10}, {tu64, tu16, 10},
	{tu64, ti32, 10}, {tu64, tu32, 10}, {tu64, ti64, 10}, {tu64, tu64, 10},
	{tu64, tf32, 10}, {tu64, tf64, 10},

	{tf32, ti8, 10}, {tf32, tu8, 10}, {tf32, ti16, 10}, {tf32, tu16, 10},
	{tf32, ti32, 10}, {tf32, tu32, 10}, {tf32, ti64, 10}, {tf32, tu64, 10},
	{tf32, tf32, 10}, {tf32, tf64, 10},

	{tf64, ti8, 10}, {tf64, tu8, 10}, {tf64, ti16, 10}, {tf64, tu16, 10},
	{tf64, ti32, 10}, {tf64, tu32, 10}, {tf64, ti64, 10}, {tf64, tu64, 10},
	{tf64, tf32, 10}, {tf64, tf64, 10},

	/* value good in all signed types (-4) */
	{ti8, ti8, -4}, {ti8, ti16, -4},
	{ti8, ti32, -4}, {ti8, ti64, -4},
	{ti8, tf32, -4}, {ti8, tf64, -4},

	{ti16, ti8, -4}, {ti16, ti16, -4},
	{ti16, ti32, -4}, {ti16, ti64, -4},
	{ti16, tf32, -4},

	{ti32, ti8, -4}, {ti32, ti16, -4},
	{ti32, ti32, -4}, {ti32, ti64, -4},
	{ti32, tf32, -4}, {ti32, tf64, -4},

	{ti64, ti8, -4}, {ti64, ti16, -4},
	{ti64, ti32, -4}, {ti64, ti64, -4},
	{ti64, tf32, -4},

	{tf32, ti8, -4}, {tf32, ti16, -4},
	{tf32, ti32, -4}, {tf32, ti64, -4},
	{tf32, tf32, -4},

	{tf64, ti8, -4}, {tf64, ti16, -4},
	{tf64, ti32, -4}, {tf64, ti64, -4},
	{tf64, tf32, -4}, {tf64, tf64, -4},

	/* value good in u8 and up (175) */
	{tu8, tu8, 175}, {tu8, ti16, 175}, {tu8, tu16, 175},
	{tu8, ti32, 175}, {tu8, tu32, 175}, {tu8, ti64, 175}, {tu8, tu64, 175},
	{tu8, tf32, 175}, {tu8, tf64, 175},

	{ti16, tu8, 175}, {ti16, ti16, 175}, {ti16, tu16, 175},
	{ti16, ti32, 175}, {ti16, tu32, 175}, {ti16, ti64, 175}, {ti16, tu64, 175},
	{ti16, tf32, 175}, {ti16, tf64, 175},

	{tu16, tu8, 175}, {tu16, ti16, 175}, {tu16, tu16, 175},
	{tu16, ti32, 175}, {tu16, tu32, 175}, {tu16, ti64, 175}, {tu16, tu64, 175},
	{tu16, tf32, 175}, {tu16, tf64, 175},

	{ti32, tu8, 175}, {ti32, ti16, 175}, {ti32, tu16, 175},
	{ti32, ti32, 175}, {ti32, tu32, 175}, {ti32, ti64, 175}, {ti32, tu64, 175},
	{ti32, tf32, 175}, {ti32, tf64, 175},

	{tu32, tu8, 175}, {tu32, ti16, 175}, {tu32, tu16, 175},
	{tu32, ti32, 175}, {tu32, tu32, 175}, {tu32, ti64, 175}, {tu32, tu64, 175},
	{tu32, tf32, 175}, {tu32, tf64, 175},

	{ti64, tu8, 175}, {ti64, ti16, 175}, {ti64, tu16, 175},
	{ti64, ti32, 175}, {ti64, tu32, 175}, {ti64, ti64, 175}, {ti64, tu64, 175},
	{ti64, tf32, 175}, {ti64, tf64, 175},

	{tu64, tu8, 175}, {tu64, ti16, 175}, {tu64, tu16, 175},
	{tu64, ti32, 175}, {tu64, tu32, 175}, {tu64, ti64, 175}, {tu64, tu64, 175},
	{tu64, tf32, 175}, {tu64, tf64, 175},

	{tf32, tu8, 175}, {tf32, ti16, 175}, {tf32, tu16, 175},
	{tf32, ti32, 175}, {tf32, tu32, 175}, {tf32, ti64, 175}, {tf32, tu64, 175},
	{tf32, tf32, 175}, {tf32, tf64, 175},

	{tf64, tu8, 175}, {tf64, ti16, 175}, {tf64, tu16, 175},
	{tf64, ti32, 175}, {tf64, tu32, 175}, {tf64, ti64, 175}, {tf64, tu64, 175},
	{tf64, tf32, 175}, {tf64, tf64, 175},

	/* value good in u16 and up (41259) */
	{tu16, tu16, 41259},
	{tu16, ti32, 41259}, {tu16, ti64, 41259}, {tu16, tu64, 41259},
	{tu16, tf32, 41259}, {tu16, tf64, 41259},

	{ti32, tu16, 41259},
	{ti32, ti32, 41259}, {ti32, tu32, 41259}, {ti32, ti64, 41259}, {ti32, tu64, 41259},
	{ti32, tf32, 41259}, {ti32, tf64, 41259},

	{tu32, tu16, 41259},
	{tu32, ti32, 41259}, {tu32, tu32, 41259}, {tu32, ti64, 41259}, {tu32, tu64, 41259},
	{tu32, tf32, 41259}, {tu32, tf64, 41259},

	{ti64, tu16, 41259},
	{ti64, ti32, 41259}, {ti64, tu32, 41259}, {ti64, ti64, 41259}, {ti64, tu64, 41259},
	{ti64, tf32, 41259}, {ti64, tf64, 41259},

	{tu64, tu16, 41259},
	{tu64, ti32, 41259}, {tu64, tu32, 41259}, {tu64, ti64, 41259}, {tu64, tu64, 41259},
	{tu64, tf32, 41259}, {tu64, tf64, 41259},

	{tf32, tu16, 41259},
	{tf32, ti32, 41259}, {tf32, tu32, 41259}, {tf32, ti64, 41259}, {tf32, tu64, 41259},
	{tf32, tf32, 41259}, {tf32, tf64, 41259},

	{tf64, tu16, 41259},
	{tf64, ti32, 41259}, {tf64, tu32, 41259}, {tf64, ti64, 41259}, {tf64, tu64, 41259},
	{tf64, tf32, 41259}, {tf64, tf64, 41259},

	/* value good in u32 and up (3758096384) */
	{tu32, tu32, 3758096384}, {tu32, ti64, 3758096384}, {tu32, tu64, 3758096384},
	{tu32, tf32, 3758096384}, {tu32, tf64, 3758096384},

	{ti64, tu32, 3758096384}, {ti64, ti64, 3758096384}, {ti64, tu64, 3758096384},
	{ti64, tf32, 3758096384}, {ti64, tf64, 3758096384},

	{tu64, tu32, 3758096384}, {tu64, ti64, 3758096384}, {tu64, tu64, 3758096384},
	{tu64, tf32, 3758096384}, {tu64, tf64, 3758096384},

	{tf32, tu32, 3758096384}, {tf32, ti64, 3758096384}, {tf32, tu64, 3758096384},
	{tf32, tf32, 3758096384}, {tf32, tf64, 3758096384},

	{tf64, tu32, 3758096384}, {tf64, ti64, 3758096384}, {tf64, tu64, 3758096384},
	{tf64, tf32, 3758096384}, {tf64, tf64, 3758096384},

	/* value good in u64 and up (16717361816799281152) */
	{tu64, tu64, 16717361816799281152},
	{tu64, tf32, 16717361816799281152}, {tu64, tf64, 16717361816799281152},

	{tf32, tu64, 16717361816799281152},
	{tf32, tf32, 16717361816799281152}, {tf32, tf64, 16717361816799281152},

	{tf64, tu64, 16717361816799281152},
	{tf64, tf32, 16717361816799281152}, {tf64, tf64, 16717361816799281152},
}

func main() {
	for i := 0; i < len(x); i++ {
		v := x[i].val  // input value
		w := big(0)    // output value
		f := x[i].from // input type
		t := x[i].to   // output type

		i8 = 0
		u8 = 0
		i16 = 0
		u16 = 0
		i32 = 0
		u32 = 0
		i64 = 0
		u64 = 0
		f32 = 0
		f64 = 0

		switch f*100 + t {
		default:
			println("missing case", i, v, f, t)
			w = v

		case ti8*100 + ti8:
			i8 = int8(v)
			i8 = int8(i8)
			w = big(i8)
		case ti8*100 + tu8:
			i8 = int8(v)
			u8 = uint8(i8)
			w = big(u8)
		case ti8*100 + ti16:
			i8 = int8(v)
			i16 = int16(i8)
			w = big(i16)
		case ti8*100 + tu16:
			i8 = int8(v)
			u16 = uint16(i8)
			w = big(u16)
		case ti8*100 + ti32:
			i8 = int8(v)
			i32 = int32(i8)
			w = big(i32)
		case ti8*100 + tu32:
			i8 = int8(v)
			u32 = uint32(i8)
			w = big(u32)
		case ti8*100 + ti64:
			i8 = int8(v)
			i64 = int64(i8)
			w = big(i64)
		case ti8*100 + tu64:
			i8 = int8(v)
			u64 = uint64(i8)
			w = big(u64)
		case ti8*100 + tf32:
			i8 = int8(v)
			f32 = float32(i8)
			w = big(f32)
		case ti8*100 + tf64:
			i8 = int8(v)
			f64 = float64(i8)
			w = big(f64)

		case tu8*100 + ti8:
			u8 = uint8(v)
			i8 = int8(u8)
			w = big(i8)
		case tu8*100 + tu8:
			u8 = uint8(v)
			u8 = uint8(u8)
			w = big(u8)
		case tu8*100 + ti16:
			u8 = uint8(v)
			i16 = int16(u8)
			w = big(i16)
		case tu8*100 + tu16:
			u8 = uint8(v)
			u16 = uint16(u8)
			w = big(u16)
		case tu8*100 + ti32:
			u8 = uint8(v)
			i32 = int32(u8)
			w = big(i32)
		case tu8*100 + tu32:
			u8 = uint8(v)
			u32 = uint32(u8)
			w = big(u32)
		case tu8*100 + ti64:
			u8 = uint8(v)
			i64 = int64(u8)
			w = big(i64)
		case tu8*100 + tu64:
			u8 = uint8(v)
			u64 = uint64(u8)
			w = big(u64)
		case tu8*100 + tf32:
			u8 = uint8(v)
			f32 = float32(u8)
			w = big(f32)
		case tu8*100 + tf64:
			u8 = uint8(v)
			f64 = float64(u8)
			w = big(f64)

		case ti16*100 + ti8:
			i16 = int16(v)
			i8 = int8(i16)
			w = big(i8)
		case ti16*100 + tu8:
			i16 = int16(v)
			u8 = uint8(i16)
			w = big(u8)
		case ti16*100 + ti16:
			i16 = int16(v)
			i16 = int16(i16)
			w = big(i16)
		case ti16*100 + tu16:
			i16 = int16(v)
			u16 = uint16(i16)
			w = big(u16)
		case ti16*100 + ti32:
			i16 = int16(v)
			i32 = int32(i16)
			w = big(i32)
		case ti16*100 + tu32:
			i16 = int16(v)
			u32 = uint32(i16)
			w = big(u32)
		case ti16*100 + ti64:
			i16 = int16(v)
			i64 = int64(i16)
			w = big(i64)
		case ti16*100 + tu64:
			i16 = int16(v)
			u64 = uint64(i16)
			w = big(u64)
		case ti16*100 + tf32:
			i16 = int16(v)
			f32 = float32(i16)
			w = big(f32)
		case ti16*100 + tf64:
			i16 = int16(v)
			f64 = float64(i16)
			w = big(f64)

		case tu16*100 + ti8:
			u16 = uint16(v)
			i8 = int8(u16)
			w = big(i8)
		case tu16*100 + tu8:
			u16 = uint16(v)
			u8 = uint8(u16)
			w = big(u8)
		case tu16*100 + ti16:
			u16 = uint16(v)
			i16 = int16(u16)
			w = big(i16)
		case tu16*100 + tu16:
			u16 = uint16(v)
			u16 = uint16(u16)
			w = big(u16)
		case tu16*100 + ti32:
			u16 = uint16(v)
			i32 = int32(u16)
			w = big(i32)
		case tu16*100 + tu32:
			u16 = uint16(v)
			u32 = uint32(u16)
			w = big(u32)
		case tu16*100 + ti64:
			u16 = uint16(v)
			i64 = int64(u16)
			w = big(i64)
		case tu16*100 + tu64:
			u16 = uint16(v)
			u64 = uint64(u16)
			w = big(u64)
		case tu16*100 + tf32:
			u16 = uint16(v)
			f32 = float32(u16)
			w = big(f32)
		case tu16*100 + tf64:
			u16 = uint16(v)
			f64 = float64(u16)
			w = big(f64)

		case ti32*100 + ti8:
			i32 = int32(v)
			i8 = int8(i32)
			w = big(i8)
		case ti32*100 + tu8:
			i32 = int32(v)
			u8 = uint8(i32)
			w = big(u8)
		case ti32*100 + ti16:
			i32 = int32(v)
			i16 = int16(i32)
			w = big(i16)
		case ti32*100 + tu16:
			i32 = int32(v)
			u16 = uint16(i32)
			w = big(u16)
		case ti32*100 + ti32:
			i32 = int32(v)
			i32 = int32(i32)
			w = big(i32)
		case ti32*100 + tu32:
			i32 = int32(v)
			u32 = uint32(i32)
			w = big(u32)
		case ti32*100 + ti64:
			i32 = int32(v)
			i64 = int64(i32)
			w = big(i64)
		case ti32*100 + tu64:
			i32 = int32(v)
			u64 = uint64(i32)
			w = big(u64)
		case ti32*100 + tf32:
			i32 = int32(v)
			f32 = float32(i32)
			w = big(f32)
		case ti32*100 + tf64:
			i32 = int32(v)
			f64 = float64(i32)
			w = big(f64)

		case tu32*100 + ti8:
			u32 = uint32(v)
			i8 = int8(u32)
			w = big(i8)
		case tu32*100 + tu8:
			u32 = uint32(v)
			u8 = uint8(u32)
			w = big(u8)
		case tu32*100 + ti16:
			u32 = uint32(v)
			i16 = int16(u32)
			w = big(i16)
		case tu32*100 + tu16:
			u32 = uint32(v)
			u16 = uint16(u32)
			w = big(u16)
		case tu32*100 + ti32:
			u32 = uint32(v)
			i32 = int32(u32)
			w = big(i32)
		case tu32*100 + tu32:
			u32 = uint32(v)
			u32 = uint32(u32)
			w = big(u32)
		case tu32*100 + ti64:
			u32 = uint32(v)
			i64 = int64(u32)
			w = big(i64)
		case tu32*100 + tu64:
			u32 = uint32(v)
			u64 = uint64(u32)
			w = big(u64)
		case tu32*100 + tf32:
			u32 = uint32(v)
			f32 = float32(u32)
			w = big(f32)
		case tu32*100 + tf64:
			u32 = uint32(v)
			f64 = float64(u32)
			w = big(f64)

		case ti64*100 + ti8:
			i64 = int64(v)
			i8 = int8(i64)
			w = big(i8)
		case ti64*100 + tu8:
			i64 = int64(v)
			u8 = uint8(i64)
			w = big(u8)
		case ti64*100 + ti16:
			i64 = int64(v)
			i16 = int16(i64)
			w = big(i16)
		case ti64*100 + tu16:
			i64 = int64(v)
			u16 = uint16(i64)
			w = big(u16)
		case ti64*100 + ti32:
			i64 = int64(v)
			i32 = int32(i64)
			w = big(i32)
		case ti64*100 + tu32:
			i64 = int64(v)
			u32 = uint32(i64)
			w = big(u32)
		case ti64*100 + ti64:
			i64 = int64(v)
			i64 = int64(i64)
			w = big(i64)
		case ti64*100 + tu64:
			i64 = int64(v)
			u64 = uint64(i64)
			w = big(u64)
		case ti64*100 + tf32:
			i64 = int64(v)
			f32 = float32(i64)
			w = big(f32)
		case ti64*100 + tf64:
			i64 = int64(v)
			f64 = float64(i64)
			w = big(f64)

		case tu64*100 + ti8:
			u64 = uint64(v)
			i8 = int8(u64)
			w = big(i8)
		case tu64*100 + tu8:
			u64 = uint64(v)
			u8 = uint8(u64)
			w = big(u8)
		case tu64*100 + ti16:
			u64 = uint64(v)
			i16 = int16(u64)
			w = big(i16)
		case tu64*100 + tu16:
			u64 = uint64(v)
			u16 = uint16(u64)
			w = big(u16)
		case tu64*100 + ti32:
			u64 = uint64(v)
			i32 = int32(u64)
			w = big(i32)
		case tu64*100 + tu32:
			u64 = uint64(v)
			u32 = uint32(u64)
			w = big(u32)
		case tu64*100 + ti64:
			u64 = uint64(v)
			i64 = int64(u64)
			w = big(i64)
		case tu64*100 + tu64:
			u64 = uint64(v)
			u64 = uint64(u64)
			w = big(u64)
		case tu64*100 + tf32:
			u64 = uint64(v)
			f32 = float32(u64)
			w = big(f32)
		case tu64*100 + tf64:
			u64 = uint64(v)
			f64 = float64(u64)
			w = big(f64)

		case tf32*100 + ti8:
			f32 = float32(v)
			i8 = int8(f32)
			w = big(i8)
		case tf32*100 + tu8:
			f32 = float32(v)
			u8 = uint8(f32)
			w = big(u8)
		case tf32*100 + ti16:
			f32 = float32(v)
			i16 = int16(f32)
			w = big(i16)
		case tf32*100 + tu16:
			f32 = float32(v)
			u16 = uint16(f32)
			w = big(u16)
		case tf32*100 + ti32:
			f32 = float32(v)
			i32 = int32(f32)
			w = big(i32)
		case tf32*100 + tu32:
			f32 = float32(v)
			u32 = uint32(f32)
			w = big(u32)
		case tf32*100 + ti64:
			f32 = float32(v)
			i64 = int64(f32)
			w = big(i64)
		case tf32*100 + tu64:
			f32 = float32(v)
			u64 = uint64(f32)
			w = big(u64)
		case tf32*100 + tf32:
			f32 = float32(v)
			f32 = float32(f32)
			w = big(f32)
		case tf32*100 + tf64:
			f32 = float32(v)
			f64 = float64(f32)
			w = big(f64)

		case tf64*100 + ti8:
			f64 = float64(v)
			i8 = int8(f64)
			w = big(i8)
		case tf64*100 + tu8:
			f64 = float64(v)
			u8 = uint8(f64)
			w = big(u8)
		case tf64*100 + ti16:
			f64 = float64(v)
			i16 = int16(f64)
			w = big(i16)
		case tf64*100 + tu16:
			f64 = float64(v)
			u16 = uint16(f64)
			w = big(u16)
		case tf64*100 + ti32:
			f64 = float64(v)
			i32 = int32(f64)
			w = big(i32)
		case tf64*100 + tu32:
			f64 = float64(v)
			u32 = uint32(f64)
			w = big(u32)
		case tf64*100 + ti64:
			f64 = float64(v)
			i64 = int64(f64)
			w = big(i64)
		case tf64*100 + tu64:
			f64 = float64(v)
			u64 = uint64(f64)
			w = big(u64)
		case tf64*100 + tf32:
			f64 = float64(v)
			f32 = float32(f64)
			w = big(f32)
		case tf64*100 + tf64:
			f64 = float64(v)
			f64 = float64(f64)
			w = big(f64)
		}
		if v != w {
			println(i, v, w, f, t)
			panic("issue")
		}
	}
}

```
## generic0
```go

package main

func main() {
	m(10)
	m(10.2)
}

func m[T int | float64](x T) T {
	return x + x
}

```
## generic1
```go
package main

type A[T int | float32] struct {
	x T
}

type K[T any] struct {
	y T
}

func (a *A[T]) add() {
	a.x = a.x + 10
}

func main() {
	x := A[int]{}
	x.add()
	_ = x.x

	y := K[struct{}]{}
	_ = y
}

```
## generic2
```go
package main

func main() {
	var z X[int] = 10
	z.test()
	if z != 20 {
		panic("not set")
	}
}

type X[T int | string] int

func (x *X[Tx]) test() {
	_ = make([]Tx, 10)
	*x = 20
}

```
## generic3
```go
package main

func main() {
	if test() != 0.0 || test2() != "" {
		panic("error")
	}
}

func test[t float64]() (s t) {
	return
}

func test2[int string]() (s int) {
	return
}

```
## generic4
```go
package main

func main() {
	s, l := test[string, uint64](true)
	switch interface{}(s).(type) {
	case string:

	default:
		panic("error")
	}
	switch interface{}(l).(type) {
	case uint64:

	default:
		panic("error")
	}
}

func test[t float64 | string, k int32 | uint64](i bool) (s t, l k) {
	return
}

```
## generic5
```go
package main

import "strings"

func main() {
	if !test[strings.Builder]() || test2() {
		panic("fail")
	}
}

func test[T strings.Builder | strings.Reader]() bool {
	return true
}

func test2[T strings.Builder]() bool {
	return false
}

```
## generic6
```go
package main

func main() {
	x := test[int]
	if !x() {
		panic("fail")
	}
}

func test[T int | string]() bool {
	return true
}

```
## generic7
```go
package main

type A[T int64 | float32] int64

func (a *A[T]) add() {}

func main() {
	var x A[int64]
	x = -2147483647 - 2
	if x != -2147483649 {
		panic("incorrect value")
	}
	x.add()
}

```
## generic8
```go
package main

func main() {
	x := printValue[int]
	x(10)
}

func printValue[t int | string](v int) {

}

```
## generic9
```go
package main

func main() {
	f(10, []int{})
}

func f[T int | float32, K []T](t T, k K) {

}

```
## genericAnyCast
```go
package main

type Generic[T any] struct{}

func main() {
	f(new(Generic[int]))
}

func f(a any) {

}

```
## named10
```go
package main

func main() {
	var x X[int] = 10
	var z y = &x
	z.test()
	a := z.(*X[int])
	if *a != 20 {
		panic("wrong value")
	}
}

type X[T int | string] int

func (x *X[Tx]) test() {
	_ = make([]Tx, 10)
	*x = 20
}

type y interface {
	test()
}

```
## nilappend
```go
package main

import "os"

type T struct{}

func main() {
	var e *T
	res := []T{}
	defer func() {
		r := recover()
		if r == nil {
			println("no panic")
			os.Exit(1)
		}
	}()
	res = append(res, *e)
}

```
## ptrrecv1
```go
// run

// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Test simple methods of various types, with pointer and
// value receivers.

package main

type S1 string

func (s *S1) val() int { return 2 }

type t2 struct{ *S1 }

func main() {
	var zps t2
	if zps.val() != 2 {
		println("zps.val:", zps.val())
		panic("fail")aqQconst


		
	}
}

```
## recursiveTypeReflect
```go
package main

import (
	"reflect"
)

type AST struct {
	Num      int
	Children []AST
}

type AST2 []AST2

func newAST(num int, root AST, children ...AST) AST {
	return AST{num, append([]AST{root}, children...)}
}

func main() {
	ast := newAST(1, AST{}, AST{})
	k := reflect.ValueOf(ast).Field(1).Kind()
	if k != 23 {
		println(k)
		panic("invalid value")
	}
	k = reflect.ValueOf(AST2{{}}).Index(0).Kind()
	if k != 23 {
		println(k)
		panic("invalid value")
	}
	k = reflect.ValueOf(ast).Field(1).Index(0).Type().Kind()
	if k != 25 {
		println(k)
		panic("invalid value")
	}
}

```
## reflect0
```go
package main

import "reflect"

type s struct {
	x int
	y int
}

func main() {
	x := s{0, 1}
	y := &x
	value := reflect.ValueOf(y)
	value.Elem().Set(reflect.ValueOf(s{1, 1}))
	if y.x != 1 {
		panic("wrong value")
	}
	y.x = 20
	if value.Elem().Interface().(s).x != 20 {
		panic("wrong value")
	}
}

```
## reflect2
```go
// run

// Copyright 2018 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Issue 23545: gccgo didn't lower array comparison to
// proper equality function in some case.

package main

import "reflect"

func main() {
	a := Get()
	b := dummyID(1234)
	if !reflect.TypeOf(a).AssignableTo(reflect.TypeOf(b)) {
		panic("array not assignableTo")
	}
}

func dummyID(x int) [Size]interface{} {
	var out [Size]interface{}
	out[0] = x
	return out
}

const Size = 32

type OutputID [Size]interface{}

//go:noinline
func Get() OutputID {
	return dummyID(1234)
}

```
## reflectcall1
```go
package main

import "reflect"

var count = 0

func main() {
	str := "hello world"
	output := reflect.ValueOf(f).Call([]reflect.Value{reflect.ValueOf(str)})
	if len(output) != 1 {
		panic("len(output) != 1")
	}
	if output[0].Kind() != reflect.String {
		panic("output[0].Kind() != reflect.String")
	}
	if output[0].String() != str {
		panic("output[0].String() != str")
	}
	if count != 1 {
		panic("not called")
	}
}

func f(x string) string {
	count++
	println(x)
	return x
}

```
## time0
```go
package main

import (
	"strconv"
	"time"
)

func main() {
	units := []string{"ns", "µs", "ms", "s", "m", "h"}
	for i := 1; i < 10; i++ {
		for _, unit := range units {
			s := strconv.Itoa(i) + unit
			d, _ := time.ParseDuration(s)
			x := Duration(d)
			if s != x.String()[0:len(s)] {
				panic(s + " does not equal output: " + x.String())
			}
		}
	}
}

type Duration int

func (d Duration) String() string {
	// Largest time is 2540400h10m10.000000000s
	var buf [32]byte
	w := len(buf)

	u := uint64(d)
	neg := d < 0
	if neg {
		u = -u
	}

	if u < uint64(Second) {
		// Special case: if duration is smaller than a second,
		// use smaller units, like 1.2ms
		var prec int
		w--
		buf[w] = 's'
		w--
		switch {
		case u == 0:
			return "0s"
		case u < uint64(Microsecond):
			// print nanoseconds
			prec = 0
			buf[w] = 'n'
		case u < uint64(Millisecond):
			// print microseconds
			prec = 3
			// U+00B5 'µ' micro sign == 0xC2 0xB5
			w-- // Need room for two bytes.
			copy(buf[w:], "µ")
		default:
			// print milliseconds
			prec = 6
			buf[w] = 'm'
		}
		w, u = fmtFrac(buf[:w], u, prec)
		w = fmtInt(buf[:w], u)
	} else {
		w--
		buf[w] = 's'

		w, u = fmtFrac(buf[:w], u, 9)

		// u is now integer seconds
		w = fmtInt(buf[:w], u%60)
		u /= 60

		// u is now integer minutes
		if u > 0 {
			w--
			buf[w] = 'm'
			w = fmtInt(buf[:w], u%60)
			u /= 60

			// u is now integer hours
			// Stop at hours because days can be different lengths.
			if u > 0 {
				w--
				buf[w] = 'h'
				w = fmtInt(buf[:w], u)
			}
		}
	}

	if neg {
		w--
		buf[w] = '-'
	}

	return string(buf[w:])
}

// fmtFrac formats the fraction of v/10**prec (e.g., ".12345") into the
// tail of buf, omitting trailing zeros. It omits the decimal
// point too when the fraction is 0. It returns the index where the
// output bytes begin and the value v/10**prec.
func fmtFrac(buf []byte, v uint64, prec int) (nw int, nv uint64) {
	// Omit trailing zeros up to and including decimal point.
	w := len(buf)
	print := false
	for i := 0; i < prec; i++ {
		digit := v % 10
		print = print || digit != 0
		if print {
			w--
			buf[w] = byte(digit) + '0'
		}
		v /= 10
	}
	if print {
		w--
		buf[w] = '.'
	}
	return w, v
}

// fmtInt formats v into the tail of buf.
// It returns the index where the output begins.
func fmtInt(buf []byte, v uint64) int {
	w := len(buf)
	if v == 0 {
		w--
		buf[w] = '0'
	} else {
		for v > 0 {
			w--
			buf[w] = byte(v%10) + '0'
			v /= 10
		}
	}
	return w
}

const (
	Nanosecond  Duration = 1
	Microsecond          = 1000 * Nanosecond
	Millisecond          = 1000 * Microsecond
	Second               = 1000 * Millisecond
	Minute               = 60 * Second
	Hour                 = 60 * Minute
)

```
## unsafe1
```go
package main

import "unsafe"

func main() {
	v := value{}
	v.getBytes()
	v.getIface()
}

// DoNotCompare can be embedded in a struct to prevent comparability.
type DoNotCompare [0]func()

type value struct {
	DoNotCompare // 0B

	// typ stores the type of the value as a pointer to the Go type.
	typ unsafe.Pointer // 8B

	// ptr stores the data pointer for a String, Bytes, or interface value.
	ptr unsafe.Pointer // 8B

	// num stores a Bool, Int32, Int64, Uint32, Uint64, Float32, Float64, or
	// Enum value as a raw uint64.
	//
	// It is also used to store the length of a String or Bytes value;
	// the capacity is ignored.
	num uint64 // 8B
}

type ifaceHeader struct {
	Type unsafe.Pointer
	Data unsafe.Pointer
}

type sliceHeader struct {
	Data unsafe.Pointer
	Len  int
	Cap  int
}

func (v value) getBytes() (x []byte) {
	*(*sliceHeader)(unsafe.Pointer(&x)) = sliceHeader{Data: v.ptr, Len: int(v.num), Cap: int(v.num)}
	return x
}

func (v value) getIface() (x any) {
	*(*ifaceHeader)(unsafe.Pointer(&x)) = ifaceHeader{Type: v.typ, Data: v.ptr}
	return x
}

```
## unsafeOffset
```go
package main

import "unsafe"

func main() {
	s := struct{ f string }{"hello"}
	println(uintptr(unsafe.Pointer(&s))+unsafe.Offsetof(s.f) == uintptr(unsafe.Pointer(&s.f)))
}

```
## vars1
```go
package main

func main() {
	var (
		buf    int = 10
		logger     = test(&buf)
	)
	_ = logger
}

func test(i *int) int {
	return *i
}

```
