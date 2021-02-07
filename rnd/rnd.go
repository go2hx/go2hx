package main

import (
	"fmt"
)
type S []T
type T struct {
	a, b, c string
}
func main() {
	e := make(S, 100)
	for i := range e {
		e[i] = T{"foo", fmt.Sprintf("%d", i), "bar"}
	}

	/*verify("struct a", append(S{}), S{})
	verify("struct b", append(S{}, e[0]), e[0:1])
	verify("struct c", append(S{}, e[0], e[1], e[2]), e[0:3])

	verify("struct d", append(e[0:1]), e[0:1])
	verify("struct e", append(e[0:1], e[1]), e[0:2])
	verify("struct f", append(e[0:1], e[1], e[2], e[3]), e[0:4])

	verify("struct g", append(e[0:3]), e[0:3])
	verify("struct h", append(e[0:3], e[3]), e[0:4])
	verify("struct i", append(e[0:3], e[3], e[4], e[5], e[6]), e[0:7])*/
	for i := range e {
		//verify("struct j", append(S{}, e[0:i]...), e[0:i])
		input := make(S, i)
		copy(input, e[0:i])
		fmt.Println("input:",len(input))
		verify("struct k", append(input, e[i:]...), e)
		verify("struct k - input modified", input, e[0:i])
		if (i > 2) {
			return
		}
	}
	return

}

func verify(name string, result, expected interface{}) {
	fmt.Println("name:",name,"result:",len(result.(S)),"expected:",len(expected.(S)))
	/*if !reflect.DeepEqual(result, expected) {
		panic(name)
	}*/
}