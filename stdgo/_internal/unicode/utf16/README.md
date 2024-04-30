# Module: `stdgo._internal.unicode.utf16`

[(view library index)](../../../stdgo.md)


# Overview


stdgo/_internal/internal/Macro.macro.hx:54: non hxb types:,365

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
import stdgo._internal.unicode.utf16.Utf16
```


```haxe
final _maxRune:stdgo.GoInt32 = ((1114111 : stdgo.GoInt32))
```


```haxe
final _replacementChar:stdgo.GoInt32 = ((65533 : stdgo.GoInt32))
```


```haxe
final _surr1:stdgo.GoUInt64 = ((55296i64 : stdgo.GoUInt64))
```


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


```haxe
final replacementChar:stdgo.GoInt32 = ((65533 : stdgo.GoInt32))
```


# Functions


```haxe
import stdgo._internal.unicode.utf16.Utf16
```


## function \_decode


```haxe
function _decode(_s:stdgo.Slice<stdgo.GoUInt16>, _buf:stdgo.Slice<stdgo.GoRune>):stdgo.Slice<stdgo.GoRune>
```


[\(view code\)](<./Utf16.hx#L66>)


## function appendRune


```haxe
function appendRune(_a:stdgo.Slice<stdgo.GoUInt16>, _r:stdgo.GoRune):stdgo.Slice<stdgo.GoUInt16>
```


[\(view code\)](<./Utf16.hx#L53>)


## function decode


```haxe
function decode(_s:stdgo.Slice<stdgo.GoUInt16>):stdgo.Slice<stdgo.GoRune>
```


[\(view code\)](<./Utf16.hx#L62>)


## function decodeRune


```haxe
function decodeRune(_r1:stdgo.GoRune, _r2:stdgo.GoRune):stdgo.GoRune
```


[\(view code\)](<./Utf16.hx#L14>)


## function encode


```haxe
function encode(_s:stdgo.Slice<stdgo.GoRune>):stdgo.Slice<stdgo.GoUInt16>
```


[\(view code\)](<./Utf16.hx#L28>)


## function encodeRune


```haxe
function encodeRune(_r:stdgo.GoRune):{
	_1:stdgo.GoRune;
	_0:stdgo.GoRune;
}
```


[\(view code\)](<./Utf16.hx#L20>)


## function isSurrogate


```haxe
function isSurrogate(_r:stdgo.GoRune):Bool
```


[\(view code\)](<./Utf16.hx#L11>)


