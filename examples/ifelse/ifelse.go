package main

import "fmt"

func main () {

    if 7%2 == 0 {
        fmt.Println("7 is even")
    } else {
        fmt.Println("7 is odd")
    }

    if 8%4 == 0 {
        fmt.Println("8 is divisible by 4")
    }

    if num,num2 := 9,9; num < 0 {
        fmt.Println(num, "is negative")
        fmt.Println(num2,"is");
        //fmt.Println(num3,"is");

    } else if num < 10 {
        fmt.Println(num, "has 1 digit")
    } else {
        fmt.Println(num, "has multiple digits")
    }
}