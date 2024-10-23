package analysis

import (
	"go/ast"
	"go/types"
)

func elimGotos() {

}

func ParseLocalGotos(file *ast.File, checker *types.Checker) {
	funcs := []ast.BlockStmt{}
	// select functions that have gotos in them
	_ = funcs
	// find labels

	// find gotos

	// deconstruct all control flows

	// turn funcs' blocks into looped switch statement

	// optional print out somewhere and run
}
