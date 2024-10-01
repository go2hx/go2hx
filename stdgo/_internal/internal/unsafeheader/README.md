# Module: `stdgo._internal.internal.unsafeheader`

[(view library index)](../../../stdgo.md)


# Overview


# Index


- [class Slice\_](<#class-slice_>)

  - [`function new(?data:stdgo._internal.unsafe.UnsafePointer, ?len:Null<stdgo.GoInt>, ?cap:Null<stdgo.GoInt>):Void`](<#slice_-function-new>)

- [class String\_](<#class-string_>)

  - [`function new(?data:stdgo._internal.unsafe.UnsafePointer, ?len:stdgo.GoInt):Void`](<#string_-function-new>)

# Classes


```haxe
import stdgo._internal.internal.unsafeheader.*
```


## class Slice\_


```haxe
var cap:stdgo.GoInt
```


```haxe
var data:stdgo._internal.unsafe.UnsafePointer
```


```haxe
var len:stdgo.GoInt
```


### Slice\_ function new


```haxe
function new(?data:stdgo._internal.unsafe.UnsafePointer, ?len:Null<stdgo.GoInt>, ?cap:Null<stdgo.GoInt>):Void
```


[\(view code\)](<./Unsafeheader_Slice_.hx#L6>)


## class String\_


```haxe
var data:stdgo._internal.unsafe.UnsafePointer
```


```haxe
var len:stdgo.GoInt
```


### String\_ function new


```haxe
function new(?data:stdgo._internal.unsafe.UnsafePointer, ?len:stdgo.GoInt):Void
```


[\(view code\)](<./Unsafeheader_String_.hx#L5>)


