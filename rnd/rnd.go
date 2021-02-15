package main

import (
	"fmt"
)

func main() {
	var i uint = 10
	whatAmI := func(i interface{}) {
        switch t := i.(type) {
        case bool:
            fmt.Println("I'm a bool")
        case int:
            fmt.Println("I'm an int")
        case uint:
            fmt.Println("I'm a uint")
        default:
            fmt.Printf("Don't know type %T\n", t)
        }
    }
	whatAmI(i)
}
