package main

type e string

func (e e) Error() string {
	return string(e)
}

func main() {
	defer f()
	x := e("issue")
	panic(x)
}

func f() {
	r := recover()
	if r.(e).Error() != "issue" {
		panic("incorrect value")
	}
}
