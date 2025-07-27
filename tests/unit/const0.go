package main

func main() {
	const (
		stateInit = iota // Zero value must be stateInit
		stateDict
	)

	switch 0 {
	case stateInit:
		goto readLiteral
	case stateDict:
		goto readLiteral
	}

readLiteral:
}
