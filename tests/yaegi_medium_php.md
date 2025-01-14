# yaegi_medium_php
## a12
```go
package main

import "fmt"

func main() {
	var buf [12]int
	fmt.Println(buf[0])
}

// Output:
// 0

```
## a14
```go
package main

import "fmt"

const size = 12

func main() {
	var buf [size]int
	fmt.Println(buf)
}

// Output:
// [0 0 0 0 0 0 0 0 0 0 0 0]

```
## a15
```go
package main

import "fmt"

const size = 12

func main() {
	var buf [size]int
	fmt.Println(buf[:])
}

// Output:
// [0 0 0 0 0 0 0 0 0 0 0 0]

```
## a17
```go
package main

import "fmt"

func main() {
	a := make([]int, 2, 7)
	fmt.Println(a, len(a), cap(a))
}

// Output:
// [0 0] 2 7

```
## a20
```go
package main

import "fmt"

type IntArray []int

func (h *IntArray) Add(x int) {
	*h = append(*h, x)
}

func main() {
	a := IntArray{}
	a.Add(4)

	fmt.Println(a)
}

// Output:
// [4]

```
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
## a28
```go
package main

import "fmt"

func main() {
	a := [...]string{9: "hello"}
	fmt.Printf("%v %T\n", a, a)
}

// Output:
// [         hello] [10]string

```
## a29
```go
package main

import "fmt"

const (
	zero = iota
	one
	two
	three
)

func main() {
	a := [...]string{
		zero:      "zero",
		one:       "one",
		three:     "three",
		three + 2: "five",
	}
	fmt.Printf("%v %T\n", a, a)
}

// Output:
// [zero one  three  five] [6]string

```
## a3
```go
package main

import "fmt"

func main() {
	a := [6]int{1, 2, 3, 4, 5, 6}
	fmt.Println(a[2:])
}

// Output:
// [3 4 5 6]

```
## a32
```go
package main

import "fmt"

type T struct{}

var a = []T{{}}

func main() {
	fmt.Println(a)
}

// Output:
// [{}]

```
## a33
```go
package main

import "fmt"

func main() {
	a := [...]int{1, 2, 3}
	b := a
	fmt.Println(b)
}

// Output:
// [1 2 3]

```
## a34
```go
package main

import "fmt"

func main() {
	a := [...]int{1, 2, 3}
	var b [3]int = a
	fmt.Println(b)
}

// Output:
// [1 2 3]

```
## a35
```go
package main

import "fmt"

func main() {
	a := [...]int{1, 2, 3}
	b := a
	b[0] = -1
	fmt.Println(a)
}

// Output:
// [1 2 3]

```
## a36
```go
package main

import "fmt"

func main() {
	a := [...]int{1, 2, 3}
	var b [3]int = a
	b[0] = -1
	fmt.Println(a)
}

// Output:
// [1 2 3]

```
## a37
```go
package main

import "fmt"

func main() {
	a := [...]int{1, 2, 3}
	fmt.Println(a)
}

// Output:
// [1 2 3]

```
## a38
```go
package main

import "fmt"

func main() {
	a := [...]byte{}
	fmt.Printf("%T\n", a)
}

// Output:
// [0]uint8

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
## a4
```go
package main

import "fmt"

func main() {
	a := [6]int{1, 2, 3, 4, 5, 6}
	fmt.Println(a[2:4])
}

// Output:
// [3 4]

```
## a40
```go
package main

import "fmt"

type rule uint8

const (
	r0 rule = iota
	r1
	r2
)

var a = [...]int{
	r0: 1,
	r1: 12,
}

func main() {
	fmt.Println(a)
}

// Output:
// [1 12]

```
## a43
```go
package main

import "fmt"

type T [l1 + l2]int

const (
	l1 = 2
	l2 = 3
)

func main() {
	fmt.Println(T{})
}

// Output:
// [0 0 0 0 0]

```
## a5
```go
package main

import "fmt"

func main() {
	a := [6]int{1, 2, 3, 4, 5, 6}
	fmt.Println(a[:4])
}

// Output:
// [1 2 3 4]

```
## a6
```go
package main

import "fmt"

func main() {
	a := [6]int{1, 2, 3, 4, 5, 6}
	fmt.Println(a[:])
}

// Output:
// [1 2 3 4 5 6]

```
## a7
```go
package main

import "fmt"

func main() {
	a := [6]int{1, 2, 3, 4, 5, 6}
	fmt.Println(len(a))
}

// Output:
// 6

```
## a8
```go
package main

import "fmt"

func main() {
	//a := []int{1, 2}
	a := make([]int, 2)
	//a[0] = 1
	//a[1] = 2
	fmt.Println(a)
}

// Output:
// [0 0]

```
## a9
```go
package main

import "fmt"

//var (
//	samples = []int{}
//	b       = 1
//)

func main() {
	var samples = []int{}
	samples = append(samples, 1)
	fmt.Println(samples)
}

// Output:
// [1]

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
## append0
```go
package main

import "fmt"

func f(a []int, b int) interface{} { return append(a, b) }

func main() {
	a := []int{1, 2}
	r := f(a, 3)
	fmt.Println(r.([]int))
}

// Output:
// [1 2 3]

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
## append4
```go
package main

import "fmt"

func main() {
	a := []*int{}
	a = append(a, nil)
	fmt.Println(a)
}

// Output:
// [<nil>]

```
## assign1
```go
package main

import "fmt"

func main() {
	var buf []byte

	buf = nil
	fmt.Println(buf)
}

// Output:
// []

```
## assign13
```go
package main

import "fmt"

func getStr() string {
	return "test"
}

func main() {
	m := make(map[string]string, 0)
	m["a"] = fmt.Sprintf("%v", 0.1)
	m["b"] = string(fmt.Sprintf("%v", 0.1))
	m["c"] = getStr()

	fmt.Println(m)
}

