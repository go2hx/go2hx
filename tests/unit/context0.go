package main

import (
	"context"
	"time"
)

const (
	shortDuration = 1 * time.Millisecond // a reasonable duration to block in a test
)

func main() {
	panicVal := recoveredValue(func() { _, _ = context.WithCancel(nil) })
	if panicVal == nil {
		panic("expected panic0")
	}
	panicVal = recoveredValue(func() { _, _ = context.WithDeadline(nil, time.Now().Add(shortDuration)) })
	if panicVal == nil {
		panic("expected panic1")
	}
	panicVal = recoveredValue(func() { _ = context.WithValue(nil, "foo", "bar") })
	if panicVal == nil {
		panic("expected panic2")
	}
}

func recoveredValue(fn func()) (v any) {
	defer func() { v = recover() }()
	fn()
	return
}
