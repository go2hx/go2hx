# Module: `stdgo._internal.internal.reflectlite`

[(view library index)](../../../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [`function swapper(_slice:stdgo.AnyInterface):(:stdgo.GoInt, :stdgo.GoInt):Void`](<#function-swapper>)

- [`function typeOf(_i:stdgo.AnyInterface):stdgo._internal.internal.reflectlite.Type_`](<#function-typeof>)

- [`function valueOf(_i:stdgo.AnyInterface):stdgo._internal.internal.reflectlite.Value`](<#function-valueof>)

- [class ValueError](<#class-valueerror>)

  - [`function new(?method:stdgo.GoString, ?kind:stdgo._internal.internal.abi.Kind):Void`](<#valueerror-function-new>)

- [typedef Kind](<#typedef-kind>)

- [typedef Type\_](<#typedef-type_>)

- [typedef Value](<#typedef-value>)

# Constants


```haxe
import stdgo._internal.internal.reflectlite.Reflectlite_valueOf
```


```haxe
final interface_:stdgo._internal.internal.abi.Kind = ((((0 : stdgo.GoUInt)) : stdgo._internal.internal.abi.Abi_Kind.Kind))
```


```haxe
final ptr:stdgo._internal.internal.abi.Kind = ((((0 : stdgo.GoUInt)) : stdgo._internal.internal.abi.Abi_Kind.Kind))
```


```haxe
final slice:stdgo._internal.internal.abi.Kind = ((((0 : stdgo.GoUInt)) : stdgo._internal.internal.abi.Abi_Kind.Kind))
```


```haxe
final string:stdgo._internal.internal.abi.Kind = ((((0 : stdgo.GoUInt)) : stdgo._internal.internal.abi.Abi_Kind.Kind))
```


```haxe
final struct_:stdgo._internal.internal.abi.Kind = ((((0 : stdgo.GoUInt)) : stdgo._internal.internal.abi.Abi_Kind.Kind))
```


# Functions


```haxe
import stdgo._internal.internal.reflectlite.Reflectlite_valueOf
```


## function swapper


```haxe
function swapper(_slice:stdgo.AnyInterface):(:stdgo.GoInt, :stdgo.GoInt):Void
```


[\(view code\)](<./Reflectlite_valueOf.hx#L2>)


## function typeOf


```haxe
function typeOf(_i:stdgo.AnyInterface):stdgo._internal.internal.reflectlite.Type_
```


[\(view code\)](<./Reflectlite_valueOf.hx#L2>)


## function valueOf


```haxe
function valueOf(_i:stdgo.AnyInterface):stdgo._internal.internal.reflectlite.Value
```


[\(view code\)](<./Reflectlite_valueOf.hx#L2>)


# Classes


```haxe
import stdgo._internal.internal.reflectlite.*
```


## class ValueError


```haxe
var kind:stdgo._internal.internal.abi.Kind
```


```haxe
var method:stdgo.GoString
```


### ValueError function new


```haxe
function new(?method:stdgo.GoString, ?kind:stdgo._internal.internal.abi.Kind):Void
```


[\(view code\)](<./Reflectlite_ValueError.hx#L5>)


# Typedefs


```haxe
import stdgo._internal.internal.reflectlite.*
```


## typedef Kind


```haxe
typedef Kind = stdgo._internal.internal.abi.Kind;
```


## typedef Type\_


```haxe
typedef Type_ = stdgo._internal.reflect.Type_;
```


## typedef Value


```haxe
typedef Value = stdgo._internal.reflect.Value;
```


