package golib

func Run() {}

func AfterFunc(ctx Golib, f func()) (stop func() bool) {
	return
}

func WithCancel(parent Golib) (ctx *Golib, cancel func()) {
	c := withCancel(parent)
	return c, func() {}
}

func withCancel(parent Golib) *Golib {
	return &parent
}

type Golib struct{}
