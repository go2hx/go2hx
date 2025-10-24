package main

import (
	"fmt"
	"reflect"
)

type Node struct {
	Name  string
	Alias *Node
	Child []*Node
}

func main() {
	i := []string(nil)
	//println("i", i == nil)
	x := make([]string, 0)
	//println("x", x == nil)
	result := append(i, x...)
	expected := []string(nil)
	if result != nil {
		panic("result is not nil")
	}
	if expected != nil {
		panic("expected is not nil")
	}
	b := reflect.DeepEqual(result, expected)
	if !b {
		panic("invalid deepEqual")
	}

	n := &Node{Name: "parent"}
	n.Child = append(n.Child, &Node{Name: "child"})
	fmt.Println(len(n.Child))
	if n.Name != "parent" {
		panic("incorrect n.Name: " + n.Name)
	}
	if n.Child[0].Name != "child" {
		panic("incorrect n.Child[0].Name: " + n.Child[0].Name)
	}
}
