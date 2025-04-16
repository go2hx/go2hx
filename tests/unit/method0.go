// run

// Copyright 2017 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Test forms of method expressions T.m where T is
// a literal type.

package main

type T int

func (T) m2() {}

func main() {
	g := struct{ T }.m2
	_ = g
}