// Output:
// map[a:0.1 b:0.1 c:test]

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
## bin
```go
package main

import "fmt"

func main() {
	f := fmt.Println
	f("Hello")
}

// Output:
// Hello

```
## bin0
```go
package main

import "strings"

func main() {
	a := strings.SplitN("truc machin", " ", 2)
	println(a[0])
}

// Output:
// truc

```
## bin2
```go
package main

import (
	"fmt"
	"math"
)

func main() {
	fmt.Println(math.Abs(-5))
}

// Output:
// 5

```
## bin3
```go
package main

import "fmt"

func main() {
	str := "part1"
	str += fmt.Sprintf("%s", "part2")
	fmt.Println(str)
}

// Output:
// part1part2

```
## bin4
```go
package main

import (
	"fmt"
	"strings"
)

func Bar(s string) bool {
	a := strings.HasPrefix("fas", "f")
	b := strings.HasPrefix("aaaaa", "a")
	a_and_b := strings.HasPrefix("fas", "f") && strings.HasPrefix("aaaaa", "a")
	fmt.Println(a, b, a && b, a_and_b)
	return a && b
}

func main() {
	println(Bar("kung"))
}

```
## bool_
```go
package main

import "fmt"

func main() {
	fmt.Println(false, true)
}

// Output:
// false true

```
## bool0
```go
package main

import "fmt"

func main() {
	fmt.Println(true)
}

// Output:
// true

```
## closure12
```go
package main

import "fmt"

type T struct {
	F func()
}

func main() {
	foos := []T{}

	for i := 0; i < 3; i++ {
		a := i
		n := fmt.Sprintf("i=%d", i)
		foos = append(foos, T{func() { println(i, a, n) }})
	}
	foos[0].F()
	foos[1].F()
	foos[2].F()
}

// Output:
// 3 0 i=0
// 3 1 i=1
// 3 2 i=2

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
## closure7
```go
package main

import (
	"fmt"
)

type Config struct {
	A string
}

var conf *Config = &Config{}

func SetConfig() func(*Config) {
	return func(cf *Config) {
		conf = cf
	}
}

func main() {
	conf := &Config{
		A: "foo",
	}

	fmt.Println(conf.A)
}

// Output:
// foo

```
## complex0
```go
package main

import "fmt"

func main() {
	a := complex(3, 2)
	fmt.Println(a, real(a), imag(a))
}

// Output:
// (3+2i) 3 2

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
## complex4
```go
package main

import "fmt"

func f(a, b float64) interface{} { return complex(a, b) }

func main() {
	a := f(3, 2)
	fmt.Println(a.(complex128))
}

// Output:
// (3+2i)

```
## composite0
```go
package main

import "fmt"

var a = &[]*T{}

type T struct{ name string }

func main() {
	fmt.Println(a)
}

// Output:
// &[]

```
## composite1
```go
package main

import "fmt"

var a = &[]*T{{}}

type T struct{ name string }

func main() {
	fmt.Println((*a)[0])
}

// Output:
// &{}

```
## composite10
```go
package main

import "fmt"

func main() {
	a := []map[int]int{make(map[int]int)}

	for _, b := range a {
		fmt.Println(b)
	}
}

// Output:
// map[]

```
## composite14
```go
package main

import "fmt"

type T struct {
	b []byte
}

func main() {
	t := T{nil}
	fmt.Println(t)
}

// Output:
// {[]}

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
## composite2
```go
package main

import "fmt"

var a = &[]*T{{"hello"}}

type T struct{ name string }

func main() {
	fmt.Println((*a)[0])
}

// Output:
// &{hello}

```
## composite5
```go
package main

import "fmt"

type T struct {
	m uint16
}

var t = T{1<<2 | 1<<3}

func main() {
	fmt.Println(t)
}

// Output:
// {12}

```
## composite9
```go
package main

import "fmt"

func main() {
	a := [][]int{make([]int,0)}

	for _, b := range a {
		fmt.Println(b)
	}
}

// Output:
// []

```
## const13
```go
package main

import (
	"fmt"
)

func main() {
	const tooBig = 1267650600228229401496703205376
	const huge = 1 << 100
	const large = huge >> 38

	fmt.Println(int64(large))
}

// Output:
// 4611686018427387904

```
## const16
```go
package main

import (
	"fmt"
)

func main() {
	fmt.Println(7 / 3)
}

// Output:
// 2

```
## const17
```go
package main

import "fmt"

var t [7/3]int

func main() {
	t[0] = 3/2
	t[1] = 5/2
	fmt.Println(t)
}

// Output:
// [1 2]

```
## const20
```go
package main

import "fmt"

const maxLen = int64(int64(^uint64(0) >> 1))

func main() {
	fmt.Println(maxLen)
}

// Output:
// 9223372036854775807

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
## const7
```go
package main

import "fmt"

const (
	a = iota
	b
	c
	d
)

type T [c]int

func main() {
	fmt.Println(T{})
}

// Output:
// [0 0]

```
## convert1
```go
package main

import "strconv"

type atoidef func(s string) (int, error)

func main() {
	stdatoi := atoidef(strconv.Atoi)
	n, err := stdatoi("7")
	if err != nil {
		panic(err)
	}
	println(n)
}

// Output:
// 7

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
## copy2
```go
package main

import "fmt"

func f(a, b []int) interface{} { return copy(a, b) }

func main() {
	a := []int{10, 20, 30}
	b := [4]int{}
	c := b[:]
	r := f(c, a)
	fmt.Println(r.(int))
}

// Output:
// 3

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
## defer1
```go
package main

import "fmt"

func main() {
	println("hello")
	defer func() {
		fmt.Println("bye")
	}()
	println("world")
}

// Output:
// hello
// world
// bye

```
## defer2
```go
package main

import "fmt"

func main() {
	println("hello")
	i := 12
	defer func() {
		fmt.Println("i:", i)
	}()
	i = 20
	println("world")
}

// Output:
// hello
// world
// i: 20

```
## defer7
```go
package main

import "fmt"

func f1(in, out []string) {
	defer copy(out, in)
}

func main() {
	in := []string{"foo", "bar"}
	out := make([]string, 2)
	f1(in, out)

	fmt.Println(out)
}

// Output:
// [foo bar]

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
## delete0
```go
package main

import "fmt"

func main() {
	a := map[string]int{"hello": 1, "world": 3}
	delete(a, "hello")
	fmt.Println(a)
}

// Output:
// map[world:3]

```
## for3
```go
package main

import (
	"fmt"
	"sort"
)

func main() {
	m := map[string][]string{
		"hello": []string{"foo", "bar"},
		"world": []string{"truc", "machin"},
	}

	var content []string

	for key, values := range m {
		for _, value := range values {
			content = append(content, key+value)
		}
	}

	sort.Strings(content)
	fmt.Println(content)
}

