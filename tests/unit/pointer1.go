package main

type Indirect struct {
	A ***[3]int
	S ***[]int
	M ****map[string]int
}

func main() {
	// Marshal indirect, unmarshal to direct.
	i := new(Indirect)
	i.A = new(**[3]int)
	*i.A = new(*[3]int)
	**i.A = new([3]int)
	***i.A = [3]int{1, 2, 3}
}
