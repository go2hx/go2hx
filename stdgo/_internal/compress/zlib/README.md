# Module: `stdgo._internal.compress.zlib`

[(view library index)](../../../stdgo.md)


# Overview


stdgo/_internal/internal/Macro.macro.hx:54: non hxb types:,426

# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function _testFileLevelDict(_t:stdgo.Ref<stdgo._internal.testing.T_>, _fn:stdgo.GoString, _level:stdgo.GoInt, _d:stdgo.GoString):Void`](<#function-_testfileleveldict>)

- [`function _testFileLevelDictReset(_t:stdgo.Ref<stdgo._internal.testing.T_>, _fn:stdgo.GoString, _level:stdgo.GoInt, _dict:stdgo.Slice<stdgo.GoByte>):Void`](<#function-_testfileleveldictreset>)

- [`function _testLevelDict(_t:stdgo.Ref<stdgo._internal.testing.T_>, _fn:stdgo.GoString, _b0:stdgo.Slice<stdgo.GoByte>, _level:stdgo.GoInt, _d:stdgo.GoString):Void`](<#function-_testleveldict>)

- [`function newReader(_r:stdgo._internal.io.Reader):{
	_1:stdgo.Error;
	_0:stdgo._internal.io.ReadCloser;
}`](<#function-newreader>)

- [`function newReaderDict(_r:stdgo._internal.io.Reader, _dict:stdgo.Slice<stdgo.GoByte>):{
	_1:stdgo.Error;
	_0:stdgo._internal.io.ReadCloser;
}`](<#function-newreaderdict>)

- [`function newWriter(_w:stdgo._internal.io.Writer):stdgo.Ref<stdgo._internal.compress.zlib.Writer>`](<#function-newwriter>)

- [`function newWriterLevel(_w:stdgo._internal.io.Writer, _level:stdgo.GoInt):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.compress.zlib.Writer>;
}`](<#function-newwriterlevel>)

- [`function newWriterLevelDict(_w:stdgo._internal.io.Writer, _level:stdgo.GoInt, _dict:stdgo.Slice<stdgo.GoByte>):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.compress.zlib.Writer>;
}`](<#function-newwriterleveldict>)

- [`function testDecompressor(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testdecompressor>)

- [`function testWriter(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testwriter>)

- [`function testWriterBig(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testwriterbig>)

- [`function testWriterDict(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testwriterdict>)

- [`function testWriterDictIsUsed(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testwriterdictisused>)

- [`function testWriterReset(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testwriterreset>)

- [class Writer](<#class-writer>)

  - [`function new(?_w:Null<stdgo._internal.io.Writer>, ?_level:stdgo.GoInt, ?_dict:stdgo.Slice<stdgo.GoUInt8>, ?_compressor:stdgo.Ref<stdgo._internal.compress.flate.Writer>, ?_digest:Null<stdgo._internal.hash.Hash32>, ?_err:Null<stdgo.Error>, ?_scratch:stdgo.GoArray<stdgo.GoUInt8>, ?_wroteHeader:Bool):Void`](<#writer-function-new>)

  - [`function _writeHeader():stdgo.Error`](<#writer-function-_writeheader>)

  - [`function close():stdgo.Error`](<#writer-function-close>)

  - [`function flush():stdgo.Error`](<#writer-function-flush>)

  - [`function reset( _w:stdgo._internal.io.Writer):Void`](<#writer-function-reset>)

  - [`function write( _p:stdgo.Slice<stdgo.GoByte>):{ _1:stdgo.Error; _0:stdgo.GoInt;}`](<#writer-function-write>)

- [typedef Resetter](<#typedef-resetter>)

# Examples


- [`exampleNewReader`](<#examplenewreader>)

- [`exampleNewWriter`](<#examplenewwriter>)

# Constants


```haxe
import stdgo._internal.compress.zlib.Zlib
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
import stdgo._internal.compress.zlib.Zlib
```


```haxe
var _data:stdgo.Slice<stdgo.GoString>
```


```haxe
var _filenames:stdgo.Slice<stdgo.GoString>
```


```haxe
var _zlibTests:stdgo.Slice<stdgo._internal.compress.zlib.T_zlibTest>
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
import stdgo._internal.compress.zlib.Zlib
```


## function \_testFileLevelDict


```haxe
function _testFileLevelDict(_t:stdgo.Ref<stdgo._internal.testing.T_>, _fn:stdgo.GoString, _level:stdgo.GoInt, _d:stdgo.GoString):Void
```


[\(view code\)](<./Zlib.hx#L305>)


## function \_testFileLevelDictReset


```haxe
function _testFileLevelDictReset(_t:stdgo.Ref<stdgo._internal.testing.T_>, _fn:stdgo.GoString, _level:stdgo.GoInt, _dict:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Zlib.hx#L472>)


## function \_testLevelDict


```haxe
function _testLevelDict(_t:stdgo.Ref<stdgo._internal.testing.T_>, _fn:stdgo.GoString, _b0:stdgo.Slice<stdgo.GoByte>, _level:stdgo.GoInt, _d:stdgo.GoString):Void
```


[\(view code\)](<./Zlib.hx#L346>)


## function newReader


```haxe
function newReader(_r:stdgo._internal.io.Reader):{
	_1:stdgo.Error;
	_0:stdgo._internal.io.ReadCloser;
}
```


### exampleNewReader


<details><summary></summary>
<p>


```haxe
function exampleNewReader():Void {
        var _buff = (new stdgo.Slice<stdgo.GoUInt8>(25, 25, ...[
(120 : stdgo.GoUInt8),
(156 : stdgo.GoUInt8),
(202 : stdgo.GoUInt8),
(72 : stdgo.GoUInt8),
(205 : stdgo.GoUInt8),
(201 : stdgo.GoUInt8),
(201 : stdgo.GoUInt8),
(215 : stdgo.GoUInt8),
(81 : stdgo.GoUInt8),
(40 : stdgo.GoUInt8),
(207 : stdgo.GoUInt8),
(47 : stdgo.GoUInt8),
(202 : stdgo.GoUInt8),
(73 : stdgo.GoUInt8),
(225 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(4 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(33 : stdgo.GoUInt8),
(231 : stdgo.GoUInt8),
(4 : stdgo.GoUInt8),
(147 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _b = stdgo._internal.bytes.Bytes.newReader(_buff);
        var __tmp__ = stdgo._internal.compress.zlib.Zlib.newReader(stdgo.Go.asInterface(_b)), _r:stdgo._internal.io.Io.ReadCloser = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw stdgo.Go.toInterface(_err);
        };
        stdgo._internal.io.Io.copy(stdgo.Go.asInterface(stdgo._internal.os.Os.stdout), _r);
        _r.close();
    }
```


</p>
</details>


[\(view code\)](<./Zlib.hx#L221>)


## function newReaderDict


```haxe
function newReaderDict(_r:stdgo._internal.io.Reader, _dict:stdgo.Slice<stdgo.GoByte>):{
	_1:stdgo.Error;
	_0:stdgo._internal.io.ReadCloser;
}
```


[\(view code\)](<./Zlib.hx#L224>)


## function newWriter


```haxe
function newWriter(_w:stdgo._internal.io.Writer):stdgo.Ref<stdgo._internal.compress.zlib.Writer>
```


### exampleNewWriter


<details><summary></summary>
<p>


```haxe
function exampleNewWriter():Void {
        var _b:stdgo._internal.bytes.Bytes.Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
        var _w = stdgo._internal.compress.zlib.Zlib.newWriter(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)));
        _w.write((("hello, world\n" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>));
        _w.close();
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_b.bytes()));
    }
```


</p>
</details>


[\(view code\)](<./Zlib.hx#L292>)


## function newWriterLevel


```haxe
function newWriterLevel(_w:stdgo._internal.io.Writer, _level:stdgo.GoInt):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.compress.zlib.Writer>;
}
```


[\(view code\)](<./Zlib.hx#L296>)


## function newWriterLevelDict


```haxe
function newWriterLevelDict(_w:stdgo._internal.io.Writer, _level:stdgo.GoInt, _dict:stdgo.Slice<stdgo.GoByte>):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.compress.zlib.Writer>;
}
```


[\(view code\)](<./Zlib.hx#L299>)


## function testDecompressor


```haxe
function testDecompressor(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Zlib.hx#L232>)


## function testWriter


```haxe
function testWriter(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Zlib.hx#L533>)


## function testWriterBig


```haxe
function testWriterBig(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Zlib.hx#L548>)


## function testWriterDict


```haxe
function testWriterDict(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Zlib.hx#L567>)


## function testWriterDictIsUsed


```haxe
function testWriterDictIsUsed(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Zlib.hx#L607>)


## function testWriterReset


```haxe
function testWriterReset(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Zlib.hx#L587>)


# Classes


```haxe
import stdgo._internal.compress.zlib.*
```


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


[\(view code\)](<./Zlib.hx#L206>)


### Writer function \_writeHeader


```haxe
function _writeHeader():stdgo.Error
```


[\(view code\)](<./Zlib.hx#L829>)


### Writer function close


```haxe
function close():stdgo.Error
```


[\(view code\)](<./Zlib.hx#L771>)


### Writer function flush


```haxe
function flush():stdgo.Error
```


[\(view code\)](<./Zlib.hx#L792>)


### Writer function reset


```haxe
function reset( _w:stdgo._internal.io.Writer):Void
```


[\(view code\)](<./Zlib.hx#L887>)


### Writer function write


```haxe
function write( _p:stdgo.Slice<stdgo.GoByte>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Zlib.hx#L804>)


# Typedefs


```haxe
import stdgo._internal.compress.zlib.*
```


## typedef Resetter


```haxe
typedef Resetter = {
	public function reset(_r:stdgo._internal.io.Reader, _dict:stdgo.Slice<stdgo.GoByte>):stdgo.Error;	// Reset discards any buffered data and resets the Resetter as if it was newly initialized with the given reader.
};
```