// Output:
// [hellobar hellofoo worldmachin worldtruc]

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
## fun13
```go
package main

import "fmt"

type T struct{}

func newT() (T, error) { return T{}, nil }

func main() {
	var (
		i   interface{}
		err error
	)
	i, err = newT()
	fmt.Println(i, err)
}

// Output:
// {} <nil>

```
## fun19
```go
package main

import (
	"fmt"
)

func foo() ([]string, error) {
	return nil, fmt.Errorf("bar")
}

func main() {
	a, b := foo()
	fmt.Println(a, b)
}

// Output:
// [] bar

```
## fun20
```go
package main

import "fmt"

var myerr error = fmt.Errorf("bar")

func ferr() error { return myerr }

func foo() ([]string, error) {
	return nil, ferr()
}

func main() {
	a, b := foo()
	fmt.Println(a, b)
}

// Output:
// [] bar

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
## imag0
```go
package main

import "fmt"

func f(c complex128) interface{} { return imag(c) }

func main() {
	c := complex(3, 2)
	a := f(c)
	fmt.Println(a.(float64))
}

// Output:
// 2

```
## import0
```go
package main

import "fmt"

func main() {
	fmt.Println("Hello", 42)
}

// Output:
// Hello 42

```
## import1
```go
package main

import f "fmt"

func main() {
	f.Println("Hello", 42)
}

// Output:
// Hello 42

```
## import2
```go
package main

import . "fmt"

func main() {
	Println("Hello", 42)
}

// Output:
// Hello 42

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
## interface11
```go
package main

import "fmt"

type Error interface {
	error
	Code() string
}

type MyError Error

type T struct {
	Name string
}

func (t *T) Error() string { return "err: " + t.Name }
func (t *T) Code() string  { return "code: " + t.Name }

func newT(s string) MyError { return &T{s} }

func main() {
	t := newT("foo")
	fmt.Println(t.Code())
}

// Output:
// code: foo

```
## interface13
```go
package main

import (
	"fmt"
)

type X struct{}

func (X) Foo() int {
	return 1
}
func (X) Bar() int {
	return 2
}

type Foo interface {
	Foo() int
}
type Bar interface {
	Bar() int
}

func main() {
	var x X
	var i Foo = x
	j := i.(Bar)

	fmt.Println(j.Bar())
}

// Output:
// 2

```
## interface16
```go
package main

import "fmt"

type Barer interface {
	fmt.Stringer
	Bar()
}

type T struct{}

func (*T) String() string { return "T: nothing" }
func (*T) Bar()           { println("in bar") }

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
## interface20
```go
package main

import "fmt"

func main() {
	var a interface{}
	a = string("A")
	fmt.Println(a)
}

// Output:
// A

```
## interface21
```go
package main

import "fmt"

func main() {
	s := make([]interface{}, 1)
	s[0] = 1
	fmt.Println(s[0])
}

// Output:
// 1

```
## interface22
```go
package main

import "fmt"

func main() {
	s := make([]interface{}, 0)
	s = append(s, 1)
	fmt.Println(s[0])
}

// Output:
// 1

```
## interface23
```go
package main

import "fmt"

func main() {
	m := make(map[string]interface{})
	m["A"] = string("A")
	fmt.Println(m["A"])
}

// Output:
// A

```
## interface24
```go
package main

import "fmt"

func main() {
	m := make(map[string]interface{})
	fmt.Println(m["B"])
}

// Output:
// <nil>

```
## interface25
```go
package main

import "fmt"

func main() {
	m := make(map[string]interface{})
	m["A"] = 1
	for _, v := range m {
		fmt.Println(v)
	}
}

// Output:
// 1

```
## interface26
```go
package main

import "fmt"

func main() {
	s := make([]interface{}, 0)
	s = append(s, 1)
	for _, v := range s {
		fmt.Println(v)
	}
}

// Output:
// 1

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
## interface31
```go
package main

import "fmt"

func main() {
	s := []interface{}{"test", 2}
	fmt.Println(s[0], s[1])
}

// Output:
// test 2

```
## interface32
```go
package main

import "fmt"

func main() {
	s := [2]interface{}{"test", 2}
	fmt.Println(s[0], s[1])
}

// Output:
// test 2

```
## interface33
```go
package main

import "fmt"

func main() {
	var a = map[string]interface{}{"test": "test"}
	fmt.Println(a["test"])
}

// Output:
// test

```
## interface34
```go
package main

import "fmt"

func main() {
	s := [2]interface{}{1: "test", 0: 2}
	fmt.Println(s[0], s[1])
}

// Output:
// 2 test

```
## interface35
```go
package main

import "fmt"

type T struct {
	I interface{}
}

func main() {
	t := T{"test"}
	fmt.Println(t)
}

// Output:
// {test}

```
## interface36
```go
package main

import "fmt"

var (
	t *S
	_ I = t
	_ J = t
)

type S struct {
	Name string
}

func (s *S) F() int { return len(s.Name) }
func (s *S) G() int { return s.F() }
func (s *S) Ri() I  { return s }
func (s *S) Rj() J  { return s }

type J interface {
	I
	G() int
	Rj() J
}

type I interface {
	F() int
	Ri() I
}

func main() {
	var j J
	fmt.Println(j)
}

// Output:
// <nil>

```
## interface38
```go
package main

import "fmt"

type foo struct {
	bar string
}

func (f foo) String() string {
	return "Hello from " + f.bar
}

func main() {
	var f fmt.Stringer = foo{bar: "bar"}
	fmt.Println(f)
}

// Output:
// Hello from bar

```
## interface39
```go
package main

import "fmt"

type foo struct {
	bar string
}

func (f *foo) String() string {
	return "Hello from " + f.bar
}

func main() {
	var f fmt.Stringer = &foo{bar: "bar"}
	fmt.Println(f)
}

// Output:
// Hello from bar

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
## interface40
```go
package main

import "fmt"

type foo struct {
	bar string
}

func (f foo) String() string {
	return "Hello from " + f.bar
}

func Foo(s string) fmt.Stringer {
	return foo{s}
}

func main() {
	f := Foo("bar")
	fmt.Println(f)
}

// Output:
// Hello from bar

```
## interface41
```go
package main

import "fmt"

type foo struct {
	bar string
}

func (f *foo) String() string {
	return "Hello from " + f.bar
}

func Foo(s string) fmt.Stringer {
	return &foo{s}
}

func main() {
	f := Foo("bar")
	fmt.Println(f)
}

// Output:
// Hello from bar

```
## interface42
```go
package main

import "fmt"

func main() {
	v := interface{}(0)

	fmt.Println(v)
}

// Output:
// 0

```
## interface43
```go
package main

