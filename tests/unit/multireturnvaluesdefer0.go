// run

// Copyright 2019 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

func f() (x int, y int) {
	defer func() func() {
		return func() {
			println(x, y)
			if x != 42 || y != 24 {
				panic("incorrect values")
			}
		}
	}()()
	return 42, 24
}

func main() {
	f()
}
