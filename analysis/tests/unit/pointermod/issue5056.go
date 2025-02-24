package main

type Foo int16

func (f Foo) Esc() *int {
    x := int(f)
    x__pointer__ := &x
    if true {
        x := 20
        x__pointer__ := &x
        ptr2 := x__pointer__
        if x__pointer__ == ptr2 {
            println("equal")
        }
    }
    ptr := x__pointer__
    return ptr
}

type iface interface{ Esc() *int }

var bar, foobar *int

func main() {
    var quux iface
    var x Foo
    quux = x
    bar = quux.Esc()
    foobar = quux.Esc()
    println(bar == foobar)
    x2 := 0
    x2__pointer__ := &x2
    y := x2__pointer__
    z := x2__pointer__
    println(y == z)
    x3 := 0
    x3__pointer__ := &x3
    y2 := x3__pointer__
    x3 = get(x3)
    z2 := x3__pointer__
    println(y2 == z2)
}
func get(i int) int {
    i++
    return i
}
