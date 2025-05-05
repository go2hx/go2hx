package main

func main() {
	const (
		stateInit = iota // Zero value must be stateInit
		stateDict
	)

	switch 0 {
	case stateInit:
		println("goto readLiteral")
		goto readLiteral
	case stateDict:
	}

readLiteral:
	println("readLiteral")
}
