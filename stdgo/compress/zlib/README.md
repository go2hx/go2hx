# Module: `stdgo.compress.zlib`

[(view library index)](../../stdgo.md)


# Overview



Package zlib implements reading and writing of zlib format compressed data,
as specified in RFC 1950.  


The implementation provides filters that uncompress during reading
and compress during writing.  For example, to write compressed data
to a buffer:  

```
    	var b bytes.Buffer
    	w := zlib.NewWriter(&b)
    	w.Write([]byte("hello, world\n"))
    	w.Close()
```

and to read that data back:  

```
    	r, err := zlib.NewReader(&b)
    	io.Copy(os.Stdout, r)
    	r.Close()
```
stdgo/internal/Macro.macro.hx:38: TypeInfoData_go2hx_null

# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function _testFileLevelDict(_t:stdgo.Ref<stdgo.testing.T_>, _fn:stdgo.GoString, _level:stdgo.GoInt, _d:stdgo.GoString):Void`](<#function-_testfileleveldict>)

- [`function _testFileLevelDictReset(_t:stdgo.Ref<stdgo.testing.T_>, _fn:stdgo.GoString, _level:stdgo.GoInt, _dict:stdgo.Slice<stdgo.GoByte>):Void`](<#function-_testfileleveldictreset>)

- [`function _testLevelDict(_t:stdgo.Ref<stdgo.testing.T_>, _fn:stdgo.GoString, _b0:stdgo.Slice<stdgo.GoByte>, _level:stdgo.GoInt, _d:stdgo.GoString):Void`](<#function-_testleveldict>)

- [`function newReader(_r:stdgo.io.Reader):{
	_1:stdgo.Error;
	_0:stdgo.io.ReadCloser;
}`](<#function-newreader>)

- [`function newReaderDict(_r:stdgo.io.Reader, _dict:stdgo.Slice<stdgo.GoByte>):{
	_1:stdgo.Error;
	_0:stdgo.io.ReadCloser;
}`](<#function-newreaderdict>)

- [`function newWriter(_w:stdgo.io.Writer):stdgo.Ref<stdgo.compress.zlib.Writer>`](<#function-newwriter>)

- [`function newWriterLevel(_w:stdgo.io.Writer, _level:stdgo.GoInt):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo.compress.zlib.Writer>;
}`](<#function-newwriterlevel>)

- [`function newWriterLevelDict(_w:stdgo.io.Writer, _level:stdgo.GoInt, _dict:stdgo.Slice<stdgo.GoByte>):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo.compress.zlib.Writer>;
}`](<#function-newwriterleveldict>)

- [`function testDecompressor(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testdecompressor>)

- [`function testWriter(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testwriter>)

- [`function testWriterBig(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testwriterbig>)

- [`function testWriterDict(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testwriterdict>)

- [`function testWriterDictIsUsed(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testwriterdictisused>)

- [`function testWriterReset(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testwriterreset>)

- [class Writer](<#class-writer>)

  - [`function new(?_w:Null<stdgo.io.Writer>, ?_level:stdgo.GoInt, ?_dict:stdgo.Slice<stdgo.GoUInt8>, ?_compressor:stdgo.Ref<stdgo.compress.flate.Writer>, ?_digest:Null<stdgo.hash.Hash32>, ?_err:Null<stdgo.Error>, ?_scratch:stdgo.GoArray<stdgo.GoUInt8>, ?_wroteHeader:Bool):Void`](<#writer-function-new>)

  - [`function _writeHeader():stdgo.Error`](<#writer-function-_writeheader>)

  - [`function close():stdgo.Error`](<#writer-function-close>)

  - [`function flush():stdgo.Error`](<#writer-function-flush>)

  - [`function reset( _w:stdgo.io.Writer):Void`](<#writer-function-reset>)

  - [`function write( _p:stdgo.Slice<stdgo.GoByte>):{ _1:stdgo.Error; _0:stdgo.GoInt;}`](<#writer-function-write>)

- [typedef Resetter](<#typedef-resetter>)

# Examples


- [`exampleNewReader`](<#examplenewreader>)

- [`exampleNewWriter`](<#examplenewwriter>)

# Constants


```haxe
import stdgo.compress.zlib.Zlib
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



These constants are copied from the flate package, so that code that imports
"compress/zlib" does not also have to import "compress/flate".  

```haxe
final bestSpeed:stdgo.GoUInt64 = ((1i64 : stdgo.GoUInt64))
```



These constants are copied from the flate package, so that code that imports
"compress/zlib" does not also have to import "compress/flate".  

```haxe
final defaultCompression:stdgo.GoUInt64 = ((0i64 : stdgo.GoUInt64))
```



These constants are copied from the flate package, so that code that imports
"compress/zlib" does not also have to import "compress/flate".  

```haxe
final huffmanOnly:stdgo.GoUInt64 = ((0i64 : stdgo.GoUInt64))
```



These constants are copied from the flate package, so that code that imports
"compress/zlib" does not also have to import "compress/flate".  

```haxe
final noCompression:stdgo.GoUInt64 = ((0i64 : stdgo.GoUInt64))
```



These constants are copied from the flate package, so that code that imports
"compress/zlib" does not also have to import "compress/flate".  

# Variables


```haxe
import stdgo.compress.zlib.Zlib
```


```haxe
var _data:stdgo.Slice<stdgo.GoString>
```


```haxe
var _filenames:stdgo.Slice<stdgo.GoString>
```


```haxe
var _zlibTests:stdgo.Slice<stdgo.compress.zlib.T_zlibTest>
```


```haxe
var errChecksum:stdgo.Error
```



ErrChecksum is returned when reading ZLIB data that has an invalid checksum.  

```haxe
var errDictionary:stdgo.Error
```



ErrDictionary is returned when reading ZLIB data that has an invalid dictionary.  

```haxe
var errHeader:stdgo.Error
```



ErrHeader is returned when reading ZLIB data that has an invalid header.  

# Functions


```haxe
import stdgo.compress.zlib.Zlib
```


## function \_testFileLevelDict


```haxe
function _testFileLevelDict(_t:stdgo.Ref<stdgo.testing.T_>, _fn:stdgo.GoString, _level:stdgo.GoInt, _d:stdgo.GoString):Void
```



Tests that compressing and then decompressing the given file at the given compression level and dictionary
yields equivalent bytes to the original file.  

[\(view code\)](<./Zlib.hx#L474>)


## function \_testFileLevelDictReset


```haxe
function _testFileLevelDictReset(_t:stdgo.Ref<stdgo.testing.T_>, _fn:stdgo.GoString, _level:stdgo.GoInt, _dict:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Zlib.hx#L641>)


## function \_testLevelDict


```haxe
function _testLevelDict(_t:stdgo.Ref<stdgo.testing.T_>, _fn:stdgo.GoString, _b0:stdgo.Slice<stdgo.GoByte>, _level:stdgo.GoInt, _d:stdgo.GoString):Void
```


[\(view code\)](<./Zlib.hx#L515>)


## function newReader


```haxe
function newReader(_r:stdgo.io.Reader):{
	_1:stdgo.Error;
	_0:stdgo.io.ReadCloser;
}
```



NewReader creates a new ReadCloser.
Reads from the returned ReadCloser read and decompress data from r.
If r does not implement io.ByteReader, the decompressor may read more
data than necessary from r.
It is the caller's responsibility to call Close on the ReadCloser when done.  


The ReadCloser returned by NewReader also implements Resetter.  

### exampleNewReader


<details><summary></summary>
<p>


```haxe
function exampleNewReader():Void {
        var _buff = (new stdgo.Slice<stdgo.GoUInt8>(
25,
25,
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
(147 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
        var _b = stdgo.bytes.Bytes.newReader(_buff);
        var __tmp__ = stdgo.compress.zlib.Zlib.newReader(stdgo.Go.asInterface(_b)), _r:stdgo.io.Io.ReadCloser = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw stdgo.Go.toInterface(_err);
        };
        stdgo.io.Io.copy(stdgo.Go.asInterface(stdgo.os.Os.stdout), _r);
        _r.close();
    }
```


</p>
</details>


[\(view code\)](<./Zlib.hx#L357>)


## function newReaderDict


```haxe
function newReaderDict(_r:stdgo.io.Reader, _dict:stdgo.Slice<stdgo.GoByte>):{
	_1:stdgo.Error;
	_0:stdgo.io.ReadCloser;
}
```



NewReaderDict is like NewReader but uses a preset dictionary.
NewReaderDict ignores the dictionary if the compressed data does not refer to it.
If the compressed data refers to a different dictionary, NewReaderDict returns ErrDictionary.  


The ReadCloser returned by NewReaderDict also implements Resetter.  

[\(view code\)](<./Zlib.hx#L367>)


## function newWriter


```haxe
function newWriter(_w:stdgo.io.Writer):stdgo.Ref<stdgo.compress.zlib.Writer>
```



NewWriter creates a new Writer.
Writes to the returned Writer are compressed and written to w.  


It is the caller's responsibility to call Close on the Writer when done.
Writes may be buffered and not flushed until Close.  

### exampleNewWriter


<details><summary></summary>
<p>


```haxe
function exampleNewWriter():Void {
        var _b:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
        var _w = stdgo.compress.zlib.Zlib.newWriter(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo.bytes.Bytes.Buffer>)));
        _w.write((("hello, world\n" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>));
        _w.close();
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_b.bytes()));
    }
```


</p>
</details>


[\(view code\)](<./Zlib.hx#L442>)


## function newWriterLevel


```haxe
function newWriterLevel(_w:stdgo.io.Writer, _level:stdgo.GoInt):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo.compress.zlib.Writer>;
}
```



NewWriterLevel is like NewWriter but specifies the compression level instead
of assuming DefaultCompression.  


The compression level can be DefaultCompression, NoCompression, HuffmanOnly
or any integer value between BestSpeed and BestCompression inclusive.
The error returned will be nil if the level is valid.  

[\(view code\)](<./Zlib.hx#L454>)


## function newWriterLevelDict


```haxe
function newWriterLevelDict(_w:stdgo.io.Writer, _level:stdgo.GoInt, _dict:stdgo.Slice<stdgo.GoByte>):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo.compress.zlib.Writer>;
}
```



NewWriterLevelDict is like NewWriterLevel but specifies a dictionary to
compress with.  


The dictionary may be nil. If not, its contents should not be modified until
the Writer is closed.  

[\(view code\)](<./Zlib.hx#L464>)


## function testDecompressor


```haxe
function testDecompressor(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Zlib.hx#L375>)


## function testWriter


```haxe
function testWriter(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Zlib.hx#L702>)


## function testWriterBig


```haxe
function testWriterBig(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Zlib.hx#L717>)


## function testWriterDict


```haxe
function testWriterDict(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Zlib.hx#L736>)


## function testWriterDictIsUsed


```haxe
function testWriterDictIsUsed(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Zlib.hx#L776>)


## function testWriterReset


```haxe
function testWriterReset(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Zlib.hx#L756>)


# Classes


```haxe
import stdgo.compress.zlib.*
```


## class Writer



A Writer takes data written to it and writes the compressed
form of that data to an underlying writer \(see NewWriter\).  

```haxe
var _compressor:stdgo.Ref<stdgo.compress.flate.Writer>
```


```haxe
var _dict:stdgo.Slice<stdgo.GoUInt8>
```


```haxe
var _digest:stdgo.hash.Hash32
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
var _w:stdgo.io.Writer
```


```haxe
var _wroteHeader:Bool
```


### Writer function new


```haxe
function new(?_w:Null<stdgo.io.Writer>, ?_level:stdgo.GoInt, ?_dict:stdgo.Slice<stdgo.GoUInt8>, ?_compressor:stdgo.Ref<stdgo.compress.flate.Writer>, ?_digest:Null<stdgo.hash.Hash32>, ?_err:Null<stdgo.Error>, ?_scratch:stdgo.GoArray<stdgo.GoUInt8>, ?_wroteHeader:Bool):Void
```


[\(view code\)](<./Zlib.hx#L333>)


### Writer function \_writeHeader


```haxe
function _writeHeader():stdgo.Error
```



writeHeader writes the ZLIB header.  

[\(view code\)](<./Zlib.hx#L1043>)


### Writer function close


```haxe
function close():stdgo.Error
```



Close closes the Writer, flushing any unwritten data to the underlying
io.Writer, but does not close the underlying io.Writer.  

[\(view code\)](<./Zlib.hx#L974>)


### Writer function flush


```haxe
function flush():stdgo.Error
```



Flush flushes the Writer to its underlying io.Writer.  

[\(view code\)](<./Zlib.hx#L998>)


### Writer function reset


```haxe
function reset( _w:stdgo.io.Writer):Void
```



Reset clears the state of the Writer z such that it is equivalent to its
initial state from NewWriterLevel or NewWriterLevelDict, but instead writing
to w.  

[\(view code\)](<./Zlib.hx#L1106>)


### Writer function write


```haxe
function write( _p:stdgo.Slice<stdgo.GoByte>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```



Write writes a compressed form of p to the underlying io.Writer. The
compressed bytes are not necessarily flushed until the Writer is closed or
explicitly flushed.  

[\(view code\)](<./Zlib.hx#L1015>)


# Typedefs


```haxe
import stdgo.compress.zlib.*
```


## typedef Resetter


```haxe
typedef Resetter = {
	public function reset(_r:stdgo.io.Reader, _dict:stdgo.Slice<stdgo.GoByte>):stdgo.Error;	//  Reset discards any buffered data and resets the Resetter as if it was newly initialized with the given reader.
};
```



Resetter resets a ReadCloser returned by NewReader or NewReaderDict
to switch to a new underlying Reader. This permits reusing a ReadCloser
instead of allocating a new one.  

