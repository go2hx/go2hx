package main

type File struct {
	*file
}

type file struct {
	name string
}

func main() {
	x := File{&file{"test"}}
	if x.name != "test" {
		panic("wrong value")
	}
}
