package main

import (
	"fmt"
	"reflect"
	"unsafe"
)

var x unsafe.Pointer = nil

func main() {
	newInt8 := reflect.New(reflect.TypeOf(int8(0)))
	fmt.Println("kind:", newInt8.Kind())
	newInt8.Elem().SetInt(5)
}

/*import (
	"fmt"
	"math/rand"
	"reflect"
	"sort"
	"strconv"
	"strings"
)

var _ = fmt.Printf
var _ = strconv.AppendBool
var _ = sort.Ints
var _ = strings.Contains
var _ = reflect.TypeOf
var _ = rand.ExpFloat64

type s struct {
	int
}

func main() {
	x := s{}
	fmt.Println(x)
}*/
