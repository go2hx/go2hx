package main

type i interface {
	i2
}

type i2 interface {
	Write()
}

type s struct{}

func (*s) Write() {}

func main() {
	var x i = &s{}
	var y i2 = x
	y.Write()
}
