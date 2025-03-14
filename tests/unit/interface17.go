package main

type mapInterface interface {
	compare(new any)
}

func main() {
	_ = bufPool
}

var bufPool = T{
	New: func() any {
		// The Pool's New function should generally only return pointer
		// types, since a pointer can be put into the return interface
		// value without an allocation:
		return new(string)
	},
}

type T struct {
	New func() any
}