import "fmt"

func main() {
	v := interface{}(nil)

	fmt.Println(v)
}

// Output:
// <nil>

```
## interface45
```go
package main

import "fmt"

func main() {
	var i interface{} = 1
	var s struct{}
	s, _ = i.(struct{})
	fmt.Println(s)
}

// Output:
// {}

```
## interface46
```go
package main

import "fmt"

type I interface {
	Foo() string
}

type Printer struct {
	i I
}

func New(i I) *Printer {
	return &Printer{
		i: i,
	}
}

func (p *Printer) Print() {
	fmt.Println(p.i.Foo())
}

type T struct{}

func (t *T) Foo() string {
	return "test"
}

func main() {
	g := New(&T{})
	g.Print()
}

// Output:
// test

```
## interface48
```go
package main

import "fmt"

type I1 interface{ A }

type A = I2

type I2 interface{ F() I1 }

func main() {
	var i I1
	fmt.Println(i)
}

// Output:
// <nil>

```
## interface5
```go
package main

import "fmt"

type Myint int

func (i Myint) Double() { fmt.Println("Myint:", i, i) }

type Boo interface {
	Double()
}

func f(boo Boo) {
	boo.Double()
}

func main() {
	var i Myint = 3
	f(i)
}

// Output:
// Myint: 3 3

```
## interface6
```go
package main

import "fmt"

type Myint int

func (i Myint) Double() { fmt.Println("Myint:", i, i) }

type Boo interface {
	Double()
}

func f(boo Boo) { boo.Double() }

func g(i int) Boo { return Myint(i) }

func main() {
	f(g(4))
}

// Output:
// Myint: 4 4

```
## interface7
```go
package main

import "fmt"

type T int

func (t T) Error() string { return fmt.Sprintf("This is an error from T: %d", t) }

func f(t T) error { return t }

func main() {
	x := T(1)
	fmt.Println(f(x))
}

// Output:
// This is an error from T: 1

```
## interface8
```go
package main

import (
	"fmt"
)

var _ = (HelloInterface)((*Hello)(nil))

type HelloInterface interface {
	Hi() string
}

type Hello struct{}

func (h *Hello) Hi() string {
	return "hi"
}

func main() {
	h := &Hello{}
	fmt.Println(h.Hi())
}

// Output:
// hi

```
## interface9
```go
package main

import "fmt"

type Int int

func (I Int) String() string {
	return "foo"
}

func main() {
	var i Int
	var st fmt.Stringer = i
	fmt.Println(st.String())
}

// Output:
// foo

```
## io1
```go
package main

import (
	"encoding/base64"
	"fmt"
)

func main() {
	var buf [4]byte
	s := base64.RawStdEncoding.EncodeToString(buf[:])
	fmt.Println(s)
}

// Output:
// AAAAAA

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
## issue_dash_1022
```go
package main

import "fmt"

func main() {
	defer func() {
		r := recover()
		if r != nil {
			fmt.Println(r)
		}
	}()

	panic("Ho Ho Ho!")
}

// Output:
// Ho Ho Ho!

```
## issue_dash_1052
```go
package main

import "fmt"

func main() {
	a, b := 1, 1
	for i := 0; i < 10; i++ {
		fmt.Println(a)
		a, b = b, a+b
	}
}

// Output:
// 1
// 1
// 2
// 3
// 5
// 8
// 13
// 21
// 34
// 55

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
## issue_dash_1088
```go
package main

import "fmt"

func main() {
	for i, ch := range "日本語" {
		fmt.Printf("%#U starts at byte position %d\n", ch, i)
	}
}

// Output:
// U+65E5 '日' starts at byte position 0
// U+672C '本' starts at byte position 3
// U+8A9E '語' starts at byte position 6

```
## issue_dash_1094
```go
package main

import "fmt"

func main() {
	var x interface{}
	x = "a" + fmt.Sprintf("b")
	fmt.Printf("%v %T\n", x, x)
}

// Output:
// ab string

```
## issue_dash_1115
```go
package main

import "fmt"

func main() {
outer:
	for y := 0; y < 10; y++ {
		for x := 0; x < 10; x++ {
			if x == 5 && y == 5 {
				break outer
			}
		}
		fmt.Println(y)
	}
	fmt.Println("Yay! I finished!")
}

// Output:
// 0
// 1
// 2
// 3
// 4
// Yay! I finished!

```
## issue_dash_1126
```go
package main

import (
	"errors"
	"fmt"
	"strings"
)

func main() {
	err := errors.New("hello there")

	switch true {
	case err == nil:
		break
	case strings.Contains(err.Error(), "hello"):
		fmt.Println("True!")
	default:
		fmt.Println("False!")
	}
}

// Output:
// True!

```
## issue_dash_1163
```go
package main

import "fmt"

type WidgetEvent struct {
	Nothing string
}

type WidgetControl interface {
	HandleEvent(e *WidgetEvent)
}

type Button struct{}

func (b *Button) HandleEvent(e *WidgetEvent) {
}

type WindowEvent struct {
	Something int
}

type Window struct {
	Widget WidgetControl
}

func (w *Window) HandleEvent(e *WindowEvent) {
}

func main() {
	window := &Window{
		Widget: &Button{},
	}
	windowevent := &WindowEvent{}
	// The next line uses the signature from the wrong method, resulting in an error.
	// Renaming one of the clashing method names fixes the problem.
	window.HandleEvent(windowevent)
	fmt.Println("OK!")
}

// Output:
// OK!

```
## issue_dash_1202
```go
package main

import "fmt"

type foobar struct {
	callback func(string) func()
}

func cb(text string) func() {
	return func() {
		fmt.Println(text)
	}
}

func main() {
	// These ways of invoking it all work...
	cb("Hi from inline callback!")()

	asVarTest1 := cb("Hi from asVarTest1 callback!")
	asVarTest1()

	asVarTest2 := cb
	asVarTest2("Hi from asVarTest2 callback!")()

	// But inside a struct panics in yaegi...
	asStructField := &foobar{callback: cb}
	asStructField.callback("Hi from struct field callback!")() // <--- panics here
}

// Output:
// Hi from inline callback!
// Hi from asVarTest1 callback!
// Hi from asVarTest2 callback!
// Hi from struct field callback!

```
## issue_dash_1306
```go
package main

import "fmt"

func check() (result bool, err error) {
	return true, nil
}

func main() {
	result, error := check()
	fmt.Println(result, error)
}

// Output:
// true <nil>

