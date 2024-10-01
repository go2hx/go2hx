# Module: `stdgo._internal.mime.quotedprintable`

[(view library index)](../../../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function _fromHex(_b:stdgo.GoUInt8):{
	_1:stdgo.Error;
	_0:stdgo.GoUInt8;
}`](<#function-_fromhex>)

- [`function _isQPDiscardWhitespace(_r:stdgo.GoInt32):Bool`](<#function-_isqpdiscardwhitespace>)

- [`function _isWhitespace(_b:stdgo.GoUInt8):Bool`](<#function-_iswhitespace>)

- [`function _readHexByte(_v:stdgo.Slice<stdgo.GoUInt8>):{
	_1:stdgo.Error;
	_0:stdgo.GoUInt8;
}`](<#function-_readhexbyte>)

- [`function newReader(_r:stdgo._internal.io.Reader):stdgo.Ref<stdgo._internal.mime.quotedprintable.Reader>`](<#function-newreader>)

- [`function newWriter(_w:stdgo._internal.io.Writer):stdgo.Ref<stdgo._internal.mime.quotedprintable.Writer>`](<#function-newwriter>)

- [class Reader](<#class-reader>)

  - [`function new(?_br:stdgo.Ref<stdgo._internal.bufio.Reader>, ?_rerr:Null<stdgo.Error>, ?_line:stdgo.Slice<stdgo.GoUInt8>):Void`](<#reader-function-new>)

- [class Writer](<#class-writer>)

  - [`function new(?binary:Bool, ?_w:Null<stdgo._internal.io.Writer>, ?_i:stdgo.GoInt, ?_line:stdgo.GoArray<stdgo.GoUInt8>, ?_cr:Bool):Void`](<#writer-function-new>)

# Constants


```haxe
import stdgo._internal.mime.quotedprintable.Quotedprintable_newWriter
```


```haxe
final _lineMaxLen:stdgo.GoUInt64 = ((76i64 : stdgo.GoUInt64))
```


```haxe
final _upperhex:stdgo.GoString = (("0123456789ABCDEF" : stdgo.GoString))
```


# Variables


```haxe
import stdgo._internal.mime.quotedprintable.Quotedprintable_newWriter
```


```haxe
var _crlf:stdgo.Slice<stdgo.GoUInt8>
```


```haxe
var _lf:stdgo.Slice<stdgo.GoUInt8>
```


```haxe
var _softSuffix:stdgo.Slice<stdgo.GoUInt8>
```


# Functions


```haxe
import stdgo._internal.mime.quotedprintable.Quotedprintable_newWriter
```


## function \_fromHex


```haxe
function _fromHex(_b:stdgo.GoUInt8):{
	_1:stdgo.Error;
	_0:stdgo.GoUInt8;
}
```


[\(view code\)](<./Quotedprintable_newWriter.hx#L2>)


## function \_isQPDiscardWhitespace


```haxe
function _isQPDiscardWhitespace(_r:stdgo.GoInt32):Bool
```


[\(view code\)](<./Quotedprintable_newWriter.hx#L2>)


## function \_isWhitespace


```haxe
function _isWhitespace(_b:stdgo.GoUInt8):Bool
```


[\(view code\)](<./Quotedprintable_newWriter.hx#L2>)


## function \_readHexByte


```haxe
function _readHexByte(_v:stdgo.Slice<stdgo.GoUInt8>):{
	_1:stdgo.Error;
	_0:stdgo.GoUInt8;
}
```


[\(view code\)](<./Quotedprintable_newWriter.hx#L2>)


## function newReader


```haxe
function newReader(_r:stdgo._internal.io.Reader):stdgo.Ref<stdgo._internal.mime.quotedprintable.Reader>
```


[\(view code\)](<./Quotedprintable_newWriter.hx#L2>)


## function newWriter


```haxe
function newWriter(_w:stdgo._internal.io.Writer):stdgo.Ref<stdgo._internal.mime.quotedprintable.Writer>
```


[\(view code\)](<./Quotedprintable_newWriter.hx#L2>)


# Classes


```haxe
import stdgo._internal.mime.quotedprintable.*
```


## class Reader


```haxe
var _br:stdgo.Ref<stdgo._internal.bufio.Reader>
```


```haxe
var _line:stdgo.Slice<stdgo.GoUInt8>
```


```haxe
var _rerr:stdgo.Error
```


### Reader function new


```haxe
function new(?_br:stdgo.Ref<stdgo._internal.bufio.Reader>, ?_rerr:Null<stdgo.Error>, ?_line:stdgo.Slice<stdgo.GoUInt8>):Void
```


[\(view code\)](<./Quotedprintable_Reader.hx#L6>)


## class Writer


```haxe
var _cr:Bool
```


```haxe
var _i:stdgo.GoInt
```


```haxe
var _line:stdgo.GoArray<stdgo.GoUInt8>
```


```haxe
var _w:stdgo._internal.io.Writer
```


```haxe
var binary:Bool
```


### Writer function new


```haxe
function new(?binary:Bool, ?_w:Null<stdgo._internal.io.Writer>, ?_i:stdgo.GoInt, ?_line:stdgo.GoArray<stdgo.GoUInt8>, ?_cr:Bool):Void
```


[\(view code\)](<./Quotedprintable_Writer.hx#L8>)


