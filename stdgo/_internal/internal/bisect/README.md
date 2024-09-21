# Module: `stdgo._internal.internal.bisect`

[(view library index)](../../../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [`function _appendFileLine(_dst:stdgo.Slice<stdgo.GoUInt8>, _file:stdgo.GoString, _line:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8>`](<#function-_appendfileline>)

- [`function _fnv(_h:stdgo.GoUInt64, _x:stdgo.GoUInt8):stdgo.GoUInt64`](<#function-_fnv>)

- [`function _fnvString(_h:stdgo.GoUInt64, _x:stdgo.GoString):stdgo.GoUInt64`](<#function-_fnvstring>)

- [`function _fnvUint32(_h:stdgo.GoUInt64, _x:stdgo.GoUInt32):stdgo.GoUInt64`](<#function-_fnvuint32>)

- [`function _fnvUint64(_h:stdgo.GoUInt64, _x:stdgo.GoUInt64):stdgo.GoUInt64`](<#function-_fnvuint64>)

- [`function _printFileLine(_w:stdgo._internal.internal.bisect.Writer, _h:stdgo.GoUInt64, _file:stdgo.GoString, _line:stdgo.GoInt):stdgo.Error`](<#function-_printfileline>)

- [`function _printStack(_w:stdgo._internal.internal.bisect.Writer, _h:stdgo.GoUInt64, _stk:stdgo.Slice<stdgo.GoUIntptr>):stdgo.Error`](<#function-_printstack>)

- [`function appendMarker(_dst:stdgo.Slice<stdgo.GoUInt8>, _id:stdgo.GoUInt64):stdgo.Slice<stdgo.GoUInt8>`](<#function-appendmarker>)

- [`function cutMarker(_line:stdgo.GoString):{
	_2:Bool;
	_1:stdgo.GoUInt64;
	_0:stdgo.GoString;
}`](<#function-cutmarker>)

- [`function hash(_data:haxe.Rest<stdgo.AnyInterface>):stdgo.GoUInt64`](<#function-hash>)

- [`function marker(_id:stdgo.GoUInt64):stdgo.GoString`](<#function-marker>)

- [`function new_(_pattern:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.internal.bisect.Matcher>;
}`](<#function-new_>)

- [`function printMarker(_w:stdgo._internal.internal.bisect.Writer, _h:stdgo.GoUInt64):stdgo.Error`](<#function-printmarker>)

- [class Matcher](<#class-matcher>)

  - [`function new(?_verbose:Bool, ?_quiet:Bool, ?_enable:Bool, ?_list:stdgo.Slice<stdgo._internal.internal.bisect.T_cond>, ?_dedup:stdgo._internal.internal.bisect.T_atomicPointerDedup):Void`](<#matcher-function-new>)

- [class T\_atomicPointerDedup](<#class-t_atomicpointerdedup>)

  - [`function new(?_p:stdgo._internal.unsafe.UnsafePointer):Void`](<#t_atomicpointerdedup-function-new>)

- [class T\_cond](<#class-t_cond>)

  - [`function new(?_mask:stdgo.GoUInt64, ?_bits:stdgo.GoUInt64, ?_result:Bool):Void`](<#t_cond-function-new>)

- [class T\_dedup](<#class-t_dedup>)

  - [`function new(?_recent:stdgo.GoArray<stdgo.GoArray<stdgo.GoUInt64>>, ?_mu:stdgo._internal.sync.Mutex, ?_m:stdgo.GoMap<stdgo.GoUInt64, Bool>):Void`](<#t_dedup-function-new>)

- [class T\_parseError](<#class-t_parseerror>)

  - [`function new(?_text:stdgo.GoString):Void`](<#t_parseerror-function-new>)

- [typedef Writer](<#typedef-writer>)

# Constants


```haxe
import stdgo._internal.internal.bisect.Bisect_printMarker
```


```haxe
final _offset64:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final _prime64:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


# Functions


```haxe
import stdgo._internal.internal.bisect.Bisect_printMarker
```


## function \_appendFileLine


```haxe
function _appendFileLine(_dst:stdgo.Slice<stdgo.GoUInt8>, _file:stdgo.GoString, _line:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Bisect_printMarker.hx#L2>)


## function \_fnv


```haxe
function _fnv(_h:stdgo.GoUInt64, _x:stdgo.GoUInt8):stdgo.GoUInt64
```


[\(view code\)](<./Bisect_printMarker.hx#L2>)


## function \_fnvString


```haxe
function _fnvString(_h:stdgo.GoUInt64, _x:stdgo.GoString):stdgo.GoUInt64
```


[\(view code\)](<./Bisect_printMarker.hx#L2>)


## function \_fnvUint32


```haxe
function _fnvUint32(_h:stdgo.GoUInt64, _x:stdgo.GoUInt32):stdgo.GoUInt64
```


[\(view code\)](<./Bisect_printMarker.hx#L2>)


## function \_fnvUint64


```haxe
function _fnvUint64(_h:stdgo.GoUInt64, _x:stdgo.GoUInt64):stdgo.GoUInt64
```


[\(view code\)](<./Bisect_printMarker.hx#L2>)


## function \_printFileLine


```haxe
function _printFileLine(_w:stdgo._internal.internal.bisect.Writer, _h:stdgo.GoUInt64, _file:stdgo.GoString, _line:stdgo.GoInt):stdgo.Error
```


[\(view code\)](<./Bisect_printMarker.hx#L2>)


## function \_printStack


```haxe
function _printStack(_w:stdgo._internal.internal.bisect.Writer, _h:stdgo.GoUInt64, _stk:stdgo.Slice<stdgo.GoUIntptr>):stdgo.Error
```


[\(view code\)](<./Bisect_printMarker.hx#L2>)


## function appendMarker


```haxe
function appendMarker(_dst:stdgo.Slice<stdgo.GoUInt8>, _id:stdgo.GoUInt64):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Bisect_printMarker.hx#L2>)


## function cutMarker


```haxe
function cutMarker(_line:stdgo.GoString):{
	_2:Bool;
	_1:stdgo.GoUInt64;
	_0:stdgo.GoString;
}
```


[\(view code\)](<./Bisect_printMarker.hx#L2>)


## function hash


```haxe
function hash(_data:haxe.Rest<stdgo.AnyInterface>):stdgo.GoUInt64
```


[\(view code\)](<./Bisect_printMarker.hx#L2>)


## function marker


```haxe
function marker(_id:stdgo.GoUInt64):stdgo.GoString
```


[\(view code\)](<./Bisect_printMarker.hx#L2>)


## function new\_


```haxe
function new_(_pattern:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.internal.bisect.Matcher>;
}
```


[\(view code\)](<./Bisect_printMarker.hx#L2>)


## function printMarker


```haxe
function printMarker(_w:stdgo._internal.internal.bisect.Writer, _h:stdgo.GoUInt64):stdgo.Error
```


[\(view code\)](<./Bisect_printMarker.hx#L2>)


# Classes


```haxe
import stdgo._internal.internal.bisect.*
```


## class Matcher


```haxe
var _dedup:stdgo._internal.internal.bisect.T_atomicPointerDedup
```


```haxe
var _enable:Bool
```


```haxe
var _list:stdgo.Slice<stdgo._internal.internal.bisect.T_cond>
```


```haxe
var _quiet:Bool
```


```haxe
var _verbose:Bool
```


### Matcher function new


```haxe
function new(?_verbose:Bool, ?_quiet:Bool, ?_enable:Bool, ?_list:stdgo.Slice<stdgo._internal.internal.bisect.T_cond>, ?_dedup:stdgo._internal.internal.bisect.T_atomicPointerDedup):Void
```


[\(view code\)](<./Bisect_Matcher.hx#L8>)


## class T\_atomicPointerDedup


```haxe
var _p:stdgo._internal.unsafe.UnsafePointer
```


### T\_atomicPointerDedup function new


```haxe
function new(?_p:stdgo._internal.unsafe.UnsafePointer):Void
```


[\(view code\)](<./Bisect_T_atomicPointerDedup.hx#L4>)


## class T\_cond


```haxe
var _bits:stdgo.GoUInt64
```


```haxe
var _mask:stdgo.GoUInt64
```


```haxe
var _result:Bool
```


### T\_cond function new


```haxe
function new(?_mask:stdgo.GoUInt64, ?_bits:stdgo.GoUInt64, ?_result:Bool):Void
```


[\(view code\)](<./Bisect_T_cond.hx#L6>)


## class T\_dedup


```haxe
var _m:stdgo.GoMap<stdgo.GoUInt64, Bool>
```


```haxe
var _mu:stdgo._internal.sync.Mutex
```


```haxe
var _recent:stdgo.GoArray<stdgo.GoArray<stdgo.GoUInt64>>
```


### T\_dedup function new


```haxe
function new(?_recent:stdgo.GoArray<stdgo.GoArray<stdgo.GoUInt64>>, ?_mu:stdgo._internal.sync.Mutex, ?_m:stdgo.GoMap<stdgo.GoUInt64, Bool>):Void
```


[\(view code\)](<./Bisect_T_dedup.hx#L6>)


## class T\_parseError


```haxe
var _text:stdgo.GoString
```


### T\_parseError function new


```haxe
function new(?_text:stdgo.GoString):Void
```


[\(view code\)](<./Bisect_T_parseError.hx#L4>)


# Typedefs


```haxe
import stdgo._internal.internal.bisect.*
```


## typedef Writer


```haxe
typedef Writer = {
	public function write(_0:stdgo.Slice<stdgo.GoUInt8>):{
		_1:stdgo.Error;
		_0:stdgo.GoInt;
	};
};
```


