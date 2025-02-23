# yaegi_medium_js
## a21
```go
package main

import "fmt"

func main() {
	a := []byte("hello")
	fmt.Println(a)
	a = append(a, '=')
	fmt.Println(a)
}

// Output:
// [104 101 108 108 111]
// [104 101 108 108 111 61]

```
## a23
```go
package main

import "fmt"

func main() {
	var key, salt [32]byte
	for i := range key {
		key[i] = byte(i)
		salt[i] = byte(i + 32)
	}
	fmt.Println(key)
	fmt.Println(salt)
}

// Output:
// [0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31]
// [32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63]

```
## a24
```go
package main

import "fmt"

func main() {
	for i := 0; i < 2; i++ {
		var buf [8]byte
		var x int
		fmt.Println(buf, x)
		for i := range buf {
			buf[i] = byte(i)
			x = i
		}
		fmt.Println(buf, x)
	}
}

// Output:
// [0 0 0 0 0 0 0 0] 0
// [0 1 2 3 4 5 6 7] 7
// [0 0 0 0 0 0 0 0] 0
// [0 1 2 3 4 5 6 7] 7

```
## a25
```go
package main

import "fmt"

func main() {
	var buf [8]byte
	for i := 0; i < 2; i++ {
		for i := range buf {
			buf[i] += byte(i)
		}
		fmt.Println(buf)
	}
}

// Output:
// [0 1 2 3 4 5 6 7]
// [0 2 4 6 8 10 12 14]

```
## addr1
```go
package main

import "fmt"

type T struct {
	A int
	B int
}

func main() {
	a := &[]T{
		{1, 2},
		{3, 4},
	}
	fmt.Println("a:", a)
	x := &(*a)[1:][0]
	fmt.Println("x:", x)
}

// Output:
// a: &[{1 2} {3 4}]
// x: &{3 4}

```
## addr3
```go
package main

import (
	"fmt"
)

func main() {
	var a interface{}
	a = 2
	fmt.Println(a)

	var b *interface{}
	b = &a
	fmt.Println(*b)

	var c **interface{}
	c = &b
	fmt.Println(**c)
}

// Output:
// 2
// 2
// 2

```
## append3
```go
package main

import "fmt"

func main() {
	a := []int{1, 2}
	b := [2]int{3, 4}
	fmt.Println(append(a, b[:]...))
	fmt.Println(append(a, []int{5, 6}...))
}

// Output:
// [1 2 3 4]
// [1 2 5 6]

```
## assign5
```go
package main

import "fmt"

func main() {
	t := []int{1, 2}
	fmt.Println(t)
	t[0], t[1] = t[1], t[0]
	fmt.Println(t)
}

// Output:
// [1 2]
// [2 1]

```
## assign6
```go
package main

import "fmt"

func main() {
	t := map[string]int{"a": 1, "b": 2}
	fmt.Println(t["a"], t["b"])
	t["a"], t["b"] = t["b"], t["a"]
	fmt.Println(t["a"], t["b"])
}

// Output:
// 1 2
// 2 1

```
## assign7
```go
package main

import "fmt"

func main() {
	a := 3
	t := map[string]int{"a": 1, "b": 2}
	s := []int{4, 5}
	fmt.Println(a, t["b"], s)
	a, t["b"], s[1] = t["b"], s[1], a
	fmt.Println(a, t["b"], s)
}

// Output:
// 3 2 [4 5]
// 2 5 [4 3]

```
## closure13
```go
package main

import (
	"fmt"
	"strconv"
)

type monkey struct {
	test func() int
}

func main() {
	input := []string{"1", "2", "3"}

	var monkeys []*monkey

	for _, v := range input {
		kong := monkey{}
		divisor, err := strconv.Atoi(v)
		if err != nil {
			panic(err)
		}
		fmt.Print(divisor, " ")
		kong.test = func() int {
			return divisor
		}
		monkeys = append(monkeys, &kong)
	}

	for _, mk := range monkeys {
		fmt.Print(mk.test(), " ")
	}
}

// Output:
// 1 2 3 1 2 3

```
## closure14
```go
package main

import "fmt"

type monkey struct {
	test func() int
}

func getk(k int) (int, error) { return k, nil }

func main() {
	input := []string{"1", "2", "3"}

	var monkeys []*monkey

	for k := range input {
		kong := monkey{}
		divisor, _ := getk(k)
		fmt.Print(divisor, " ")
		kong.test = func() int {
			return divisor
		}
		monkeys = append(monkeys, &kong)
	}

	for _, mk := range monkeys {
		fmt.Print(mk.test(), " ")
	}
}

// Output:
// 0 1 2 0 1 2

```
## composite15
```go
package main

import (
	"fmt"
)

func interfaceAsInts() {
	var a interface{}
	b := 2
	c := 3
	a = []int{b, c}

	d, ok := a.([]int)
	if !ok {
		println("nope")
		return
	}

	for _, v := range d {
		fmt.Println(v)
	}
}

func interfaceAsInterfaces() {
	var a, b, c interface{}
	b = 2
	c = 3
	a = []interface{}{b, c}

	d, ok := a.([]interface{})
	if !ok {
		println("nope")
		return
	}
	fmt.Println(d)

	for _, v := range d {
		fmt.Println(v)
	}
}

func main() {
	interfaceAsInts()
	interfaceAsInterfaces()
}

// Output:
// 2
// 3
// [2 3]
// 2
// 3

```
## composite18
```go
package main

import "fmt"

type fn func(string, string) bool

var funcs = []fn{
	cmpLessFn,
	cmpGreaterFn,
	nil,
}

func cmpLessFn(a string, b string) bool {
	return a < b
}

func cmpGreaterFn(a string, b string) bool {
	return a > b
}

func main() {
	for _, f := range funcs {
		if f == nil {
			continue
		}
		fmt.Println(f("a", "b"))
	}
}

// Output:
// true
// false

```
## composite19
```go
package main

import "fmt"

type fn func(string, string) bool

var funcs = map[string]fn{
	"less":    cmpLessFn,
	"greater": cmpGreaterFn,
	"none":     nil,
}

func cmpLessFn(a string, b string) bool {
	return a < b
}

func cmpGreaterFn(a string, b string) bool {
	return a > b
}

func main() {
	for _, n := range []string{"less", "greater", "none"} {
		f := funcs[n]
		if f == nil {
			continue
		}
		fmt.Println(f("a", "b"))
	}
}

// Output:
// true
// false

```
## const26
```go
package main

import (
	"fmt"
)

func init() {
	fmt.Println(constString)
	fmt.Println(const2)
	fmt.Println(varString)
}

const constString string = "hello"

const (
	const1 = iota + 10
	const2
	const3
)

var varString string = "test"

func main() {}

// Output:
// hello
// 11
// test

```
## const5
```go
package main

import (
	"fmt"
)

const (
	a uint8 = 2 * iota
	b
	c
)

func main() {
	fmt.Printf("%T\n", c)
	fmt.Println(a, b, c)
}

// Output:
// uint8
// 0 2 4

```
## defer0
```go
package main

import "fmt"

func main() {
	println("hello")
	defer fmt.Println("bye")
	defer fmt.Println("au revoir")
	println("world")
}

// Output:
// hello
// world
// au revoir
// bye

```
## defer8
```go
package main

import "fmt"

func f1(m map[string]string) {
	defer delete(m, "foo")
	defer delete(m, "test")

	fmt.Println(m)
}

func main() {
	m := map[string]string{
		"foo": "bar",
		"baz": "bat",
	}
	f1(m)

	fmt.Println(m)
}

// Output:
// map[baz:bat foo:bar]
// map[baz:bat]

```
## for6
```go
package main

import "fmt"

func main() {
	s := "三"
	for i := 0; i < len(s); i++ {
		fmt.Printf("byte %d: %d\n", i, s[i])
	}
	for i, r := range s {
		fmt.Printf("rune %d: %d\n", i, r)
	}
}

// Output:
// byte 0: 228
// byte 1: 184
// byte 2: 137
// rune 0: 19977

```
## fun10
```go
package main

import "fmt"

func f() func() {
	return nil
}

func main() {
	g := f()
	fmt.Printf("%T %v\n", g, g)
	if g == nil {
		fmt.Println("nil func")
	}
}

// Output:
// func() <nil>
// nil func

```
## gen4
```go
package main

import "fmt"

type List[T any] struct {
	head, tail *element[T]
}

// A recursive generic type.
type element[T any] struct {
	next *element[T]
	val  T
}

func (lst *List[T]) Push(v T) {
	if lst.tail == nil {
		lst.head = &element[T]{val: v}
		lst.tail = lst.head
	} else {
		lst.tail.next = &element[T]{val: v}
		lst.tail = lst.tail.next
	}
}

func (lst *List[T]) GetAll() []T {
	var elems []T
	for e := lst.head; e != nil; e = e.next {
		elems = append(elems, e.val)
	}
	return elems
}

func main() {
	lst := List[int]{}
	lst.Push(10)
	lst.Push(13)
	lst.Push(23)
	fmt.Println("list:", lst.GetAll())
}

// Output:
// list: [10 13 23]

```
## interface1
```go
package main

import "fmt"

type fii interface {
	Hello()
}

type Boo struct {
	Name string
}

func (b *Boo) Hello() {
	fmt.Println("Hello", b)
	fmt.Println(b.Name)
}

func inCall(foo fii) {
	fmt.Println("inCall")
	foo.Hello()
}

func main() {
	fmt.Println("in")
	boo := &Boo{"foo"}
	inCall(boo)
}

// Output:
// in
// inCall
// Hello &{foo}
// foo

```
## interface2
```go
package main

import "fmt"

type fii interface {
	Hello()
}

type Boo struct {
	Name string
}

type Bar struct{}

func (b Bar) Hello() { fmt.Println("b:", b) }

func (b Boo) Hello() {
	fmt.Println("Hello", b)
	fmt.Println(b.Name)
}

func inCall(foo fii) {
	fmt.Println("inCall")
	switch a := foo.(type) {
	case Boo:
		a.Hello()
	default:
		fmt.Println("a:", a)
	}
}

func main() {
	boo := Boo{"foo"}
	inCall(boo)
	inCall(Bar{})
}

// Output:
// inCall
// Hello {foo}
// foo
// inCall
// a: {}

```
## interface27
```go
package main

import "fmt"

var errs = map[int]error{0: nil}

func main() {
	fmt.Println(errs)
}

// Output:
// map[0:<nil>]

```
## interface28
```go
package main

import "fmt"

var errs = []error{nil}

func main() {
	fmt.Println(errs)
}

// Output:
// [<nil>]

```
## interface3
```go
package main

import "fmt"

type fii interface {
	Hello()
}

type Boo struct {
	Name string
}

func (b Boo) Hello() {
	fmt.Println("Hello", b)
	fmt.Println(b.Name)
}

func inCall(foo fii) {
	fmt.Println("inCall")
	foo.Hello()
}

func main() {
	boo := Boo{"foo"}
	inCall(boo)
}

// Output:
// inCall
// Hello {foo}
// foo

```
## interface4
```go
package main

import "fmt"

type fii interface {
	Hello()
}

type Boo struct {
	Name string
}

type Bir struct {
	Boo
}

func (b Boo) Hello() {
	fmt.Println("Hello", b)
	fmt.Println(b.Name)
}

func inCall(foo fii) {
	fmt.Println("inCall")
	foo.Hello()
}

func main() {
	bir := Bir{Boo{"foo"}}
	inCall(bir)
}

// Output:
// inCall
// Hello {foo}
// foo

```
## iota
```go
package main

import "fmt"

const (
	Foo = iota
	Bar
	Baz
)

const (
	Asm = iota
	C
	Java
	Go
)

func main() {
	fmt.Println(Foo, Bar, Baz)
	fmt.Println(Asm, C, Java, Go)
}

// Output:
// 0 1 2
// 0 1 2 3

```
## iota0
```go
package main

import "fmt"

func main() {
	const (
		Foo = iota
		Bar
		Baz
	)

	const (
		Asm = iota
		C
		Java
		Go
	)

	fmt.Println(Foo, Bar, Baz)
	fmt.Println(Asm, C, Java, Go)
}

// Output:
// 0 1 2
// 0 1 2 3

```
## issue_dash_1065
```go
package main

import "fmt"

type AST struct {
	Num      int
	Children []AST
}

func newAST(num int, root AST, children ...AST) AST {
	return AST{num, append([]AST{root}, children...)}
}

func main() {
	ast := newAST(1, AST{}, AST{})
	fmt.Println(ast)
}

// Output:
// {1 [{0 []} {0 []}]}

```
## map16
```go
package main

import "fmt"

func main() {
	users := make(map[string]string)

	v, exists := users["a"]
	fmt.Println(v, exists)

	if exists == true {
		//if exists {
		fmt.Println("exists", v)
	} else {
		fmt.Println("not exists")
	}
}

// Output:
//  false
// not exists

```
## map5
```go
package main

import "fmt"

func main() {
	dict := map[string]string{"bidule": "machin", "truc": "bidule"}
	r, ok := dict["xxx"]
	fmt.Println(r, ok)
	r, ok = dict["truc"]
	fmt.Println(r, ok)
}

// Output:
//  false
// bidule true

```
## method0
```go
package main

import "fmt"

type Foo struct {
}

func (Foo) Call() {
	fmt.Println("Foo Called")
}

type Bar struct {
	Foo
}

type Baz struct {
	Foo
}

func (Baz) Call() {
	fmt.Println("Baz Called")
}

func main() {
	Foo{}.Call()
	Bar{}.Call()
	Baz{}.Call()
}

// Output:
// Foo Called
// Foo Called
// Baz Called

```
## method33
```go
package main

import (
	"fmt"
)

type T1 struct{}

func (t1 T1) f() {
	fmt.Println("T1.f()")
}

func (t1 T1) g() {
	fmt.Println("T1.g()")
}

type T2 struct {
	T1
}

func (t2 T2) f() {
	fmt.Println("T2.f()")
}

type I interface {
	f()
}

func printType(i I) {
	if t1, ok := i.(T1); ok {
		println("T1 ok")
		t1.f()
		t1.g()
	}

	if t2, ok := i.(T2); ok {
		println("T2 ok")
		t2.f()
		t2.g()
	}
}

func main() {
	println("T1")
	printType(T1{})
	println("T2")
	printType(T2{})
}

// Output:
// T1
// T1 ok
// T1.f()
// T1.g()
// T2
// T2 ok
// T2.f()
// T1.g()

```
## method5
```go
package main

import "fmt"

type Foo struct {
}

func (Foo) Show() {
	fmt.Println("Foo Showed")
}

func (f Foo) Call() {
	fmt.Println("Foo Called")
	f.Show()
}

type Bar struct {
	Foo
}

type Baz struct {
	Foo
}

func (Baz) Call() {
	fmt.Println("Baz Called")
}

func (Baz) Show() {
	fmt.Println("Baz Showed")
}

func main() {
	Foo{}.Call()
	Bar{}.Call()
	Baz{}.Call()
}

// Output:
// Foo Called
// Foo Showed
// Foo Called
// Foo Showed
// Baz Called

```
## named0
```go
package main

import "fmt"

type Root struct {
	Name string
}

func (r *Root) Hello() {
	fmt.Println("Hello", r.Name)
}

type One = Root

func main() {
	one := &One{Name: "one"}
	displayOne(one)
	displayRoot(one)

	root := &Root{Name: "root"}
	displayOne(root)
	displayRoot(root)
}

func displayOne(val *One) {
	fmt.Println(val)
}

func displayRoot(val *Root) {
	fmt.Println(val)
}

// Output:
// &{one}
// &{one}
// &{root}
// &{root}

```
## op2
```go
package main

import "fmt"

func main() {
	a := 64
	a += 64
	fmt.Printf("a: %v %T", a, a)
	fmt.Println()

	b := 64
	b -= 64
	fmt.Printf("b: %v %T", b, b)
	fmt.Println()

	c := 64
	c *= 64
	fmt.Printf("c: %v %T", c, c)
	fmt.Println()

	d := 64
	d /= 64
	fmt.Printf("d: %v %T", d, d)
	fmt.Println()

	e := 64
	e %= 64
	fmt.Printf("e: %v %T", e, e)
	fmt.Println()
}

// Output:
// a: 128 int
// b: 0 int
// c: 4096 int
// d: 1 int
// e: 0 int

```
## op3
```go
package main

import "fmt"

func main() {
	a := -1.2
	fmt.Printf("a: %v %T\n", a, a)
	b := -(2 + 1i)
	fmt.Printf("b: %v %T\n", b, b)
}

// Output:
// a: -1.2 float64
// b: (-2-1i) complex128

```
## opfloat32
```go
package main

import "fmt"

func main() {
	var a float32 = 64
	a += 64
	fmt.Printf("a: %v %T", a, a)
	fmt.Println()

	var b float32 = 64
	b -= 64
	fmt.Printf("b: %v %T", b, b)
	fmt.Println()

	var c float32 = 64
	c *= 64
	fmt.Printf("c: %v %T", c, c)
	fmt.Println()

	var d float32 = 64
	d /= 64
	fmt.Printf("d: %v %T", d, d)
	fmt.Println()

	// FIXME expect an error
	// var e float32 = 64
	// e %= 64
	// fmt.Printf("e: %v %T", e, e)
	// fmt.Println()

	fmt.Println(a > b)
	fmt.Println(a >= b)
	fmt.Println(a < b)
	fmt.Println(a <= b)
	fmt.Println(b == d)
}

// Output:
// a: 128 float32
// b: 0 float32
// c: 4096 float32
// d: 1 float32
// true
// true
// false
// false
// false

```
## opfloat64
```go
package main

import "fmt"

func main() {
	var a float64 = 64
	a += 64
	fmt.Printf("a: %v %T", a, a)
	fmt.Println()

	var b float64 = 64
	b -= 64
	fmt.Printf("b: %v %T", b, b)
	fmt.Println()

	var c float64 = 64
	c *= 64
	fmt.Printf("c: %v %T", c, c)
	fmt.Println()

	var d float64 = 64
	d /= 64
	fmt.Printf("d: %v %T", d, d)
	fmt.Println()

	// FIXME expect an error
	// var e float64 = 64
	// e %= 64
	// fmt.Printf("e: %v %T", e, e)
	// fmt.Println()

	fmt.Println(a > b)
	fmt.Println(a >= b)
	fmt.Println(a < b)
	fmt.Println(a <= b)
	fmt.Println(b == d)
}

// Output:
// a: 128 float64
// b: 0 float64
// c: 4096 float64
// d: 1 float64
// true
// true
// false
// false
// false

```
## opint16
```go
package main

import "fmt"

func main() {
	var a int16 = 64
	a += 64
	fmt.Printf("a: %v %T", a, a)
	fmt.Println()

	var b int16 = 64
	b -= 64
	fmt.Printf("b: %v %T", b, b)
	fmt.Println()

	var c int16 = 64
	c *= 64
	fmt.Printf("c: %v %T", c, c)
	fmt.Println()

	var d int16 = 64
	d /= 64
	fmt.Printf("d: %v %T", d, d)
	fmt.Println()

	var e int16 = 64
	e %= 64
	fmt.Printf("e: %v %T", e, e)
	fmt.Println()

	fmt.Println(a > b)
	fmt.Println(a >= b)
	fmt.Println(a < b)
	fmt.Println(a <= b)
	fmt.Println(b == e)
}

// Output:
// a: 128 int16
// b: 0 int16
// c: 4096 int16
// d: 1 int16
// e: 0 int16
// true
// true
// false
// false
// true

```
## opint32
```go
package main

import "fmt"

func main() {
	var a int32 = 64
	a += 64
	fmt.Printf("a: %v %T", a, a)
	fmt.Println()

	var b int32 = 64
	b -= 64
	fmt.Printf("b: %v %T", b, b)
	fmt.Println()

	var c int32 = 64
	c *= 64
	fmt.Printf("c: %v %T", c, c)
	fmt.Println()

	var d int32 = 64
	d /= 64
	fmt.Printf("d: %v %T", d, d)
	fmt.Println()

	var e int32 = 64
	e %= 64
	fmt.Printf("e: %v %T", e, e)
	fmt.Println()

	fmt.Println(a > b)
	fmt.Println(a >= b)
	fmt.Println(a < b)
	fmt.Println(a <= b)
	fmt.Println(b == e)
}

// Output:
// a: 128 int32
// b: 0 int32
// c: 4096 int32
// d: 1 int32
// e: 0 int32
// true
// true
// false
// false
// true

```
## opint64
```go
package main

import "fmt"

func main() {
	var a int64 = 64
	a += 64
	fmt.Printf("a: %v %T", a, a)
	fmt.Println()

	var b int64 = 64
	b -= 64
	fmt.Printf("b: %v %T", b, b)
	fmt.Println()

	var c int64 = 64
	c *= 64
	fmt.Printf("c: %v %T", c, c)
	fmt.Println()

	var d int64 = 64
	d /= 64
	fmt.Printf("d: %v %T", d, d)
	fmt.Println()

	var e int64 = 64
	e %= 64
	fmt.Printf("e: %v %T", e, e)
	fmt.Println()

	fmt.Println(a > b)
	fmt.Println(a >= b)
	fmt.Println(a < b)
	fmt.Println(a <= b)
	fmt.Println(b == e)
}

// Output:
// a: 128 int64
// b: 0 int64
// c: 4096 int64
// d: 1 int64
// e: 0 int64
// true
// true
// false
// false
// true

```
## opint8
```go
package main

import "fmt"

func main() {
	var a int8 = 6
	a += 6
	fmt.Printf("a: %v %T", a, a)
	fmt.Println()

	var b int8 = 6
	b -= 6
	fmt.Printf("b: %v %T", b, b)
	fmt.Println()

	var c int8 = 6
	c *= 6
	fmt.Printf("c: %v %T", c, c)
	fmt.Println()

	var d int8 = 6
	d /= 6
	fmt.Printf("d: %v %T", d, d)
	fmt.Println()

	var e int8 = 6
	e %= 6
	fmt.Printf("e: %v %T", e, e)
	fmt.Println()

	fmt.Println(a > b)
	fmt.Println(a >= b)
	fmt.Println(a < b)
	fmt.Println(a <= b)
	fmt.Println(b == e)
}

// Output:
// a: 12 int8
// b: 0 int8
// c: 36 int8
// d: 1 int8
// e: 0 int8
// true
// true
// false
// false
// true

```
## opuint16
```go
package main

import "fmt"

func main() {
	var a uint16 = 64
	a += 64
	fmt.Printf("a: %v %T", a, a)
	fmt.Println()

	var b uint16 = 64
	b -= 64
	fmt.Printf("b: %v %T", b, b)
	fmt.Println()

	var c uint16 = 64
	c *= 64
	fmt.Printf("c: %v %T", c, c)
	fmt.Println()

	var d uint16 = 64
	d /= 64
	fmt.Printf("d: %v %T", d, d)
	fmt.Println()

	var e uint16 = 64
	e %= 64
	fmt.Printf("e: %v %T", e, e)
	fmt.Println()

	fmt.Println(a > b)
	fmt.Println(a >= b)
	fmt.Println(a < b)
	fmt.Println(a <= b)
	fmt.Println(b == e)
}

// Output:
// a: 128 uint16
// b: 0 uint16
// c: 4096 uint16
// d: 1 uint16
// e: 0 uint16
// true
// true
// false
// false
// true

```
## opuint32
```go
package main

import "fmt"

func main() {
	var a uint32 = 64
	a += 64
	fmt.Printf("a: %v %T", a, a)
	fmt.Println()

	var b uint32 = 64
	b -= 64
	fmt.Printf("b: %v %T", b, b)
	fmt.Println()

	var c uint32 = 64
	c *= 64
	fmt.Printf("c: %v %T", c, c)
	fmt.Println()

	var d uint32 = 64
	d /= 64
	fmt.Printf("d: %v %T", d, d)
	fmt.Println()

	var e uint32 = 64
	e %= 64
	fmt.Printf("e: %v %T", e, e)
	fmt.Println()

	fmt.Println(a > b)
	fmt.Println(a >= b)
	fmt.Println(a < b)
	fmt.Println(a <= b)
	fmt.Println(b == e)
}

// Output:
// a: 128 uint32
// b: 0 uint32
// c: 4096 uint32
// d: 1 uint32
// e: 0 uint32
// true
// true
// false
// false
// true

```
## opuint64
```go
package main

import "fmt"

func main() {
	var a uint64 = 64
	a += 64
	fmt.Printf("a: %v %T", a, a)
	fmt.Println()

	var b uint64 = 64
	b -= 64
	fmt.Printf("b: %v %T", b, b)
	fmt.Println()

	var c uint64 = 64
	c *= 64
	fmt.Printf("c: %v %T", c, c)
	fmt.Println()

	var d uint64 = 64
	d /= 64
	fmt.Printf("d: %v %T", d, d)
	fmt.Println()

	var e uint64 = 64
	e %= 64
	fmt.Printf("e: %v %T", e, e)
	fmt.Println()

	fmt.Println(a > b)
	fmt.Println(a >= b)
	fmt.Println(a < b)
	fmt.Println(a <= b)
	fmt.Println(b == e)
}

// Output:
// a: 128 uint64
// b: 0 uint64
// c: 4096 uint64
// d: 1 uint64
// e: 0 uint64
// true
// true
// false
// false
// true

```
## opuint8
```go
package main

import "fmt"

func main() {
	var a uint8 = 6
	a += 6
	fmt.Printf("a: %v %T", a, a)
	fmt.Println()

	var b uint8 = 6
	b -= 6
	fmt.Printf("b: %v %T", b, b)
	fmt.Println()

	var c uint8 = 6
	c *= 6
	fmt.Printf("c: %v %T", c, c)
	fmt.Println()

	var d uint8 = 6
	d /= 6
	fmt.Printf("d: %v %T", d, d)
	fmt.Println()

	var e uint8 = 6
	e %= 6
	fmt.Printf("e: %v %T", e, e)
	fmt.Println()

	fmt.Println(a > b)
	fmt.Println(a >= b)
	fmt.Println(a < b)
	fmt.Println(a <= b)
	fmt.Println(b == e)
}

// Output:
// a: 12 uint8
// b: 0 uint8
// c: 36 uint8
// d: 1 uint8
// e: 0 uint8
// true
// true
// false
// false
// true

```
## range1
```go
package main

import "fmt"

func main() {
	a := [...]int{2, 1, 0}
	for _, v := range a {
		a[v] = v
	}
	fmt.Println(a)
}

// Output:
// [0 1 2]

```
## range4
```go
package main

import "fmt"

func main() {
	m := map[int]bool{1: true, 3: true, 5: true}
	for _, v := range m {
		fmt.Println(v)
	}
}

// Output:
// true
// true
// true

```
## range6
```go
package main

import (
	"fmt"
	"math"
)

func main() {
	m := map[float64]bool{math.NaN(): true, math.NaN(): true, math.NaN(): true}
	for _, v := range m {
		fmt.Println(v)
	}
}

// Output:
// true
// true
// true

```
## recover3
```go
package main

import "fmt"

func main() {
	println("hello")

	var r interface{} = 1
	r = recover()
	fmt.Printf("%v\n", r)
	if r == nil {
		println("world")
	}
	if r != nil {
		println("exception")
	}
}

// Output:
// hello
// <nil>
// world

```
## recover4
```go
package main

import "fmt"

func div(a, b int) (result int) {
	defer func() {
		r := recover()

		fmt.Printf("r = %#v\n", r)

		if r != nil {
			result = 0
		}
	}()

	return a / b
}

func main() {
	println(div(30, 2))
}

// Output:
// r = <nil>
// 15

```
## ret8
```go
package main

import "fmt"

type CustomError string

func (s CustomError) Error() string {
	return string(s)
}

func NewCustomError(errorText string) CustomError {
	return CustomError(errorText)
}

func fail() (err error) {
	return NewCustomError("Everything is going wrong!")
}

func main() {
	fmt.Println(fail())
	var myError error
	myError = NewCustomError("ok")
	fmt.Println(myError)
}

// Output:
// Everything is going wrong!
// ok

```
## rune0
```go
package main

import "fmt"

func main() {
	a := 'r'
	a += 'g'
	fmt.Printf("a: %v %T", a, a)
	fmt.Println()

	b := 'r'
	b -= 'g'
	fmt.Printf("b: %v %T", b, b)
	fmt.Println()

	c := 'r'
	c *= 'g'
	fmt.Printf("c: %v %T", c, c)
	fmt.Println()

	d := 'r'
	d /= 'g'
	fmt.Printf("d: %v %T", d, d)
	fmt.Println()

	e := 'r'
	e %= 'g'
	fmt.Printf("e: %v %T", e, e)
	fmt.Println()

	fmt.Println(a > b)
	fmt.Println(a >= b)
	fmt.Println(a < b)
	fmt.Println(a <= b)
	fmt.Println(b == d)
}

// Output:
// a: 217 int32
// b: 11 int32
// c: 11742 int32
// d: 1 int32
// e: 11 int32
// true
// true
// false
// false
// false

```
## rune2
```go
package main

import "fmt"

const majorVersion = '2'

type hashed struct {
	major byte
}

func main() {
	fmt.Println(majorVersion)

	p := new(hashed)
	p.major = majorVersion

	fmt.Println(p)
}

// Output:
// 50
// &{50}

```
## scope6
```go
package main

import "fmt"

var a = [3]int{1, 2, 3}

func f() { fmt.Println(a) }

func main() {
	fmt.Println(a)
	a[1] = 5
	f()
}

// Output:
// [1 2 3]
// [1 5 3]

```
## scope7
```go
package main

import "fmt"

var a = []int{1, 2, 3}

func f() { fmt.Println(a) }

func main() {
	fmt.Println(a)
	a = []int{6, 7}
	f()
}

// Output:
// [1 2 3]
// [6 7]

```
## struct50
```go
package main

import "fmt"

type Node struct {
	Name  string
	Child []Node
}

func main() {
	a := Node{Name: "hello"}
	a.Child = append([]Node{}, Node{Name: "world"})
	fmt.Println(a)
	a.Child[0].Child = append([]Node{}, Node{Name: "sunshine"})
	fmt.Println(a)
}

// Output:
// {hello [{world []}]}
// {hello [{world [{sunshine []}]}]}

```
## struct52
```go
package main

import "fmt"

type Node struct {
	Name  string
	Child map[string]Node
}

func main() {
	a := Node{Name: "hello", Child: map[string]Node{}}
	a.Child["1"] = Node{Name: "world", Child: map[string]Node{}}
	fmt.Println(a)
	a.Child["1"].Child["1"] = Node{Name: "sunshine", Child: map[string]Node{}}
	fmt.Println(a)
}

// Output:
// {hello map[1:{world map[]}]}
// {hello map[1:{world map[1:{sunshine map[]}]}]}

```
## switch0
```go
package main

import "fmt"

func f(i int) bool {
	switch i {
	case 0:
		println(i)
		return false
	default:
		println("not nul")
		return true
	}
}

func main() {
	r0 := f(0)
	fmt.Printf("%T %v", r0, r0)
	fmt.Println()
	r1 := f(1)
	fmt.Printf("%T %v", r1, r1)
	fmt.Println()
}

// Output:
// 0
// bool false
// not nul
// bool true

```
## switch14
```go
package main

import "fmt"

type fii interface {
	Hello()
}

type Boo struct {
	Name string
}

type Bir struct {
	Boo
}

type Bar struct{}

func (b Bar) Hello() { fmt.Println("b:", b) }

func (b Boo) Hello() {
	fmt.Println("Hello", b)
	fmt.Println(b.Name)
}

func inCall(foo fii) {
	fmt.Println("inCall")
	switch a := foo.(type) {
	case Boo:
		a.Hello()
	default:
		fmt.Println("a:", a)
	}
}

func main() {
	boo := Bir{Boo{"foo"}}
	inCall(boo)
	inCall(Bar{})
}

// Output:
// inCall
// a: {{foo}}
// inCall
// a: {}

```
## switch15
```go
package main

import "fmt"

type fii interface {
	Hello()
}

type Boo struct {
	Name string
}

type Bir struct {
	Boo
}

type Bar struct{}

func (b Bar) Hello() { fmt.Println("b:", b) }

func (b Boo) Hello() {
	fmt.Println("Hello", b)
	fmt.Println(b.Name)
}

func inCall(foo fii) {
	fmt.Println("inCall")
	switch a := foo.(type) {
	case Boo, Bir:
		a.Hello()
	default:
		fmt.Println("a:", a)
	}
}

func main() {
	boo := Bir{Boo{"foo"}}
	inCall(boo)
	inCall(Bar{})
}

// Output:
// inCall
// Hello {foo}
// foo
// inCall
// a: {}

```
## switch16
```go
package main

import "fmt"

type fii interface {
	Hello()
}

type Boo struct {
	Name string
}

type Bir struct {
	Boo
}

type Bar struct{}

func (b Bar) Hello() { fmt.Println("b:", b) }

func (b Boo) Hello() {
	fmt.Println("Hello", b)
	fmt.Println(b.Name)
}

func inCall(foo fii) {
	fmt.Println("inCall")
	switch a := foo.(type) {
	case Boo, Bir:
		a.Hello()
	default:
		fmt.Println("a:", a)
	}
}

func main() {
	boo := Boo{"foo"}
	inCall(boo)
	inCall(Bar{})
}

// Output:
// inCall
// Hello {foo}
// foo
// inCall
// a: {}

```
## switch17
```go
package main

import "fmt"

type fii interface {
	Hello()
}

type Boo struct {
	Name string
}

type Bir struct {
	Boo
}

type Bar struct{}

func (b Bar) Hello() { fmt.Println("b:", b) }

func (b Boo) Hello() {
	fmt.Println("Hello", b)
	fmt.Println(b.Name)
}

func inCall(foo fii) {
	fmt.Println("inCall")
	switch a := foo.(type) {
	case Boo:
		fmt.Println("type Boo")
		a.Hello()
	case Bir:
		fmt.Println("type Bir")
		a.Hello()
	default:
		fmt.Println("a:", a)
	}
}

func main() {
	boo := Bir{Boo{"foo"}}
	inCall(boo)
	inCall(Bar{})
}

// Output:
// inCall
// type Bir
// Hello {foo}
// foo
// inCall
// a: {}

```
## switch18
```go
package main

import "fmt"

type fii interface {
	Hello()
}

type Bir struct{}

func (b Bir) Yo() {
	fmt.Println("Yo", b)
}

func (b Bir) Hello() {
	fmt.Println("Hello", b)
}

type Boo struct {
	Name string
}

func (b Boo) Hello() {
	fmt.Println("Hello", b)
	fmt.Println(b.Name)
}

type Bar struct{}

func (b Bar) Hello() { fmt.Println("b:", b) }

func inCall(foo fii) {
	fmt.Println("inCall")
	switch a := foo.(type) {
	case Boo:
		a.Hello()
	case Bir:
		a.Yo()
	default:
		fmt.Println("a:", a)
	}
}

func main() {
	boo := Bir{}
	inCall(boo)
	inCall(Bar{})
}

// Output:
// inCall
// Yo {}
// inCall
// a: {}

```
## var6
```go
package main

import (
	"fmt"
)

type Foo struct {
	A string
}

var f = Foo{"world"} // <-- the root cause

func Hello() {
	fmt.Println("in")
}

var name = "v1" // <-- the root cause

func main() {
	Hello()
	fmt.Println("Hello", f.A, name)
}

// Output:
// in
// Hello world v1

```
## variadic3
```go
package main

import "fmt"

func f(a ...int) int {
	fmt.Println(a)
	res := 0
	for _, v := range a {
		res += v
	}
	return res
}

func main() {
	fmt.Println(f(1, 2, 3, 4))
}

// Output:
// [1 2 3 4]
// 10

```
