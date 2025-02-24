package golib_test

import (
	"testing"

	. "github.com/go2hx/go4hx/tests/golib"
)

func TestCustomContextAfterFuncCancel(t *testing.T) {
	ctx0 := Golib{}
	ctx1, cancel := WithCancel(ctx0)
	_ = ctx1
	_ = cancel
}
