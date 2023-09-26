package main

func main() {
	var boolVal bool
	switch x := any((&boolVal)).(type) {
	case *bool:
		_ = x
	default:
		panic("unreachable")
	}
}
