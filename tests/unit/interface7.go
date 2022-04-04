package main

type boolValue bool
type Value interface {
	String() string
	Set(string) error
}

type b struct{}

func (b *b) Set(s string) error {
	return nil
}

func (b *b) Get() any {
	return nil
}

func (b *b) String() string {
	return ""
}

func (b *boolValue) Set(s string) error {
	return nil
}

func (b *boolValue) Get() any {
	return bool(*b)
}

func (b *boolValue) String() string {
	return "str"
}

func newBoolValue(val bool, p *bool) *boolValue {
	*p = val
	return (*boolValue)(p)
}

func main() {
	p := true
	Var(newBoolValue(true, &p))

	Var(&b{})
}

func Var(v Value) {

}