```
## issue_dash_1308
```go
package main

import "fmt"

type test struct {
	v interface{}
	s string
}

type T struct {
	name string
}

func main() {
	t := []test{
		{
			v: []interface{}{
				T{"hello"},
			},
			s: "world",
		},
	}
	fmt.Println(t)
}

// Output:
// [{[{hello}] world}]

```
## issue_dash_1342
```go
package main

import "fmt"

func main() {
	var a interface{}
	a = "a"
	fmt.Println(a, a == "a")
}

// Output:
// a true

```
## issue_dash_1344
```go
package main

import "fmt"

func main() {
	var m = map[string]interface{}{"a": "a"}
	a, _ := m["a"]
	b, ok := a.(string)
	fmt.Println("a:", a, ", b:", b, ", ok:", ok)
}

// Output:
// a: a , b: a , ok: true

```
## issue_dash_1361
```go
package main

import (
	"fmt"
	"math"
)

type obj struct {
	num float64
}

type Fun func(o *obj) (r *obj, err error)

func numFun(fn func(f float64) float64) Fun {
	return func(o *obj) (*obj, error) {
		return &obj{fn(o.num)}, nil
	}
}

func main() {
	f := numFun(math.Cos)
	r, err := f(&obj{})
	fmt.Println(r, err)
}

// Output:
// &{1} <nil>

```
## issue_dash_1364
```go
package main

import (
	"fmt"
	"strconv"
)

func main() {
	var value interface{}
	var err error
	value, err = strconv.ParseFloat("123", 64)
	fmt.Println(value, err)
}

// Output:
// 123 <nil>

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
## issue_dash_1375
```go
package main

import "fmt"

type Option func(*Struct)

func WithOption(opt string) Option {
	return func(s *Struct) {
		s.opt = opt
	}
}

type Struct struct {
	opt string
}

func New(opts ...Option) *Struct {
	s := new(Struct)
	for _, opt := range opts {
		opt(s)
	}
	return s
}

func (s *Struct) ShowOption() {
	fmt.Println(s.opt)
}

func main() {
	opts := []Option{
		WithOption("test"),
	}
	s := New(opts...)
	s.ShowOption()
}

// Output:
// test

```
## issue_dash_1381
```go
package main

import (
	"bytes"
	"fmt"
)

func main() {
	var bufPtrOne *bytes.Buffer
	var bufPtrTwo *bytes.Buffer
	var bufPtrThree *bytes.Buffer
	var bufPtrFour *bytes.Buffer

	for i := 0; i < 2; i++ {
		bufOne := bytes.Buffer{}
		bufTwo := &bytes.Buffer{}
		var bufThree bytes.Buffer
		bufFour := new(bytes.Buffer)

		if bufPtrOne == nil {
			bufPtrOne = &bufOne
		} else if bufPtrOne == &bufOne {
			fmt.Println("bufOne was not properly redeclared")
		} else {
			fmt.Println("bufOne is properly redeclared")
		}

		if bufPtrTwo == nil {
			bufPtrTwo = bufTwo
		} else if bufPtrTwo == bufTwo {
			fmt.Println("bufTwo was not properly redeclared")
		} else {
			fmt.Println("bufTwo is properly redeclared")
		}

		if bufPtrThree == nil {
			bufPtrThree = &bufThree
		} else if bufPtrThree == &bufThree {
			fmt.Println("bufThree was not properly redeclared")
		} else {
			fmt.Println("bufThree is properly redeclared")
		}

		if bufPtrFour == nil {
			bufPtrFour = bufFour
		} else if bufPtrFour == bufFour {
			fmt.Println("bufFour was not properly redeclared")
		} else {
			fmt.Println("bufFour is properly redeclared")
		}
	}
}

// Output:
// bufOne is properly redeclared
// bufTwo is properly redeclared
// bufThree is properly redeclared
// bufFour is properly redeclared

```
## issue_dash_1447
```go
package main

import "fmt"

type I interface {
	Name() string
}

type S struct {
	iMap map[string]I
}

func main() {
	s := S{}
	s.iMap = map[string]I{}
	fmt.Println(s)
}

// Output:
// {map[]}

```
## issue_dash_1459
```go
package main

import "fmt"

type funclistItem func()

type funclist struct {
	list []funclistItem
}

func main() {
	funcs := funclist{}

	funcs.list = append(funcs.list, func() { fmt.Println("first") })

	for _, f := range funcs.list {
		f()
	}
}

// Output:
// first

```
## issue_dash_1466
```go
package main

import (
	"fmt"
)

func SomeFunc(defaultValue interface{}) interface{} {
	switch v := defaultValue.(type) {
	case string:
		return v + " abc"
	case int:
		return v - 234
	}
	panic("whoops")
}

func main() {
	fmt.Println(SomeFunc(1234))
	fmt.Println(SomeFunc("test"))
}

// Output:
// 1000
// test abc

```
## issue_dash_435
```go
package main

import (
	"fmt"
	"strconv"
)

type Foo int

func (f Foo) String() string {
	return "foo-" + strconv.Itoa(int(f))
}

func print1(arg interface{}) {
	fmt.Println(arg)
}

func main() {
	var arg Foo = 3
	var f = print1
	f(arg)
}

// Output:
// foo-3

```
## issue_dash_735
```go
package main

import (
	"fmt"
	"strconv"
)

var optionsG map[string]string

var roundG int = 30

func strToInt(s string, defaultValue int) int {
	n, err := strconv.ParseInt(s, 10, 0)
	if err != nil {
		return defaultValue
	}
	return int(n)
}

func main() {
	optionsG := map[string]string{"round": "12", "b": "one"}
	roundG = strToInt(optionsG["round"], 50)
	fmt.Println(roundG)
	fmt.Println(optionsG)
}

// Output:
// 12
// map[b:one round:12]

```
## issue_dash_776
```go
package main

import "fmt"

// Filter is a filter
type Filter interface {
	Foo()
}

// GIFT is a gift
type GIFT struct {
	Filters []Filter
}

// New is a new filter list
func New(filters ...Filter) *GIFT {
	return &GIFT{
		Filters: filters,
	}
}

// List lists filters
func (g *GIFT) List() {
	fmt.Printf("Hello from List!\n")
}

// MyFilter is one of the filters
type MyFilter struct{}

// Foo is a foo
func (f *MyFilter) Foo() {}

func main() {
	g := New(&MyFilter{})
	g.List()
}

// Output:
// Hello from List!

```
## issue_dash_782
```go
package main

import "fmt"

func main() {
	a := []int{1, 2, 3, 4, 5, 6, 7, 8, 9}
	from := uint32(2)
	to := uint32(4)
	b := a[from:to]
	fmt.Print(b)
}

// Output:
// [3 4]

```
## issue_dash_784
```go
package main

import "fmt"

// Filter is a filter interface
type Filter interface {
	Bounds(srcBounds string) (dstBounds string)
}

// GIFT type
type GIFT struct {
	Filters []Filter
}

// New creates a new filter list and initializes it with the given slice of filters.
func New(filters ...Filter) *GIFT {
	return &GIFT{
		Filters: filters,
	}
}

// Bounds calculates the appropriate bounds for the result image after applying all the added filters.
func (g *GIFT) Bounds(srcBounds string) (dstBounds string) {
	dstBounds = srcBounds
	for _, f := range g.Filters {
		dstBounds = f.Bounds(dstBounds)
	}
	return dstBounds
}

func main() {
	var filters []Filter
	bounds := "foo"
	g := New(filters...)
	fmt.Println(g.Bounds(bounds))
}

// Output:
// foo

```
## issue_dash_981
```go
package main

import "fmt"

func main() {
	dp := make(map[int]int)
	dp[0] = 1
	for i := 1; i < 10; i++ {
		dp[i] = dp[i-1] + dp[i-2]
	}
	fmt.Printf("%v\n", dp)
}

// Output:
// map[0:1 1:1 2:2 3:3 4:5 5:8 6:13 7:21 8:34 9:55]

```
## make1
```go
package main

import "fmt"

func f() interface{} {
	return make(map[int]int)
}

func main() {
	a, ok := f().(map[int]int)
	fmt.Println(a, ok)
}

// Output:
// map[] true

```
## make2
```go
package main

import "fmt"

func main() {
	var s uint = 4
	t := make([]int, s)
	fmt.Println(t)
}

// Output:
// [0 0 0 0]

```
## map10
```go
package main

import (
	"fmt"
	"sort"
)

type Foo struct {
	Name string
}

func main() {
	m := map[string][]Foo{
		"hello": {Foo{"foo"}, Foo{"bar"}},
		"world": {Foo{"truc"}, Foo{"machin"}},
	}

	var content []string

	for key, values := range m {
		for _, value := range values {
			content = append(content, key+value.Name)
		}
	}

	sort.Strings(content)
	fmt.Println(content)
}

// Output:
// [hellobar hellofoo worldmachin worldtruc]

```
## map11
```go
package main

import (
	"fmt"
	"sort"
)

type Foo struct {
	Name string
}

func main() {
	m := map[string][]Foo{
		"hello": []Foo{{"foo"}, {"bar"}},
		"world": []Foo{{"truc"}, {"machin"}},
	}

	var content []string

	for key, values := range m {
		for _, value := range values {
			content = append(content, key+value.Name)
		}
	}

	sort.Strings(content)
	fmt.Println(content)
}

// Output:
// [hellobar hellofoo worldmachin worldtruc]

```
## map12
```go
package main

import (
	"fmt"
	"sort"
)

type Foo struct {
	Name string
}

func main() {
	m := map[string]Foo{
		"hello": {Name: "bar"},
		"world": {Name: "machin"},
	}

	var content []string

	for key, value := range m {
		content = append(content, key+value.Name)
	}

	sort.Strings(content)
	fmt.Println(content)
}

// Output:
// [hellobar worldmachin]

```
## map14
```go
package main

import "fmt"

var m = map[string]float64{"foo": 1.0}

func f(s string) bool { return m[s] > 0.0 }

func main() {
	fmt.Println(f("foo"), f("bar"))
}

// Output:
// true false

```
## map15
```go
package main

import "fmt"

func main() {
	users := make(map[string]string)

	v := users["a"]
	fmt.Println("v:", v)
}

// Output:
// v:

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
## map18
```go
package main

