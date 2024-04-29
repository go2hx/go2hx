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
# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function get_errChecksum():stdgo.Error`](<#function-get_errchecksum>)

- [`function get_errDictionary():stdgo.Error`](<#function-get_errdictionary>)

- [`function get_errHeader():stdgo.Error`](<#function-get_errheader>)

- [`function newReader(r:stdgo._internal.io.Reader):stdgo.Tuple<stdgo._internal.io.ReadCloser, stdgo.Error>`](<#function-newreader>)

- [`function newReaderDict(r:stdgo._internal.io.Reader, dict:Array<Int>):stdgo.Tuple<stdgo._internal.io.ReadCloser, stdgo.Error>`](<#function-newreaderdict>)

- [`function newWriter(w:stdgo._internal.io.Writer):stdgo.compress.zlib.Writer`](<#function-newwriter>)

- [`function newWriterLevel(w:stdgo._internal.io.Writer, level:Int):stdgo.Tuple<stdgo.compress.zlib.Writer, stdgo.Error>`](<#function-newwriterlevel>)

- [`function newWriterLevelDict(w:stdgo._internal.io.Writer, level:Int, dict:Array<Int>):stdgo.Tuple<stdgo.compress.zlib.Writer, stdgo.Error>`](<#function-newwriterleveldict>)

- [`function set_errChecksum(v:stdgo.Error):stdgo.Error`](<#function-set_errchecksum>)

- [`function set_errDictionary(v:stdgo.Error):stdgo.Error`](<#function-set_errdictionary>)

- [`function set_errHeader(v:stdgo.Error):stdgo.Error`](<#function-set_errheader>)

- [`function testDecompressor(t:stdgo._internal.testing.T_):Void`](<#function-testdecompressor>)

- [`function testWriter(t:stdgo._internal.testing.T_):Void`](<#function-testwriter>)

- [`function testWriterBig(t:stdgo._internal.testing.T_):Void`](<#function-testwriterbig>)

- [`function testWriterDict(t:stdgo._internal.testing.T_):Void`](<#function-testwriterdict>)

- [`function testWriterDictIsUsed(t:stdgo._internal.testing.T_):Void`](<#function-testwriterdictisused>)

- [`function testWriterReset(t:stdgo._internal.testing.T_):Void`](<#function-testwriterreset>)

- [typedef Resetter](<#typedef-resetter>)

- [typedef Resetter\_static\_extension](<#typedef-resetter_static_extension>)

- [typedef T\_reader](<#typedef-t_reader>)

- [typedef T\_reader\_asInterface](<#typedef-t_reader_asinterface>)

- [typedef T\_reader\_static\_extension](<#typedef-t_reader_static_extension>)

- [typedef T\_zlibTest](<#typedef-t_zlibtest>)

- [typedef Writer](<#typedef-writer>)

- [typedef Writer\_asInterface](<#typedef-writer_asinterface>)

- [typedef Writer\_static\_extension](<#typedef-writer_static_extension>)

# Constants


```haxe
import stdgo.compress.zlib.Zlib
```


```haxe
final bestCompression:haxe.UInt64 = stdgo._internal.compress.zlib.Zlib.bestCompression
```


```haxe
final bestSpeed:haxe.UInt64 = stdgo._internal.compress.zlib.Zlib.bestSpeed
```


```haxe
final defaultCompression:haxe.UInt64 = stdgo._internal.compress.zlib.Zlib.defaultCompression
```


```haxe
final huffmanOnly:haxe.UInt64 = stdgo._internal.compress.zlib.Zlib.huffmanOnly
```


```haxe
final noCompression:haxe.UInt64 = stdgo._internal.compress.zlib.Zlib.noCompression
```


# Variables


```haxe
import stdgo.compress.zlib.Zlib
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
import stdgo.compress.zlib.Zlib
```


## function get\_errChecksum


```haxe
function get_errChecksum():stdgo.Error
```


[\(view code\)](<./Zlib.hx#L30>)


## function get\_errDictionary


```haxe
function get_errDictionary():stdgo.Error
```


[\(view code\)](<./Zlib.hx#L33>)


## function get\_errHeader


```haxe
function get_errHeader():stdgo.Error
```


[\(view code\)](<./Zlib.hx#L36>)


## function newReader


```haxe
function newReader(r:stdgo._internal.io.Reader):stdgo.Tuple<stdgo._internal.io.ReadCloser, stdgo.Error>
```



NewReader creates a new ReadCloser.
Reads from the returned ReadCloser read and decompress data from r.
If r does not implement io.ByteReader, the decompressor may read more
data than necessary from r.
It is the caller's responsibility to call Close on the ReadCloser when done.  


The ReadCloser returned by NewReader also implements Resetter.  

[\(view code\)](<./Zlib.hx#L52>)


## function newReaderDict


```haxe
function newReaderDict(r:stdgo._internal.io.Reader, dict:Array<Int>):stdgo.Tuple<stdgo._internal.io.ReadCloser, stdgo.Error>
```



NewReaderDict is like NewReader but uses a preset dictionary.
NewReaderDict ignores the dictionary if the compressed data does not refer to it.
If the compressed data refers to a different dictionary, NewReaderDict returns ErrDictionary.  


The ReadCloser returned by NewReaderDict also implements Resetter.  

[\(view code\)](<./Zlib.hx#L60>)


## function newWriter


```haxe
function newWriter(w:stdgo._internal.io.Writer):stdgo.compress.zlib.Writer
```



NewWriter creates a new Writer.
Writes to the returned Writer are compressed and written to w.  


It is the caller's responsibility to call Close on the Writer when done.
Writes may be buffered and not flushed until Close.  

[\(view code\)](<./Zlib.hx#L69>)


## function newWriterLevel


```haxe
function newWriterLevel(w:stdgo._internal.io.Writer, level:Int):stdgo.Tuple<stdgo.compress.zlib.Writer, stdgo.Error>
```



NewWriterLevel is like NewWriter but specifies the compression level instead
of assuming DefaultCompression.  


The compression level can be DefaultCompression, NoCompression, HuffmanOnly
or any integer value between BestSpeed and BestCompression inclusive.
The error returned will be nil if the level is valid.  

[\(view code\)](<./Zlib.hx#L78>)


## function newWriterLevelDict


```haxe
function newWriterLevelDict(w:stdgo._internal.io.Writer, level:Int, dict:Array<Int>):stdgo.Tuple<stdgo.compress.zlib.Writer, stdgo.Error>
```



NewWriterLevelDict is like NewWriterLevel but specifies a dictionary to
compress with.  


The dictionary may be nil. If not, its contents should not be modified until
the Writer is closed.  

[\(view code\)](<./Zlib.hx#L86>)


## function set\_errChecksum


```haxe
function set_errChecksum(v:stdgo.Error):stdgo.Error
```


[\(view code\)](<./Zlib.hx#L31>)


## function set\_errDictionary


```haxe
function set_errDictionary(v:stdgo.Error):stdgo.Error
```


[\(view code\)](<./Zlib.hx#L34>)


## function set\_errHeader


```haxe
function set_errHeader(v:stdgo.Error):stdgo.Error
```


[\(view code\)](<./Zlib.hx#L37>)


## function testDecompressor


```haxe
function testDecompressor(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Zlib.hx#L61>)


## function testWriter


```haxe
function testWriter(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Zlib.hx#L87>)


## function testWriterBig


```haxe
function testWriterBig(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Zlib.hx#L88>)


## function testWriterDict


```haxe
function testWriterDict(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Zlib.hx#L89>)


## function testWriterDictIsUsed


```haxe
function testWriterDictIsUsed(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Zlib.hx#L91>)


## function testWriterReset


```haxe
function testWriterReset(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Zlib.hx#L90>)


# Typedefs


```haxe
import stdgo.compress.zlib.*
```


## typedef Resetter


```haxe
typedef Resetter = stdgo._internal.compress.zlib.Resetter;
```


## typedef Resetter\_static\_extension


```haxe
typedef Resetter_static_extension = Dynamic;
```


## typedef T\_reader


```haxe
typedef T_reader = Dynamic;
```


## typedef T\_reader\_asInterface


```haxe
typedef T_reader_asInterface = Dynamic;
```


## typedef T\_reader\_static\_extension


```haxe
typedef T_reader_static_extension = Dynamic;
```


## typedef T\_zlibTest


```haxe
typedef T_zlibTest = Dynamic;
```


## typedef Writer


```haxe
typedef Writer = Dynamic;
```


## typedef Writer\_asInterface


```haxe
typedef Writer_asInterface = Dynamic;
```


## typedef Writer\_static\_extension


```haxe
typedef Writer_static_extension = Dynamic;
```


