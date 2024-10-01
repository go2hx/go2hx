# Module: `stdgo._internal.compress.zlib`

[(view library index)](../../../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function newReader(_r:stdgo._internal.io.Reader):{
	_1:stdgo.Error;
	_0:stdgo._internal.io.ReadCloser;
}`](<#function-newreader>)

- [`function newReaderDict(_r:stdgo._internal.io.Reader, _dict:stdgo.Slice<stdgo.GoUInt8>):{
	_1:stdgo.Error;
	_0:stdgo._internal.io.ReadCloser;
}`](<#function-newreaderdict>)

- [`function newWriter(_w:stdgo._internal.io.Writer):stdgo.Ref<stdgo._internal.compress.zlib.Writer>`](<#function-newwriter>)

- [`function newWriterLevel(_w:stdgo._internal.io.Writer, _level:stdgo.GoInt):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.compress.zlib.Writer>;
}`](<#function-newwriterlevel>)

- [`function newWriterLevelDict(_w:stdgo._internal.io.Writer, _level:stdgo.GoInt, _dict:stdgo.Slice<stdgo.GoUInt8>):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.compress.zlib.Writer>;
}`](<#function-newwriterleveldict>)

- [class T\_reader](<#class-t_reader>)

  - [`function new(?_r:Null<stdgo._internal.compress.flate.Reader>, ?_decompressor:Null<stdgo._internal.io.ReadCloser>, ?_digest:Null<stdgo._internal.hash.Hash32>, ?_err:Null<stdgo.Error>, ?_scratch:stdgo.GoArray<stdgo.GoUInt8>):Void`](<#t_reader-function-new>)

- [class Writer](<#class-writer>)

  - [`function new(?_w:Null<stdgo._internal.io.Writer>, ?_level:stdgo.GoInt, ?_dict:stdgo.Slice<stdgo.GoUInt8>, ?_compressor:stdgo.Ref<stdgo._internal.compress.flate.Writer>, ?_digest:Null<stdgo._internal.hash.Hash32>, ?_err:Null<stdgo.Error>, ?_scratch:stdgo.GoArray<stdgo.GoUInt8>, ?_wroteHeader:Bool):Void`](<#writer-function-new>)

- [typedef Resetter](<#typedef-resetter>)

# Constants


```haxe
import stdgo._internal.compress.zlib.Zlib_noCompression
```


```haxe
final _zlibDeflate:stdgo.GoUInt64 = ((8i64 : stdgo.GoUInt64))
```


```haxe
final _zlibMaxWindow:stdgo.GoUInt64 = ((7i64 : stdgo.GoUInt64))
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
import stdgo._internal.compress.zlib.Zlib_noCompression
```


```haxe
var errChecksum:stdgo.Error
```


```haxe
var errDictionary:stdgo.Error
```


```haxe
var errHeader:stdgo.Error
```


# Functions


```haxe
import stdgo._internal.compress.zlib.Zlib_noCompression
```


## function newReader


```haxe
function newReader(_r:stdgo._internal.io.Reader):{
	_1:stdgo.Error;
	_0:stdgo._internal.io.ReadCloser;
}
```


[\(view code\)](<./Zlib_noCompression.hx#L2>)


## function newReaderDict


```haxe
function newReaderDict(_r:stdgo._internal.io.Reader, _dict:stdgo.Slice<stdgo.GoUInt8>):{
	_1:stdgo.Error;
	_0:stdgo._internal.io.ReadCloser;
}
```


[\(view code\)](<./Zlib_noCompression.hx#L2>)


## function newWriter


```haxe
function newWriter(_w:stdgo._internal.io.Writer):stdgo.Ref<stdgo._internal.compress.zlib.Writer>
```


[\(view code\)](<./Zlib_noCompression.hx#L2>)


## function newWriterLevel


```haxe
function newWriterLevel(_w:stdgo._internal.io.Writer, _level:stdgo.GoInt):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.compress.zlib.Writer>;
}
```


[\(view code\)](<./Zlib_noCompression.hx#L2>)


## function newWriterLevelDict


```haxe
function newWriterLevelDict(_w:stdgo._internal.io.Writer, _level:stdgo.GoInt, _dict:stdgo.Slice<stdgo.GoUInt8>):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.compress.zlib.Writer>;
}
```


[\(view code\)](<./Zlib_noCompression.hx#L2>)


# Classes


```haxe
import stdgo._internal.compress.zlib.*
```


## class T\_reader


```haxe
var _decompressor:stdgo._internal.io.ReadCloser
```


```haxe
var _digest:stdgo._internal.hash.Hash32
```


```haxe
var _err:stdgo.Error
```


```haxe
var _r:stdgo._internal.compress.flate.Reader
```


```haxe
var _scratch:stdgo.GoArray<stdgo.GoUInt8>
```


### T\_reader function new


```haxe
function new(?_r:Null<stdgo._internal.compress.flate.Reader>, ?_decompressor:Null<stdgo._internal.io.ReadCloser>, ?_digest:Null<stdgo._internal.hash.Hash32>, ?_err:Null<stdgo.Error>, ?_scratch:stdgo.GoArray<stdgo.GoUInt8>):Void
```


[\(view code\)](<./Zlib_T_reader.hx#L8>)


## class Writer


```haxe
var _compressor:stdgo.Ref<stdgo._internal.compress.flate.Writer>
```


```haxe
var _dict:stdgo.Slice<stdgo.GoUInt8>
```


```haxe
var _digest:stdgo._internal.hash.Hash32
```


```haxe
var _err:stdgo.Error
```


```haxe
var _level:stdgo.GoInt
```


```haxe
var _scratch:stdgo.GoArray<stdgo.GoUInt8>
```


```haxe
var _w:stdgo._internal.io.Writer
```


```haxe
var _wroteHeader:Bool
```


### Writer function new


```haxe
function new(?_w:Null<stdgo._internal.io.Writer>, ?_level:stdgo.GoInt, ?_dict:stdgo.Slice<stdgo.GoUInt8>, ?_compressor:stdgo.Ref<stdgo._internal.compress.flate.Writer>, ?_digest:Null<stdgo._internal.hash.Hash32>, ?_err:Null<stdgo.Error>, ?_scratch:stdgo.GoArray<stdgo.GoUInt8>, ?_wroteHeader:Bool):Void
```


[\(view code\)](<./Zlib_Writer.hx#L11>)


# Typedefs


```haxe
import stdgo._internal.compress.zlib.*
```


## typedef Resetter


```haxe
typedef Resetter = {
	public function reset(_r:stdgo._internal.io.Reader, _dict:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error;	// Reset discards any buffered data and resets the Resetter as if it was newly initialized with the given reader.
};
```


