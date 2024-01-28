# Module: `stdgo.internal.bisect`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [Variables](<#variables>)

- [`function _appendFileLine(_dst:stdgo.Slice<stdgo.GoByte>, _file:stdgo.GoString, _line:stdgo.GoInt):Void`](<#function-_appendfileline>)

- [`function _fnv(_h:stdgo.GoUInt64, _x:stdgo.GoByte):Void`](<#function-_fnv>)

- [`function _fnvString(_h:stdgo.GoUInt64, _x:stdgo.GoString):Void`](<#function-_fnvstring>)

- [`function _fnvUint32(_h:stdgo.GoUInt64, _x:stdgo.GoUInt32):Void`](<#function-_fnvuint32>)

- [`function _fnvUint64(_h:stdgo.GoUInt64, _x:stdgo.GoUInt64):Void`](<#function-_fnvuint64>)

- [`function _printFileLine(_w:stdgo.internal.bisect.Writer, _h:stdgo.GoUInt64, _file:stdgo.GoString, _line:stdgo.GoInt):Void`](<#function-_printfileline>)

- [`function _printStack(_w:stdgo.internal.bisect.Writer, _h:stdgo.GoUInt64, _stk:stdgo.Slice<stdgo.GoUIntptr>):Void`](<#function-_printstack>)

- [`function appendMarker(_dst:stdgo.Slice<stdgo.GoByte>, _id:stdgo.GoUInt64):Void`](<#function-appendmarker>)

- [`function cutMarker(_line:stdgo.GoString):Void`](<#function-cutmarker>)

- [`function hash(_data:haxe.Rest<stdgo.AnyInterface>):Void`](<#function-hash>)

- [`function marker(_id:stdgo.GoUInt64):Void`](<#function-marker>)

- [`function new_(_pattern:stdgo.GoString):Void`](<#function-new_>)

- [`function printMarker(_w:stdgo.internal.bisect.Writer, _h:stdgo.GoUInt64):Void`](<#function-printmarker>)

- [typedef Matcher](<#typedef-matcher>)

- [typedef Matcher\_asInterface](<#typedef-matcher_asinterface>)

- [typedef Matcher\_static\_extension](<#typedef-matcher_static_extension>)

- [typedef T\_atomicPointerDedup](<#typedef-t_atomicpointerdedup>)

- [typedef T\_atomicPointerDedup\_asInterface](<#typedef-t_atomicpointerdedup_asinterface>)

- [typedef T\_atomicPointerDedup\_static\_extension](<#typedef-t_atomicpointerdedup_static_extension>)

- [typedef T\_cond](<#typedef-t_cond>)

- [typedef T\_dedup](<#typedef-t_dedup>)

- [typedef T\_dedup\_asInterface](<#typedef-t_dedup_asinterface>)

- [typedef T\_dedup\_static\_extension](<#typedef-t_dedup_static_extension>)

- [typedef T\_parseError](<#typedef-t_parseerror>)

- [typedef T\_parseError\_asInterface](<#typedef-t_parseerror_asinterface>)

- [typedef T\_parseError\_static\_extension](<#typedef-t_parseerror_static_extension>)

- [typedef Writer](<#typedef-writer>)

# Variables


```haxe
import stdgo.internal.bisect.Bisect
```


```haxe
var __go2hxdoc__package:Dynamic
```


```haxe
var _offset64:Dynamic
```


```haxe
var _prime64:Dynamic
```


# Functions


```haxe
import stdgo.internal.bisect.Bisect
```


## function \_appendFileLine


```haxe
function _appendFileLine(_dst:stdgo.Slice<stdgo.GoByte>, _file:stdgo.GoString, _line:stdgo.GoInt):Void
```


[\(view code\)](<./Bisect.hx#L13>)


## function \_fnv


```haxe
function _fnv(_h:stdgo.GoUInt64, _x:stdgo.GoByte):Void
```


[\(view code\)](<./Bisect.hx#L20>)


## function \_fnvString


```haxe
function _fnvString(_h:stdgo.GoUInt64, _x:stdgo.GoString):Void
```


[\(view code\)](<./Bisect.hx#L21>)


## function \_fnvUint32


```haxe
function _fnvUint32(_h:stdgo.GoUInt64, _x:stdgo.GoUInt32):Void
```


[\(view code\)](<./Bisect.hx#L23>)


## function \_fnvUint64


```haxe
function _fnvUint64(_h:stdgo.GoUInt64, _x:stdgo.GoUInt64):Void
```


[\(view code\)](<./Bisect.hx#L22>)


## function \_printFileLine


```haxe
function _printFileLine(_w:stdgo.internal.bisect.Writer, _h:stdgo.GoUInt64, _file:stdgo.GoString, _line:stdgo.GoInt):Void
```


[\(view code\)](<./Bisect.hx#L12>)


## function \_printStack


```haxe
function _printStack(_w:stdgo.internal.bisect.Writer, _h:stdgo.GoUInt64, _stk:stdgo.Slice<stdgo.GoUIntptr>):Void
```


[\(view code\)](<./Bisect.hx#L15>)


## function appendMarker


```haxe
function appendMarker(_dst:stdgo.Slice<stdgo.GoByte>, _id:stdgo.GoUInt64):Void
```


[\(view code\)](<./Bisect.hx#L17>)


## function cutMarker


```haxe
function cutMarker(_line:stdgo.GoString):Void
```


[\(view code\)](<./Bisect.hx#L18>)


## function hash


```haxe
function hash(_data:haxe.Rest<stdgo.AnyInterface>):Void
```


[\(view code\)](<./Bisect.hx#L19>)


## function marker


```haxe
function marker(_id:stdgo.GoUInt64):Void
```


[\(view code\)](<./Bisect.hx#L16>)


## function new\_


```haxe
function new_(_pattern:stdgo.GoString):Void
```


[\(view code\)](<./Bisect.hx#L11>)


## function printMarker


```haxe
function printMarker(_w:stdgo.internal.bisect.Writer, _h:stdgo.GoUInt64):Void
```


[\(view code\)](<./Bisect.hx#L14>)


# Typedefs


```haxe
import stdgo.internal.bisect.*
```


## typedef Matcher


```haxe
typedef Matcher = Dynamic;
```


## typedef Matcher\_asInterface


```haxe
typedef Matcher_asInterface = Dynamic;
```


## typedef Matcher\_static\_extension


```haxe
typedef Matcher_static_extension = Dynamic;
```


## typedef T\_atomicPointerDedup


```haxe
typedef T_atomicPointerDedup = Dynamic;
```


## typedef T\_atomicPointerDedup\_asInterface


```haxe
typedef T_atomicPointerDedup_asInterface = Dynamic;
```


## typedef T\_atomicPointerDedup\_static\_extension


```haxe
typedef T_atomicPointerDedup_static_extension = Dynamic;
```


## typedef T\_cond


```haxe
typedef T_cond = Dynamic;
```


## typedef T\_dedup


```haxe
typedef T_dedup = Dynamic;
```


## typedef T\_dedup\_asInterface


```haxe
typedef T_dedup_asInterface = Dynamic;
```


## typedef T\_dedup\_static\_extension


```haxe
typedef T_dedup_static_extension = Dynamic;
```


## typedef T\_parseError


```haxe
typedef T_parseError = Dynamic;
```


## typedef T\_parseError\_asInterface


```haxe
typedef T_parseError_asInterface = Dynamic;
```


## typedef T\_parseError\_static\_extension


```haxe
typedef T_parseError_static_extension = Dynamic;
```


## typedef Writer


```haxe
typedef Writer = stdgo._internal.internal.bisect.Writer;
```


