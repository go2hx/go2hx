package main

func main() {
	a := []int(nil)
	i := &a
	if i == nil {
		panic("nil ref")
	}
	switch z := any(i).(type) {
	case *[]int:
		*z = []int{10}
	default:
	}
	if i == nil || (*i)[0] != 10 {
		panic("wrong value")
	}
}
