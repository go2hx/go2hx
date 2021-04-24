package main

import (
	"fmt"
	"reflect"
)

func main() {
	fmt.Println("start")

	// Code below highlights what works so far in the reflect prototype
	str := "hitchhiker"
	showType(42)
	showType(uint8(42))
	showType(str)
	showType(&str)
	spt := reflect.PtrTo(reflect.TypeOf(str))
	fmt.Println(spt)
	showType(struct {
		A int32
		b string
	}{42, str})

	m := MyType{
		X: 42,
		y: str,
	}
	showType(m)
	mt := reflect.TypeOf(m)
	fmt.Println("MyType fields:")
	for i := 0; i < mt.NumField(); i++ {
		fmt.Println(mt.Field(i))
	}
	fmt.Println("MyType methods:")
	for i := 0; i < mt.NumMethod(); i++ {
		fmt.Println(mt.Method(i))
	}

	// line below does not work in Go, it would neet to be generated by go2hx
	var ms = makeNamedGoType("interface", "github_com.pxshadow.go4hx.rnd.MyStringer")

	fmt.Println(ms.String(), " methods:")
	for i := 0; i < ms.NumMethod(); i++ {
		fmt.Println(ms.Method(i))
	}
	fmt.Println(mt.Implements(ms)) // this is the key requirement for a type switch

}

/** OUTPUT **
start
stdgo._StdGoTypes.AnyInterfaceData int64 6 int64
stdgo._StdGoTypes.AnyInterfaceData uint8 8 uint8
stdgo._StdGoTypes.AnyInterfaceData string 24 string
stdgo._StdGoTypes.AnyInterfaceData *string 22 ptr
GT_ptr(GT_string)
stdgo._StdGoTypes.AnyInterfaceData struct { b string; A int64 } 25 struct
stdgo._StdGoTypes.AnyInterfaceData github_com/pxshadow/go4hx/rnd.MyType 27 namedType
MyType fields:
{name: X, anonymous: false, tag: , pkgPath: github_com/pxshadow/go4hx/rnd, type: GT_uint8}
{name: y, anonymous: false, tag: , pkgPath: github_com/pxshadow/go4hx/rnd, type: GT_string}
{name: is_pointer_, anonymous: false, tag: , pkgPath: github_com/pxshadow/go4hx/rnd, type: GT_namedType(unsafe.HaxeTypeUnknown)}
{name: typeName_, anonymous: false, tag: , pkgPath: github_com/pxshadow/go4hx/rnd, type: GT_string}
{name: address_, anonymous: false, tag: , pkgPath: github_com/pxshadow/go4hx/rnd, type: GT_namedType(unsafe.HaxeTypeUnknown)}
MyType methods:
{name: ToString, pkgPath: github_com/pxshadow/go4hx/rnd, type: GT_func([],[GT_string])}
{name: _copy__, pkgPath: github_com/pxshadow/go4hx/rnd, type: GT_func([],[GT_namedType(github_com.pxshadow.go4hx.rnd.MyType)])}
{name: String, pkgPath: github_com/pxshadow/go4hx/rnd, type: GT_func([],[GT_string])}
{name: New, pkgPath: github_com/pxshadow/go4hx/rnd, type: GT_func([GT_uint8,GT_string],[GT_namedType(unsafe.HaxeTypeUnknown)])}
github_com/pxshadow/go4hx/rnd.MyStringer  methods:
{name: String, pkgPath: github_com/pxshadow/go4hx/rnd, type: GT_func([],[GT_string])}
true
**/

func showType(i interface{}) {
	Ti := reflect.TypeOf(i)
	Ki := Ti.Kind()
	Kui := uint(Ki)
	Kn := Ki.String()
	fmt.Println(i, Ti.String(), Kui, Kn)
}

type MyType struct {
	X uint8
	y string
}

func (mt MyType) String() string {
	return mt.y
}

type MyStringer interface {
	String() string
}

//#go2hx stdgo.reflect.Reflect.makeNamedGoType
func makeNamedGoType(interface_or_namedType, haxePathToFunction string) reflect.Type
