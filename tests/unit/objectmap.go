// run

// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Internally a map holds elements in up to 255 bytes of key+value.
// When key or value or both are too large, it uses pointers to key+value
// instead.  Test all the combinations.

package main

func main() {
	type T [1]byte
	type V [1]byte
	m := make(map[T]V)
	m[T{2}] = V{1}

	for key, value := range m {
		if key[0] != 2 || value[0] != 1 {
			println(key[0], value[0])
			panic("incorrect key and value set for map")
		}
	}
}
