# Module: `stdgo._internal.internal.bisect`

[(view library index)](../../../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [`function _appendFileLine(_dst:stdgo.Slice<stdgo.GoByte>, _file:stdgo.GoString, _line:stdgo.GoInt):stdgo.Slice<stdgo.GoByte>`](<#function-_appendfileline>)

- [`function _fnv(_h:stdgo.GoUInt64, _x:stdgo.GoByte):stdgo.GoUInt64`](<#function-_fnv>)

- [`function _fnvString(_h:stdgo.GoUInt64, _x:stdgo.GoString):stdgo.GoUInt64`](<#function-_fnvstring>)

- [`function _fnvUint32(_h:stdgo.GoUInt64, _x:stdgo.GoUInt32):stdgo.GoUInt64`](<#function-_fnvuint32>)

- [`function _fnvUint64(_h:stdgo.GoUInt64, _x:stdgo.GoUInt64):stdgo.GoUInt64`](<#function-_fnvuint64>)

- [`function _printFileLine(_w:stdgo._internal.internal.bisect.Writer, _h:stdgo.GoUInt64, _file:stdgo.GoString, _line:stdgo.GoInt):stdgo.Error`](<#function-_printfileline>)

- [`function _printStack(_w:stdgo._internal.internal.bisect.Writer, _h:stdgo.GoUInt64, _stk:stdgo.Slice<stdgo.GoUIntptr>):stdgo.Error`](<#function-_printstack>)

- [`function appendMarker(_dst:stdgo.Slice<stdgo.GoByte>, _id:stdgo.GoUInt64):stdgo.Slice<stdgo.GoByte>`](<#function-appendmarker>)

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

  - [`function _fileLine( _w:stdgo._internal.internal.bisect.Writer, _file:stdgo.GoString, _line:stdgo.GoInt):Bool`](<#matcher-function-_fileline>)

  - [`function _matchResult( _id:stdgo.GoUInt64):Bool`](<#matcher-function-_matchresult>)

  - [`function _stack( _w:stdgo._internal.internal.bisect.Writer):Bool`](<#matcher-function-_stack>)

  - [`function fileLine( _w:stdgo._internal.internal.bisect.Writer, _file:stdgo.GoString, _line:stdgo.GoInt):Bool`](<#matcher-function-fileline>)

  - [`function markerOnly():Bool`](<#matcher-function-markeronly>)

  - [`function shouldEnable( _id:stdgo.GoUInt64):Bool`](<#matcher-function-shouldenable>)

  - [`function shouldPrint( _id:stdgo.GoUInt64):Bool`](<#matcher-function-shouldprint>)

  - [`function stack( _w:stdgo._internal.internal.bisect.Writer):Bool`](<#matcher-function-stack>)

- [typedef Writer](<#typedef-writer>)

# Constants


```haxe
import stdgo._internal.internal.bisect.Bisect
```


```haxe
final _offset64:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


```haxe
final _prime64:stdgo.GoUInt64 = ((0 : stdgo.GoUInt64))
```


# Functions


```haxe
import stdgo._internal.internal.bisect.Bisect
```


## function \_appendFileLine


```haxe
function _appendFileLine(_dst:stdgo.Slice<stdgo.GoByte>, _file:stdgo.GoString, _line:stdgo.GoInt):stdgo.Slice<stdgo.GoByte>
```


[\(view code\)](<./Bisect.hx#L84>)


## function \_fnv


```haxe
function _fnv(_h:stdgo.GoUInt64, _x:stdgo.GoByte):stdgo.GoUInt64
```


[\(view code\)](<./Bisect.hx#L91>)


## function \_fnvString


```haxe
function _fnvString(_h:stdgo.GoUInt64, _x:stdgo.GoString):stdgo.GoUInt64
```


[\(view code\)](<./Bisect.hx#L92>)


## function \_fnvUint32


```haxe
function _fnvUint32(_h:stdgo.GoUInt64, _x:stdgo.GoUInt32):stdgo.GoUInt64
```


[\(view code\)](<./Bisect.hx#L94>)


## function \_fnvUint64


```haxe
function _fnvUint64(_h:stdgo.GoUInt64, _x:stdgo.GoUInt64):stdgo.GoUInt64
```


[\(view code\)](<./Bisect.hx#L93>)


## function \_printFileLine


```haxe
function _printFileLine(_w:stdgo._internal.internal.bisect.Writer, _h:stdgo.GoUInt64, _file:stdgo.GoString, _line:stdgo.GoInt):stdgo.Error
```


[\(view code\)](<./Bisect.hx#L83>)


## function \_printStack


```haxe
function _printStack(_w:stdgo._internal.internal.bisect.Writer, _h:stdgo.GoUInt64, _stk:stdgo.Slice<stdgo.GoUIntptr>):stdgo.Error
```


[\(view code\)](<./Bisect.hx#L86>)


## function appendMarker


```haxe
function appendMarker(_dst:stdgo.Slice<stdgo.GoByte>, _id:stdgo.GoUInt64):stdgo.Slice<stdgo.GoByte>
```


[\(view code\)](<./Bisect.hx#L88>)


## function cutMarker


```haxe
function cutMarker(_line:stdgo.GoString):{
	_2:Bool;
	_1:stdgo.GoUInt64;
	_0:stdgo.GoString;
}
```


[\(view code\)](<./Bisect.hx#L89>)


## function hash


```haxe
function hash(_data:haxe.Rest<stdgo.AnyInterface>):stdgo.GoUInt64
```


[\(view code\)](<./Bisect.hx#L90>)


## function marker


```haxe
function marker(_id:stdgo.GoUInt64):stdgo.GoString
```


[\(view code\)](<./Bisect.hx#L87>)


## function new\_


```haxe
function new_(_pattern:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.internal.bisect.Matcher>;
}
```


[\(view code\)](<./Bisect.hx#L82>)


## function printMarker


```haxe
function printMarker(_w:stdgo._internal.internal.bisect.Writer, _h:stdgo.GoUInt64):stdgo.Error
```


[\(view code\)](<./Bisect.hx#L85>)


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


[\(view code\)](<./Bisect.hx#L22>)


### Matcher function \_fileLine


```haxe
function _fileLine( _w:stdgo._internal.internal.bisect.Writer, _file:stdgo.GoString, _line:stdgo.GoInt):Bool
```


[\(view code\)](<./Bisect.hx#L126>)


### Matcher function \_matchResult


```haxe
function _matchResult( _id:stdgo.GoUInt64):Bool
```


[\(view code\)](<./Bisect.hx#L130>)


### Matcher function \_stack


```haxe
function _stack( _w:stdgo._internal.internal.bisect.Writer):Bool
```


[\(view code\)](<./Bisect.hx#L122>)


### Matcher function fileLine


```haxe
function fileLine( _w:stdgo._internal.internal.bisect.Writer, _file:stdgo.GoString, _line:stdgo.GoInt):Bool
```


[\(view code\)](<./Bisect.hx#L128>)


### Matcher function markerOnly


```haxe
function markerOnly():Bool
```


[\(view code\)](<./Bisect.hx#L136>)


### Matcher function shouldEnable


```haxe
function shouldEnable( _id:stdgo.GoUInt64):Bool
```


[\(view code\)](<./Bisect.hx#L134>)


### Matcher function shouldPrint


```haxe
function shouldPrint( _id:stdgo.GoUInt64):Bool
```


[\(view code\)](<./Bisect.hx#L132>)


### Matcher function stack


```haxe
function stack( _w:stdgo._internal.internal.bisect.Writer):Bool
```


[\(view code\)](<./Bisect.hx#L124>)


# Typedefs


```haxe
import stdgo._internal.internal.bisect.*
```


## typedef Writer


```haxe
typedef Writer = {
	public function write(_0:stdgo.Slice<stdgo.GoByte>):{
		_1:stdgo.Error;
		_0:stdgo.GoInt;
	};
};
```


