package main

import "os"

func main() {
	f, err := os.Open(".")
	if err != nil {
		panic(err)
	}
	i, err := f.Stat()
	if err != nil {
		panic(err)
	}
	println(i.IsDir())
}
