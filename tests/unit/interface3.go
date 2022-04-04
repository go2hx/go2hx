package main

func main() {
	s := &S{}
	x := error(s)
	_ = x
}

func y() error {
	return &S{}
}

func Z() (i error) {
	i = &S{}
	return
}

type S struct{}

func (s *S) Error() string {
	return "hello"
}
