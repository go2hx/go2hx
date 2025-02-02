package main

import "unsafe"

func main() {
	s := struct{ f string }{"hello"}
	println(uintptr(unsafe.Pointer(&s))+unsafe.Offsetof(s.f) == uintptr(unsafe.Pointer(&s.f)))
}
