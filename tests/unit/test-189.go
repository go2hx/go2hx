// run

// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package main

type Buffer int

func (*Buffer) Read() {}

type Reader interface {
	Read()
}

func h() (b *Buffer, ok bool) { return }

func i() (r Reader, ok bool) {
	return h()
}

func main() {
	b, ok := i()
	_, _ = b, ok
}
