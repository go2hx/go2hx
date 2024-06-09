package main

type T1 struct {
	X string
}

func main() {
	type T1 struct {
		S string
	}
	t1 := &T1{
		S: "hello",
	}
	_ = t1
}
