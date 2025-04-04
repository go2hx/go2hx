// run

// Copyright 2018 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Verify that we emit a valid type descriptor for
// a fairly deeply nested type.

package main

import (
	"fmt"
	"strings"
)

func main() {
	a := [][][][]int{{{{42}}}}
	got := fmt.Sprint(a)
	want := strings.Repeat("[", 4) + "42" + strings.Repeat("]", 4)
	if got != want {
		fmt.Printf("got  %q\nwant %q\n", got, want)
		panic("not matching")
	}
}
