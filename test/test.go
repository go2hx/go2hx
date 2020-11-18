package main

import (
	"fmt"
)


func Slice(x interface{}, less func(i, j int) bool) {

}
func sliceLess(i,j int) bool {
	return false
}
func Compare(a, b []byte) int {
	return 0;
}

type data struct {
	x int
}

func (z *data) set(x int) {
	z.x += x
}

func main() {
	Slice("test",sliceLess)
	Compare([]byte{},[]byte{})
	x := data{0}
	x.set(5)
	fmt.Println("data x:",x.x)
}