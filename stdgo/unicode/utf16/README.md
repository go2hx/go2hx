# Module: `stdgo.unicode.utf16`

[(view library index)](../../stdgo.md)


# Overview



Package utf16 implements encoding and decoding of UTF\-16 sequences.  

# Index


- [Constants](<#constants>)

- [`function appendRune(a:Array<UInt>, r:Int):Array<UInt>`](<#function-appendrune>)

- [`function decode(s:Array<UInt>):Array<Int>`](<#function-decode>)

- [`function decodeRune(r1:Int, r2:Int):Int`](<#function-decoderune>)

- [`function encode(s:Array<Int>):Array<UInt>`](<#function-encode>)

- [`function encodeRune(r:Int):stdgo.Tuple<Int, Int>`](<#function-encoderune>)

- [`function isSurrogate(r:Int):Bool`](<#function-issurrogate>)

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


# Functions


```haxe
import stdgo.unicode.utf16.Utf16
```


## function appendRune


```haxe
function appendRune(a:Array<UInt>, r:Int):Array<UInt>
```


```
AppendRune appends the UTF-16 encoding of the Unicode code point r
    to the end of p and returns the extended buffer. If the rune is not
    a valid Unicode code point, it appends the encoding of U+FFFD.
```
[\(view code\)](<./Utf16.hx#L34>)


## function decode


```haxe
function decode(s:Array<UInt>):Array<Int>
```


```
Decode returns the Unicode code point sequence represented
    by the UTF-16 encoding s.
```
[\(view code\)](<./Utf16.hx#L39>)


## function decodeRune


```haxe
function decodeRune(r1:Int, r2:Int):Int
```


```
DecodeRune returns the UTF-16 decoding of a surrogate pair.
    If the pair is not a valid UTF-16 surrogate pair, DecodeRune returns
    the Unicode replacement code point U+FFFD.
```
[\(view code\)](<./Utf16.hx#L18>)


## function encode


```haxe
function encode(s:Array<Int>):Array<UInt>
```



Encode returns the UTF\-16 encoding of the Unicode code point sequence s.  

[\(view code\)](<./Utf16.hx#L28>)


## function encodeRune


```haxe
function encodeRune(r:Int):stdgo.Tuple<Int, Int>
```


```
EncodeRune returns the UTF-16 surrogate pair r1, r2 for the given rune.
    If the rune is not a valid Unicode code point or does not need encoding,
    EncodeRune returns U+FFFD, U+FFFD.
```
[\(view code\)](<./Utf16.hx#L24>)


## function isSurrogate


```haxe
function isSurrogate(r:Int):Bool
```


```
IsSurrogate reports whether the specified Unicode code point
    can appear in a surrogate pair.
```
[\(view code\)](<./Utf16.hx#L12>)


