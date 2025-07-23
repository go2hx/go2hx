// run

// Copyright 2010 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Test complex numbers,including fmt support.
// Used to crash.

package main

import "reflect"

const (
	R = 5
	I = 6i

	C1 = R + I // ADD(5,6)
)

func main() {
	// constants
	f(-C1)
}

func f(a any) {
	kind := reflect.TypeOf(a).Kind().String()
	println(kind)
	if kind != "complex128" {
		panic("wrong kind")
	}
}
