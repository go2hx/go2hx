package main

func main() {
	Sort([]int32{10})
}

func Sort[S ~[]E, E Ordered](x S) {

}

type Ordered interface {
	int32 | int64
}
