package main

type T struct{}

func (T) Val() {}

func main() {
	var zt struct{ T }
	zt.Val()
}
