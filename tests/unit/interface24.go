package main

func main() {
	ctx0 := &afterFuncContext{}
	_, ok := any(ctx0).(afterFuncer)
	println(ok)
}

type afterFuncer interface {
	AfterFunc(func()) func() bool
}

// afterFuncContext is a context that's not one of the types
// defined in context.go, that supports registering AfterFuncs.
type afterFuncContext struct{}

func (c *afterFuncContext) AfterFunc(f func()) func() bool {
	return nil
}
