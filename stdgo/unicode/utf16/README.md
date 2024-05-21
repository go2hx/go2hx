# Module: `stdgo.unicode.utf16`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [class Utf16](<#class-utf16>)

  - [`function appendRune(_a:Array<UInt>, _r:Int):Array<UInt>`](<#utf16-function-appendrune>)

  - [`function decode(_s:Array<UInt>):Array<Int>`](<#utf16-function-decode>)

  - [`function decodeRune(_r1:Int, _r2:Int):Int`](<#utf16-function-decoderune>)

  - [`function encode(_s:Array<Int>):Array<UInt>`](<#utf16-function-encode>)

  - [`function encodeRune(_r:Int):stdgo.Tuple<Int, Int>`](<#utf16-function-encoderune>)

  - [`function isSurrogate(_r:Int):Bool`](<#utf16-function-issurrogate>)

# Constants


```haxe
import stdgo.unicode.utf16.Utf16
```


```haxe
final maxRune:Int = stdgo._internal.unicode.utf16.Utf16.maxRune
```


```haxe
final replacementChar:Int = stdgo._internal.unicode.utf16.Utf16.replacementChar
```


# Classes


```haxe
import stdgo.unicode.utf16.*
```


## class Utf16



Package utf16 implements encoding and decoding of UTF\-16 sequences.  

### Utf16 function appendRune


```haxe
function appendRune(_a:Array<UInt>, _r:Int):Array<UInt>
```


```
AppendRune appends the UTF-16 encoding of the Unicode code point r
        to the end of p and returns the extended buffer. If the rune is not
        a valid Unicode code point, it appends the encoding of U+FFFD.
```
[\(view code\)](<./Utf16.hx#L46>)


### Utf16 function decode


```haxe
function decode(_s:Array<UInt>):Array<Int>
```


```
Decode returns the Unicode code point sequence represented
        by the UTF-16 encoding s.
```
[\(view code\)](<./Utf16.hx#L54>)


### Utf16 function decodeRune


```haxe
function decodeRune(_r1:Int, _r2:Int):Int
```


```
DecodeRune returns the UTF-16 decoding of a surrogate pair.
        If the pair is not a valid UTF-16 surrogate pair, DecodeRune returns
        the Unicode replacement code point U+FFFD.
```
[\(view code\)](<./Utf16.hx#L20>)


### Utf16 function encode


```haxe
function encode(_s:Array<Int>):Array<UInt>
```



Encode returns the UTF\-16 encoding of the Unicode code point sequence s.  

[\(view code\)](<./Utf16.hx#L37>)


### Utf16 function encodeRune


```haxe
function encodeRune(_r:Int):stdgo.Tuple<Int, Int>
```


```
EncodeRune returns the UTF-16 surrogate pair r1, r2 for the given rune.
        If the rune is not a valid Unicode code point or does not need encoding,
        EncodeRune returns U+FFFD, U+FFFD.
```
[\(view code\)](<./Utf16.hx#L28>)


### Utf16 function isSurrogate


```haxe
function isSurrogate(_r:Int):Bool
```


```
IsSurrogate reports whether the specified Unicode code point
        can appear in a surrogate pair.
```
[\(view code\)](<./Utf16.hx#L12>)


