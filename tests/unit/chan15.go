package main

// A closeWaiter is like a sync.WaitGroup but only goes 1 to 0 (open to closed).
type http2closeWaiter chan struct{}

// Init makes a closeWaiter usable.
// It exists because so a closeWaiter value can be placed inside a
// larger struct and have the Mutex and Cond's memory in the same
// allocation.
func (cw *http2closeWaiter) Init() {
	*cw = make(chan struct{})
}

func main() {
	cw := new(http2closeWaiter)
	cw.Init()
}
