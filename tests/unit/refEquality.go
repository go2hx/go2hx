// run

// Copyright 2018 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Issue 23545: gccgo didn't lower array comparison to
// proper equality function in some case.

package main

import "errors"

func main() {
	t := new(T)
	var i1, i2 I
	var j interface {
		M()
	}
	i1 = t
	j = t
	i2 = j
	b0 := any(i1) != any(i2)
	b1 := errors.New("abc") == errors.New("abc")
	if b0 || b1 {
		println(b0, b1)
		panic("invalid equality")
	}
}

type I interface {
	M()
}

type T struct{}

func (*T) M() {}
