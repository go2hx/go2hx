package main

import "time"

func main() {
	_, _, _, _ = t, SetMono, setMono2, setMono3
}

var t = time.Time{}
var SetMono = t.Add
var setMono2 = time.Time.Add
var setMono3 = (*X).test

type X struct{}

func (x *X) test() {}
