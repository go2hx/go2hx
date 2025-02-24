package main

func main() {
    a := inter(nil)
    i := &a
    if i == nil {
        panic("nil ref")
    }
    switch z := any(i).(type) {
    case *inter:
        j := imp(10)
        j__pointer__ := &j
        *z = j__pointer__
    default:
    }
    if i == nil || (*i).Test() != "Test" || (*i).Work() != 1 {
        panic("wrong value")
    }
}

type inter interface {
    Test() string
    Work() int64
}
type imp int32

func (j *imp) Test() string {
    return "Test"
}
func (imp) Work() int64 {
    return 1
}
