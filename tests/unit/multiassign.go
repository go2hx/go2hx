package main

func main() {
	err := error(nil)
	_ = err
	x := any(nil)
	switch v := x.(type) {
	case *ObjectIdentifier:
		*v, err = parseObjectIdentifier(nil)
	}
}

func parseObjectIdentifier(bytes []byte) (s ObjectIdentifier, err error) {
	return
}

type ObjectIdentifier []int
