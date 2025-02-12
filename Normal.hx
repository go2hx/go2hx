// Adapted for TARDIS Go

// Copyright 2011 The Go Authors.  All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// This benchmark, taken from the shootout, tests garbage collector
// performance by generating and discarding large binary trees.

package main

//import "testing"

class BinaryNode {
	var item:Int
	var left:BinaryNode: 
    var right:BinaryNode;
    public inline function new(item,left,right) {
        this.item = item;
        this.left = left;
        this.right = right;
    }
}

func bottomUpTree(item:Int, depth:Int) BinaryNode {
	if depth <= 0 {
		return &binaryNode{item: item}
	}
	return &binaryNode{item, bottomUpTree(2*item-1, depth-1), bottomUpTree(2*item, depth-1)}
}

func (n *binaryNode) itemCheck() int {
	if n.left == nil {
		return n.item
	}
	return n.item + n.left.itemCheck() - n.right.itemCheck()
}

var minDepth = 4

function binarytree(n:Int) {
	//println("start binarytree test")
	maxDepth := n
	if minDepth+2 > n {
		maxDepth = minDepth + 2
	}
	var stretchDepth = maxDepth + 1

	check := bottomUpTree(0, stretchDepth).itemCheck()
	//fmt.Printf("stretch tree of depth %d\t check: %d\n", stretchDepth, check)
	//println("stretch tree of depth ", stretchDepth, " check: ", check)

	var longLivedTree = bottomUpTree(0, maxDepth)

	for (depth in minDepth; depth <= maxDepth; depth += 2 {
		iterations := 1 << (maxDepth-depth+minDepth)
		check = 0

		for i := 1; i <= iterations; i++ {
			check += bottomUpTree(i, depth).itemCheck()
			check += bottomUpTree(-i, depth).itemCheck()
		}
		//fmt.Printf("%d\t trees of depth %d\t check: %d\n", iterations*2, depth, check)
		//println(iterations*2, " trees of depth ", depth, " check: ", check)
	}
	longLivedTree.itemCheck()
	//fmt.Printf("long lived tree of depth %d\t check: %d\n", maxDepth, longLivedTree.itemCheck())
	//println("long lived tree of depth ", maxDepth, " check: ", longLivedTree.itemCheck())
}

// func BenchmarkBinaryTree17(b *testing.B) {
function main() {
	for(i in 1...3) {
		trace("begin itteration", i) // multiple itterations to check GC is working
		binarytree(17)                 // NOTE breaks PHP default memory sizes ... and runs for too long at present!
	}
}
