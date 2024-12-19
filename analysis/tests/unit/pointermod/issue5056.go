package main

type Foo int16

func (f Foo) Esc() *int {
    x := int(f)
    if true {
        x := 20
        ptr2 := &x
        if &x == ptr2 {
            println("equal")
        }
    }
    ptr := &x
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
    y := &x2
    z := &x2
    println(y == z)
    x3 := 0
    y2 := &x3
    x3 = get(x3)
    z2 := &x3
    println(y2 == z2)
}
func get(i int) int {
    i++
    return i
}
