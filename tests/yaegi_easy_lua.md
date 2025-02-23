# yaegi_easy
## a1
```go
package main

func main() {
	a := [6]int{1, 2, 3, 4, 5, 6}
	println(a[1]) // 2
	for i, v := range a {
		println(v)
		if i == 3 {
			break
		}
	}
}

// Output:
// 2
// 1
// 2
// 3
// 4

```
## a10
```go
package main

type Sample struct {
	Name string
}

var samples = []Sample{}

func f(i int) {
	println(samples[i].Name)
}

func main() {
	samples = append(samples, Sample{Name: "test"})
	f(0)
}

// Output:
// test

```
## a11
```go
package main

func main() {
	a := []int{1, 2, 3, 4}
	for _, v := range a {
		println(v)
	}
}

// Output:
// 1
// 2
// 3
// 4

```
## a13
```go
package main

type T1 struct {
	num []int
}

func main() {
	a := T1{[]int{1, 3, 5}}
	for i, v := range a.num {
		println(i, v)
	}
}

// Output:
// 0 1
// 1 3
// 2 5

```
## a16
```go
package main

func main() {
	a := [6]int{1, 2, 3, 4, 5, 6}
	println(a[1]) // 2
	for k := 0; k < 2; k++ {
		for i, v := range a {
			println(v)
			if i == 3 {
				break
			}
		}
	}
}

// Output:
// 2
// 1
// 2
// 3
// 4
// 1
// 2
// 3
// 4

```
## a18
```go
package main

func main() {
	a := []int64{1, 2, 3, 4}
	for _, v := range a {
		println(v)
	}
}

// Output:
// 1
// 2
// 3
// 4

```
## a19
```go
package main

func main() {
	var buf [bsize]byte
	println(len(buf))
}

const bsize = 10

// Output:
// 10

```
## a2
```go
package main

func main() {
	a := [6]int{1, 2, 3, 4, 5, 6}
	a[1] = 5
	println(a[1]) // 2
	for i, v := range a {
		println(v)
		if i == 3 {
			break
		}
	}
}

// Output:
// 5
// 1
// 5
// 3
// 4

```
## a22
```go
package main

func main() {
	a := [256]int{}
	var b uint8 = 12
	a[b] = 1
	println(a[b])
}

// Output:
// 1

```
## a26
```go
package main

func main() {
	a := [3]int{1, 2, 3}
	b := [3]int{1, 2, 3}
	println(a == b)
}

// Output:
// true

```
## a30
```go
package main

func main() {
	for range []struct{}{} {
	}
	println("ok")
}

// Output:
// ok

```
## a31
```go
package main

func main() {
	for range []int{0, 1, 2} {
		print("hello ")
	}
	println("")
}

// Output:
// hello hello hello

```
## a41
```go
package main

var a = [...]bool{true, true}

func main() {
	println(a[0] && true)
}

// Output:
// true

```
## a44
```go
package main

var a = [max]int{}

const max = 32

func main() {
	println(len(a))
}

// Output:
// 32

```
## add0
```go
package main

func main() {
	var a interface{} = 2 + 5
	println(a.(int))
}

// Output:
// 7

```
## add1
```go
package main

func main() {
	b := 2 // int

	var c int = 5 + b
	println(c)

	var d int32 = 6 + int32(b)
	println(d)

	var a interface{} = 7 + b
	println(a.(int))

	var e int32 = 2
	var f interface{} = 8 + e
	println(f.(int32))

	a = 9 + e
	println(a.(int32))

	var g int = 2
	a = 10 + g
	println(a.(int))

	// multiple assignment
	var foo interface{}
	foo, a = "hello", 11 + g
	println(a.(int))
	println(foo.(string))
}

// Output:
// 7
// 8
// 9
// 10
// 11
// 12
// 13
// hello

```
## add2
```go
package main

type iface interface{}

func main() {
	b := 2
	var a iface = 5 + b
	println(a.(int))
}

// Output:
// 7

```
## and
```go
package main

func main() {
	a, b := 1, 2

	if f1() && f2() {
		println(a, b)
	}
}

func f1() bool {
	println("f1")
	//return true
	return 0 == 0
}

func f2() bool {
	println("f2")
	//return false
	return 1 == 0
}

// Output:
// f1
// f2

```
## and0
```go
package main

func main() {
	a, b := 1, 2

	if f2() && f1() {
		println(a, b)
	}
}

func f1() bool {
	println("f1")
	return true
}

func f2() bool {
	println("f2")
	return false
}

// Output:
// f2

```
## and1
```go
package main

func main() {
	a := f2() && f1()
	println(a)
}

func f1() bool {
	println("f1")
	return true
}

func f2() bool {
	println("f2")
	return false
}

// Output:
// f2
// false

```
## and2
```go
package main

func f() bool {
	println("in f")
	return true
}

func main() {
	var (
		cl = 0
		ct = "some text"
		ce = ""
	)
	if ce == "" && (cl == 0 || cl > 1000) && (ct == "" || f()) {
		println("ok")
	}
}

// Output:
// in f
// ok

```
## and3
```go
package main

var a = true && true

func main() {
	println(a)
}

// Output:
// true

```
## assert4
```go
package main

var cc interface{} = 2
var dd = cc.(int)

func main() {
	println(dd)
}

// Output:
// 2

```
## assign
```go
package main

func main() {
	a, b := 1, 2 // Multiple assign
	println(a, b)
}

// Output:
// 1 2

```
## assign10
```go
package main

func main() {
	var a uint
	a = 1 + 2
	println(a)
}

// Output:
// 3

```
## assign14
```go
package main

var optionsG map[string]string = nil

var roundG = 30

func main() {
	dummy := roundG
	roundG = dummy + 1
	println(roundG)
	println(optionsG == nil)
}

// Output:
// 31
// true

```
## assign16
```go
package main

type H struct {
	bits uint
}

func main() {
	h := &H{8}
	var x uint = (1 << h.bits) >> 6

	println(x)
}

// Output:
// 4

```
## assign17
```go
package main

func main() {
	s := make([]map[string]string, 0)
	m := make(map[string]string)
	m["m1"] = "m1"
	m["m2"] = "m2"
	s = append(s, m)
	tmpStr := "start"
	println(tmpStr)
	for _, v := range s {
		tmpStr, ok := v["m1"]
		println(tmpStr, ok)
	}
	println(tmpStr)
}

// Output:
// start
// m1 true
// start

```
## assign18
```go
package main

func main() {
	s := make([]map[string]string, 0)
	m := make(map[string]string)
	m["m1"] = "m1"
	m["m2"] = "m2"
	s = append(s, m)
	tmpStr := "start"
	println(tmpStr)
	for _, v := range s {
		tmpStr, _ := v["m1"]
		println(tmpStr)
	}
	println(tmpStr)
}

// Output:
// start
// m1
// start

```
## assign2
```go
package main

func main() {
	r := uint32(2000000000)
	r = hello(r)
	println(r)
}

func hello(r uint32) uint32 { return r + 1 }

// Output:
// 2000000001

```
## assign3
```go
package main

func main() {
	a, b := 1, 2
	println(a, b)
	a, b = b, a
	println(a, b)
}

// Output:
// 1 2
// 2 1

```
## assign4
```go
package main

func main() {
	a, b, c := 1, 2, 3
	println(a, b, c)
	a, b, c = c, a, b
	println(a, b, c)
}

// Output:
// 1 2 3
// 3 1 2

```
## assign8
```go
package main

func main() {
	_ = 1
	println(1)
}

// Output:
// 1

```
## assign9
```go
package main

type foo func(b int)

func boo(b int) { println("boo", b) }

func main() {
	var f foo

	f = boo
	f(4)
}

// Output:
// boo 4

```
## bltn
```go
package main

func main() {
	println("Hello")
}

// Output:
// Hello

```
## bool1
```go
package main

type T struct {
	v bool
}

func main() {
	a := T{}
	if a.v {
		println("ok")
	} else {
		println("nok")
	}
}

// Output:
// nok

```
## bool2
```go
package main

type T struct {
	v bool
}

func main() {
	a := &T{}
	if a.v {
		println("ok")
	} else {
		println("nok")
	}
}

// Output:
// nok

```
## bool3
```go
package main

func main() {
	m := map[int]bool{0: false, 1: true}
	if m[0] {
		println(0)
	} else {
		println(1)
	}
}

// Output:
// 1

```
## bool4
```go
package main

func main() {
	m := []bool{false, true}
	if m[0] {
		println(0)
	} else {
		println(1)
	}
}

// Output:
// 1

```
## bool5
```go
package main

func main() {
	var b bool
	m := &b

	if *m {
		println(0)
	} else {
		println(1)
	}
}

// Output:
// 1

```
## break1
```go
package main

func main() {
	n := 2
	m := 2
	foo := true
OuterLoop:
	for i := 0; i < n; i++ {
		println("I: ", i)
		for j := 0; j < m; j++ {
			switch foo {
			case true:
				println(foo)
				break OuterLoop
			case false:
				println(foo)
			}
		}
	}
}

// Output:
// I:  0
// true

```
## break2
```go
package main

func main() {
	n := 2
	m := 2
	foo := true
OuterLoop:
	for i := 0; i < n; i++ {
		println("I: ", i)
		for j := 0; j < m; j++ {
			switch foo {
			case true:
				println(foo)
				break OuterLoop
			case false:
				println(foo)
				continue OuterLoop
			}
		}
	}
}

// Output:
// I:  0
// true

```
## break3
```go
package main

func main() {
	n := 2
	m := 2
	foo := true
	goto OuterLoop
	println("Boo")
OuterLoop:
	for i := 0; i < n; i++ {
		println("I: ", i)
		for j := 0; j < m; j++ {
			switch foo {
			case true:
				println(foo)
				break OuterLoop
			case false:
				println(foo)
				goto OuterLoop
			}
		}
	}
}

// Output:
// I:  0
// true

```
## cap0
```go
package main

func f(a []int) interface{} {
	return cap(a)
}

func g(a []int) int {
	return cap(a)
}

func main() {
	a := []int{1, 2}
	println(g(a))
	println(f(a).(int))
}

// Output:
// 2
// 2

```
## closure0
```go
package main

type adder func(int, int) int

func genAdd(k int) adder {
	return func(i, j int) int {
		return i + j + k
	}
}

func main() {
	f := genAdd(5)
	println(f(3, 4))
}

// Output:
// 12

```
## closure1
```go
package main

type adder func(int, int) int

func genAdd(k int) adder {
	return func(i, j int) int {
		return i + j + k
	}
}

func main() {
	f := genAdd(5)
	g := genAdd(8)
	println(f(3, 4))
	println(g(3, 4))
}

// Output:
// 12
// 15

```
## closure10
```go
package main

func main() {
	foos := []func(){}

	for i := 0; i < 3; i++ {
		a, b := i, i
		foos = append(foos, func() { println(i, a, b) })
	}
	foos[0]()
	foos[1]()
	foos[2]()
}

// Output:
// 3 0 0
// 3 1 1
// 3 2 2

```
## closure11
```go
package main

type T struct {
	F func()
}

func main() {
	foos := []T{}

	for i := 0; i < 3; i++ {
		a := i
		foos = append(foos, T{func() { println(i, a) }})
	}
	foos[0].F()
	foos[1].F()
	foos[2].F()
}

// Output:
// 3 0
// 3 1
// 3 2

```
## closure2
```go
package main

func adder() func(int) int {
	sum := 0
	return func(x int) int {
		sum = sum + x
		return sum
	}
}

func main() {
	pos, neg := adder(), adder()
	for i := 0; i < 10; i++ {
		println(pos(i), neg(-2*i))
	}
}

// Output:
// 0 0
// 1 -2
// 3 -6
// 6 -12
// 10 -20
// 15 -30
// 21 -42
// 28 -56
// 36 -72
// 45 -90

```
## closure3
```go
package main

type T1 struct {
	Name string
}

func (t *T1) genAdd(k int) func(int) int {
	return func(i int) int {
		println(t.Name)
		return i + k
	}
}

var t = &T1{"test"}

func main() {
	f := t.genAdd(4)
	println(f(5))
}

// Output:
// test
// 9

```
## closure4
```go
package main

type T1 struct {
	Name string
}

func (t *T1) genAdd(k int) func(int) int {
	return func(i int) int {
		println(t.Name)
		return i + k
	}
}

var t = T1{"test"}

func main() {
	f := t.genAdd(4)
	println(f(5))
}

// Output:
// test
// 9

```
## closure5
```go
package main

type T1 struct {
	Name string
}

func (t T1) genAdd(k int) func(int) int {
	return func(i int) int {
		println(t.Name)
		return i + k
	}
}

var t = T1{"test"}

func main() {
	f := t.genAdd(4)
	println(f(5))
}

// Output:
// test
// 9

```
## closure6
```go
package main

type T1 struct {
	Name string
}

func (t *T1) genAdd(k int) func(int) int {
	return func(i int) int {
		println(t.Name)
		return i + k
	}
}

var t = &T1{"test"}

func main() {
	f := t.genAdd(4)
	println(f(5))
}

// Output:
// test
// 9

```
## closure8
```go
package main

var f = func(a int) int { return 2 + a }

func main() {
	println(f(3))
}

// Output:
// 5

```
## closure9
```go
package main

func main() {
	foos := []func(){}

	for i := 0; i < 3; i++ {
		a := i
		foos = append(foos, func() { println(i, a) })
	}
	foos[0]()
	foos[1]()
	foos[2]()
}

// Output:
// 3 0
// 3 1
// 3 2

```
## comp0
```go
package main

func main() {
	println(2 < 2.4)
}

// Output:
// true

```
## comp1
```go
package main

func main() {
	var a interface{} = 1 < 2
	println(a.(bool))
}

// Output:
// true

```
## comp2
```go
package main

type delta int32

func main() {
	a := delta(-1)

	println(a != -1)
	println(a == -1)
}

// Output:
// false
// true

```
## composite12
```go
package main

type A struct {
	C D
}

type D struct {
	E string
}

func main() {
	a := A{}
	a.C = D{"bb"}

	println(a.C.E)
}

// Output:
// bb

```
## composite13
```go
package main

type A struct {
	C D
}

type D struct {
	E string
}

func main() {
	a := A{}
	a.C = D{E: "bb"}

	println(a.C.E)
}

// Output:
// bb

```
## composite3
```go
package main

func main() {
	var err error
	var ok bool

	_, ok = err.(interface{ IsSet() bool })
	println(ok)
}

// Output:
// false

```
## composite4
```go
package main

func main() {
	var err error

	_, ok := err.(interface{ IsSet() bool })
	println(ok)
}

// Output:
// false

```
## composite7
```go
package main

type T struct {
	name string
}

var tab = []*T{{
	name: "foo",
}, {
	name: "bar",
}}

func main() {
	println(len(tab))
	println(tab[0].name)
}

// Output:
// 2
// foo

```
## composite8
```go
package main

type T struct{ I int }

func main() {
	t := []*T{}
	s := []int{1, 2}
	for _, e := range s {
		x := &T{e}
		t = append(t, x)
	}
	println(t[0].I, t[1].I)
}

// Output:
// 1 2

```
## composite8bis
```go
package main

type T struct{ I int }

func main() {
	t := []*T{}
	s := []int{1, 2}
	for _, e := range s {
		x := &T{I: e}
		t = append(t, x)
	}
	println(t[0].I, t[1].I)
}

// Output:
// 1 2

```
## const0
```go
package main

const (
	a = iota
	b
)

func main() {
	println(a, b)
}

// Output:
// 0 1

```
## const1
```go
package main

type T struct {
	a int
	b string
}

var t = T{1, "hello"}

func main() {
	println(t.a, t.b)
}

// Output:
// 1 hello

```
## const10
```go
package main

const (
	a = 2
	b = c + d
	c = a + d
	d = e + f
	e = 3
	f = 4
)

func main() {
	println(b)
}

// Output:
// 16

```
## const11
```go
package main

func main() {
	const (
		x = 2 * iota
		dim
	)
	var t [dim * 2]int
	println(t[0], len(t))
}

// Output:
// 0 4

```
## const12
```go
package main

type Kind int

const (
	None Kind = 0
	Left Kind = 1 << iota
	Right
	Both Kind = Left | Right
)

func main() {
	println(None, Left, Right, Both)
}

// Output:
// 0 2 4 6

```
## const15
```go
package main

type T1 t1

type t1 int8

const (
	P2 T1 = 2
	P3 T1 = 3
)

func main() {
	println(P3)
}

// Output:
// 3

```
## const2
```go
package main

func main() {
	println(a)
}

const a = "hello"

// Output:
// hello

```
## const21
```go
package main

const a = 64

var b uint = a * a / 2

func main() {
	println(b)
}

// Output:
// 2048

```
## const22
```go
package main

const (
	numDec uint8 = (1 << iota) / 2
	numHex
	numOct
	numFloat
)

func main() {
	println(13 & (numHex | numOct))
}

// Output:
// 1

```
## const23
```go
package main

const maxlen = len("hello")

var gfm = [maxlen]byte{}

func main() {
	println(len(gfm))
}

// Output:
// 5

```
## const24
```go
package main

var aa = [...]int{1, 2, 3}

const maxlen = cap(aa)

var gfm = [maxlen]byte{}

func main() {
	println(len(gfm))
}

// Output:
// 3

```
## const25
```go
package main

const (
	FGBlack Attribute = iota + 30
)

type Attribute int

func main() {
	println(FGBlack)
}

```
## const3
```go
package main

const a, b, c int = 1, 2, 3

func main() { println(a, b, c) }

// Output:
// 1 2 3

```
## const4
```go
package main

const (
	a = 2
	b = 3
	c
)

func main() {
	println(a, b, c)
}

// Output:
// 2 3 3

```
## const6
```go
package main

const (
	maxNonStarters = 30
	maxBufferSize  = maxNonStarters + 2
)

type reorderBuffer struct {
	rune [maxBufferSize]Properties
}

type Properties struct {
	pos  uint8
	size uint8
}

func main() {
	println(len(reorderBuffer{}.rune))
}

// Output:
// 32

```
## const8
```go
package main

const (
	a = 2
	b = c + d
	c = 4
	d = 5
)

func main() {
	println(a, b, c, d)
}

// Output:
// 2 9 4 5

```
## cont
```go
package main

func main() {
	for i := 0; i < 10; i++ {
		if i < 5 {
			continue
		}
		println(i)
	}
}

// Output:
// 5
// 6
// 7
// 8
// 9

```
## cont0
```go
package main

func main() {
	i := 0
	for {
		if i > 10 {
			break
		}
		i++
		if i < 5 {
			continue
		}
		println(i)
	}
}

// Output:
// 5
// 6
// 7
// 8
// 9
// 10
// 11

```
## cont1
```go
package main

func main() {
	i := 0
	for {
		if i > 10 {
			break
		}
		if i < 5 {
			i++
			continue
		}
		println(i)
		i++
	}
}

// Output:
// 5
// 6
// 7
// 8
// 9
// 10

```
## cont2
```go
package main

func main() {
	n := 2
	m := 2
	foo := true
OuterLoop:
	for i := 0; i < n; i++ {
		println("I: ", i)
		for j := 0; j < m; j++ {
			switch foo {
			case true:
				println(foo)
				continue OuterLoop
			case false:
				println(foo)
			}
		}
	}
}

// Output:
// I:  0
// true
// I:  1
// true

```
## convert0
```go
package main

type T struct {
	v int
}

type comparator func(T, T) bool

func sort(items []T, comp comparator) {
	println("in sort")
}

func compT(t0, t1 T) bool { return t0.v < t1.v }

func main() {
	a := []T{}
	sort(a, comparator(compT))
}

// Output:
// in sort

```
## defer5
```go
package main

func f1() {
	defer println("f1-begin")
	f2()
	defer println("f1-end")
}

func f2() {
	defer println("f2-begin")
	f3()
	defer println("f2-end")
}

func f3() {
	defer println("f3-begin")
	println("hello")
	defer println("f3-end")
}

func main() {
	f1()
}

// Output:
// hello
// f3-end
// f3-begin
// f2-end
// f2-begin
// f1-end
// f1-begin

```
## defer6
```go
package main

func f1() {
	defer print("f1-begin ")
	f2()
	defer print("f1-end ")
}

func f2() {
	defer print("f2-begin ")
	f3()
	defer print("f2-end ")
}

func f3() {
	defer print("f3-begin ")
	print("hello ")
	defer print("f3-end ")
}

func main() {
	f1()
	println()
}

// Output:
// hello f3-end f3-begin f2-end f2-begin f1-end f1-begin

```
## fib0
```go
package main

// Compute fibonacci numbers, no memoization
func fib(n int) int {
	if n < 2 {
		return n
	}
	return fib(n-2) + fib(n-1)
}

func main() {
	println(fib(4))
}

// Output:
// 3

```
## for0
```go
package main

func main() {
	i := 0
	//for ;i >= 0; i++ {
	for {
		if i > 5 {
			break
		}
		println(i)
		i++
	}
}

// Output:
// 0
// 1
// 2
// 3
// 4
// 5

```
## for1
```go
package main

func main() {
	i := 0
	for i < 10 {
		if i > 4 {
			break
		}
		println(i)
		i++
	}
}

// Output:
// 0
// 1
// 2
// 3
// 4

```
## for10
```go
package main

func main() {
	for a := 0; false; {
		println("nok", a)
		a++
		break
	}
	println("bye")
}

// Output:
// bye

```
## for11
```go
package main

func main() {
	a := 0
	for ; true; a++ {
		println("nok", a)
		break
	}
	println("bye", a)
}

// Output:
// nok 0
// bye 0

```
## for12
```go
package main

func main() {
	for a := 0; false; a++ {
		println("nok", a)
		break
	}
	println("bye")
}

// Output:
// bye

```
## for13
```go
package main

func main() {
	a := 0
	for ; false; a++ {
		println("nok", a)
		break
	}
	println("bye", a)
}

// Output:
// bye 0

```
## for14
```go
package main

func main() {
	for a := 0; true; a++ {
		println(a)
		if a > 0 {
			break
		}
	}
	println("bye")
}

// Output:
// 0
// 1
// bye

```
## for15
```go
package main

func f() int { println("in f"); return 1 }

func main() {
	for i := f(); ; {
		println("in loop")
		if i > 0 {
			break
		}
	}
}

// Output:
// in f
// in loop

```
## for16
```go
package main

func main() {
	max := 1
	for ; ; max-- {
		if max == 0 {
			break
		}
		println("in for")
	}
	println("bye")
}

// Output:
// in for
// bye

```
## for2
```go
package main

func main() {
	for i := 2; ; i++ {
		println(i)
		if i > 3 {
			break
		}
	}
}

// Output:
// 2
// 3
// 4

```
## for4
```go
package main

func main() {
	for i := 1; i <= 2; i++ {
		var x, y int
		println(x, y)
		x, y = i, 2*i
		println(x, y)
	}
}

// Output:
// 0 0
// 1 2
// 0 0
// 2 4

```
## for5
```go
package main

func main() {
	var a bool

	for a {
		println("nok")
		break
	}
	println("bye")
}

// Output:
// bye

```
## for8
```go
package main

func main() {
	for i := 0; i < 4; i++ {
		for {
			break
		}
		if i == 1 {
			continue
		}
		println(i)
	}
}

// Output:
// 0
// 2
// 3

```
## for9
```go
package main

func main() {
	for false {
		println("nok")
		break
	}
	println("bye")
}

// Output:
// bye

```
## fun
```go
package main

func f(i int) int { return i + 15 }

func main() {
	println(f(4))
}

// Output:
// 19

```
## fun11
```go
package main

var f F

type F func(int)

func main() {
	println("ok")
}

// Output:
// ok

```
## fun12
```go
package main

func use(interface{}) {}

func main() {
	z := map[string]interface{}{"a": 5}
	use(z)
	println("bye")
}

// Output:
// bye

```
## fun14
```go
package main

func f() (bool, int) { return true, 2 }

func g() (bool, int) { return f() }

func main() {
	b, i := g()
	println(b, i)
}

// Output:
// true 2

```
## fun15
```go
package main

func f1(a int) interface{} { return a + 1 }

func f2(a int64) interface{} { return a + 1 }

func main() {
	c := f1(3)
	println(c.(int))
	b := f2(3)
	println(b.(int64))
}

// Output:
// 4
// 4

```
## fun16
```go
package main

func f1(a int) int { return a + 1 }

func f2(a int) interface{} {
	// TODO: re-enable the optimized case below, once we've figured out why it
	// interferes with the empty interface model.
	// return f1(a)
	var foo interface{} = f1(a)
	return foo
}

func main() {
	c := f2(3)
	println(c.(int))
}

// Output:
// 4

```
## fun17
```go
package main

func f1(a int) interface{} { return a + 1 }

func f2(a int) interface{} { return f1(a) }

func main() {
	c := f2(3)
	println(c.(int))
}

// Output:
// 4

```
## fun18
```go
package main

var m = map[string]int{"foo": 1, "bar": 2}

func f(s string) interface{} { return m[s] }

func main() {
	println(f("foo").(int))
}

// Output:
// 1

```
## fun2
```go
package main

type Coord struct{ x, y int }

func f(c Coord) int { return c.x + c.y }

func main() {
	c := Coord{3, 4}
	println(f(c))
}

// Output:
// 7

```
## fun26
```go
package main

type F func() (int, error)

func f1() (int, error) { return 3, nil }

func f2(a string, f F) {
	c, _ := f()
	println(a, c)
}

func main() {
	f2("hello", F(f1))
}

// Output:
// hello 3

```
## fun3
```go
package main

type Coord struct{ x, y int }

func f(i, j int, c Coord) int { return i*c.x + j*c.y }

func main() {
	c := Coord{3, 4}
	println(f(2, 3, c))
}

// Output:
// 18

```
## fun4
```go
package main

func f() {}

func main() {
	f()
	println("ok")
}

// Output:
// ok

```
## fun5
```go
package main

func f(i int64) {
	println(i)
}

func main() {
	f(34)
}

// Output:
// 34

```
## fun8
```go
package main

func main() { println(f == nil) }

var f func()

// Output:
// true

```
## fun9
```go
package main

type T uint

func main() {
	type myint int
	var i = myint(1)
	println(i)
}

// Output:
// 1

```
## gen10
```go
package main

func genFunc() (f func()) {
	return f
}

func main() {
	println(genFunc() == nil)
}

// Output:
// true

```
## goto0
```go
package main

func main() {
	println("foo")
	goto L1
	println("Hello")
L1:
	println("bar")
	println("bye")
}

// Output:
// foo
// bar
// bye

```
## goto1
```go
package main

func main() {
	if true {
		goto here
	}
here:
	println("ok")
}

// Output:
// ok

```
## if_
```go
package main

func main() {
	if a := f(); a > 0 {
		println(a)
	}
}

func f() int { return 1 }

// Output:
// 1

```
## if0
```go
package main

func main() {
	var a bool

	if a {
		println("ok")
	} else {
		println("nok")
	}
}

// Output:
// nok

```
## if1
```go
package main

func main() {
	i := 1
	if i > 0 {
	}
	println("bye")
}

// Output:
// bye

```
## if3
```go
package main

func main() {
	a := 0
	if false {
		println("false")
		a = 1
	} else {
		println("true")
		a = -1
	}
	println(a)
}

// Output:
// true
// -1

```
## if4
```go
package main

const bad = false

func main() {
	a := 0
	if bad {
		println("false")
		a = 1
	} else {
		println("true")
		a = -1
	}
	println(a)
}

// Output:
// true
// -1

```
## if5
```go
package main

func main() {
	if true {
		println("ok")
	}
	println("bye")
}

// Output:
// ok
// bye

```
## if6
```go
package main

func main() {
	if false {
		println("nok")
	}
	println("bye")
}

// Output:
// bye

```
## if7
```go
package main

func main() {
	a := 0
	b := false
	if (b) {
		a = 1
	} else {
		a = -1
	}
	println(a)
}

// Output:
// -1

```
## inc
```go
package main

func main() {
	i := 2
	//i++
	i = i + 1
	println(i)
}

// Output:
// 3

```
## init0
```go
package main

func init() {
	println("Hello from init 1")
}

func init() {
	println("Hello from init 2")
}

func main() {
	println("Hello from main")
}

// Output:
// Hello from init 1
// Hello from init 2
// Hello from main

```
## interface0
```go
package main

type sample struct {
	count int
}

func run(inf interface{}, name string) {
	x := inf.(sample)
	println(x.count, name)
}

func main() {
	a := sample{2}
	println(a.count)
	run(a, "truc")
}

// Output:
// 2
// 2 truc

```
## interface10
```go
package main

type Edge interface {
	ReverseEdge() Edge
}

func main() {
	println("hello")
}

// Output:
// hello

```
## interface12
```go
package main

type I1 interface {
	Truc()
}

type T1 struct{}

func (T1) Truc() { println("in T1 truc") }

var x I1 = T1{}

func main() {
	x.Truc()
}

// Output:
// in T1 truc

```
## interface14
```go
package main

type T struct{}

func (t *T) Error() string { return "T: error" }

var invalidT = &T{}

func main() {
	var err error
	if err != invalidT {
		println("ok")
	}
}

// Output:
// ok

```
## interface15
```go
package main

type Fooer interface {
	Foo() string
}

type Barer interface {
	//fmt.Stringer
	Fooer
	Bar()
}

type T struct{}

func (t *T) Foo() string { return "T: foo" }
func (*T) Bar()          { println("in bar") }

var t = &T{}

func main() {
	var f Barer
	if f != t {
		println("ok")
	}
}

// Output:
// ok

```
## interface17
```go
package main

type T struct{}

func (t T) Error() string { return "T: error" }

var invalidT = T{}

func main() {
	var err error
	if err != invalidT {
		println("ok")
	}
}

// Output:
// ok

```
## interface18
```go
package main

type T struct{}

func (t *T) Error() string { return "T: error" }
func (*T) Foo()            { println("foo") }

var invalidT = &T{}

func main() {
	var err error
	if err != invalidT {
		println("ok")
	}
}

// Output:
// ok

```
## interface29
```go
package main

func main() {
	var a interface{}
	println(a == nil)
}

// Output:
// true

```
## interface30
```go
package main

func main() {
	var a interface{}
	println(a != nil)
}

// Output:
// false

```
## interface37
```go
package main

type I interface {
	A() string
	B() string
}

type s struct{}

func NewS() (I, error) {
	return &s{}, nil
}

func (c *s) A() string { return "a" }
func (c *s) B() string { return "b" }

func main() {
	s, _ := NewS()
	println(s.A())
}

// Output:
// a

```
## interface44
```go
package main

type S struct {
	a int
}

func main() {
	var i interface{} = S{a: 1}

	s, ok := i.(S)
	if !ok {
		println("bad")
		return
	}
	println(s.a)
}

// Output:
// 1

```
## interface47
```go
package main

type Doer interface {
	Do() error
}

type T struct {
	Name string
}

func (t *T) Do() error { println("in do"); return nil }

func f() (Doer, error) { return &T{"truc"}, nil }

type Ev struct {
	doer func() (Doer, error)
}

func (e *Ev) do() {
	d, _ := e.doer()
	d.Do()
}

func main() {
	e := &Ev{f}
	println(e != nil)
	e.do()
}

// Output:
// true
// in do

```
## interface49
```go
package main

type Descriptor interface {
	ParentFile() FileDescriptor
}

type FileDescriptor interface {
	Enums() EnumDescriptors
	Services() ServiceDescriptors
}

type EnumDescriptors interface {
	Get(i int) EnumDescriptor
}

type EnumDescriptor interface {
	Values() EnumValueDescriptors
}

type EnumValueDescriptors interface {
	Get(i int) EnumValueDescriptor
}

type EnumValueDescriptor interface {
	Descriptor
}

type ServiceDescriptors interface {
	Get(i int) ServiceDescriptor
}

type ServiceDescriptor interface {
	Descriptor
	isServiceDescriptor
}

type isServiceDescriptor interface{ ProtoType(ServiceDescriptor) }

func main() {
	var d Descriptor
	println(d == nil)
}

// Output:
// true

```
## interface50
```go
package main

func main() {
	a := true
	var b interface{} = 5
	println(b.(int))
	b = a == true
	println(b.(bool))
}

// Output:
// 5
// true

```
## interface51
```go
package main

type Error interface {
	error
	Message() string
}

type T struct {
	Msg string
}

func (t *T) Error() string   { return t.Msg }
func (t *T) Message() string { return "message:" + t.Msg }

func newError() Error { return &T{"test"} }

func main() {
	e := newError()
	println(e.Error())
}

// Output:
// test

```
## issue_dash_1007
```go
package main

type TypeA struct {
	B TypeB
}

type TypeB struct {
	C1 *TypeC
	C2 *TypeC
}

type TypeC struct {
	Val string
	D   *TypeD
	D2  *TypeD
}

type TypeD struct {
	Name string
}

func build() *TypeA {
	return &TypeA{
		B: TypeB{
			C2: &TypeC{Val: "22"},
		},
	}
}

func Bar(s string) string {
	a := build()
	return s + "-" + a.B.C2.Val
}

func main() {
	println(Bar("test"))
}

// Output:
// test-22

```
## issue_dash_1068
```go
package main

type I interface {
	Hello()
}

type T struct{}

func (t T) Hello() { println("hello") }

type I2 I

func main() {
	var i I2 = T{}
	i.Hello()
}

// Output:
// hello

```
## issue_dash_1134
```go
package main

type I interface {
	Hello()
}

type T struct {
	Name  string
	Child []*T
}

func (t *T) Hello() { println("Hello", t.Name) }

func main() {
	var i I = new(T)
	i.Hello()
}

// Output:
// Hello

```
## issue_dash_1156
```go
package main

type myInterface interface {
	myFunc() string
}

type V struct{}

func (v *V) myFunc() string { return "hello" }

type U struct {
	v myInterface
}

func (u *U) myFunc() string { return u.v.myFunc() }

func main() {
	x := V{}
	y := myInterface(&x)
	y = &U{y}
	println(y.myFunc())
}

// Output:
// hello

```
## issue_dash_1173
```go
package main

var real = func() { println("Hello") }

func main() {
	real()
}

// Output:
// Hello

```
## issue_dash_1175
```go
package main

type Level int8

const (
	a Level = -1
	b Level = 5
	d       = b - a + 1
)

type counters [d]int

func main() {
	println(len(counters{}))
}

// Output:
// 7

```
## issue_dash_1177
```go
package main

type counters [3][16]int

func main() {
	cs := &counters{}
	p := &cs[0][1]
	*p = 2
	println(cs[0][1])
}

// Output:
// 2

```
## issue_dash_1179
```go
package main

type I interface {
	F()
}

type T struct {
	Name string
}

func (t *T) F() { println("in F", t.Name) }

func NewI(s string) I { return newT(s) }

func newT(s string) *T { return &T{s} }

func main() {
	i := NewI("test")
	i.F()
}

// Output:
// in F test

```
## issue_dash_1181
```go
package main

func main() {
	a, b := 1, 2
	a, b = b, -a
	println(a, b)
}

// Output:
// 2 -1

```
## issue_dash_1189
```go
package main

type I interface {
	Foo() int
}

type S1 struct {
	i int
}

func (s S1) Foo() int { return s.i }

type S2 struct{}

func (s *S2) Foo() int { return 42 }

func main() {
	Is := map[string]I{
		"foo": S1{21},
		"bar": &S2{},
	}
	n := 0
	for _, s := range Is {
		n += s.Foo()
	}
	bar := "bar"
	println(n, Is["foo"].Foo(), Is[bar].Foo())
}

// Output:
// 63 21 42

```
## issue_dash_1205
```go
package main

type Option interface {
	apply()
}

func f(opts ...Option) {
	for _, opt := range opts {
		opt.apply()
	}
}

type T struct{}

func (t *T) apply() { println("in apply") }

func main() {
	opt := []Option{&T{}}
	f(opt[0]) // works
	f(opt...) // fails
}

// Output:
// in apply
// in apply

```
## issue_dash_1208
```go
package main

type Enabler interface {
	Enabled() bool
}

type Logger struct {
	core Enabler
}

func (log *Logger) GetCore() Enabler { return log.core }

type T struct{}

func (t *T) Enabled() bool { return true }

func main() {
	base := &Logger{&T{}}
	println(base.GetCore().Enabled())
}

// Output:
// true

```
## issue_dash_1285
```go
package main

type (
	T1 struct{ Path [12]int8 }
	T2 struct{ Path *[12]int8 }
)

var (
	t11 = &T1{}
	t21 = &T2{}
)

func main() {
	b := [12]byte{}
	t12 := &T1{}
	t22 := &T2{}
	b11 := (*[len(t11.Path)]byte)(&b)
	b12 := (*[len(t12.Path)]byte)(&b)
	b21 := (*[len(t21.Path)]byte)(&b)
	b22 := (*[len(t22.Path)]byte)(&b)
	println(len(b11), len(b12), len(b21), len(b22))
}

// Output:
// 12 12 12 12

```
## issue_dash_1288
```go
package main

func main() {
	println("Hi")
	goto done
done:
}

// Output:
// Hi

```
## issue_dash_1300
```go
package main

const buflen = 512

type T struct {
	buf []byte
}

func f(t *T) { *t = T{buf: make([]byte, 0, buflen)} }

func main() {
	s := T{}
	println(cap(s.buf))
	f(&s)
	println(cap(s.buf))
}

// Output:
// 0
// 512

```
## issue_dash_1304
```go
package main

type Node struct {
	Name  string
	Alias *Node
	Child []*Node
}

func main() {
	n := &Node{Name: "parent"}
	n.Child = append(n.Child, &Node{Name: "child"})
	println(n.Name, n.Child[0].Name)
}

// Output:
// parent child

```
## issue_dash_1311
```go
package main

type T struct {
	v interface{}
}

func f() (ret int64, err error) {
	ret += 2
	return
}

func main() {
	t := &T{}
	t.v, _ = f()
	println(t.v.(int64))
}

// Output:
// 2

```
## issue_dash_1315
```go
package main

type Intf interface {
	M()
}

type T struct {
	s string
}

func (t *T) M() { println("in M") }

func f(i interface{}) {
	switch j := i.(type) {
	case Intf:
		j.M()
	default:
		println("default")
	}
}

func main() {
	var i Intf
	var k interface{} = 1
	i = &T{"hello"}
	f(i)
	f(k)
}

// Output:
// in M
// default

```
## issue_dash_1320
```go
package main

type Pooler interface {
	Get() string
}

type baseClient struct {
	connPool Pooler
}

type connPool struct {
	name string
}

func (c *connPool) Get() string { return c.name }

func newBaseClient(i int, p Pooler) *baseClient {
	return &baseClient{connPool: p}
}

func newConnPool() *connPool { return &connPool{name: "connPool"} }

func main() {
	b := newBaseClient(0, newConnPool())
	println(b.connPool.(*connPool).name)
}

// Output:
// connPool

```
## issue_dash_1326
```go
package main

type Option interface {
	apply(*T)
}

type T struct {
	s string
}

type opt struct {
	name string
}

func (o *opt) apply(t *T) {
	println(o.name)
}

func BuildOptions() []Option {
	return []Option{
		&opt{"opt1"},
		&opt{"opt2"},
	}
}

func NewT(name string, options ...Option) *T {
	t := &T{name}
	for _, opt := range options {
		opt.apply(t)
	}
	return t
}

func main() {
	t := NewT("hello", BuildOptions()...)
	println(t.s)
}

// Output:
// opt1
// opt2
// hello

```
## issue_dash_1332
```go
package main

func run(fn func(name string)) { fn("test") }

type T2 struct {
	name string
}

func (t *T2) f(s string) { println(s, t.name) }

func main() {
	t2 := &T2{"foo"}
	run(t2.f)
}

// Output:
// test foo

```
## issue_dash_1354
```go
package main

func main() {
	println(test()) // Go prints true, Yaegi false
}

func test() bool {
	if true {
		goto label
	}
	goto label
label:
	println("Go continues here")
	return true
	println("Yaegi goes straight to this return (this line is never printed)")
	return false
}

// Output:
// Go continues here
// true

```
## issue_dash_1365
```go
package main

func genInt() (int, error) { return 3, nil }

func getInt() (value int) {
	value, err := genInt()
	if err != nil {
		panic(err)
	}
	return
}

func main() {
	println(getInt())
}

// Output:
// 3

```
## issue_dash_1368
```go
package main

const dollar byte = 36

func main() {
	var c byte = 36
	switch true {
	case c == dollar:
		println("ok")
	default:
		println("not ok")
	}
}

// Output:
// ok

```
## issue_dash_1404
```go
package main

type I interface {
	inI()
}

type T struct {
	name string
}

func (t *T) inI() {}

func main() {
	var i I = &T{name: "foo"}

	if i, ok := i.(*T); ok {
		println(i.name)
	}
}

// Output:
// foo

```
## issue_dash_1408
```go
package main

type (
	Number  = int32
	Number2 = Number
)

func f(n Number2) { println(n) }

func main() {
	var n Number = 5
	f(n)
}

// Output:
// 5

```
## issue_dash_1416
```go
package main

type Number int32

type Number1 = Number

type Number2 = Number1

func (n Number2) IsValid() bool { return true }

func main() {
	a := Number(5)
	println(a.IsValid())
}

// Output:
// true

```
## issue_dash_1439
```go
package main

type Transformer interface {
	Reset()
}

type Encoder struct {
	Transformer
}

type nop struct{}

func (nop) Reset() { println("Reset") }

func f(e Transformer) {
	e.Reset()
}

func main() {
	e := Encoder{Transformer: nop{}}
	f(e)
}

// Output:
// Reset

```
## issue_dash_1451
```go
package main

type t1 uint8

const (
	n1 t1 = iota
	n2
)

type T struct {
	elem [n2 + 1]int
}

func main() {
	println(len(T{}.elem))
}

// Output:
// 2

```
## issue_dash_1454
```go
package main

type I2 interface {
	I2() string
}

type I interface {
	I2
}

type S struct{}

func (*S) I2() string { return "foo" }

func main() {
	var i I
	_, ok := i.(*S)
	println(ok)
}

// Output:
// false

```
## issue_dash_1470
```go
package main

type T struct {
	num [tnum + 2]int
}

const tnum = 23

func main() {
	t := T{}
	println(len(t.num))
}

// Output:
// 25

```
## issue_dash_1475
```go
package main

type T uint16

func f() T { return 0 }

func main() {
	println(f())
}

// Output:
// 0

```
## issue_dash_1496
```go
package main

func main() {
	a := []byte{} == nil
	b := nil == []byte{}
	c := nil == &struct{}{}
	i := 100
	d := nil == &i
	var v interface{}
	f := nil == v
	g := v == nil
	println(a, b, c, d, f, g)
}

// Output:
// false false false false true true

```
## issue_dash_1515
```go
package main

type I1 interface {
	I2
	Wrap() *S3
}

type I2 interface {
	F()
}

type S2 struct {
	I2
}

func newS2(i2 I2) I1 {
	return &S2{i2}
}

type S3 struct {
	base *S2
}

func (s *S2) Wrap() *S3 {
	i2 := s
	return &S3{i2}
}

type T struct {
	name string
}

func (t *T) F() { println("in F", t.name) }

func main() {
	t := &T{"test"}
	s2 := newS2(t)
	s3 := s2.Wrap()
	s3.base.F()
}

// Output:
// in F test

```
## issue_dash_1536
```go
package main

var a [len(prefix+path) + 2]int

const (
	prefix = "/usr/"
	path   = prefix + "local/bin"
)

func main() {
	println(len(a))
}

// Output:
// 21

```
## issue_dash_1571
```go
package main

type A struct {
	*B[string]
}

type B[T any] struct {
	data T
}

func main() {
	_ = &A{
		B: &B[string]{},
	}

	println("PASS")
}

// Output:
// PASS

```
## issue_dash_1594
```go
package main

func main() {
	var fns []func()
	for _, v := range []int{1, 2, 3} {
		x := v*100 + v
		fns = append(fns, func() { println(x) })
	}
	for _, fn := range fns {
		fn()
	}
}

// Output:
// 101
// 202
// 303

```
## issue_dash_993
```go
package main

var m map[string]int64

func initVar() {
	m = make(map[string]int64)
}

func main() {
	initVar()
	println(len(m))
}

// Output:
// 0

```
## l2
```go
package main

func main() {
	for a := 0; a < 20000; a++ {
		if (a & 0x8ff) == 0x800 {
			println(a)
		}
	}
}

// Output:
// 2048
// 2304
// 2560
// 2816
// 3072
// 3328
// 3584
// 3840
// 6144
// 6400
// 6656
// 6912
// 7168
// 7424
// 7680
// 7936
// 10240
// 10496
// 10752
// 11008
// 11264
// 11520
// 11776
// 12032
// 14336
// 14592
// 14848
// 15104
// 15360
// 15616
// 15872
// 16128
// 18432
// 18688
// 18944
// 19200
// 19456
// 19712
// 19968

```
## l4
```go
package main

func main()       { println(f(5)) }
func f(i int) int { return i + 1 }

// Output:
// 6

```
## len0
```go
package main

func f(a []int) interface{} {
	return len(a)
}

func main() {
	a := []int{1, 2}
	println(f(a).(int))
}

// Output:
// 2

```
## make0
```go
package main

func f() interface{} {
	return make([]int, 2)
}

func main() {
	a := f()
	println(len(a.([]int)))
}

// Output:
// 2

```
## map_
```go
package main

type Dict map[string]string

func main() {
	dict := make(Dict)
	dict["truc"] = "machin"
	println(dict["truc"])
}

// Output:
// machin

```
## map2
```go
package main

func main() {
	dict := make(map[string]string)
	dict["truc"] = "machin"
	println(dict["truc"])
}

// Output:
// machin

```
## map20
```go
package main

var a = map[int]bool{1: true, 2: true}

func main() {
	println(a[1] && true)
}

// Output:
// true

```
## map21
```go
package main

var m = map[int]string{
	1: "foo",
}

func main() {
	var ok bool
	if _, ok = m[1]; ok {
		println("ok")
	}
}

// Output:
// ok

```
## map22
```go
package main

var m = map[int]string{
	1: "foo",
}

func main() {
	var s string
	s, _ = m[1]
	println(s)
}

// Output:
// foo

```
## map23
```go
package main

var m = map[int]string{
	1: "foo",
}

func main() {
	_, _ = m[1]
	println("ok")
}

// Output:
// ok

```
## map26
```go
package main

var m = map[string]int{"foo": 1, "bar": 2}

func main() {
	var a interface{} = m["foo"]
	println(a.(int))
}

// Output:
// 1

```
## map3
```go
package main

func main() {
	dict := map[string]string{}
	dict["truc"] = "machin"
	println(dict["truc"])
}

// Output:
// machin

```
## map4
```go
package main

func main() {
	dict := map[string]string{"bidule": "machin", "truc": "bidule"}
	dict["hello"] = "bonjour"
	println(dict["bidule"])
	println(dict["hello"])
}

// Output:
// machin
// bonjour

```
## map6
```go
package main

func main() {
	dict := map[string]string{"bidule": "machin"}
	for k, v := range dict {
		println(k, v)
	}
}

// Output:
// bidule machin

```
## map7
```go
package main

func main() {
	dict := map[int32]int64{13: 733}
	for k, v := range dict {
		println(k, v)
	}
}

// Output:
// 13 733

```
## math2
```go
package main

const c uint64 = 2

func main() {
	if c&(1<<(uint64(1))) > 0 {
		println("yes")
	}
}

// Output:
// yes

```
## method
```go
package main

type Coord struct {
	x, y int
}

func (c Coord) dist() int { return c.x*c.x + c.y*c.y }

func main() {
	o := Coord{3, 4}
	println(o.dist())
}

// Output:
// 25

```
## method1
```go
package main

type Sample struct {
	Name string
}

func (s *Sample) foo(i int) {
	println("in foo", s.Name, i)
}

func main() {
	sample := Sample{"hello"}
	s := &sample
	s.foo(3)
}

// Output:
// in foo hello 3

```
## method10
```go
package main

const BlockSize = 8

type Cipher struct{}

func (c *Cipher) BlockSize() int { return BlockSize }

func main() {
	println(BlockSize)
	s := Cipher{}
	println(s.BlockSize())
}

// Output:
// 8
// 8

```
## method11
```go
package main

func BlockSize() string { return "func" }

type Cipher struct{}

func (c *Cipher) BlockSize() string { return "method" }

func main() {
	println(BlockSize())
	s := Cipher{}
	println(s.BlockSize())
}

// Output:
// func
// method

```
## method12
```go
package main

type Coord struct {
	x, y int
}

func (c Coord) dist() int { return c.x*c.x + c.y*c.y }

func main() {
	o := Coord{3, 4}
	f := o.dist
	println(f())
}

// Output:
// 25

```
## method13
```go
package main

type Coord struct {
	x, y int
}

func (c Coord) dist() int { return c.x*c.x + c.y*c.y }

type Point struct {
	Coord
	z int
}

func main() {
	o := Point{Coord{3, 4}, 5}
	f := o.dist
	println(f())
}

// Output:
// 25

```
## method14
```go
package main

func main() {
	o := Coord{3, 4}
	println(o.dist())
}

func (c *Coord) dist() int { return c.x*c.x + c.y*c.y }

type Coord struct {
	x, y int
}

// Output:
// 25

```
## method15
```go
package main

type Coord struct {
	x, y int
}

func (c Coord) dist() int { return c.x*c.x + c.y*c.y }

func main() {
	o := &Coord{3, 4}
	println(o.dist())
}

// Output:
// 25

```
## method2
```go
package main

type Coord struct {
	x, y int
}

func (c Coord) dist() int { return c.x*c.x + c.y*c.y }

type Point struct {
	Coord
	z int
}

func main() {
	o := Point{Coord{3, 4}, 5}
	println(o.dist())
}

// Output:
// 25

```
## method22
```go
package main

func Bar() {
	s := Obj.Foo()
	println(s)
}

var Obj = &T{}

type T struct{}

func (t *T) Foo() bool { return t != nil }

func main() {
	Bar()
}

// Output:
// true

```
## method23
```go
package main

func Bar() {
	s := Obj.Foo()
	println(s)
}

var Obj = NewT()

func NewT() *T { return &T{} }

type T struct{}

func (t *T) Foo() bool { return t != nil }

func main() {
	Bar()
}

// Output:
// true

```
## method26
```go
package main

func NewT(name string) *T { return &T{name} }

var C = NewT("test")

func (t *T) f() { println(t == C) }

type T struct {
	Name string
}

func main() {
	C.f()
}

// Output:
// true

```
## method3
```go
package main

type Coord struct {
	x, y int
}

func (c Coord) dist() int { return c.x*c.x + c.y*c.y }

type Point struct {
	Coord
	z int
}

func main() {
	o := Point{Coord{3, 4}, 5}
	println(o.Coord.dist())
}

// Output:
// 25

```
## method30
```go
package main

type T struct {
	Name string
}

func (t *T) foo(a string) string {
	return t.Name + a
}

var g = &T{"global"}

var f = g.foo

func main() {
	println(f("-x"))
}

// Output:
// global-x

```
## method34
```go
package main

type Root struct {
	Name string
}

type One struct {
	Root
}

type Hi interface {
	Hello() string
}

type Hey interface {
	Hello() string
}

func (r *Root) Hello() string { return "Hello " + r.Name }

func main() {
	// TODO(mpl): restore when type assertions work again.
	// var one interface{} = &One{Root{Name: "test2"}}
	var one Hey = &One{Root{Name: "test2"}}
	println(one.(Hi).Hello())
}

// Output:
// Hello test2

```
## method36
```go
package main

type I interface{ Hello() }

type T struct{ Name string }

func (t *T) Hello() { println("Hello", t.Name) }

type FT func(i I)

type ST struct{ Handler FT }

func newF() FT {
	return func(i I) {
		i.Hello()
	}
}

func main() {
	st := &ST{}
	st.Handler = newF()
	st.Handler(&T{"test"})
}

// Output:
// Hello test

```
## method4
```go
package main

type Coord struct {
	x, y int
}

func (c Coord) dist() int { return c.x*c.x + c.y*c.y }

type Point struct {
	Coord
	z int
}

type Tpoint struct {
	t int
	Point
}

func main() {
	o := Tpoint{0, Point{Coord{3, 4}, 5}}
	println(o.dist())
}

// Output:
// 25

```
## method6
```go
package main

type Sample struct {
	Name string
}

func (s Sample) foo(i int) {
	println("in foo", s.Name, i)
}

var samples = []Sample{
	Sample{"hello"},
}

func main() {
	samples[0].foo(3)
}

// Output:
// in foo hello 3

```
## method7
```go
package main

type Sample struct {
	Name string
}

func (s *Sample) foo(i int) {
	println("in foo", s.Name, i)
}

var samples = []Sample{
	Sample{"hello"},
}

func main() {
	samples[0].foo(3)
}

// Output:
// in foo hello 3

```
## method8
```go
package main

type Sample struct {
	Name string
	Foo  []string
}

func (s *Sample) foo(j int) {
	for i, v := range s.Foo {
		println(i, v)
	}
}

var samples = []Sample{
	Sample{"hello", []string{"world"}},
}

func main() {
	samples[0].foo(3)
}

// Output:
// 0 world

```
## method9
```go
package main

type Coord struct {
	x, y int
}

func main() {
	o := Coord{3, 4}
	println(o.dist())
}

func (c Coord) dist() int { return c.x*c.x + c.y*c.y }

// Output:
// 25

```
## new0
```go
package main

func main() {
	a := new(int)
	*a = 3
	println(*a)
}

// Output:
// 3

```
## new2
```go
package main

func f() interface{} {
	return new(int)
}

func main() {
	a := f()
	println(*(a.(*int)))
}

// Output:
// 0

```
## nil1
```go
package main

func main() {
	var a error = nil

	if a == nil || a.Error() == "nil" {
		println("a is nil")
	}
}

// Output:
// a is nil

```
## nil2
```go
package main

func test() error { return nil }

func main() {
	if err := test(); nil == err {
		println("err is nil")
	}
}

// Output:
// err is nil

```
## nil3
```go
package main

type I interface {
	Hello()
}

type T struct {
	h I
}

func (t *T) Hello() { println("Hello") }

func main() {
	t := &T{}
	println(t.h != nil)
	println(t.h == nil)
	t.h = t
	println(t.h != nil)
	println(t.h == nil)
	t.h.Hello()
}

// Output:
// false
// true
// true
// false
// Hello

```
## not0
```go
package main

func main() {
	a := 0
	b := true
	c := false
	if b && c {
		a = 1
	} else {
		a = -1
	}
	println(a)
}

// Output:
// -1

```
## not1
```go
package main

func main() {
        a := 0
        b := true
        if (!b) {
                a = 1
        } else {
                a = -1
        }
        println(a)
}

// Output:
// -1

```
## not2
```go
package main

func main() {
	var b interface{} = !(1 == 2)
	println(b.(bool))
}

// Output:
// true

```
## op10
```go
package main

func main() {
	_ = 1 + 1
	println("ok")
}

// Output:
// ok

```
## op11
```go
package main

func main() {
	a, b := 1, 2
	_ = a + b
	println("ok")
}

// Output:
// ok

```
## op4
```go
package main

func main() {
	i := 102
	println(i % -1e2)
}

// Output:
// 2

```
## op6
```go
package main

type T int

func (t T) Error() string { return "T: error" }

var invalidT T

func main() {
	var err error
	if err != invalidT {
		println("ok")
	}
}

// Output:
// ok

```
## op8
```go
package main

type I interface {
	Get() interface{}
}

type T struct{}

func (T) Get() interface{} {
	return nil
}

func main() {
	var i I = T{}
	var ei interface{}

	println(i != ei)
}

// Output:
// true

```
## or0
```go
package main

func main() {
	c := false
	println(c || !c)
}

// Output:
// true

```
## or1
```go
package main

func main() {
	c := false
	println(!c || c)
}

// Output:
// true

```
## or2
```go
package main

var a = false || true

func main() {
	println(a)
}

// Output:
// true

```
## primes
```go
package main

func Primes(n int) int {
	var xs []int
	for i := 2; len(xs) < n; i++ {
		ok := true
		for _, x := range xs {
			if i%x == 0 {
				ok = false
				break
			}
		}
		if !ok {
			continue
		}
		xs = append(xs, i)
	}
	return xs[n-1]
}

func main() {
	println(Primes(3))
}

// Output:
// 5

```
## print0
```go
package main

func main() {
	print("hello")
}

// Output:
// hello

```
## ptr0
```go
package main

type myint int

func main() {
	var a myint = 2
	var b *myint = &a
	println(*b)
}

// Output:
// 2

```
## ptr1
```go
package main

func main() {
	var a int = 2
	b := &a
	println(*b)
}

// Output:
// 2

```
## ptr2
```go
package main

func f(i *int) {
	*i = *i + 3
}

func main() {
	var a int = 2
	f(&a)
	println(a)
}

// Output:
// 5

```
## ptr3
```go
package main

func f(i *int) {
	*i++
}

func main() {
	var a int = 2
	f(&a)
	println(a)
}

// Output:
// 3

```
## ptr4
```go
package main

type Foo struct {
	val int
}

func f(p *Foo) {
	p.val = p.val + 2
}

func main() {
	var a = Foo{3}
	f(&a)
	println(a.val)
}

// Output:
// 5

```
## ptr5
```go
package main

type Foo struct {
	val int
}

func main() {
	var a = &Foo{3}
	println(a.val)
}

// Output:
// 3

```
## ptr5a
```go
package main

type Foo struct {
	val int
}

func main() {
	var a = Foo{3}
	b := &a
	println(b.val)
}

// Output:
// 3

```
## ptr6
```go
package main

type Foo struct {
	val int
}

func main() {
	var a = Foo{3}
	b := &a
	println(b.val)
}

// Output:
// 3

```
## ptr8
```go
package main

var a = func() *bool { b := true; return &b }()

func main() {
	println(*a && true)
}

// Output:
// true

```
## ptr_array0
```go
package main

type T [2]int

func F0(t *T) int { return t[0] }

func main() {
	t := &T{1, 2}
	println(F0(t))
}

// Output:
// 1

```
## ptr_array1
```go
package main

type T [3]int

func F0(t *T) {
	for i, v := range t {
		println(i, v)
	}
}

func main() {
	t := &T{1, 2, 3}
	F0(t)
}

// Output:
// 0 1
// 1 2
// 2 3

```
## recover2
```go
package main

func main() {
	println("hello")

	var r interface{} = 1
	r = recover()
	if r == nil {
		println("world")
	}
}

// Output:
// hello
// world

```
## recurse1
```go
package main

type F func(a *A)

type A struct {
	Name string
	F
}

func main() {
	a := &A{"Test", func(a *A) { println("in f", a.Name) }}
	a.F(a)
}

// Output:
// in f Test

```
## recurse2
```go
package main

type F func(a *A)

type A struct {
	B string
	D
	f F
}

type D struct {
	*A
	E *A
}

func f1(a *A) { println("in f1", a.B) }

func main() {
	a := &A{B: "b", f: f1}
	a.D = D{E: a}
	println(a.D.E.B)
	a.f(a)
}

// Output:
// b
// in f1 b

```
## recurse3
```go
package main

type F func(a *A)

type A struct {
	B string
	D
}

type D struct {
	*A
	E *A
	f F
}

func f1(a *A) { println("in f1", a.B) }

func main() {
	a := &A{B: "b"}
	a.D = D{f: f1}
	a.f(a)
}

// Output:
// in f1 b

```
## ret1
```go
package main

func f(i int) (o int) { o = i + 1; return }

func main() { println(f(4)) }

// Output:
// 5

```
## ret2
```go
package main

func r2() (int, int) { return 1, 2 }

func main() {
	a, b := r2()
	println(a, b)
}

// Output:
// 1 2

```
## ret4
```go
package main

func r() int { return 1 }

func main() {
	a := r()
	println(a)
}

// Output:
// 1

```
## ret5
```go
package main

func r2() (int, int) { return 1, 2 }

var a, b int = r2()

func main() { println(a, b) }

// Output:
// 1 2

```
## ret7
```go
package main

func one() uint {
	return 1
}
func main() {
	println(one())
}

// Output:
// 1

```
## run1
```go
package main

func f() (int, int) { return 2, 3 }

func g(i, j int) int { return i + j }

func main() {
	println(g(f()))
}

// Output:
// 5

```
## run10
```go
package main

func main() {
	func() { println("hello") }()
}

// Output:
// hello

```
## run12
```go
package main

func f(a int) (int, int) {
	return a + 1, a + 2
}

func main() {
	a, b := f(3)
	println(a, b)
}

// Output:
// 4 5

```
## run13
```go
package main

func main() {
	a, b := f(3)
	println(a, b)
}

func f(a int) (int, int) {
	return a + 1, a + 2
}

// Output:
// 4 5

```
## run4
```go
package main

type fn func(int)

func f1(i int) { println("f1", i) }

func test(f fn, v int) { f(v) }

func main() { test(f1, 21) }

// Output:
// f1 21

```
## run5
```go
package main

type fn func(int)

func test(f fn, v int) { f(v) }

func main() {
	f1 := func(i int) { println("f1", i) }
	test(f1, 21)
}

// Output:
// f1 21

```
## run6
```go
package main

type fn func(int)

func test(f fn, v int) { f(v) }

func main() {
	test(func(i int) { println("f1", i) }, 21)
}

// Output:
// f1 21

```
## run7
```go
package main

type fn func(int)

func test(f fn, v int) { f(v) }

func main() {
	a := 3
	test(func(i int) { println("f1", i, a) }, 21)
}

// Output:
// f1 21 3

```
## run8
```go
package main

func main() {
	a := 3
	f := func(i int) { println("f1", i, a) }
	f(21)
}

// Output:
// f1 21 3

```
## run9
```go
package main

func main() {
	a := 3
	f := func(i int) int { println("f1", i, a); return i + 1 }
	b := f(21)
	println(b)
}

// Output:
// f1 21 3
// 22

```
## scope0
```go
package main

var a int = 1

func main() {
	println(a)
}

// Output:
// 1

```
## scope1
```go
package main

func f(a int) int {
	return 2*a + 1
}

var b int = f(3)

func main() {
	println(b)
}

// Output:
// 7

```
## scope2
```go
package main

var a int = 1

func f() { println(a) }

func main() {
	println(a)
	a := 2
	println(a)
	f()
}

// Output:
// 1
// 2
// 1

```
## scope3
```go
package main

func main() {
	a := 1
	if a := 2; a > 0 {
		println(a)
	}
	println(a)
}

// Output:
// 2
// 1

```
## scope4
```go
package main

func main() {
	a := 1
	if a := 2; a > 0 {
		println(a)
	}
	{
		a := 3
		println(a)
	}
	println(a)
}

// Output:
// 2
// 3
// 1

```
## scope5
```go
package main

var a int = 1

func f() { println(a) }

func main() {
	println(a)
	a = 2
	println(a)
	f()
}

// Output:
// 1
// 2
// 2

```
## select3
```go
package main

func main() {
	select {
	default:
		println("no comm")
	}
	println("bye")
}

// Output:
// no comm
// bye

```
## shift0
```go
package main

func main() {
	var rounds uint64
	var cost uint32 = 2
	rounds = 1 << cost
	println(rounds)
}

// Output:
// 4

```
## shift2
```go
package main

func main() {
	var u uint64
	var v uint32
	println(u << v)
}

// Output:
// 0

```
## shift3
```go
package main

const a = 1.0

const b = a + 3

func main() { println(b << (1)) }

// Output:
// 8

```
## str
```go
package main

func main() {
	println("hello world")
}

// Output:
// hello world

```
## str1
```go
package main

const itoa64 = "./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"

func main() {
	for i, r := range itoa64 {
		if r == '1' {
			println(i)
		}
	}
}

// Output:
// 3

```
## str2
```go
package main

const itoa64 = "./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"

func main() {
	if itoa64[3] == '1' {
		println("ok")
	}
}

// Output:
// ok

```
## struct_
```go
package main

type T struct {
	f int
	g int
}

func main() {
	a := T{7, 8}
	println(a.f, a.g)
}

// Output:
// 7 8

```
## struct0
```go
package main

type T struct {
	f int
	g int
}

func main() {
	a := T{}
	println(a.f, a.g)
}

// Output:
// 0 0

```
## struct0a
```go
package main

type T struct {
	f int
}

func main() {
	a := T{}
	println(a.f)
	a.f = 8
	println(a.f)
}

// Output:
// 0
// 8

```
## struct1
```go
package main

type T struct {
	f int
	g struct {
		h int
	}
}

func main() {
	a := T{}
	a.g.h = 3 + 2
	println("a.g.h", a.g.h)
}

// Output:
// a.g.h 5

```
## struct10
```go
package main

type T struct {
	f int
	g int64
}

func main() {
	a := T{g: 8}
	println(a.f, a.g)
}

// Output:
// 0 8

```
## struct16
```go
package main

type S1 struct {
	Name string
}

type S2 struct {
	*S1
}

func main() {
	s1 := S1{"foo"}
	s2 := S2{&s1}
	println(s2.Name)
}

// Output:
// foo

```
## struct17
```go
package main

type S1 struct {
	Name string
}

type S2 struct {
	*S1
}

func main() {
	s1 := &S1{"foo"}
	s2 := S2{s1}
	println(s2.Name)
}

// Output:
// foo

```
## struct2
```go
package main

type T struct {
	f int
	g int
}

func main() {
	a := T{g: 8, f: 7}
	println(a.f, a.g)
}

// Output:
// 7 8

```
## struct20
```go
package main

type SecretProvider func(user, realm string) string

type BasicAuth struct {
	Realm   string
	Secrets SecretProvider
}

func (a *BasicAuth) CheckAuth() string { return a.Secrets("me", a.Realm) }

func secretBasic(user, realm string) string { return user + "-" + realm }

func main() {
	b := &BasicAuth{"test", secretBasic}
	s := b.CheckAuth()
	println(s)
}

// Output:
// me-test

```
## struct21
```go
package main

type SecretProvider func(user, realm string) string

type BasicAuth struct {
	Realm   string
	Secrets SecretProvider
}

func (a *BasicAuth) CheckAuth() string { return a.Secrets("me", a.Realm) }

func (a *BasicAuth) secretBasic(user, realm string) string { return a.Realm + "-" + user + "-" + realm }

func main() {
	b := &BasicAuth{Realm: "test"}
	b.Secrets = b.secretBasic
	s := b.CheckAuth()
	println(s)
}

// Output:
// test-me-test

```
## struct22
```go
package main

type S struct {
	Child *S
	Name  string
}

func main() {
	s := &S{Name: "root"}
	s.Child = &S{Name: "child"}
	println(s.Child.Name)
}

// Output:
// child

```
## struct24
```go
package main

var a = &T{}

type T struct{}

func main() {
	println(a != nil)
}

// Output:
// true

```
## struct29
```go
package main

type T1 struct {
	A []T2
	B []T2
}

type T2 struct {
	name string
}

var t = T1{}

func main() {
	println("ok")
}

// Output:
// ok

```
## struct3
```go
package main

type T struct {
	f int
	g int
	h struct {
		k int
	}
}

func f(i int) int { return i + 3 }

func main() {
	a := T{}
	a.h.k = f(4)
	println(a.h.k)
}

// Output:
// 7

```
## struct30
```go
package main

type T1 struct {
	A []T2
	M map[uint64]T2
}

type T2 struct {
	name string
}

var t = T1{}

func main() {
	println("ok")
}

// Output:
// ok

```
## struct31
```go
package main

type T struct {
	bool
}

var t = T{true}

func main() {
	println(t.bool && true)
}

// Output:
// true

```
## struct32
```go
package main

type T0 struct {
	name string
}

type lookupFunc func(s string) T0

type T1 struct {
	name string
	info lookupFunc
}

func (t T0) F1() bool { println("in F1"); return true }

type T2 struct {
	t1 T1
}

func (t2 *T2) f() {
	info := t2.t1.info("foo")
	println(info.F1())
}

var t0 = T0{"t0"}

func main() {
	t := &T2{T1{
		"bar", func(s string) T0 { return t0 },
	}}

	println("hello")
	println(t.t1.info("foo").F1())
}

// Output:
// hello
// in F1
// true

```
## struct33
```go
package main

type T0 struct {
	name string
}

type lookupFunc func(s string) T0

type T1 struct {
	name string
	info lookupFunc
}

func (t T0) F1() bool { println("in F1"); return true }

var t0 = T0{"t0"}

func look(s string) T0 { println("in look"); return t0 }

var table = []*T1{{
	name: "bar",
	info: look,
},
}

func main() {
	info := table[0].info
	println(info("foo").F1())
}

// Output:
// in look
// in F1
// true

```
## struct34
```go
package main

type T struct {
	f func(*T)
}

func f1(t *T) { t.f = f2 }

func f2(t *T) { t.f = f1 }

func main() {
	println("ok")
}

// Output:
// ok

```
## struct35
```go
package main

type T struct {
	f func(*T)
}

func f1(t *T) { t.f = f1 }

func main() {
	t := &T{}
	f1(t)
	println(t.f != nil)
}

// Output:
// true

```
## struct38
```go
package main

type T struct {
	f func(t *T1)
	y *xxx
}

type T1 struct {
	T
}

type xxx struct{}

var (
	x1 *T1 = x
	x      = &T1{}
)

func main() {
	println("ok")
}

// Output:
// ok

```
## struct39
```go
package main

type T struct {
	t *T1
	y *xxx
}

type T1 struct {
	T
}

var x = &T1{}
var t = &T{}

type xxx struct{}

func main() {
	println("ok")
}

// Output:
// ok

```
## struct4
```go
package main

type T3 struct {
	k int
}

type T2 struct {
	h int
	T3
}

type T struct {
	f int
	g int
	T2
}

func f(i int) int { return i * i }

func main() {
	a := T{5, 7, T2{f(8), T3{9}}}
	println(a.f, a.g, a.h, a.k)
}

// Output:
// 5 7 64 9

```
## struct40
```go
package main

type T struct {
	t *T1
	y *xxx
}

type T1 struct {
	T
}

func f(t *T) { println("in f") }

var x = &T1{}

type xxx struct{}

func main() {
	println("ok")
}

// Output:
// ok

```
## struct41
```go
package main

type Ti func(*T)

type T1 struct {
	t Ti
}

type T struct {
	t Ti
	y *xxx
}

func f(t *T) { println("in f") }

type xxx struct{}

var x = &T1{t: f}

func main() {
	x.t = f
	println("ok")
}

// Output:
// ok

```
## struct42
```go
package main

type T struct {
	t func(*T)
	y *xxx
}

func f(t *T) { println("in f") }

var x = &T{t: f}

type xxx struct{}

func main() {
	println("ok")
}

// Output:
// ok

```
## struct43
```go
package main

type T struct {
	t func(*T)
	y *xxx
}

func f(t *T) { println("in f") }

type xxx struct{}

func main() {
	x := &T{}
	x.t = f
	println("ok")
}

// Output:
// ok

```
## struct44
```go
package main

type Ti func(*T) X

type T1 struct {
	t Ti
}

type T struct {
	t Ti
	y *xxx
}

func f(t *T) X { println("in f"); return X{} }

type X struct{ Name string }

type xxx struct{}

var x = &T1{t: f}

func main() {
	println("ok")
}

// Output:
// ok

```
## struct45
```go
package main

type T struct {
	b bool
}

type T1 struct {
	T
}

func main() {
	t := &T1{}
	t.b = true
	println(t.b)
}

// Output:
// true

```
## struct48
```go
package main

type List struct {
	Next *List
	Num  int
}

func add(l *List, n int) *List {
	if l == nil {
		return &List{Num: n}
	}
	l.Next = add(l.Next, n)
	return l
}

func pr(l *List) {
	if l == nil {
		println("")
		return
	}
	print(l.Num)
	pr(l.Next)
}

func main() {
	a := add(nil, 0)
	pr(a)
	a = add(a, 1)
	pr(a)
	a = add(a, 2)
	pr(a)
}

// Output:
// 0
// 01
// 012

```
## struct49
```go
package main

type S struct {
	ts map[string][]*T
}

type T struct {
	s *S
}

func (c *S) getT(addr string) (t *T, ok bool) {
	cns, ok := c.ts[addr]
	if !ok || len(cns) == 0 {
		return nil, false
	}

	t = cns[len(cns)-1]
	c.ts[addr] = cns[:len(cns)-1]
	return t, true
}

func main() {
	s := &S{
		ts: map[string][]*T{},
	}
	s.ts["test"] = append(s.ts["test"], &T{s: s})

	t, ok := s.getT("test")
	println(t != nil, ok)
}

// Output:
// true true

```
## struct5
```go
package main

type T struct {
	f int
	g int
}

func f(i int) int { return i * i }

func main() {
	a := T{7, f(4)}
	println(a.f, a.g)
}

// Output:
// 7 16

```
## struct54
```go
package main

type S struct {
	t *T
}

func newS() *S {
	return &S{
		t: &T{u: map[string]*U{}},
	}
}

type T struct {
	u map[string]*U
}

type U struct {
	a int
}

func main() {
	s := newS()
	_ = s

	println("ok")
}

```
## struct6
```go
package main

type T struct {
	f, g int
}

func main() {
	a := T{7, 8}
	println(a.f, a.g)
}

// Output:
// 7 8

```
## struct62
```go
package main

func main() {
	type A struct{ *A }
	v := &A{}
	v.A = v
	println("v.A.A = v", v.A.A == v)
}

// Output:
// v.A.A = v true

```
## struct7
```go
package main

type Opt struct {
	b bool
}

type T struct {
	i   int
	opt Opt
}

func main() {
	a := T{}
	println(a.i, a.opt.b)
}

// Output:
// 0 false

```
## struct8
```go
package main

type T3 struct {
	k int
}

type T2 struct {
	h int
	T3
}

type T struct {
	f int
	g int
	T2
}

func f(i int) int { return i * i }

func main() {
	a := T{5, 7, T2{8, T3{9}}}
	println(a.f, a.g, a.T2.h, a.T2.T3.k)
}

// Output:
// 5 7 8 9

```
## struct9
```go
package main

type T struct {
	f int
	g int64
}

func main() {
	a := T{7, 8}
	println(a.f, a.g)
}

// Output:
// 7 8

```
## switch_
```go
package main

func main() {
	a := 3
	switch a {
	case 0:
		println(200)
	default:
		println(a)
	case 3:
		println(100)
	}
}

// Output:
// 100

```
## switch1
```go
package main

func main() {
	i := 1

	switch i {
	case 0:
		println(i)
	default:
		println("not nul")
	}
}

// Output:
// not nul

```
## switch10
```go
package main

func main() {
	var i interface{} = "truc"

	switch a := i.(type) {
	case string:
		println("string", a+" ok")
	default:
		println("unknown")
	}
}

// Output:
// string truc ok

```
## switch11
```go
package main

func main() {
	var i interface{} = "truc"

	switch b := 2; a := i.(type) {
	case string:
		println("string", a+" ok")
	default:
		println("unknown", b)
	}
}

// Output:
// string truc ok

```
## switch12
```go
package main

func main() {
	var i interface{}

	switch a := i.(type) {
	case string:
		println("string", a+" ok")
	case nil:
		println("i is nil")
	default:
		println("unknown")
	}
}

// Output:
// i is nil

```
## switch2
```go
package main

func main() {
	i := 1

	switch i {
	case 0, 1, 2:
		println(i)
	default:
		println("not nul")
	}
}

// Output:
// 1

```
## switch20
```go
package main

func main() {
	i := 1

	switch i {
	case 1:
		// nothing to do
	default:
		println("not run")
	}
	println("bye")
}

// Output:
// bye

```
## switch22
```go
package main

type T struct {
	Name string
}

func f(t interface{}) {
	switch ext := t.(type) {
	case *T:
		println("*T", ext.Name)
	default:
		println("unknown")
	}
}

func main() {
	f(&T{"truc"})
}

// Output:
// *T truc

```
## switch23
```go
package main

func getType() string { return "T1" }

func main() {
	switch getType() {
	case "T1":
		println("T1")
	default:
		println("default")
	}
}

// Output:
// T1

```
## switch24
```go
package main

func main() {
	a := 3
	switch a + 2 {
	case 5:
		println(5)
	default:
		println("default")
	}
	println("bye")
}

// Output:
// 5
// bye

```
## switch25
```go
package main

func main() {
	a := 2
	switch {
	case a == 1:
		println(1)
	case a == 2:
		println(2)
	default:
		println("default")
	}
	println("bye")
}

// Output:
// 2
// bye

```
## switch26
```go
package main

func main() {
	a := 1
	switch a := 2; {
	case a == 1:
		println(1)
	case a == 2:
		println(2)
	default:
		println("default")
	}
	println(a)
}

// Output:
// 2
// 1

```
## switch27
```go
package main

func main() {
	//a := false
	switch false {
	case true:
		println("true")
	case false:
		println("false")
	}
	println("bye")
}

// Output:
// false
// bye

```
## switch28
```go
package main

func main() {
	switch {
	case true:
		println("true")
	case false:
		println("false")
	}
	println("bye")
}

// Output:
// true
// bye

```
## switch29
```go
package main

func main() {
	a := 3
	switch a {
	case 3:
		println("three")
	}
	println("bye")
}

// Output:
// three
// bye

```
## switch3
```go
package main

func main() {
	a := 3
	switch a {
	case 0:
		println(200)
	case 3:
		println(100)
		fallthrough
	default:
		println(a)
	}
}

// Output:
// 100
// 3

```
## switch30
```go
package main

func main() {
	a := 3
	switch a {
	default:
		//println("default")
	case 3:
		println("three")
	}
	println("bye")
}

// Output:
// three
// bye

```
## switch31
```go
package main

func main() {
	switch {
	}
	println("bye")
}

// Output:
// bye

```
## switch32
```go
package main

func main() {
	a := 1
	switch a {
	}
	println("bye", a)
}

// Output:
// bye 1

```
## switch33
```go
package main

func main() {
	var a interface{}
	switch a.(type) {
	}
	println("bye")
}

// Output:
// bye

```
## switch34
```go
package main

func main() {
	var a interface{}
	a = []int{3}
	switch a.(type) {
	case []int:
		println("a is []int")
	case []string:
		println("a is []string")
	}

	var b interface{}
	b = []string{"hello"}
	switch b.(type) {
	case []int:
		println("b is []int")
	case []string:
		println("b is []string")
	}
	println("bye")
}

// Output:
// a is []int
// b is []string
// bye

```
## switch35
```go
package main

func main() {
	a := 2
	switch {
	case a == 1:
		println(1)
	case a == 2:
		println(2)
	default:
	}
	println("bye")
}

// Output:
// 2
// bye

```
## switch36
```go
package main

func main() {
	a := 2
	switch {
	case a == 1:
		println(1)
	case a == 2:
	}
	println("bye")
}

// Output:
// bye

```
## switch37
```go
package main

func main() {
	a := 2
	switch {
	case a == 1:
		println(1)
	case a == 3:
	default:
	}
	println("bye")
}

// Output:
// bye

```
## switch38
```go
package main

func isSeparator(c byte) bool {
	switch c {
	case '(', ')', '<', '>', '@', ',', ';', ':', '\\', '"', '/', '[', ']', '?', '=', '{', '}', ' ', '\t':
		return true
	}
	return false
}

func main() {
	s := "max-age=20"
	for _, c := range []byte(s) {
		println(string(c), isSeparator(c))
	}
}

// Output:
// m false
// a false
// x false
// - false
// a false
// g false
// e false
// = true
// 2 false
// 0 false

```
## switch39
```go
package main

func f(params ...interface{}) {
	switch p0 := params[0].(type) {
	case string:
		println("string:", p0)
	default:
		println("not a string")
	}
}

func main() {
	f("Hello")
}

// Output:
// string: Hello

```
## switch4
```go
package main

func main() {
	a := 3
	switch b := "foo"; a {
	case 0:
		println(200)
	case 3:
		println(100)
		fallthrough
	default:
		println(a, b)
	}
}

// Output:
// 100
// 3 foo

```
## switch40
```go
package main

func f(params ...interface{}) {
	switch params[0].(type) {
	case string:
		println("a string")
	default:
		println("not a string")
	}
}

func main() {
	f("Hello")
}

// Output:
// a string

```
## switch5
```go
package main

func main() {
	i := 1

	switch i {
	case 0, 1, 2:
		if i == 1 {
			println("one")
			break
		}
		println(i)
	default:
		println("not nul")
	}
}

// Output:
// one

```
## switch6
```go
package main

func main() {
	a := 3
	switch b := "foo"; {
	case a == 0:
		println(200)
	case a == 3:
		println(100)
		fallthrough
	default:
		println(a, b)
	}
}

// Output:
// 100
// 3 foo

```
## switch7
```go
package main

func main() {
	var i interface{} = "truc"

	switch i.(type) {
	case string:
		println("string")
	default:
		println("unknown")
	}
}

// Output:
// string

```
## type0
```go
package main

type newInt int

func main() {
	var a newInt
	println(a)
}

// Output:
// 0

```
## type12
```go
package main

type T1 struct {
	T2 *T2
}

func (t *T1) Get() string {
	return t.T2.V().Name
}

type T2 struct {
	Name string
}

func (t *T2) V() *T2 {
	if t == nil {
		return defaultT2
	}
	return t
}

var defaultT2 = &T2{"no name"}

func main() {
	t := &T1{}
	println(t.Get())
}

// Output:
// no name

```
## type13
```go
package main

var a = &T{}

type T struct{}

func main() {
	println(a != nil)
}

// Output:
// true

```
## type15
```go
package main

func main() {
	err := error(nil)
	println(err == nil)
}

// Output:
// true

```
## type18
```go
package main

type T struct {
	name string
	size int
}

var table = []*T{{
	name: "foo",
	size: 2,
}}

var s = table[0].size

func main() {
	println(s)
}

// Output:
// 2

```
## type19
```go
package main

type T struct {
	name string
	size int
}

var table = map[int]*T{
	0: {
		name: "foo",
		size: 2,
	}}

var s = table[0].size

func main() {
	println(s)
}

// Output:
// 2

```
## type22
```go
package main

type T1 T

func foo() T1 {
	return T1(T{"foo"})
}

type T struct {
	Name string
}

func main() {
	println(foo().Name)
}

// Output:
// foo

```
## var_
```go
package main

func main() {
	var a, b, c int
	println(a, b, c)
}

// Output:
// 0 0 0

```
## var10
```go
package main

var _ = true
var _ = "hello"

func main() {
	println("hello")
}

// Output:
// hello

```
## var11
```go
package main

var a, _, _, b = 1, true, "foo", 2

func main() {
	println(a, b)
}

// Output:
// 1 2

```
## var12
```go
package main

var (
	a = b
	b = "hello"
)

func main() {
	println(a)
}

// Output:
// hello

```
## var13
```go
package main

var (
	a = concat("hello", b)
	b = concat(" ", c, "!")
	c = d
	d = "world"
)

func concat(a ...string) string {
	var s string
	for _, ss := range a {
		s += ss
	}
	return s
}

func main() {
	println(a)
}

// Output:
// hello world!

```
## var15
```go
package main

var a int = 2

func inca() {
	a = a + 1
}

func main() {
	inca()
	println(a)
}

// Output:
// 3

```
## var16
```go
package main

func getArray() ([]int, error) { println("getArray"); return []int{1, 2}, nil }

func getNum() (int, error) { println("getNum"); return 3, nil }

func main() {
	if a, err := getNum(); err != nil {
		println("#1", a)
	} else if a, err := getArray(); err != nil {
		println("#2", a)
	}
	println("#3")
}

// Output:
// getNum
// getArray
// #3

```
## var2
```go
package main

func main() {
	var a int = 2
	println(a)
}

// Output:
// 2

```
## var3
```go
package main

func main() {
	var a, b int = 2, 3
	println(a, b)
}

// Output:
// 2 3

```
## var4
```go
package main

func main() {
	var a, b = 2, 3
	println(a, b)
}

// Output:
// 2 3

```
## var9
```go
package main

var a = "sdofjsdfj"
var z = a[0:2]

func main() {
	println(z)
}

// Output:
// sd

```
## variadic4
```go
package main

func variadic(s ...string) {}

func f(s string) { println(s + "bar") }

func main() { f("foo") }

// Output:
// foobar

```
