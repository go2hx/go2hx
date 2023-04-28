package main

func main() {
	a := any(nil)
	i := &a
	if i == nil {
		panic("nil ref")
	}
	switch z := any(i).(type) {
	case *any:
		*z = any(10)
	default:
	}
	if i == nil || *i != 10 {
		panic("wrong value")
	}
}
