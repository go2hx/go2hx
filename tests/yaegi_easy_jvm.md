# yaegi_easy_jvm
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
## run10
```go
package main

func main() {
	func() { println("hello") }()
}

// Output:
// hello

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
