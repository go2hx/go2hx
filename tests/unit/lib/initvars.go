package lib

var Slice = []int{}

var i = setVarInSlice()
var count = 0

func setVarInSlice() int {
	count++
	Slice = append(Slice, count)
	return count
}
