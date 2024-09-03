package main

func main() {
	Time{}.Round(0)
}

type Time struct{}

func (x Time) Round(d int) {
	_ = x
	_ = d
}
