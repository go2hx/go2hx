# Module: `stdgo.encoding.ascii85`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [class Ascii85](<#class-ascii85>)

  - [`function decode(_dst:Array<UInt>, _src:Array<UInt>, _flush:Bool):stdgo.Tuple3<Int, Int, stdgo.Error>`](<#ascii85-function-decode>)

  - [`function encode(_dst:Array<UInt>, _src:Array<UInt>):Int`](<#ascii85-function-encode>)

  - [`function maxEncodedLen(_n:Int):Int`](<#ascii85-function-maxencodedlen>)

  - [`function newDecoder(_r:stdgo._internal.io.Reader):stdgo._internal.io.Reader`](<#ascii85-function-newdecoder>)

  - [`function newEncoder(_w:stdgo._internal.io.Writer):stdgo._internal.io.WriteCloser`](<#ascii85-function-newencoder>)

- [typedef CorruptInputError](<#typedef-corruptinputerror>)

- [abstract T\_encoder](<#abstract-t_encoder>)

- [abstract T\_decoder](<#abstract-t_decoder>)

# Classes


```haxe
import
```


## class Ascii85


```
Package ascii85 implements the ascii85 data encoding
    as used in the btoa tool and Adobe's PostScript and PDF document formats.
```
### Ascii85 function decode


```haxe
function decode(_dst:Array<UInt>, _src:Array<UInt>, _flush:Bool):stdgo.Tuple3<Int, Int, stdgo.Error>
```


```
Decode decodes src into dst, returning both the number
        of bytes written to dst and the number consumed from src.
        If src contains invalid ascii85 data, Decode will return the
        number of bytes successfully written and a CorruptInputError.
        Decode ignores space and control characters in src.
        Often, ascii85-encoded data is wrapped in <~ and ~> symbols.
        Decode expects these to have been stripped by the caller.
```

If flush is true, Decode assumes that src represents the
end of the input stream and processes it completely rather
than wait for the completion of another 32\-bit block.  


NewDecoder wraps an io.Reader interface around Decode.  

[\(view code\)](<./Ascii85.hx#L163>)


### Ascii85 function encode


```haxe
function encode(_dst:Array<UInt>, _src:Array<UInt>):Int
```


```
Encode encodes src into at most MaxEncodedLen(len(src))
        bytes of dst, returning the actual number of bytes written.
```

The encoding handles 4\-byte chunks, using a special encoding
for the last fragment, so Encode is not appropriate for use on
individual blocks of a large data stream. Use NewEncoder\(\) instead.  


Often, ascii85\-encoded data is wrapped in \<\~ and \~\> symbols.
Encode does not add these.  

[\(view code\)](<./Ascii85.hx#L127>)


### Ascii85 function maxEncodedLen


```haxe
function maxEncodedLen(_n:Int):Int
```



MaxEncodedLen returns the maximum length of an encoding of n source bytes.  

[\(view code\)](<./Ascii85.hx#L135>)


### Ascii85 function newDecoder


```haxe
function newDecoder(_r:stdgo._internal.io.Reader):stdgo._internal.io.Reader
```



NewDecoder constructs a new ascii85 stream decoder.  

[\(view code\)](<./Ascii85.hx#L174>)


### Ascii85 function newEncoder


```haxe
function newEncoder(_w:stdgo._internal.io.Writer):stdgo._internal.io.WriteCloser
```


```
NewEncoder returns a new ascii85 stream encoder. Data written to
        the returned writer will be encoded and then written to w.
        Ascii85 encodings operate in 32-bit blocks; when finished
        writing, the caller must Close the returned encoder to flush any
        trailing partial block.
```
[\(view code\)](<./Ascii85.hx#L145>)


# Typedefs


```haxe
import
```


## typedef CorruptInputError


```haxe
typedef CorruptInputError = stdgo._internal.encoding.ascii85.CorruptInputError;
```


# Abstracts


## abstract T\_encoder


[\(view file containing code\)](<./Ascii85.hx>)


## abstract T\_decoder


[\(view file containing code\)](<./Ascii85.hx>)


