# yaegi_easy_hl
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
