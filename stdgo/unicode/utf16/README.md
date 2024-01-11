# Module: `stdgo.unicode.utf16`

[(view library index)](../../stdgo.md)


# Overview



Package utf16 implements encoding and decoding of UTF\-16 sequences.  


# Index


- [Constants](<#constants>)

- [`function _decode(_s:stdgo.Slice<stdgo.GoUInt16>, _buf:stdgo.Slice<stdgo.GoRune>):stdgo.Slice<stdgo.GoRune>`](<#function-_decode>)

- [`function appendRune(_a:stdgo.Slice<stdgo.GoUInt16>, _r:stdgo.GoRune):stdgo.Slice<stdgo.GoUInt16>`](<#function-appendrune>)

- [`function decode(_s:stdgo.Slice<stdgo.GoUInt16>):stdgo.Slice<stdgo.GoRune>`](<#function-decode>)

- [`function decodeRune(_r1:stdgo.GoRune, _r2:stdgo.GoRune):stdgo.GoRune`](<#function-decoderune>)

- [`function encode(_s:stdgo.Slice<stdgo.GoRune>):stdgo.Slice<stdgo.GoUInt16>`](<#function-encode>)

- [`function encodeRune(_r:stdgo.GoRune):{
	_1:stdgo.GoRune;
	_0:stdgo.GoRune;
}`](<#function-encoderune>)

- [`function isSurrogate(_r:stdgo.GoRune):Bool`](<#function-issurrogate>)

# Constants


```haxe
import stdgo.unicode.utf16.Utf16
```


```haxe
final _maxRune:stdgo.GoInt32 = ((1114111 : stdgo.GoInt32))
```



Maximum valid Unicode code point.  

```haxe
final _replacementChar:stdgo.GoInt32 = ((65533 : stdgo.GoInt32))
```



Unicode replacement character  

```haxe
final _surr1:stdgo.GoUInt64 = ((55296i64 : stdgo.GoUInt64))
```



0xd800\-0xdc00 encodes the high 10 bits of a pair.
0xdc00\-0xe000 encodes the low 10 bits of a pair.
the value is those 20 bits plus 0x10000.  

```haxe
final _surr2:stdgo.GoUInt64 = ((56320i64 : stdgo.GoUInt64))
```


```haxe
final _surr3:stdgo.GoUInt64 = ((57344i64 : stdgo.GoUInt64))
```


```haxe
final _surrSelf:stdgo.GoUInt64 = ((65536i64 : stdgo.GoUInt64))
```


```haxe
final maxRune:stdgo.GoInt32 = ((1114111 : stdgo.GoInt32))
```



Extra names for constants so we can validate them during testing.  

```haxe
final replacementChar:stdgo.GoInt32 = ((65533 : stdgo.GoInt32))
```



Extra names for constants so we can validate them during testing.  

# Functions


```haxe
import stdgo.unicode.utf16.Utf16
```


## function \_decode


```haxe
function _decode(_s:stdgo.Slice<stdgo.GoUInt16>, _buf:stdgo.Slice<stdgo.GoRune>):stdgo.Slice<stdgo.GoRune>
```



decode appends to buf the Unicode code point sequence represented
by the UTF\-16 encoding s and return the extended buffer.  

[\(view code\)](<./Utf16.hx#L141>)


## function appendRune


```haxe
function appendRune(_a:stdgo.Slice<stdgo.GoUInt16>, _r:stdgo.GoRune):stdgo.Slice<stdgo.GoUInt16>
```



AppendRune appends the UTF\-16 encoding of the Unicode code point r
to the end of p and returns the extended buffer. If the rune is not
a valid Unicode code point, it appends the encoding of U\+FFFD.  

[\(view code\)](<./Utf16.hx#L120>)


## function decode


```haxe
function decode(_s:stdgo.Slice<stdgo.GoUInt16>):stdgo.Slice<stdgo.GoRune>
```



Decode returns the Unicode code point sequence represented
by the UTF\-16 encoding s.  

[\(view code\)](<./Utf16.hx#L133>)


## function decodeRune


```haxe
function decodeRune(_r1:stdgo.GoRune, _r2:stdgo.GoRune):stdgo.GoRune
```



DecodeRune returns the UTF\-16 decoding of a surrogate pair.
If the pair is not a valid UTF\-16 surrogate pair, DecodeRune returns
the Unicode replacement code point U\+FFFD.  

[\(view code\)](<./Utf16.hx#L68>)


## function encode


```haxe
function encode(_s:stdgo.Slice<stdgo.GoRune>):stdgo.Slice<stdgo.GoUInt16>
```



Encode returns the UTF\-16 encoding of the Unicode code point sequence s.  

[\(view code\)](<./Utf16.hx#L90>)


## function encodeRune


```haxe
function encodeRune(_r:stdgo.GoRune):{
	_1:stdgo.GoRune;
	_0:stdgo.GoRune;
}
```



EncodeRune returns the UTF\-16 surrogate pair r1, r2 for the given rune.
If the rune is not a valid Unicode code point or does not need encoding,
EncodeRune returns U\+FFFD, U\+FFFD.  

[\(view code\)](<./Utf16.hx#L79>)


## function isSurrogate


```haxe
function isSurrogate(_r:stdgo.GoRune):Bool
```



IsSurrogate reports whether the specified Unicode code point
can appear in a surrogate pair.  

[\(view code\)](<./Utf16.hx#L60>)


