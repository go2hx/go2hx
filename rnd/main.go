// run

// Copyright 2018 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Issue 23545: gccgo didn't lower array comparison to
// proper equality function in some case.

package main

import "fmt"

type intType int

func main() {
	x := intType(0)
	switch any(x).(type) {
	case int:
		panic("x is int")
	}
	if a := Get(); a != dummyID(1234) {
		panic("FAIL0")
	}
	if f() {
		panic("FAIL1")
	}
	if bad, _ := g(); bad {
		panic("FAIL2")
	}
	if bad, _ := h(); bad {
		panic("FAIL3")
	}
}

func f() (bad bool) {
	defer func() {
		fmt.Println("r:", recover(), bad)
	}()
	var p *int
	bad, _ = true, *p
	return
}

func g() (bool, int) {
	defer func() {
		recover()
	}()
	var p *int
	return true, *p
}

func h() (_ bool, _ int) {
	defer func() {
		recover()
	}()
	var p *int
	return true, *p
}

func dummyID(x int) [Size]interface{} {
	var out [Size]interface{}
	out[0] = x
	return out
}

const Size = 32

type OutputID [Size]interface{}

//go:noinline
func Get() OutputID {
	return dummyID(1234)
}
