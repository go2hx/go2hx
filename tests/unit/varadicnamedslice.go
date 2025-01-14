package main

type SE []any // slice of empty; notational compactness.

type ttType struct {
	fmt string
	val SE
}

func main() {
	tt := ttType{}
	Sprintf(tt.fmt, tt.val...)
}

func Sprintf(s string, a ...any) {

}
