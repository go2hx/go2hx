package main

func main() {
	arr1 := [3]int{1, 2, 3}
	arr2 := [3]int{7, 8, 9}
	var arr *[3]int = &arr1
	var doublePtr **[3]int = &arr
	*doublePtr = &arr2

	print((*doublePtr)[0], " ") // Should print 7
	print(arr[0], " ")          // Should also print 7
	if (*doublePtr)[0] != 7 || arr[0] != 7 {
		panic("wrong values")
	}
}
