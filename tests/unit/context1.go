package main

import (
	"context"
	"sync"
	"time"
)

func main() {
	ctx0 := &afterFuncContext{}
	ctx1, cancel := context.WithCancel(ctx0)
	defer cancel()
	ctx0.cancel(context.Canceled)
	<-ctx1.Done()
}

// afterFuncContext is a context that's not one of the types
// defined in context.go, that supports registering AfterFuncs.
type afterFuncContext struct {
	mu         sync.Mutex
	afterFuncs map[*struct{}]func()
	done       chan struct{}
	err        error
}

func newAfterFuncContext() context.Context {
	return &afterFuncContext{}
}

func (c *afterFuncContext) Deadline() (time.Time, bool) {
	return time.Time{}, false
}

func (c *afterFuncContext) Done() <-chan struct{} {
	c.mu.Lock()
	defer c.mu.Unlock()
	if c.done == nil {
		c.done = make(chan struct{})
	}
	return c.done
}

func (c *afterFuncContext) Err() error {
	c.mu.Lock()
	defer c.mu.Unlock()
	return c.err
}

func (c *afterFuncContext) Value(key any) any {
	return nil
}

func (c *afterFuncContext) AfterFunc(f func()) func() bool {
	c.mu.Lock()
	defer c.mu.Unlock()
	k := &struct{}{}
	if c.afterFuncs == nil {
		c.afterFuncs = make(map[*struct{}]func())
	}
	c.afterFuncs[k] = f
	return func() bool {
		c.mu.Lock()
		defer c.mu.Unlock()
		_, ok := c.afterFuncs[k]
		delete(c.afterFuncs, k)
		return ok
	}
}

func (c *afterFuncContext) cancel(err error) {
	c.mu.Lock()
	defer c.mu.Unlock()
	if c.err != nil {
		return
	}
	c.err = err
	for _, f := range c.afterFuncs {
		go f()
	}
	c.afterFuncs = nil
}
