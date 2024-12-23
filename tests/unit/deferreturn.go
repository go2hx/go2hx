package main

import "errors"

func main() {
	_, err := f()
	println(err == nil)
	return
}

type Regexp int

func f() (_ *Regexp, err error) {
	defer func() {
		switch r := recover(); r {
		case ErrNestingDepth:
			err = errors.New("new err")
		}
	}()
	panic(ErrNestingDepth)
}

const ErrNestingDepth ErrorCode = "expression nests too deeply"
const ErrLarge ErrorCode = "expression too large"

// An ErrorCode describes a failure to parse a regular expression.
type ErrorCode string

func (e ErrorCode) String() string {
	return string(e)
}
