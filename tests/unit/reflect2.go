// run

// Copyright 2018 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Issue 23545: gccgo didn't lower array comparison to
// proper equality function in some case.

package main

import "reflect"

func main() {
	a := Get()
	b := dummyID(1234)
	if !reflect.TypeOf(a).AssignableTo(reflect.TypeOf(b)) {
		panic("array not assignableTo")
	}
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
