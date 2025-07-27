package main

func main() {
	a := inter(nil)
	i := &a
	switch any(i).(type) {
	case *inter:

	default:
		panic("wrong type")
	}
}

type inter interface {
	Test() string
	Work() int64
}

type imp int32

func (j *imp) Test() string {
	return "Test"
}

func (imp) Work() int64 {
	return 1
}
