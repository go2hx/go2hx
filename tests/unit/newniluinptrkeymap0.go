package main

type unmarshalTest struct {
	in                    string
	ptr                   any // new(type)
	out                   any
	err                   error
	useNumber             bool
	golden                bool
	disallowUnknownFields bool
}

var unmarshalTests = []unmarshalTest{
	{
		in:  `{"0":false,"10":true}`,
		ptr: new(map[uintptr]bool),
		out: map[uintptr]bool{0: false, 10: true},
	},
}

func main() {
	x := uintptr(0)
	y := uintptr(0)
	if x != y {
		panic("uintptr values should be equal")
	}
	println(len(unmarshalTests))
}