import "fmt"

var foo = make([]int, 1)

func main() {
	for _, v := range foo {
		fmt.Println(v)
	}
}

// Output:
// 0

```
## map19
```go
package main

import "fmt"

type cmap struct {
	servers map[int64]*server
}

type server struct {
	cm *cmap
}

func main() {
	m := cmap{}
	fmt.Println(m)
}

// Output:
// {map[]}

```
## map30
```go
package main

import "strings"

func f(s string) string { return "hello " + s }

func g(s string) string { return "hi " + s }

var methods = map[string]func(string) string{
	"f": f,
	"h": strings.ToLower,
}

func main() {
	methods["i"] = strings.ToUpper
	methods["g"] = g
	println(methods["f"]("test"))
	println(methods["g"]("test"))
	println(methods["i"]("test"))
	println(methods["h"]("TEST"))
}

// Output:
// hello test
// hi test
// TEST
// test

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
## map8
```go
package main

import (
	"fmt"
	"sort"
)

func main() {
	m := map[string][]string{
		"hello": {"foo", "bar"},
		"world": {"truc", "machin"},
	}

	var content []string

	for key, values := range m {
		for _, value := range values {
			content = append(content, key+value)
		}
	}

	sort.Strings(content)
	fmt.Println(content)
}

// Output:
// [hellobar hellofoo worldmachin worldtruc]

```
## map9
```go
package main

import (
	"fmt"
	"sort"
)

type Foo struct {
	Name string
}

func main() {
	m := map[string][]Foo{
		"hello": {{"foo"}, {"bar"}},
		"world": {{"truc"}, {"machin"}},
	}

	var content []string

	for key, values := range m {
		for _, value := range values {
			content = append(content, key+value.Name)
		}
	}

	sort.Strings(content)
	fmt.Println(content)
}

// Output:
// [hellobar hellofoo worldmachin worldtruc]

```
## math0
```go
package main

import (
	"fmt"
	"math"
)

func main() {
	fmt.Println(math.Cos(math.Pi))
}

// Output:
// -1

```
## math1
```go
package main

import "math"

func main() {
	var f float32
	if f < math.MaxFloat32 {
		println("ok")
	}
}

// Output:
// ok

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
## method19
```go
package main

import "fmt"

func f() (string, error) {
	err := fmt.Errorf("a nice error")
	return "", err
}

func main() {
	_, err := f()
	if err != nil {
		fmt.Println(err.Error())
	}
}

// Output:
// a nice error

```
## method21
```go
package main

import (
	"fmt"
)

type Hello struct{}

