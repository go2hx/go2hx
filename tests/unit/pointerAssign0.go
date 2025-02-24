package main

func main() {
	x := MakeString("nothing")
	var v *Value = &x
	switch p := any("hello").(type) {
	case nil:
		// nothing to do
	case string:
		*v = MakeString(p)
	case error:
		*v = MakeString(p.Error())
	default:
		panic(p)
	}
	if x.String() != "hello" {
		panic("did not set v to new value")
	}
}

// MakeString returns the String value for s.
func MakeString(s string) Value {
	return &stringVal{s: s}
}

// A Value represents the value of a Go constant.
type Value interface {
	String() string
}

type stringVal struct {
	// Lazy value: either a string (l,r==nil) or an addition (l,r!=nil).
	s    string
	l, r *stringVal
}

func (s *stringVal) String() string {
	return s.s
}
