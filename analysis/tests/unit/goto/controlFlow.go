package main

func main() {
	c, _ := unmarshalPath() // nil err prints differently between go2hx and go
	println(c)
}

type Token struct{}

func (Token) Token() (any, error) {
	return 0, nil
}

func unmarshalPath() (consumed bool, err error) {
	recurse := false
	fields := []int{0, 1, 2}
	parents := []int{1, 0, 3}
Loop:
	for i := range fields {
		finfo := i == 1
		if finfo {
			println("continue")
			continue
		}
		for j := range parents[:len(parents)-1] {
			if parents[j] != fields[j+1] {
				println("continue Loop")
				continue Loop
			}
		}
		/*if len(finfo.parents) > len(parents) && finfo.parents[len(parents)] == start.Name.Local {
			// It's a prefix for the field. Break and recurse
			// since it's not ok for one field path to be itself
			// the prefix for another field path.
			recurse = true

			// We can reuse the same slice as long as we
			// don't try to append to it.
			parents = finfo.parents[:len(parents)+1]
			break
		}*/
	}
	if !recurse {
		// We have no business with this element.
		println("!recurse")
		return false, nil
	}
	// The element is not a perfect match for any field, but one
	// or more fields have the path to this element as a parent
	// prefix. Recurse and attempt to match these.
	for {
		var d Token
		tokType, err := d.Token()
		if err != nil {
			return true, err
		}
		switch t := tokType.(type) {
		case int:
			println(t)
			// the recursion depth of unmarshalPath is limited to the path length specified
			// by the struct field tag, so we don't increment the depth here.
			consumed2, err := true, error(nil)
			if err != nil {
				return true, err
			}
			if !consumed2 {
				if err := error(nil); err != nil {
					return true, err
				}
			}
		case string:
			println(t)
			return true, nil
		}
	}
}
