package main

import "sync"

func main() {
	var ppFree sync.Pool
	p := 10
	ppFree.Put(&p)

}
