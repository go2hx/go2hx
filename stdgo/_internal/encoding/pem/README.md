# Module: `stdgo._internal.encoding.pem`

[(view library index)](../../../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function _getLine(_data:stdgo.Slice<stdgo.GoUInt8>):{
	_1:stdgo.Slice<stdgo.GoUInt8>;
	_0:stdgo.Slice<stdgo.GoUInt8>;
}`](<#function-_getline>)

- [`function _removeSpacesAndTabs(_data:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8>`](<#function-_removespacesandtabs>)

- [`function _writeHeader(_out:stdgo._internal.io.Writer, _k:stdgo.GoString, _v:stdgo.GoString):stdgo.Error`](<#function-_writeheader>)

- [`function decode(_data:stdgo.Slice<stdgo.GoUInt8>):{
	_1:stdgo.Slice<stdgo.GoUInt8>;
	_0:stdgo.Ref<stdgo._internal.encoding.pem.Block>;
}`](<#function-decode>)

- [`function encode(_out:stdgo._internal.io.Writer, _b:stdgo.Ref<stdgo._internal.encoding.pem.Block>):stdgo.Error`](<#function-encode>)

- [`function encodeToMemory(_b:stdgo.Ref<stdgo._internal.encoding.pem.Block>):stdgo.Slice<stdgo.GoUInt8>`](<#function-encodetomemory>)

- [class Block](<#class-block>)

  - [`function new(?type:stdgo.GoString, ?headers:stdgo.GoMap<stdgo.GoString, stdgo.GoString>, ?bytes:stdgo.Slice<stdgo.GoUInt8>):Void`](<#block-function-new>)

- [class T\_lineBreaker](<#class-t_linebreaker>)

  - [`function new(?_line:stdgo.GoArray<stdgo.GoUInt8>, ?_used:stdgo.GoInt, ?_out:Null<stdgo._internal.io.Writer>):Void`](<#t_linebreaker-function-new>)

# Constants


```haxe
import stdgo._internal.encoding.pem.Pem_encodeToMemory
```


```haxe
final _pemLineLength:stdgo.GoUInt64 = ((64i64 : stdgo.GoUInt64))
```


# Variables


```haxe
import stdgo._internal.encoding.pem.Pem_encodeToMemory
```


```haxe
var _pemStart:stdgo.Slice<stdgo.GoUInt8>
```


```haxe
var _pemEnd:stdgo.Slice<stdgo.GoUInt8>
```


```haxe
var _pemEndOfLine:stdgo.Slice<stdgo.GoUInt8>
```


```haxe
var _colon:stdgo.Slice<stdgo.GoUInt8>
```


```haxe
var _nl:stdgo.Slice<stdgo.GoUInt8>
```


# Functions


```haxe
import stdgo._internal.encoding.pem.Pem_encodeToMemory
```


## function \_getLine


```haxe
function _getLine(_data:stdgo.Slice<stdgo.GoUInt8>):{
	_1:stdgo.Slice<stdgo.GoUInt8>;
	_0:stdgo.Slice<stdgo.GoUInt8>;
}
```


[\(view code\)](<./Pem_encodeToMemory.hx#L2>)


## function \_removeSpacesAndTabs


```haxe
function _removeSpacesAndTabs(_data:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Pem_encodeToMemory.hx#L2>)


## function \_writeHeader


```haxe
function _writeHeader(_out:stdgo._internal.io.Writer, _k:stdgo.GoString, _v:stdgo.GoString):stdgo.Error
```


[\(view code\)](<./Pem_encodeToMemory.hx#L2>)


## function decode


```haxe
function decode(_data:stdgo.Slice<stdgo.GoUInt8>):{
	_1:stdgo.Slice<stdgo.GoUInt8>;
	_0:stdgo.Ref<stdgo._internal.encoding.pem.Block>;
}
```


[\(view code\)](<./Pem_encodeToMemory.hx#L2>)


## function encode


```haxe
function encode(_out:stdgo._internal.io.Writer, _b:stdgo.Ref<stdgo._internal.encoding.pem.Block>):stdgo.Error
```


[\(view code\)](<./Pem_encodeToMemory.hx#L2>)


## function encodeToMemory


```haxe
function encodeToMemory(_b:stdgo.Ref<stdgo._internal.encoding.pem.Block>):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Pem_encodeToMemory.hx#L2>)


# Classes


```haxe
import stdgo._internal.encoding.pem.*
```


## class Block


```haxe
var bytes:stdgo.Slice<stdgo.GoUInt8>
```


```haxe
var headers:stdgo.GoMap<stdgo.GoString, stdgo.GoString>
```


```haxe
var type:stdgo.GoString
```


### Block function new


```haxe
function new(?type:stdgo.GoString, ?headers:stdgo.GoMap<stdgo.GoString, stdgo.GoString>, ?bytes:stdgo.Slice<stdgo.GoUInt8>):Void
```


[\(view code\)](<./Pem_Block.hx#L6>)


## class T\_lineBreaker


```haxe
var _line:stdgo.GoArray<stdgo.GoUInt8>
```


```haxe
var _out:stdgo._internal.io.Writer
```


```haxe
var _used:stdgo.GoInt
```


### T\_lineBreaker function new


```haxe
function new(?_line:stdgo.GoArray<stdgo.GoUInt8>, ?_used:stdgo.GoInt, ?_out:Null<stdgo._internal.io.Writer>):Void
```


[\(view code\)](<./Pem_T_lineBreaker.hx#L6>)


