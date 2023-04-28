package main

type s string

func main() {
	x := s("hello")
	switch any(x).(type) {
	case string:
		panic("invalid type")
	case s:
	}
	_, ok := any(x).(string)
	if ok {
		panic("invalid type")
	}
}
