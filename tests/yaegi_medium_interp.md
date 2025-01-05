# yaegi_medium_interp
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
## copy0
```go
package main

import "fmt"

func main() {
	a := []int{10, 20, 30}
	b := [4]int{}
	c := b[:]
	copy(c, a)
	fmt.Println(c)
}

// Output:
// [10 20 30 0]

```
## copy1
```go
package main

import "fmt"

func main() {
	a := []int{10, 20, 30}
	b := &[4]int{}
	c := b[:]
	copy(c, a)
	fmt.Println(c)
}

// Output:
// [10 20 30 0]

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
