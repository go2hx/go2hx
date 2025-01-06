// run

// Copyright 2010 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Test variadic functions and calls (dot-dot-dot).

package main

func sum(args ...int) int {
	s := 0
	for _, v := range args {
		s += v
	}
	return s
}

type T []T

func (*T) Sum(args ...int) int { return sum(args...) }

type U struct {
	*T
}

func main() {
	u := &U{}
	u.T.Sum(1, 3)
	u.Sum(1, 3, 5, 5)
}
