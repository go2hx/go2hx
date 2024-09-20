# Module: `stdgo._internal.compress.gzip`

[(view library index)](../../../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function _noEOF(_err:stdgo.Error):stdgo.Error`](<#function-_noeof>)

- [`function newReader(_r:stdgo._internal.io.Reader):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.compress.gzip.Reader>;
}`](<#function-newreader>)

- [`function newWriter(_w:stdgo._internal.io.Writer):stdgo.Ref<stdgo._internal.compress.gzip.Writer>`](<#function-newwriter>)

- [`function newWriterLevel(_w:stdgo._internal.io.Writer, _level:stdgo.GoInt):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.compress.gzip.Writer>;
}`](<#function-newwriterlevel>)

- [class Header](<#class-header>)

  - [`function new(?comment:stdgo.GoString, ?extra:stdgo.Slice<stdgo.GoUInt8>, ?modTime:stdgo._internal.time.Time, ?name:stdgo.GoString, ?os:stdgo.GoUInt8):Void`](<#header-function-new>)

- [class Reader](<#class-reader>)

  - [`function new(?header:stdgo._internal.compress.gzip.Header, ?_r:stdgo._internal.compress.flate.Reader, ?_decompressor:stdgo._internal.io.ReadCloser, ?_digest:stdgo.GoUInt32, ?_size:stdgo.GoUInt32, ?_buf:stdgo.GoArray<stdgo.GoUInt8>, ?_err:stdgo.Error, ?_multistream:Bool):Void`](<#reader-function-new>)

- [class Writer](<#class-writer>)

  - [`function new(?header:stdgo._internal.compress.gzip.Header, ?_w:stdgo._internal.io.Writer, ?_level:stdgo.GoInt, ?_wroteHeader:Bool, ?_compressor:stdgo.Ref<stdgo._internal.compress.flate.Writer>, ?_digest:stdgo.GoUInt32, ?_size:stdgo.GoUInt32, ?_closed:Bool, ?_buf:stdgo.GoArray<stdgo.GoUInt8>, ?_err:stdgo.Error):Void`](<#writer-function-new>)

# Constants


```haxe
import stdgo._internal.compress.gzip.Gzip_noCompression
```


```haxe
final _flagComment:stdgo.GoUInt64 = ((16i64 : stdgo.GoUInt64))
```


```haxe
final _flagExtra:stdgo.GoUInt64 = ((4i64 : stdgo.GoUInt64))
```


```haxe
final _flagHdrCrc:stdgo.GoUInt64 = ((2i64 : stdgo.GoUInt64))
```


```haxe
final _flagName:stdgo.GoUInt64 = ((8i64 : stdgo.GoUInt64))
```


```haxe
final _flagText:stdgo.GoUInt64 = ((1i64 : stdgo.GoUInt64))
```


```haxe
final _gzipDeflate:stdgo.GoUInt64 = ((8i64 : stdgo.GoUInt64))
```


```haxe
final _gzipID1:stdgo.GoUInt64 = ((31i64 : stdgo.GoUInt64))
```


```haxe
final _gzipID2:stdgo.GoUInt64 = ((139i64 : stdgo.GoUInt64))
```


```haxe
final bestCompression:stdgo.GoUInt64 = ((9i64 : stdgo.GoUInt64))
```


```haxe
final bestSpeed:stdgo.GoUInt64 = ((1i64 : stdgo.GoUInt64))
```


```haxe
final defaultCompression:stdgo.GoUInt64 = ((0i64 : stdgo.GoUInt64))
```


```haxe
final huffmanOnly:stdgo.GoUInt64 = ((0i64 : stdgo.GoUInt64))
```


```haxe
final noCompression:stdgo.GoUInt64 = ((0i64 : stdgo.GoUInt64))
```


# Variables


```haxe
import stdgo._internal.compress.gzip.Gzip_noCompression
```


```haxe
var errChecksum:stdgo.Error
```


```haxe
var errHeader:stdgo.Error
```


```haxe
var _le:stdgo._internal.encoding.binary.T_littleEndian
```


# Functions


```haxe
import stdgo._internal.compress.gzip.Gzip_noCompression
```


## function \_noEOF


```haxe
function _noEOF(_err:stdgo.Error):stdgo.Error
```


[\(view code\)](<./Gzip_noCompression.hx#L2>)


## function newReader


```haxe
function newReader(_r:stdgo._internal.io.Reader):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.compress.gzip.Reader>;
}
```


[\(view code\)](<./Gzip_noCompression.hx#L2>)


## function newWriter


```haxe
function newWriter(_w:stdgo._internal.io.Writer):stdgo.Ref<stdgo._internal.compress.gzip.Writer>
```


[\(view code\)](<./Gzip_noCompression.hx#L2>)


## function newWriterLevel


```haxe
function newWriterLevel(_w:stdgo._internal.io.Writer, _level:stdgo.GoInt):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.compress.gzip.Writer>;
}
```


[\(view code\)](<./Gzip_noCompression.hx#L2>)


# Classes


```haxe
import stdgo._internal.compress.gzip.*
```


## class Header


```haxe
var comment:stdgo.GoString
```


```haxe
var extra:stdgo.Slice<stdgo.GoUInt8>
```


```haxe
var modTime:stdgo._internal.time.Time
```


```haxe
var name:stdgo.GoString
```


```haxe
var os:stdgo.GoUInt8
```


### Header function new


```haxe
function new(?comment:stdgo.GoString, ?extra:stdgo.Slice<stdgo.GoUInt8>, ?modTime:stdgo._internal.time.Time, ?name:stdgo.GoString, ?os:stdgo.GoUInt8):Void
```


[\(view code\)](<./Gzip_Header.hx#L8>)


## class Reader


```haxe
var _buf:stdgo.GoArray<stdgo.GoUInt8>
```


```haxe
var _decompressor:stdgo._internal.io.ReadCloser
```


```haxe
var _digest:stdgo.GoUInt32
```


```haxe
var _err:stdgo.Error
```


```haxe
var _multistream:Bool
```


```haxe
var _r:stdgo._internal.compress.flate.Reader
```


```haxe
var _size:stdgo.GoUInt32
```


```haxe
var header:stdgo._internal.compress.gzip.Header
```


### Reader function new


```haxe
function new(?header:stdgo._internal.compress.gzip.Header, ?_r:stdgo._internal.compress.flate.Reader, ?_decompressor:stdgo._internal.io.ReadCloser, ?_digest:stdgo.GoUInt32, ?_size:stdgo.GoUInt32, ?_buf:stdgo.GoArray<stdgo.GoUInt8>, ?_err:stdgo.Error, ?_multistream:Bool):Void
```


[\(view code\)](<./Gzip_Reader.hx#L12>)


## class Writer


```haxe
var _buf:stdgo.GoArray<stdgo.GoUInt8>
```


```haxe
var _closed:Bool
```


```haxe
var _compressor:stdgo.Ref<stdgo._internal.compress.flate.Writer>
```


```haxe
var _digest:stdgo.GoUInt32
```


```haxe
var _err:stdgo.Error
```


```haxe
var _level:stdgo.GoInt
```


```haxe
var _size:stdgo.GoUInt32
```


```haxe
var _w:stdgo._internal.io.Writer
```


```haxe
var _wroteHeader:Bool
```


```haxe
var header:stdgo._internal.compress.gzip.Header
```


### Writer function new


```haxe
function new(?header:stdgo._internal.compress.gzip.Header, ?_w:stdgo._internal.io.Writer, ?_level:stdgo.GoInt, ?_wroteHeader:Bool, ?_compressor:stdgo.Ref<stdgo._internal.compress.flate.Writer>, ?_digest:stdgo.GoUInt32, ?_size:stdgo.GoUInt32, ?_closed:Bool, ?_buf:stdgo.GoArray<stdgo.GoUInt8>, ?_err:stdgo.Error):Void
```


[\(view code\)](<./Gzip_Writer.hx#L14>)


