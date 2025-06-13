package main

func main() {
	Sort([]int{10})
}

func Sort[S []E, E int | int8 | int16 | int32 | int64 |
	uint | uint8 | uint16 | uint32 | uint64 | uintptr |
	float32 | float64 |
	string](x S) {

}

type Ordered interface {
	~int | ~int8 | ~int16 | ~int32 | ~int64 |
		~uint | ~uint8 | ~uint16 | ~uint32 | ~uint64 | ~uintptr |
		~float32 | ~float64 |
		~string
}
