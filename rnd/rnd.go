package main

import (
    "fmt"
)

func main() {
    foo := 42
    doubleInc(&foo)
    fmt.Println(foo) // should be 44
}
func doubleInc(p *int) { 
    *p += 2 
}