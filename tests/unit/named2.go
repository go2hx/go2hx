package main

func main() {
	x := durationValue(10)
	if x.String() != "yes" {
		panic("wrong result")
	}
}

type Duration int64

func (d *Duration) String() string { return "yes" }

type durationValue Duration

func (d *durationValue) String() string { return (*Duration)(d).String() }
