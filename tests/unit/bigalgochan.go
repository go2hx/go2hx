// run

// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Test the internal "algorithms" for objects larger than a word: hashing, equality etc.

package main

type T struct {
	a float64
	b int64
	c string
	d byte
}

var a = []int{1, 2, 3}

func SameArray(a, b []int) bool {
	if len(a) != len(b) || cap(a) != cap(b) {
		return false
	}
	if len(a) > 0 && &a[0] != &b[0] {
		return false
	}
	return true
}

var t = T{1.5, 123, "hello", 255}

var ct = make(chan T)
var ca = make(chan []int)

func send() {
	println("send0")
	ct <- t
	println("send1")
	ca <- a
	println("send2")
}

func main() {
	go send()
	println("wait for send")
	t1 := <-ct
	println("sent")
	if t1.a != t.a || t1.b != t.b || t1.c != t.c || t1.d != t.d {
		println("fail: map val struct", t1.a, t1.b, t1.c, t1.d)
		panic("bigalg")
	}
	println("wait for send2")
	a1 := <-ca
	println("sent2")
	_ = a1
	if !SameArray(a, a1) {
		println("fail: map val array", a, a1)
		panic("bigalg")
	}
}
