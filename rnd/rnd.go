package main

import (
	"fmt"

	"github.com/tidwall/btree"
)

type Item struct {
	Key, Val string
}

// byKeys is a comparison function that compares item keys and returns true
// when a is less than b.
func byKeys(a, b interface{}) bool {
	i1, i2 := a.(*Item), b.(*Item)
	//fmt.Println("key1",i1.Key,"key2",i2.Key,"greater",(i1.Key < i2.Key))
	fmt.Println("compare:",i1.Key,i2.Key)
	bo := i1.Key < i2.Key
	if bo {
		fmt.Println("t")
	}else{
		fmt.Println("f")
	}
	return bo
}

// byVals is a comparison function that compares item values and returns true
// when a is less than b.
var count = 30
func byVals(a, b interface{}) bool {
	i1, i2 := a.(*Item), b.(*Item)
	//fmt.Println("val1",i1.Val,"val2",i2.Val,"greater",(i1.Val < i2.Val))
	count--
	if (count < 0) {
		panic("error")
	}
	if i1.Val < i2.Val {
		fmt.Println("compare:",i1.Val,i2.Val)
		fmt.Println("t")
		return true
	}
	if i1.Val > i2.Val {
		fmt.Println("compare:",i1.Val,i2.Val)
		fmt.Println("f")
		return false
	}
	// Both vals are equal so we should fall though
	// and let the key comparison take over.
	return byKeys(a, b)
}

func main() {
	// Create a tree for keys and a tree for values.
	// The "keys" tree will be sorted on the Keys field.
	// The "values" tree will be sorted on the Values field.
	keys := btree.New(byKeys)
	vals := btree.New(byVals)

	// Create some items.
	users := []*Item{
		&Item{Key: "user:1", Val: "Jane"},
		&Item{Key: "user:2", Val: "Andy"},
		&Item{Key: "user:3", Val: "Steve"},
		&Item{Key: "user:4", Val: "Andrea"},
		&Item{Key: "user:5", Val: "Janet"},
		&Item{Key: "user:6", Val: "Andy"},
	}

	// Insert each user into both trees
	for _, user := range users {
		keys.Set(user)
		vals.Set(user)
	}

	// Iterate over each user in the key tree
	keys.Ascend(nil, func(item interface{}) bool {
		kvi := item.(*Item)
		fmt.Printf("%s %s\n", kvi.Key, kvi.Val)
		return true
	})

	fmt.Printf("\n")
	// Iterate over each user in the val tree
	vals.Ascend(nil, func(item interface{}) bool {
		kvi := item.(*Item)
		fmt.Printf("%s %s\n", kvi.Key, kvi.Val)
		return true
	})

	// Output:
	// user:1 Jane
	// user:2 Andy
	// user:3 Steve
	// user:4 Andrea
	// user:5 Janet
	// user:6 Andy
	//
	// user:4 Andrea
	// user:2 Andy
	// user:6 Andy
	// user:1 Jane
	// user:5 Janet
	// user:3 Steve
}