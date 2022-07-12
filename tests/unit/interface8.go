package main

type fileSize string

func (fileSize) Error() string {
	return ""
}

func main() {
	x, _ := t()
	if x != 0 {
		panic("wrong value")
	}
}

func t() (int, error) {
	var x fileSize = ""
	return 0, x
}
