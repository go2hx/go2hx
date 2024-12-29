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
## print0
```go
package main

func main() {
	print("hello")
}

// Output:
// hello

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
## ret5
```go
package main

func r2() (int, int) { return 1, 2 }

var a, b int = r2()

func main() { println(a, b) }

// Output:
// 1 2

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
