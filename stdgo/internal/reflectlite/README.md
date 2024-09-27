# Module: `stdgo.internal.reflectlite`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [class Reflectlite](<#class-reflectlite>)

  - [`function swapper(_slice:stdgo.AnyInterface):(:stdgo.GoInt, :stdgo.GoInt):Void`](<#reflectlite-function-swapper>)

  - [`function typeOf(_i:stdgo.AnyInterface):stdgo.internal.reflectlite.Type_`](<#reflectlite-function-typeof>)

  - [`function valueOf(_i:stdgo.AnyInterface):stdgo.internal.reflectlite.Value`](<#reflectlite-function-valueof>)

- [typedef Kind](<#typedef-kind>)

- [typedef Type\_](<#typedef-type_>)

- [typedef Value](<#typedef-value>)

- [abstract ValueError](<#abstract-valueerror>)

# Constants


```haxe
import stdgo.internal.reflectlite.Reflectlite
```


```haxe
final interface_:stdgo._internal.internal.abi.Kind = stdgo._internal.internal.reflectlite.Reflectlite_interface_.interface_
```


```haxe
final ptr:stdgo._internal.internal.abi.Kind = stdgo._internal.internal.reflectlite.Reflectlite_ptr.ptr
```


```haxe
final slice:stdgo._internal.internal.abi.Kind = stdgo._internal.internal.reflectlite.Reflectlite_slice.slice
```


```haxe
final string:stdgo._internal.internal.abi.Kind = stdgo._internal.internal.reflectlite.Reflectlite_string.string
```


```haxe
final struct_:stdgo._internal.internal.abi.Kind = stdgo._internal.internal.reflectlite.Reflectlite_struct_.struct_
```


# Classes


```haxe
import stdgo.internal.reflectlite.*
```


## class Reflectlite


```
Package reflectlite implements lightweight version of reflect, not using
    any package except for "runtime", "unsafe", and "internal/abi"
```
### Reflectlite function swapper


```haxe
function swapper(_slice:stdgo.AnyInterface):(:stdgo.GoInt, :stdgo.GoInt):Void
```


```
Swapper returns a function that swaps the elements in the provided
        slice.
```

Swapper panics if the provided interface is not a slice.  

[\(view code\)](<./Reflectlite.hx#L69>)


### Reflectlite function typeOf


```haxe
function typeOf(_i:stdgo.AnyInterface):stdgo.internal.reflectlite.Type_
```


```
TypeOf returns the reflection Type that represents the dynamic type of i.
        If i is a nil interface value, TypeOf returns nil.
```
[\(view code\)](<./Reflectlite.hx#L76>)


### Reflectlite function valueOf


```haxe
function valueOf(_i:stdgo.AnyInterface):stdgo.internal.reflectlite.Value
```


```
ValueOf returns a new Value initialized to the concrete value
        stored in the interface i. ValueOf(nil) returns the zero Value.
```
[\(view code\)](<./Reflectlite.hx#L83>)


# Typedefs


```haxe
import stdgo.internal.reflectlite.*
```


## typedef Kind


```haxe
typedef Kind = stdgo._internal.internal.reflectlite.Kind;
```


## typedef Type\_


```haxe
typedef Type_ = stdgo._internal.internal.reflectlite.Type_;
```


## typedef Value


```haxe
typedef Value = stdgo._internal.internal.reflectlite.Value;
```


# Abstracts


## abstract ValueError


[\(view file containing code\)](<./Reflectlite.hx>)


