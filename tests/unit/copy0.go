package main

type s struct {
	a int
}

func (s s) Add() {
	s.a++
}

func main() {
	s := s{}
	Add(s)
	s.Add()
	if s.a != 0 {
		println("issue:", s.a)
		//panic("s == s")
	}
}

func Add(s s) {
	s.a++
}
