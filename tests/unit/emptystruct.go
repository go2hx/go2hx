package main

import (
	"context"
)

type http2goAwayFlowError struct{}

func main() {
	ctx := context.Background()
	_ = ctx.Done()
}
