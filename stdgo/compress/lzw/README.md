# Module: `stdgo.compress.lzw`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [class Lzw](<#class-lzw>)

  - [`function newReader(_r:stdgo._internal.io.Reader, _order:stdgo.compress.lzw.Order, _litWidth:Int):stdgo._internal.io.ReadCloser`](<#lzw-function-newreader>)

  - [`function newWriter(_w:stdgo._internal.io.Writer, _order:stdgo.compress.lzw.Order, _litWidth:Int):stdgo._internal.io.WriteCloser`](<#lzw-function-newwriter>)

- [typedef Order](<#typedef-order>)

- [typedef T\_writer](<#typedef-t_writer>)

- [abstract Reader](<#abstract-reader>)

- [abstract Writer](<#abstract-writer>)

# Constants


```haxe
import stdgo.compress.lzw.Lzw
```


```haxe
final lsb:stdgo.compress.lzw.Order = stdgo._internal.compress.lzw.Lzw_lsb.lsb
```


```haxe
final msb:stdgo._internal.compress.lzw.Order = stdgo._internal.compress.lzw.Lzw_msb.msb
```


# Classes


```haxe
import stdgo.compress.lzw.*
```


## class Lzw


```
Package lzw implements the Lempel-Ziv-Welch compressed data format,
    described in T. A. Welch, “A Technique for High-Performance Data
    Compression”, Computer, 17(6) (June 1984), pp 8-19.
```

In particular, it implements LZW as used by the GIF and PDF file
formats, which means variable\-width codes up to 12 bits and the first
two non\-literal codes are a clear code and an EOF code.  


The TIFF file format uses a similar but incompatible version of the LZW
algorithm. See the golang.org/x/image/tiff/lzw package for an
implementation.  

### Lzw function newReader


```haxe
function newReader(_r:stdgo._internal.io.Reader, _order:stdgo.compress.lzw.Order, _litWidth:Int):stdgo._internal.io.ReadCloser
```


```
NewReader creates a new io.ReadCloser.
        Reads from the returned io.ReadCloser read and decompress data from r.
        If r does not also implement io.ByteReader,
        the decompressor may read more data than necessary from r.
        It is the caller's responsibility to call Close on the ReadCloser when
        finished reading.
        The number of bits to use for literal codes, litWidth, must be in the
        range [2,8] and is typically 8. It must equal the litWidth
        used during compression.
```

It is guaranteed that the underlying type of the returned io.ReadCloser
is a \*Reader.  

[\(view code\)](<./Lzw.hx#L312>)


### Lzw function newWriter


```haxe
function newWriter(_w:stdgo._internal.io.Writer, _order:stdgo.compress.lzw.Order, _litWidth:Int):stdgo._internal.io.WriteCloser
```


```
NewWriter creates a new io.WriteCloser.
        Writes to the returned io.WriteCloser are compressed and written to w.
        It is the caller's responsibility to call Close on the WriteCloser when
        finished writing.
        The number of bits to use for literal codes, litWidth, must be in the
        range [2,8] and is typically 8. Input bytes must be less than 1<<litWidth.
```

It is guaranteed that the underlying type of the returned io.WriteCloser
is a \*Writer.  

[\(view code\)](<./Lzw.hx#L326>)


# Typedefs


```haxe
import stdgo.compress.lzw.*
```


## typedef Order


```haxe
typedef Order = stdgo._internal.compress.lzw.Order;
```


## typedef T\_writer


```haxe
typedef T_writer = stdgo._internal.compress.lzw.T_writer;
```


# Abstracts


## abstract Reader


[\(view file containing code\)](<./Lzw.hx>)


## abstract Writer


[\(view file containing code\)](<./Lzw.hx>)


