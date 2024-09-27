# Module: `stdgo.encoding.base32`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [class Base32](<#class-base32>)

  - [`function newDecoder(_enc:stdgo.encoding.base32.Encoding, _r:stdgo._internal.io.Reader):stdgo._internal.io.Reader`](<#base32-function-newdecoder>)

  - [`function newEncoder(_enc:stdgo.encoding.base32.Encoding, _w:stdgo._internal.io.Writer):stdgo._internal.io.WriteCloser`](<#base32-function-newencoder>)

  - [`function newEncoding(_encoder:String):stdgo.encoding.base32.Encoding`](<#base32-function-newencoding>)

- [typedef CorruptInputError](<#typedef-corruptinputerror>)

- [abstract Encoding](<#abstract-encoding>)

- [abstract T\_encoder](<#abstract-t_encoder>)

- [abstract T\_decoder](<#abstract-t_decoder>)

- [abstract T\_newlineFilteringReader](<#abstract-t_newlinefilteringreader>)

# Constants


```haxe
import stdgo.encoding.base32.Base32
```


```haxe
final noPadding:Int = stdgo._internal.encoding.base32.Base32_noPadding.noPadding
```


```haxe
final stdPadding:Int = stdgo._internal.encoding.base32.Base32_stdPadding.stdPadding
```


# Variables


```haxe
import stdgo.encoding.base32.Base32
```


```haxe
var hexEncoding:stdgo.encoding.base32.Encoding
```


```haxe
var stdEncoding:stdgo.encoding.base32.Encoding
```


# Classes


```haxe
import stdgo.encoding.base32.*
```


## class Base32



Package base32 implements base32 encoding as specified by RFC 4648.  

### Base32 function newDecoder


```haxe
function newDecoder(_enc:stdgo.encoding.base32.Encoding, _r:stdgo._internal.io.Reader):stdgo._internal.io.Reader
```



NewDecoder constructs a new base32 stream decoder.  

[\(view code\)](<./Base32.hx#L247>)


### Base32 function newEncoder


```haxe
function newEncoder(_enc:stdgo.encoding.base32.Encoding, _w:stdgo._internal.io.Writer):stdgo._internal.io.WriteCloser
```


```
NewEncoder returns a new base32 stream encoder. Data written to
        the returned writer will be encoded using enc and then written to w.
        Base32 encodings operate in 5-byte blocks; when finished
        writing, the caller must Close the returned encoder to flush any
        partially written blocks.
```
[\(view code\)](<./Base32.hx#L241>)


### Base32 function newEncoding


```haxe
function newEncoding(_encoder:String):stdgo.encoding.base32.Encoding
```


```
NewEncoding returns a new Encoding defined by the given alphabet,
        which must be a 32-byte string. The alphabet is treated as sequence
        of byte values without any special treatment for multi-byte UTF-8.
```
[\(view code\)](<./Base32.hx#L231>)


# Typedefs


```haxe
import stdgo.encoding.base32.*
```


## typedef CorruptInputError


```haxe
typedef CorruptInputError = stdgo._internal.encoding.base32.CorruptInputError;
```


# Abstracts


## abstract Encoding


[\(view file containing code\)](<./Base32.hx>)


## abstract T\_encoder


[\(view file containing code\)](<./Base32.hx>)


## abstract T\_decoder


[\(view file containing code\)](<./Base32.hx>)


## abstract T\_newlineFilteringReader


[\(view file containing code\)](<./Base32.hx>)