func (*Hello) Hi() string {
	panic("implement me")
}

func main() {
	fmt.Println(&Hello{})
}

// Output:
// &{}

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
## method32
```go
package main

import (
	"fmt"
)

func main() {
	var a = []func(string){bar}
	 b := a[0]
	 b("bar")
}

func bar(a string) {
	fmt.Println(a)
}

// Output:
// bar

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
## method35
```go
package main

import "strconv"

func main() {
	var err error
	_, err = strconv.Atoi("erwer")
	if _, ok := err.(*strconv.NumError); ok {
		println("here")
	}
}

// Output:
// here

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
## named1
```go
package main

import "fmt"

type MyT T

type T struct {
	Name string
}

func main() {
	fmt.Println(MyT{})
}

// Output:
// {}

```
## named2
```go
package main

import "fmt"

func (t MyT) Test() string {
	return "hello"
}

type MyT int

func main() {
	t := MyT(1)

	fmt.Println(t.Test())
}

// Output:
// hello

```
## neg0
```go
package main

import "fmt"

func main() {
	a := -1
	fmt.Println(a)
}

// Output:
// -1

```
## new1
```go
package main

import "fmt"

func main() {
	a := [1]*int{}
	a[0] = new(int)
	*a[0] = 2
	fmt.Println(*a[0])
}

// Output:
// 2

```
## nil0
```go
package main

import "fmt"

func f() (host, port string, err error) {
	return "", "", nil
}

func main() {
	h, p, err := f()
	fmt.Println(h, p, err)
}

// Output:
//   <nil>

```
## num0
```go
package main

import "fmt"

func main() {
	fmt.Printf("%g\n", 1.0)
}

// Output:
// 1

```
## op0
```go
package main

import "fmt"

func main() {
	var a, b, c uint16
	a = 64
	b = 64
	c = a * b
	fmt.Printf("c: %v %T", c, c)
}

// Output:
// c: 4096 uint16

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
## opstring
```go
package main

import "fmt"

func main() {
	a := "hhh"
	a += "fff"
	fmt.Printf("a: %v %T", a, a)
	fmt.Println()

	// b := "hhh"
	// b -= "fff" // FIXME expect an error
	// fmt.Printf("b: %v %T", b, b)
	// fmt.Println()
	//
	// c := "hhh"
	// c *= "fff" // FIXME expect an error
	// fmt.Printf("c: %v %T", c, c)
	// fmt.Println()
	//
	// d := "hhh"
	// d /= "fff" // FIXME expect an error
	// fmt.Printf("d: %v %T", d, d)
	// fmt.Println()
	//
	// e := "hhh"
	// e %= "fff" // FIXME expect an error
	// fmt.Printf("e: %v %T", e, e)
	// fmt.Println()

	// FIXME panic
	// fmt.Println(a > "ggg")
	// fmt.Println(a >= "ggg")
	// fmt.Println(a < "ggg")
	// fmt.Println(a <= "ggg")
	// fmt.Println(a == "hhhfff")
}

// Output:
// a: hhhfff string

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
## ptr_array2
```go
package main

import "fmt"

type T [2]int

func F1(t *T) { t[0] = 1 }

func main() {
	t := &T{}
	F1(t)
	fmt.Println(t)
}

// Output:
// &[1 0]

```
## ptr_array3
```go
package main

import "fmt"

func main() {
	a := &[...]int{1, 2, 3}
	fmt.Println(a[:])
}

// Output:
// [1 2 3]

```
## range0
```go
package main

import "fmt"

func main() {
	v := []int{1, 2, 3}
	for i := range v {
		v = append(v, i)
	}
	fmt.Println(v)
}

// Output:
// [1 2 3 0 1 2]

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
## range2
```go
package main

import "fmt"

func main() {
	a := [...]int{2, 1, 0}
	for _, v := range &a {
		a[v] = v
	}
	fmt.Println(a)
}

// Output:
// [2 1 2]

```
## range3
```go
package main

import "fmt"

func main() {
	m := map[int]bool{1: true, 3: true, 5: true}
	for k := range m {
		m[k*2] = true
	}
	fmt.Println("ok")
}

// Output:
// ok

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
## range5
```go
package main

import "fmt"

func main() {
	m := map[int]bool{1: true, 3: true, 5: true}
	var n int
	for range m {
		n++
	}
	fmt.Println(n)
}

// Output:
// 3

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
## real0
```go
package main

import "fmt"

func f(c complex128) interface{} { return real(c) }

func main() {
	c := complex(3, 2)
	a := f(c)
	fmt.Println(a.(float64))
}

// Output:
// 3

```
## recover0
```go
package main

import "fmt"

func main() {
	println("hello")
	defer func() {
		r := recover()
		fmt.Println("recover:", r)
	}()
	println("world")
}

// Output:
// hello
// world
// recover: <nil>

```
## recover1
```go
package main

import "fmt"

func main() {
	println("hello")
	defer func() {
		r := recover()
		fmt.Println("recover:", r)
	}()
	panic("test panic")
	println("world")
}

// Output:
// hello
// recover: test panic

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
## ret3
```go
package main

import "fmt"

func r2() (int, int) { return 1, 2 }

func main() {
	fmt.Println(r2())
}

// Output:
// 1 2

```
## ret6
```go
package main

import "fmt"

type Foo struct{}

func foo() *Foo { return nil }

func main() {
	f := foo()
	fmt.Println(f)
}

// Output:
// <nil>

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
## run0
```go
package main

import "fmt"

func f() (int, int) { return 2, 3 }

func main() {
	fmt.Println(f())
}

// Output:
// 2 3

```
## run11
```go
package main

import "fmt"

func main() {
	fmt.Println(f())
}

func f() (int, int) { return 2, 3 }

// Output:
// 2 3

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
## rune1
```go
package main

import "fmt"

func main() {
	t := make([]byte, 2)
	t[0] = '$'
	fmt.Println(t)
}

// Output:
// [36 0]

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
## slice_
```go
package main

import "fmt"

func main() {
    a := [2][2]int{{0, 1}, {2, 3}}
    fmt.Println(a[0][0:])
}

// Output:
// [0 1]

```
## str0
```go
package main

import "fmt"

const itoa64 = "./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"

func main() {
	fmt.Printf("%v %T\n", itoa64[2], itoa64[2])
}

// Output:
// 48 uint8

```
## str3
```go
package main

import "strconv"

func main() {
	str := strconv.Itoa(101)
	println(str[0] == '1')
}

