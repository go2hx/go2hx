// run

// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Test simple methods of various types, with pointer and
// value receivers.

package main

type S1 string

func (s *S1) val() int { return 2 }

type t2 struct{ *S1 }

func main() {
	var zps t2
	if zps.val() != 2 {
		println("zps.val:", zps.val())
		panic("fail")

	}
}
