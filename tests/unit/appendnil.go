// run

// Copyright 2018 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Verify that we emit a valid type descriptor for
// a fairly deeply nested type.

package main

import (
	"reflect"
)

func main() {
	i := []string(nil)
	println("i", i == nil)
	x := make([]string, 0)
	println("x", x == nil)
	result := append(i, x...)
	expected := []string(nil)

	println("result", result == nil)
	println("expected", expected == nil)
	println(reflect.DeepEqual(result, expected))
}
