# Module: `stdgo._internal.net.http.internal`

[(view library index)](../../../../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function _isASCIISpace(_b:stdgo.GoUInt8):Bool`](<#function-_isasciispace>)

- [`function _parseHexUint(_v:stdgo.Slice<stdgo.GoUInt8>):{
	_1:stdgo.Error;
	_0:stdgo.GoUInt64;
}`](<#function-_parsehexuint>)

- [`function _readChunkLine(_b:stdgo.Ref<stdgo._internal.bufio.Reader>):{
	_1:stdgo.Error;
	_0:stdgo.Slice<stdgo.GoUInt8>;
}`](<#function-_readchunkline>)

- [`function _removeChunkExtension(_p:stdgo.Slice<stdgo.GoUInt8>):{
	_1:stdgo.Error;
	_0:stdgo.Slice<stdgo.GoUInt8>;
}`](<#function-_removechunkextension>)

- [`function _trimTrailingWhitespace(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8>`](<#function-_trimtrailingwhitespace>)

- [`function newChunkedReader(_r:stdgo._internal.io.Reader):stdgo._internal.io.Reader`](<#function-newchunkedreader>)

- [`function newChunkedWriter(_w:stdgo._internal.io.Writer):stdgo._internal.io.WriteCloser`](<#function-newchunkedwriter>)

- [class FlushAfterChunkWriter](<#class-flushafterchunkwriter>)

  - [`function available():stdgo.GoInt`](<#flushafterchunkwriter-function-available>)

  - [`function availableBuffer():stdgo.Slice<stdgo.GoUInt8>`](<#flushafterchunkwriter-function-availablebuffer>)

  - [`function buffered():stdgo.GoInt`](<#flushafterchunkwriter-function-buffered>)

  - [`function flush():stdgo.Error`](<#flushafterchunkwriter-function-flush>)

  - [`function new(?writer:stdgo.Ref<stdgo._internal.bufio.Writer>):Void`](<#flushafterchunkwriter-function-new>)

  - [`function readFrom(_r:stdgo._internal.io.Reader):{ _1:stdgo.Error; _0:stdgo.GoInt64;}`](<#flushafterchunkwriter-function-readfrom>)

  - [`function reset(_w:stdgo._internal.io.Writer):Void`](<#flushafterchunkwriter-function-reset>)

  - [`function size():stdgo.GoInt`](<#flushafterchunkwriter-function-size>)

  - [`function write(_p:stdgo.Slice<stdgo.GoUInt8>):{ _1:stdgo.Error; _0:stdgo.GoInt;}`](<#flushafterchunkwriter-function-write>)

  - [`function writeByte(_delim:stdgo.GoUInt8):stdgo.Error`](<#flushafterchunkwriter-function-writebyte>)

  - [`function writeRune(_r:stdgo.GoInt32):{ _1:stdgo.Error; _0:stdgo.GoInt;}`](<#flushafterchunkwriter-function-writerune>)

  - [`function writeString(_text:stdgo.GoString):{ _1:stdgo.Error; _0:stdgo.GoInt;}`](<#flushafterchunkwriter-function-writestring>)

- [class T\_chunkedReader](<#class-t_chunkedreader>)

  - [`function new(?_r:stdgo.Ref<stdgo._internal.bufio.Reader>, ?_n:stdgo.GoUInt64, ?_err:stdgo.Error, ?_buf:stdgo.GoArray<stdgo.GoUInt8>, ?_checkEnd:Bool):Void`](<#t_chunkedreader-function-new>)

- [class T\_chunkedWriter](<#class-t_chunkedwriter>)

  - [`function new(?wire:stdgo._internal.io.Writer):Void`](<#t_chunkedwriter-function-new>)

# Constants


```haxe
import stdgo._internal.net.http.internal.Internal_newChunkedWriter
```


```haxe
final _maxLineLength:stdgo.GoUInt64 = ((4096i64 : stdgo.GoUInt64))
```


# Variables


```haxe
import stdgo._internal.net.http.internal.Internal_newChunkedWriter
```


```haxe
var _semi:stdgo.Slice<stdgo.GoUInt8>
```


```haxe
var errLineTooLong:stdgo.Error
```


# Functions


```haxe
import stdgo._internal.net.http.internal.Internal_newChunkedWriter
```


## function \_isASCIISpace


```haxe
function _isASCIISpace(_b:stdgo.GoUInt8):Bool
```


[\(view code\)](<./Internal_newChunkedWriter.hx#L2>)


## function \_parseHexUint


```haxe
function _parseHexUint(_v:stdgo.Slice<stdgo.GoUInt8>):{
	_1:stdgo.Error;
	_0:stdgo.GoUInt64;
}
```


[\(view code\)](<./Internal_newChunkedWriter.hx#L2>)


## function \_readChunkLine


```haxe
function _readChunkLine(_b:stdgo.Ref<stdgo._internal.bufio.Reader>):{
	_1:stdgo.Error;
	_0:stdgo.Slice<stdgo.GoUInt8>;
}
```


[\(view code\)](<./Internal_newChunkedWriter.hx#L2>)


## function \_removeChunkExtension


```haxe
function _removeChunkExtension(_p:stdgo.Slice<stdgo.GoUInt8>):{
	_1:stdgo.Error;
	_0:stdgo.Slice<stdgo.GoUInt8>;
}
```


[\(view code\)](<./Internal_newChunkedWriter.hx#L2>)


## function \_trimTrailingWhitespace


```haxe
function _trimTrailingWhitespace(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Internal_newChunkedWriter.hx#L2>)


## function newChunkedReader


```haxe
function newChunkedReader(_r:stdgo._internal.io.Reader):stdgo._internal.io.Reader
```


[\(view code\)](<./Internal_newChunkedWriter.hx#L2>)


## function newChunkedWriter


```haxe
function newChunkedWriter(_w:stdgo._internal.io.Writer):stdgo._internal.io.WriteCloser
```


[\(view code\)](<./Internal_newChunkedWriter.hx#L2>)


# Classes


```haxe
import stdgo._internal.net.http.internal.*
```


## class FlushAfterChunkWriter


```haxe
var writer:stdgo.Ref<stdgo._internal.bufio.Writer>
```


### FlushAfterChunkWriter function available


```haxe
function available():stdgo.GoInt
```


[\(view code\)](<./Internal_FlushAfterChunkWriter.hx#L10>)


### FlushAfterChunkWriter function availableBuffer


```haxe
function availableBuffer():stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Internal_FlushAfterChunkWriter.hx#L12>)


### FlushAfterChunkWriter function buffered


```haxe
function buffered():stdgo.GoInt
```


[\(view code\)](<./Internal_FlushAfterChunkWriter.hx#L14>)


### FlushAfterChunkWriter function flush


```haxe
function flush():stdgo.Error
```


[\(view code\)](<./Internal_FlushAfterChunkWriter.hx#L16>)


### FlushAfterChunkWriter function new


```haxe
function new(?writer:stdgo.Ref<stdgo._internal.bufio.Writer>):Void
```


[\(view code\)](<./Internal_FlushAfterChunkWriter.hx#L5>)


### FlushAfterChunkWriter function readFrom


```haxe
function readFrom(_r:stdgo._internal.io.Reader):{
	_1:stdgo.Error;
	_0:stdgo.GoInt64;
}
```


[\(view code\)](<./Internal_FlushAfterChunkWriter.hx#L18>)


### FlushAfterChunkWriter function reset


```haxe
function reset(_w:stdgo._internal.io.Writer):Void
```


[\(view code\)](<./Internal_FlushAfterChunkWriter.hx#L20>)


### FlushAfterChunkWriter function size


```haxe
function size():stdgo.GoInt
```


[\(view code\)](<./Internal_FlushAfterChunkWriter.hx#L22>)


### FlushAfterChunkWriter function write


```haxe
function write(_p:stdgo.Slice<stdgo.GoUInt8>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Internal_FlushAfterChunkWriter.hx#L24>)


### FlushAfterChunkWriter function writeByte


```haxe
function writeByte(_delim:stdgo.GoUInt8):stdgo.Error
```


[\(view code\)](<./Internal_FlushAfterChunkWriter.hx#L26>)


### FlushAfterChunkWriter function writeRune


```haxe
function writeRune(_r:stdgo.GoInt32):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Internal_FlushAfterChunkWriter.hx#L28>)


### FlushAfterChunkWriter function writeString


```haxe
function writeString(_text:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Internal_FlushAfterChunkWriter.hx#L30>)


## class T\_chunkedReader


```haxe
var _buf:stdgo.GoArray<stdgo.GoUInt8>
```


```haxe
var _checkEnd:Bool
```


```haxe
var _err:stdgo.Error
```


```haxe
var _n:stdgo.GoUInt64
```


```haxe
var _r:stdgo.Ref<stdgo._internal.bufio.Reader>
```


### T\_chunkedReader function new


```haxe
function new(?_r:stdgo.Ref<stdgo._internal.bufio.Reader>, ?_n:stdgo.GoUInt64, ?_err:stdgo.Error, ?_buf:stdgo.GoArray<stdgo.GoUInt8>, ?_checkEnd:Bool):Void
```


[\(view code\)](<./Internal_T_chunkedReader.hx#L8>)


## class T\_chunkedWriter


```haxe
var wire:stdgo._internal.io.Writer
```


### T\_chunkedWriter function new


```haxe
function new(?wire:stdgo._internal.io.Writer):Void
```


[\(view code\)](<./Internal_T_chunkedWriter.hx#L4>)


