package main

func main() {
	x := []struct{ int }{{1}, {2}, {3}}
	defer func() {
		if recover() == nil {
			panic("out of bounds slice index did not panic")
		}
	}()
	_ = x[3]
}
