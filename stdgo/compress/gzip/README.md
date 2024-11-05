# Module: `stdgo.compress.gzip`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [class Gzip](<#class-gzip>)

  - [`function newReader(_r:stdgo._internal.io.Reader):stdgo.Tuple<stdgo.compress.gzip.Reader, stdgo.Error>`](<#gzip-function-newreader>)

  - [`function newWriter(_w:stdgo._internal.io.Writer):stdgo.compress.gzip.Writer`](<#gzip-function-newwriter>)

  - [`function newWriterLevel(_w:stdgo._internal.io.Writer, _level:Int):stdgo.Tuple<stdgo.compress.gzip.Writer, stdgo.Error>`](<#gzip-function-newwriterlevel>)

- [abstract Header](<#abstract-header>)

- [abstract Reader](<#abstract-reader>)

- [abstract Writer](<#abstract-writer>)

# Constants


```haxe
import stdgo.compress.gzip.Gzip
```


```haxe
final bestCompression:haxe.UInt64 = stdgo._internal.compress.gzip.Gzip_bestCompression.bestCompression
```


```haxe
final bestSpeed:haxe.UInt64 = stdgo._internal.compress.gzip.Gzip_bestSpeed.bestSpeed
```


```haxe
final defaultCompression:haxe.UInt64 = stdgo._internal.compress.gzip.Gzip_defaultCompression.defaultCompression
```


```haxe
final huffmanOnly:haxe.UInt64 = stdgo._internal.compress.gzip.Gzip_huffmanOnly.huffmanOnly
```


```haxe
final noCompression:haxe.UInt64 = stdgo._internal.compress.gzip.Gzip_noCompression.noCompression
```


# Variables


```haxe
import stdgo.compress.gzip.Gzip
```


```haxe
var errChecksum:stdgo.Error
```


```haxe
var errHeader:stdgo.Error
```


# Classes


```haxe
import stdgo.compress.gzip.*
```


## class Gzip


```
Package gzip implements reading and writing of gzip format compressed files,
    as specified in RFC 1952.
```
### Gzip function newReader


```haxe
function newReader(_r:stdgo._internal.io.Reader):stdgo.Tuple<stdgo.compress.gzip.Reader, stdgo.Error>
```


```
NewReader creates a new Reader reading the given reader.
        If r does not also implement io.ByteReader,
        the decompressor may read more data than necessary from r.
```

It is the caller's responsibility to call Close on the Reader when done.  


The Reader.Header fields will be valid in the Reader returned.  

[\(view code\)](<./Gzip.hx#L244>)


### Gzip function newWriter


```haxe
function newWriter(_w:stdgo._internal.io.Writer):stdgo.compress.gzip.Writer
```


```
NewWriter returns a new Writer.
        Writes to the returned writer are compressed and written to w.
```

It is the caller's responsibility to call Close on the Writer when done.
Writes may be buffered and not flushed until Close.  


Callers that wish to set the fields in Writer.Header must do so before
the first call to Write, Flush, or Close.  

[\(view code\)](<./Gzip.hx#L260>)


### Gzip function newWriterLevel


```haxe
function newWriterLevel(_w:stdgo._internal.io.Writer, _level:Int):stdgo.Tuple<stdgo.compress.gzip.Writer, stdgo.Error>
```


```
NewWriterLevel is like NewWriter but specifies the compression level instead
        of assuming DefaultCompression.
```

The compression level can be DefaultCompression, NoCompression, HuffmanOnly
or any integer value between BestSpeed and BestCompression inclusive.
The error returned will be nil if the level is valid.  

[\(view code\)](<./Gzip.hx#L271>)


# Abstracts


## abstract Header


[\(view file containing code\)](<./Gzip.hx>)


## abstract Reader


[\(view file containing code\)](<./Gzip.hx>)


## abstract Writer


[\(view file containing code\)](<./Gzip.hx>)


