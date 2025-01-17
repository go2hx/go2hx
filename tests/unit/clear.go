package main

func main() {
	m := map[string]int{"hello": 0}
	x := []struct{ int }{{1}, {2}, {3}}
	if len(x) != 3 {
		panic("wrong value len(x)")
	}
	if len(m) != 1 {
		panic("wrong value len(m)")
	}
	clear(m)
	clear(x)
	if len(m) != 0 {
		panic("wrong value len(m)")
	}
	if len(x) != 3 {
		panic("wrong value len(x)")
	}
	if x[2].int != 0 {
		panic("wrong value x[2].int")
	}
}
