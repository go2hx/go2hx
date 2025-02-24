# yaegi_easy_js
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
## print0
```go
package main

func main() {
	print("hello")
}

// Output:
// hello

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
