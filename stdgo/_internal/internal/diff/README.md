# Module: `stdgo._internal.internal.diff`

[(view library index)](../../../stdgo.md)


# Overview


# Index


- [`function _lines(_x:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoString>`](<#function-_lines>)

- [`function _tgs(_x:stdgo.Slice<stdgo.GoString>, _y:stdgo.Slice<stdgo.GoString>):stdgo.Slice<stdgo._internal.internal.diff.T_pair>`](<#function-_tgs>)

- [`function diff(_oldName:stdgo.GoString, _old:stdgo.Slice<stdgo.GoUInt8>, _newName:stdgo.GoString, _new:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8>`](<#function-diff>)

- [class T\_pair](<#class-t_pair>)

  - [`function new(?_x:stdgo.GoInt, ?_y:stdgo.GoInt):Void`](<#t_pair-function-new>)

# Functions


```haxe
import stdgo._internal.internal.diff.Diff_diff
```


## function \_lines


```haxe
function _lines(_x:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoString>
```


[\(view code\)](<./Diff_diff.hx#L2>)


## function \_tgs


```haxe
function _tgs(_x:stdgo.Slice<stdgo.GoString>, _y:stdgo.Slice<stdgo.GoString>):stdgo.Slice<stdgo._internal.internal.diff.T_pair>
```


[\(view code\)](<./Diff_diff.hx#L2>)


## function diff


```haxe
function diff(_oldName:stdgo.GoString, _old:stdgo.Slice<stdgo.GoUInt8>, _newName:stdgo.GoString, _new:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Diff_diff.hx#L2>)


# Classes


```haxe
import stdgo._internal.internal.diff.*
```


## class T\_pair


```haxe
var _x:stdgo.GoInt
```


```haxe
var _y:stdgo.GoInt
```


### T\_pair function new


```haxe
function new(?_x:stdgo.GoInt, ?_y:stdgo.GoInt):Void
```


[\(view code\)](<./Diff_T_pair.hx#L5>)


