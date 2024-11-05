# Module: `stdgo.compress.zlib`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [class Zlib](<#class-zlib>)

  - [`function newReader(_r:stdgo._internal.io.Reader):stdgo.Tuple<stdgo._internal.io.ReadCloser, stdgo.Error>`](<#zlib-function-newreader>)

  - [`function newReaderDict(_r:stdgo._internal.io.Reader, _dict:Array<UInt>):stdgo.Tuple<stdgo._internal.io.ReadCloser, stdgo.Error>`](<#zlib-function-newreaderdict>)

  - [`function newWriter(_w:stdgo._internal.io.Writer):stdgo.compress.zlib.Writer`](<#zlib-function-newwriter>)

  - [`function newWriterLevel(_w:stdgo._internal.io.Writer, _level:Int):stdgo.Tuple<stdgo.compress.zlib.Writer, stdgo.Error>`](<#zlib-function-newwriterlevel>)

  - [`function newWriterLevelDict(_w:stdgo._internal.io.Writer, _level:Int, _dict:Array<UInt>):stdgo.Tuple<stdgo.compress.zlib.Writer, stdgo.Error>`](<#zlib-function-newwriterleveldict>)

- [typedef Resetter](<#typedef-resetter>)

- [abstract T\_reader](<#abstract-t_reader>)

- [abstract Writer](<#abstract-writer>)

# Constants


```haxe
import stdgo.compress.zlib.Zlib
```


```haxe
final bestCompression:haxe.UInt64 = stdgo._internal.compress.zlib.Zlib_bestCompression.bestCompression
```


```haxe
final bestSpeed:haxe.UInt64 = stdgo._internal.compress.zlib.Zlib_bestSpeed.bestSpeed
```


```haxe
final defaultCompression:haxe.UInt64 = stdgo._internal.compress.zlib.Zlib_defaultCompression.defaultCompression
```


```haxe
final huffmanOnly:haxe.UInt64 = stdgo._internal.compress.zlib.Zlib_huffmanOnly.huffmanOnly
```


```haxe
final noCompression:haxe.UInt64 = stdgo._internal.compress.zlib.Zlib_noCompression.noCompression
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


# Classes


```haxe
import stdgo.compress.zlib.*
```


## class Zlib



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
### Zlib function newReader


```haxe
function newReader(_r:stdgo._internal.io.Reader):stdgo.Tuple<stdgo._internal.io.ReadCloser, stdgo.Error>
```


```
NewReader creates a new ReadCloser.
        Reads from the returned ReadCloser read and decompress data from r.
        If r does not implement io.ByteReader, the decompressor may read more
        data than necessary from r.
        It is the caller's responsibility to call Close on the ReadCloser when done.
```

The ReadCloser returned by NewReader also implements Resetter.  

[\(view code\)](<./Zlib.hx#L188>)


### Zlib function newReaderDict


```haxe
function newReaderDict(_r:stdgo._internal.io.Reader, _dict:Array<UInt>):stdgo.Tuple<stdgo._internal.io.ReadCloser, stdgo.Error>
```


```
NewReaderDict is like NewReader but uses a preset dictionary.
        NewReaderDict ignores the dictionary if the compressed data does not refer to it.
        If the compressed data refers to a different dictionary, NewReaderDict returns ErrDictionary.
```

The ReadCloser returned by NewReaderDict also implements Resetter.  

[\(view code\)](<./Zlib.hx#L201>)


### Zlib function newWriter


```haxe
function newWriter(_w:stdgo._internal.io.Writer):stdgo.compress.zlib.Writer
```


```
NewWriter creates a new Writer.
        Writes to the returned Writer are compressed and written to w.
```

It is the caller's responsibility to call Close on the Writer when done.
Writes may be buffered and not flushed until Close.  

[\(view code\)](<./Zlib.hx#L215>)


### Zlib function newWriterLevel


```haxe
function newWriterLevel(_w:stdgo._internal.io.Writer, _level:Int):stdgo.Tuple<stdgo.compress.zlib.Writer, stdgo.Error>
```


```
NewWriterLevel is like NewWriter but specifies the compression level instead
        of assuming DefaultCompression.
```

The compression level can be DefaultCompression, NoCompression, HuffmanOnly
or any integer value between BestSpeed and BestCompression inclusive.
The error returned will be nil if the level is valid.  

[\(view code\)](<./Zlib.hx#L226>)


### Zlib function newWriterLevelDict


```haxe
function newWriterLevelDict(_w:stdgo._internal.io.Writer, _level:Int, _dict:Array<UInt>):stdgo.Tuple<stdgo.compress.zlib.Writer, stdgo.Error>
```


```
NewWriterLevelDict is like NewWriterLevel but specifies a dictionary to
        compress with.
```

The dictionary may be nil. If not, its contents should not be modified until
the Writer is closed.  

[\(view code\)](<./Zlib.hx#L239>)


# Typedefs


```haxe
import stdgo.compress.zlib.*
```


## typedef Resetter


```haxe
typedef Resetter = stdgo._internal.compress.zlib.Resetter;
```


# Abstracts


## abstract T\_reader


[\(view file containing code\)](<./Zlib.hx>)


## abstract Writer


[\(view file containing code\)](<./Zlib.hx>)


