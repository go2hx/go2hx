package main

import "fmt"

type cmap struct {
	servers map[int64]*server
}

type server struct {
	cm *cmap
}

func main() {
	m := cmap{}
	if fmt.Sprint(m) != "{map[]}" {
		panic("wrong output")
	}
}

// Output:
// {map[]}
