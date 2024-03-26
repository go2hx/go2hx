# Module: `stdgo._internal.internal.godebugs`

[(view library index)](../../../stdgo.md)


# Overview


# Index


- [Variables](<#variables>)

- [`function lookup(_name:stdgo.GoString):stdgo.Ref<stdgo._internal.internal.godebugs.Info>`](<#function-lookup>)

- [class Info](<#class-info>)

  - [`function new(?name:stdgo.GoString, ?package_:stdgo.GoString, ?changed:stdgo.GoInt, ?old:stdgo.GoString, ?opaque:Bool):Void`](<#info-function-new>)

# Variables


```haxe
import stdgo._internal.internal.godebugs.Godebugs
```


```haxe
var all:stdgo.Slice<stdgo._internal.internal.godebugs.Info>
```


# Functions


```haxe
import stdgo._internal.internal.godebugs.Godebugs
```


## function lookup


```haxe
function lookup(_name:stdgo.GoString):stdgo.Ref<stdgo._internal.internal.godebugs.Info>
```


[\(view code\)](<./Godebugs.hx#L22>)


# Classes


```haxe
import stdgo._internal.internal.godebugs.*
```


## class Info


```haxe
var changed:stdgo.GoInt
```


```haxe
var name:stdgo.GoString
```


```haxe
var old:stdgo.GoString
```


```haxe
var opaque:Bool
```


```haxe
var package_:stdgo.GoString
```


### Info function new


```haxe
function new(?name:stdgo.GoString, ?package_:stdgo.GoString, ?changed:stdgo.GoInt, ?old:stdgo.GoString, ?opaque:Bool):Void
```


[\(view code\)](<./Godebugs.hx#L10>)


