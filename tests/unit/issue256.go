package main

type exampleStruct struct {
	A int
	B int
	C int
}

func func1() int {
	example := exampleStruct{1, 2, 3}
	// Using blank identifier for partial struct assignment
	_, result, _ := example.A, example.B, example.C
	return result
}
func main() {
	res := func1()
	if res != 2 {
		panic("result is wrong value")
	}
}