// Output:
// true

```
## str4
```go
package main

import "unicode/utf8"

func main() {
	r, _ := utf8.DecodeRuneInString("Hello")
	println(r < utf8.RuneSelf)
}

// Output:
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
## struct19
```go
package main

import "fmt"

type Config struct {
	Users        `json:"users,omitempty" mapstructure:","`
	UsersFile    string `json:"usersFile,omitempty"`
	Realm        string `json:"realm,omitempty"`
	RemoveHeader bool   `json:"removeHeader,omitempty"`
	HeaderField  string `json:"headerField,omitempty" export:"true"`
}

// Users holds a list of users
type Users []string

func CreateConfig() *Config {
	return &Config{}
}

func main() {
	c := CreateConfig()
	fmt.Println(c)
}

// Output:
// &{[]   false }

```
## struct25
```go
package main

import "fmt"

var a = T{}

type T struct{}

func main() {
	fmt.Println(a)
}

// Output:
// {}

```
## struct26
```go
package main

import "fmt"

func newT2() *T2 { return &T2{} }

type T2 struct {
	T1
}

type T1 struct {
	bs []byte
}

func main() {
	fmt.Println(newT2())
}

// Output:
// &{{[]}}

```
## struct27
```go
package main

import "fmt"

func (f *Foo) Boo() { fmt.Println(f.name, "Boo") }

type Foo struct {
	name string
	fun  func(f *Foo)
}

func main() {
	t := &Foo{name: "foo"}
	t.Boo()
}

// Output:
// foo Boo

```
## struct46
```go
package main

import "fmt"

type A struct {
	B string
	C D
}

type D struct {
	F *A
	E *A
}

func main() {
	a := &A{B: "b"}
	a.C = D{E: a}
	fmt.Println(a.C.E.B)
}

// Output:
// b

```
## struct47
```go
package main

import "fmt"

type A struct {
	B string
	C D
}

func (a *A) Test() string {
	return "test"
}

type D struct {
	E *A
}

func main() {
	a := &A{B: "b"}
	d := D{E: a}
	a.C = d
	fmt.Println(a.C.E.Test())
}

// Output:
// test

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
## struct59
```go
package main

import (
	"fmt"
)

type A struct {
	B map[string]*B
	C map[string]*C
}

type C struct {
	D *D
	E *E
}

type D struct {
	F *F
	G []G
}

type E struct {
	H []H
	F *F
}

type B struct{}
type F struct{}
type G struct{}
type H struct{}

func main() {
	conf := &A{
		B: make(map[string]*B),
		C: make(map[string]*C),
	}
	fmt.Println(conf)
}

// Output:
// &{map[] map[]}

```
## struct60
```go
package main

import (
	"fmt"
)

type data struct {
	S string
}

func render(v interface{}) {
	fmt.Println(v)
}

func main() {
	render(data{})
}

// Output:
// {}

```
## struct61
```go
package main

import "fmt"

type A struct {
	B string
	D
}

type D struct {
	*A
	E *A
}

func main() {
	a := &A{B: "b"}
	a.D = D{E: a}
	fmt.Println(a.D.E.B)
}

// Output:
// b

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
## switch21
```go
package main

import "fmt"

func main() {
	var err error

	switch v := err.(type) {
	case fmt.Formatter:
		println("formatter")
	default:
		fmt.Println(v)
	}
}

// Output:
// <nil>

```
## type1
```go
package main

import "fmt"

func main() {
	var i interface{} = "hello"
	s := i.(string)
	fmt.Println(s)
}

// Output:
// hello

```
## type14
```go
package main

import "fmt"

var a = T{}

type T struct{}

func main() {
	fmt.Println(a)
}

// Output:
// {}

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
## type3
```go
package main

import "fmt"

type S1 string

func main() {
	s := S1("Hello")
	fmt.Println(s)
}

// Output:
// Hello

```
## type7
```go
package main

import "fmt"

func main() {
	var i interface{} = "hello"
	if s, ok := i.(string); ok {
		fmt.Println(s, ok)
	}
}

// Output:
// hello true

```
## var5
```go
package main

import "fmt"

func main() {
	var a int64 = 64
	fmt.Printf("a: %v %T", a, a)
	fmt.Println()
}

// Output:
// a: 64 int64

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
## var7
```go
package main

import (
	"fmt"
)

type T struct {
	Name string
}

var m = make(map[string]*T)

func main() {
	fmt.Println(m)
}

// Output:
// map[]

```
## variadic
```go
package main

import "fmt"

func f(a ...int) {
	fmt.Println(a)
}

func main() {
	f(1, 2, 3, 4)
}

// Output:
// [1 2 3 4]

```
## variadic0
```go
package main

import "fmt"

func f(s string, a ...int) {
	fmt.Println(s, a)
}

func main() {
	f("hello")
}

// Output:
// hello []

```
## variadic1
```go
package main

import "fmt"

func f(s string, a ...int32) {
	fmt.Println(s, a)
}

func main() {
	f("hello", 1, 2, 3)
}

// Output:
// hello [1 2 3]

```
## variadic2
```go
package main

import "fmt"

func f(a ...int) {
	if len(a) > 2 {
		fmt.Println(a[2])
	}
}

func main() {
	f(1, 2, 3, 4)
}

// Output:
// 3

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
## variadic5
```go
package main

import (
	"fmt"
)

type A struct {
}

func (a A) f(vals ...bool) {
	for _, v := range vals {
		fmt.Println(v)
	}
}

func main() {
	a := A{}
	a.f(true)
}

// Output:
// true

```
## variadic6
```go
package main

import "fmt"

type A struct {
}

func (a A) f(vals ...bool) {
	for _, v := range vals {
		fmt.Println(v)
	}
}
func main() {
	bools := []bool{true}
	a := A{}
	a.f(bools...)
}

// Output:
// true

```
## variadic7
```go
package main

import "fmt"

func main() {
	var a, b string

	pattern := "%s %s"
	dest := []interface{}{&a, &b}

	n, err := fmt.Sscanf("test1 test2", pattern, dest...)
	if err != nil || n != len(dest) {
		println("error")
		return
	}
	println(a, b)
}

// Output:
// test1 test2

```
## variadic9
```go
package main

import "fmt"

func Sprintf(format string, a ...interface{}) string {
	return fmt.Sprintf(format, a...)
}

func main() {
	fmt.Println(Sprintf("Hello %s", "World!"))
}

// Output:
// Hello World!

```
