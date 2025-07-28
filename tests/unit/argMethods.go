package main

func main() {
	d := &Decoder{}
	d2 := &Decoder2{}
	_ = d2
	_ = d
	// if d.help != 0.0 {
	// 	panic("invalid value: d.help")
	// }
	// if d.name() != "test" {
	// 	panic("invalid value: d.name()")
	// }
	if d2.name != 0 {
		panic("invalid value: d2.name")
	}
}

type Decoder struct {
	a stack2
	stack
	help float64
}

type stack2 struct {
	name bool
}

type stack struct {
	name int
}

func (stack) help() {}

func (d *Decoder) name() string {
	return "test"
}

type Decoder2 struct {
	a stack2
	stack
}
