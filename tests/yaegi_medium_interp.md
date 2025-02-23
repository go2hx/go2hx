# yaegi_medium_interp
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
