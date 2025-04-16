// run

// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Test Implicit methods for embedded types and
// mixed pointer and non-pointer receivers.

package main

type T int

func (t *T) P() {
	if *t != 42 {
		println(t, *t)
		panic("fail")
	}
}

func main() {
	var t T
	t = 42
	t.P()
}
