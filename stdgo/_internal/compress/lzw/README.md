# Module: `stdgo._internal.compress.lzw`

[(view library index)](../../../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function _newReader(_src:stdgo._internal.io.Reader, _order:stdgo._internal.compress.lzw.Order, _litWidth:stdgo.GoInt):stdgo.Ref<stdgo._internal.compress.lzw.Reader>`](<#function-_newreader>)

- [`function _newWriter(_dst:stdgo._internal.io.Writer, _order:stdgo._internal.compress.lzw.Order, _litWidth:stdgo.GoInt):stdgo.Ref<stdgo._internal.compress.lzw.Writer>`](<#function-_newwriter>)

- [`function newReader(_r:stdgo._internal.io.Reader, _order:stdgo._internal.compress.lzw.Order, _litWidth:stdgo.GoInt):stdgo._internal.io.ReadCloser`](<#function-newreader>)

- [`function newWriter(_w:stdgo._internal.io.Writer, _order:stdgo._internal.compress.lzw.Order, _litWidth:stdgo.GoInt):stdgo._internal.io.WriteCloser`](<#function-newwriter>)

- [class Reader](<#class-reader>)

  - [`function _read()`](<#reader-function-_read>)

  - [`function new(?_r:Null<stdgo._internal.io.ByteReader>, ?_bits:stdgo.GoUInt32, ?_nBits:stdgo.GoUInt, ?_width:stdgo.GoUInt, ?_read:(), ?_litWidth:stdgo.GoInt, ?_err:Null<stdgo.Error>, ?_clear:stdgo.GoUInt16, ?_eof:stdgo.GoUInt16, ?_hi:stdgo.GoUInt16, ?_overflow:stdgo.GoUInt16, ?_last:stdgo.GoUInt16, ?_suffix:stdgo.GoArray<stdgo.GoUInt8>, ?_prefix:stdgo.GoArray<stdgo.GoUInt16>, ?_output:stdgo.GoArray<stdgo.GoUInt8>, ?_o:stdgo.GoInt, ?_toRead:stdgo.Slice<stdgo.GoUInt8>):Void`](<#reader-function-new>)

- [class Writer](<#class-writer>)

  - [`function _write(:stdgo.Ref<stdgo._internal.compress.lzw.Writer>, :stdgo.GoUInt32):stdgo.Error`](<#writer-function-_write>)

  - [`function new(?_w:Null<stdgo._internal.compress.lzw.T_writer>, ?_order:Null<stdgo._internal.compress.lzw.Order>, ?_write:(:stdgo.Ref<stdgo._internal.compress.lzw.Writer>, :stdgo.GoUInt32):stdgo.Error, ?_bits:stdgo.GoUInt32, ?_nBits:stdgo.GoUInt, ?_width:stdgo.GoUInt, ?_litWidth:stdgo.GoUInt, ?_hi:stdgo.GoUInt32, ?_overflow:stdgo.GoUInt32, ?_savedCode:stdgo.GoUInt32, ?_err:Null<stdgo.Error>, ?_table:stdgo.GoArray<stdgo.GoUInt32>):Void`](<#writer-function-new>)

- [typedef Order](<#typedef-order>)

- [typedef T\_writer](<#typedef-t_writer>)

# Constants


```haxe
import stdgo._internal.compress.lzw.Lzw_newWriter
```


```haxe
final _decoderInvalidCode:stdgo.GoUInt64 = ((65535i64 : stdgo.GoUInt64))
```


```haxe
final _flushBuffer:stdgo.GoUInt64 = ((4096i64 : stdgo.GoUInt64))
```


```haxe
final _invalidCode:stdgo.GoUInt64 = ((4294967295i64 : stdgo.GoUInt64))
```


```haxe
final _invalidEntry:stdgo.GoUInt64 = ((0i64 : stdgo.GoUInt64))
```


```haxe
final _maxCode:stdgo.GoUInt64 = ((4095i64 : stdgo.GoUInt64))
```


```haxe
final _maxWidth:stdgo.GoUInt64 = ((12i64 : stdgo.GoUInt64))
```


```haxe
final _tableMask:stdgo.GoUInt64 = ((16383i64 : stdgo.GoUInt64))
```


```haxe
final _tableSize:stdgo.GoUInt64 = ((16384i64 : stdgo.GoUInt64))
```


```haxe
final lsb:stdgo._internal.compress.lzw.Order = ((1 : stdgo._internal.compress.lzw.Lzw_Order.Order))
```


```haxe
final msb:stdgo._internal.compress.lzw.Order = ((1 : stdgo._internal.compress.lzw.Lzw_Order.Order))
```


# Variables


```haxe
import stdgo._internal.compress.lzw.Lzw_newWriter
```


```haxe
var _errClosed:stdgo.Error
```


```haxe
var _errOutOfCodes:stdgo.Error
```


# Functions


```haxe
import stdgo._internal.compress.lzw.Lzw_newWriter
```


## function \_newReader


```haxe
function _newReader(_src:stdgo._internal.io.Reader, _order:stdgo._internal.compress.lzw.Order, _litWidth:stdgo.GoInt):stdgo.Ref<stdgo._internal.compress.lzw.Reader>
```


[\(view code\)](<./Lzw_newWriter.hx#L2>)


## function \_newWriter


```haxe
function _newWriter(_dst:stdgo._internal.io.Writer, _order:stdgo._internal.compress.lzw.Order, _litWidth:stdgo.GoInt):stdgo.Ref<stdgo._internal.compress.lzw.Writer>
```


[\(view code\)](<./Lzw_newWriter.hx#L2>)


## function newReader


```haxe
function newReader(_r:stdgo._internal.io.Reader, _order:stdgo._internal.compress.lzw.Order, _litWidth:stdgo.GoInt):stdgo._internal.io.ReadCloser
```


[\(view code\)](<./Lzw_newWriter.hx#L2>)


## function newWriter


```haxe
function newWriter(_w:stdgo._internal.io.Writer, _order:stdgo._internal.compress.lzw.Order, _litWidth:stdgo.GoInt):stdgo._internal.io.WriteCloser
```


[\(view code\)](<./Lzw_newWriter.hx#L2>)


# Classes


```haxe
import stdgo._internal.compress.lzw.*
```


## class Reader


```haxe
var _bits:stdgo.GoUInt32
```


```haxe
var _clear:stdgo.GoUInt16
```


```haxe
var _eof:stdgo.GoUInt16
```


```haxe
var _err:stdgo.Error
```


```haxe
var _hi:stdgo.GoUInt16
```


```haxe
var _last:stdgo.GoUInt16
```


```haxe
var _litWidth:stdgo.GoInt
```


```haxe
var _nBits:stdgo.GoUInt
```


```haxe
var _o:stdgo.GoInt
```


```haxe
var _output:stdgo.GoArray<stdgo.GoUInt8>
```


```haxe
var _overflow:stdgo.GoUInt16
```


```haxe
var _prefix:stdgo.GoArray<stdgo.GoUInt16>
```


```haxe
var _r:stdgo._internal.io.ByteReader
```


```haxe
var _suffix:stdgo.GoArray<stdgo.GoUInt8>
```


```haxe
var _toRead:stdgo.Slice<stdgo.GoUInt8>
```


```haxe
var _width:stdgo.GoUInt
```


### Reader function \_read


```haxe
function _read()
```


### Reader function new


```haxe
function new(?_r:Null<stdgo._internal.io.ByteReader>, ?_bits:stdgo.GoUInt32, ?_nBits:stdgo.GoUInt, ?_width:stdgo.GoUInt, ?_read:(), ?_litWidth:stdgo.GoInt, ?_err:Null<stdgo.Error>, ?_clear:stdgo.GoUInt16, ?_eof:stdgo.GoUInt16, ?_hi:stdgo.GoUInt16, ?_overflow:stdgo.GoUInt16, ?_last:stdgo.GoUInt16, ?_suffix:stdgo.GoArray<stdgo.GoUInt8>, ?_prefix:stdgo.GoArray<stdgo.GoUInt16>, ?_output:stdgo.GoArray<stdgo.GoUInt8>, ?_o:stdgo.GoInt, ?_toRead:stdgo.Slice<stdgo.GoUInt8>):Void
```


[\(view code\)](<./Lzw_Reader.hx#L20>)


## class Writer


```haxe
var _bits:stdgo.GoUInt32
```


```haxe
var _err:stdgo.Error
```


```haxe
var _hi:stdgo.GoUInt32
```


```haxe
var _litWidth:stdgo.GoUInt
```


```haxe
var _nBits:stdgo.GoUInt
```


```haxe
var _order:stdgo._internal.compress.lzw.Order
```


```haxe
var _overflow:stdgo.GoUInt32
```


```haxe
var _savedCode:stdgo.GoUInt32
```


```haxe
var _table:stdgo.GoArray<stdgo.GoUInt32>
```


```haxe
var _w:stdgo._internal.compress.lzw.T_writer
```


```haxe
var _width:stdgo.GoUInt
```


### Writer function \_write


```haxe
function _write(:stdgo.Ref<stdgo._internal.compress.lzw.Writer>, :stdgo.GoUInt32):stdgo.Error
```


### Writer function new


```haxe
function new(?_w:Null<stdgo._internal.compress.lzw.T_writer>, ?_order:Null<stdgo._internal.compress.lzw.Order>, ?_write:(:stdgo.Ref<stdgo._internal.compress.lzw.Writer>, :stdgo.GoUInt32):stdgo.Error, ?_bits:stdgo.GoUInt32, ?_nBits:stdgo.GoUInt, ?_width:stdgo.GoUInt, ?_litWidth:stdgo.GoUInt, ?_hi:stdgo.GoUInt32, ?_overflow:stdgo.GoUInt32, ?_savedCode:stdgo.GoUInt32, ?_err:Null<stdgo.Error>, ?_table:stdgo.GoArray<stdgo.GoUInt32>):Void
```


[\(view code\)](<./Lzw_Writer.hx#L15>)


# Typedefs


```haxe
import stdgo._internal.compress.lzw.*
```


## typedef Order


```haxe
typedef Order = stdgo.GoInt;
```


## typedef T\_writer


```haxe
typedef T_writer = {
	public function writeByte(_c:stdgo.GoUInt8):stdgo.Error;
	public function flush():stdgo.Error;
};
```


