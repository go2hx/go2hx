package main

func main() {
	t()
}

func t() (j error) {
	return x{}
}

type x struct{}

func (x) Error() string {
	return ""
}
