// run

// Copyright 2010 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Test reorderings; derived from fixedbugs/bug294.go.

package main

var log string

type TT int

func (t TT) a(s string) TT {
	log += "a(" + s + ")"
	return t
}

func (TT) b(s string) string {
	log += "b(" + s + ")"
	return s
}

type F func(s string) F

func a(s string) F {
	log += "a(" + s + ")"
	return F(a)
}

func b(s string) string {
	log += "b(" + s + ")"
	return s
}

type I interface {
	a(s string) I
	b(s string) string
}

type T1 int

func (t T1) a(s string) I {
	log += "a(" + s + ")"
	return t
}

func (T1) b(s string) string {
	log += "b(" + s + ")"
	return s
}

// f(g(), h()) where g is not inlinable but h is will have the same problem.
// As will x := g() + h() (same conditions).
// And g() <- h().
func f(x, y string) {
	log += "f(" + x + ", " + y + ")"
}

//go:noinline
func ff(x, y string) {
	log += "ff(" + x + ", " + y + ")"
}

func h(x string) string {
	log += "h(" + x + ")"
	return x
}

//go:noinline
func g(x string) string {
	log += "g(" + x + ")"
	return x
}

func main() {
	var t TT
	err := 0
	c := make(chan int, 1)
	c <- 1
	select {
	case c <- 0:
	case c <- 1:
	case <-c:
		if a("1")("2")("3"); log != "a(1)a(2)a(3)" {
			println("in select1, expecting a(1)a(2)a(3) , got ", log)
			err++
		}
		log = ""

		if t.a("1").a(t.b("2")); log != "a(1)b(2)a(2)" {
			println("in select1, expecting a(1)b(2)a(2), got ", log)
			err++
		}
		log = ""
		if a("3")(b("4"))(b("5")); log != "a(3)b(4)a(4)b(5)a(5)" {
			println("in select1, expecting a(3)b(4)a(4)b(5)a(5), got ", log)
			err++
		}
		log = ""
		var i I = T1(0)
		if i.a("6").a(i.b("7")).a(i.b("8")).a(i.b("9")); log != "a(6)b(7)a(7)b(8)a(8)b(9)a(9)" {
			println("in select1, expecting a(6)ba(7)ba(8)ba(9), got", log)
			err++
		}
		log = ""
	}
	println(1)

	c <- 1
	select {
	case <-c:
		if a("1")("2")("3"); log != "a(1)a(2)a(3)" {
			println("in select2, expecting a(1)a(2)a(3) , got ", log)
			err++
		}
		log = ""

		if t.a("1").a(t.b("2")); log != "a(1)b(2)a(2)" {
			println("in select2, expecting a(1)b(2)a(2), got ", log)
			err++
		}
		log = ""
		if a("3")(b("4"))(b("5")); log != "a(3)b(4)a(4)b(5)a(5)" {
			println("in select2, expecting a(3)b(4)a(4)b(5)a(5), got ", log)
			err++
		}
		log = ""
		var i I = T1(0)
		if i.a("6").a(i.b("7")).a(i.b("8")).a(i.b("9")); log != "a(6)b(7)a(7)b(8)a(8)b(9)a(9)" {
			println("in select2, expecting a(6)ba(7)ba(8)ba(9), got", log)
			err++
		}
		log = ""
	}
	println(2)

	c <- 1
	select {
	default:
	case c <- 1:
	case <-c:
		if a("1")("2")("3"); log != "a(1)a(2)a(3)" {
			println("in select3, expecting a(1)a(2)a(3) , got ", log)
			err++
		}
		log = ""

		if t.a("1").a(t.b("2")); log != "a(1)b(2)a(2)" {
			println("in select3, expecting a(1)b(2)a(2), got ", log)
			err++
		}
		log = ""
		if a("3")(b("4"))(b("5")); log != "a(3)b(4)a(4)b(5)a(5)" {
			println("in select3, expecting a(3)b(4)a(4)b(5)a(5), got ", log)
			err++
		}
		log = ""
		var i I = T1(0)
		if i.a("6").a(i.b("7")).a(i.b("8")).a(i.b("9")); log != "a(6)b(7)a(7)b(8)a(8)b(9)a(9)" {
			println("in select3, expecting a(6)ba(7)ba(8)ba(9), got", log)
			err++
		}
		log = ""
	}
	println(3)

	c <- 1
	select {
	default:
	case <-c:
		if a("1")("2")("3"); log != "a(1)a(2)a(3)" {
			println("in select4, expecting a(1)a(2)a(3) , got ", log)
			err++
		}
		log = ""

		if t.a("1").a(t.b("2")); log != "a(1)b(2)a(2)" {
			println("in select4, expecting a(1)b(2)a(2), got ", log)
			err++
		}
		log = ""
		if a("3")(b("4"))(b("5")); log != "a(3)b(4)a(4)b(5)a(5)" {
			println("in select4, expecting a(3)b(4)a(4)b(5)a(5), got ", log)
			err++
		}
		log = ""
		var i I = T1(0)
		if i.a("6").a(i.b("7")).a(i.b("8")).a(i.b("9")); log != "a(6)b(7)a(7)b(8)a(8)b(9)a(9)" {
			println("in select4, expecting a(6)ba(7)ba(8)ba(9), got", log)
			err++
		}
		log = ""
	}
	println("last test")
	println("len(c)", len(c), "cap(c)", cap(c))

	select {
	case <-c:
	case <-c:
	default:
		println("default!")
		if a("1")("2")("3"); log != "a(1)a(2)a(3)" {
			println("in select5, expecting a(1)a(2)a(3) , got ", log)
			err++
		}
		log = ""

		if t.a("1").a(t.b("2")); log != "a(1)b(2)a(2)" {
			println("in select5, expecting a(1)b(2)a(2), got ", log)
			err++
		}
		log = ""
		if a("3")(b("4"))(b("5")); log != "a(3)b(4)a(4)b(5)a(5)" {
			println("in select5, expecting a(3)b(4)a(4)b(5)a(5), got ", log)
			err++
		}
		log = ""
		var i I = T1(0)
		if i.a("6").a(i.b("7")).a(i.b("8")).a(i.b("9")); log != "a(6)b(7)a(7)b(8)a(8)b(9)a(9)" {
			println("in select5, expecting a(6)ba(7)ba(8)ba(9), got", log)
			err++
		}
		log = ""
	}
	println("end")

	if err > 0 {
		panic("fail")
	}
}
