# yaegi_medium
## a27
```go
package main

import "fmt"

func main() {
	a := [...]string{"hello", "world"}
	fmt.Printf("%v %T\n", a, a)
}

// Output:
// [hello world] [2]string

```
## a39
```go
package main

import "fmt"

func main() {
	a := [...]byte{}
	b := a
	fmt.Printf("%T %T\n", a, b)
}

// Output:
// [0]uint8 [0]uint8

```
## complex1
```go
package main

import "fmt"

func main() {
	var c complex128
	c = 1
	fmt.Printf("%T %v\n", c, c)
}

// Output:
// complex128 (1+0i)

```
## complex2
```go
package main

import "fmt"

func main() {
	c := complex(1, 0)
	c += 1
	fmt.Printf("%T %v\n", c, c)
}

// Output:
// complex128 (2+0i)

```
## complex3
```go
package main

import "fmt"

func main() {
	var s int = 1 + complex(1, 0)
	fmt.Printf("%T %v\n", s, s)
}

// Output:
// int 2

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
## interface19
```go
package main

import "fmt"

var I interface{}

func main() {
	fmt.Printf("%T %v\n", I, I)
}

// Output:
// <nil> <nil>

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
## issue_dash_1371
```go
package main

import "fmt"

type node struct {
	parent *node
	child  []*node
	key    string
}

func main() {
	root := &node{key: "root"}
	root.child = nil
	fmt.Println("root:", root)
}

// Output:
// root: &{<nil> [] root}

```
## method16
```go
package main

import (
	"fmt"
)

type Cheese struct {
	property string
}

func (t *Cheese) Hello(param string) {
	fmt.Printf("%+v %+v", t, param)
}

func main() {
	(*Cheese).Hello(&Cheese{property: "value"}, "param")
}

// Output:
// &{Xproperty:value} param

```
## method28
```go
package main

import "fmt"

type T struct {
	Name string
}

func (T) create() *T {
	return &T{"Hello"}
}

func main() {
	fmt.Println(T{}.create())
}

// Output:
// &{Hello}

```
## method31
```go
package main

import "fmt"

var db dbWrapper

type dbWrapper struct {
	DB *cmap
}

func (d *dbWrapper) get() *cmap {
	return d.DB
}

type cmap struct {
	name string
}

func (c *cmap) f() {
	fmt.Println("in f, c", c)
}

func main() {
	db.DB = &cmap{name: "test"}
	db.get().f()
}

// Output:
// in f, c &{test}

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
## op5
```go
package main

import "fmt"

func main() {
	i := 100
	j := i % 1e2
	fmt.Printf("%T %v\n", j, j)
}

// Output:
// int 0

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
## shift1
```go
package main

import "fmt"

const a1 = 0x7f8 >> 3

func main() {
	fmt.Printf("%T %v\n", a1, a1)
}

// Output:
// int 255

```
## struct12
```go
package main

import "fmt"

type S1 struct {
	Name string
}

type S2 struct {
	*S1
}

func main() {
	fmt.Println(S2{})
}

// Output:
// {<nil>}

```
## struct28
```go
package main

import "fmt"

type T1 struct {
	T2
}

type T2 struct {
	*T1
}

func main() {
	t := T1{}
	fmt.Println(t)
}

// Output:
// {{<nil>}}

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
## struct53
```go
package main

import "fmt"

type T1 struct {
	P []*T
}

type T2 struct {
	P2 *T
}

type T struct {
	*T1
	S1 *T
}

func main() {
	fmt.Println(T2{})
}

// Output:
// {<nil>}

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
## type16
```go
package main

import "fmt"

func main() {
	a := uint8(15) ^ byte(0)
	fmt.Printf("%T %v\n", a, a)
}

// Output:
// uint8 15

```
## type17
```go
package main

import "fmt"

func main() {
	a := int32(15) ^ rune(0)
	fmt.Printf("%T %v\n", a, a)
}

// Output:
// int32 15

```
## type9
```go
package main

import "fmt"

type Hello struct {
	Goodbye GoodbyeProvider
}

func main() {
	a := &Hello{}

	fmt.Println(a)
}

type GoodbyeProvider func(message string) string

// Output:
// &{<nil>}

```
