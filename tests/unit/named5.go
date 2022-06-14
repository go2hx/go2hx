package main

type x int

func (x) run() {}

type i interface {
	run()
}

func main() {
	var y x = 10
	var z any = y
	z.(i).run()
}
