# Module: `stdgo.unicode.utf16`

[(view library index)](../../stdgo.md)


# Overview


stdgo/_internal/internal/Macro.macro.hx:43: non hxb types:,365

# Index


- [Variables](<#variables>)

- [`function _decode(_s:stdgo.Slice<stdgo.GoUInt16>, _buf:stdgo.Slice<stdgo.GoRune>):Void`](<#function-_decode>)

- [`function appendRune(_a:stdgo.Slice<stdgo.GoUInt16>, _r:stdgo.GoRune):Void`](<#function-appendrune>)

- [`function decode(_s:stdgo.Slice<stdgo.GoUInt16>):Void`](<#function-decode>)

- [`function decodeRune(_r1:stdgo.GoRune, _r2:stdgo.GoRune):Void`](<#function-decoderune>)

- [`function encode(_s:stdgo.Slice<stdgo.GoRune>):Void`](<#function-encode>)

- [`function encodeRune(_r:stdgo.GoRune):Void`](<#function-encoderune>)

- [`function isSurrogate(_r:stdgo.GoRune):Void`](<#function-issurrogate>)

# Variables


```haxe
import stdgo.unicode.utf16.Utf16
```


```haxe
var __go2hxdoc__package:Dynamic
```


```haxe
var _maxRune:Dynamic
```


```haxe
var _replacementChar:Dynamic
```


```haxe
var _surr1:Dynamic
```


```haxe
var _surr2:Dynamic
```


```haxe
var _surr3:Dynamic
```


```haxe
var _surrSelf:Dynamic
```


```haxe
var maxRune:Dynamic
```


```haxe
var replacementChar:Dynamic
```


# Functions


```haxe
import stdgo.unicode.utf16.Utf16
```


## function \_decode


```haxe
function _decode(_s:stdgo.Slice<stdgo.GoUInt16>, _buf:stdgo.Slice<stdgo.GoRune>):Void
```


[\(view code\)](<./Utf16.hx#L17>)


## function appendRune


```haxe
function appendRune(_a:stdgo.Slice<stdgo.GoUInt16>, _r:stdgo.GoRune):Void
```


[\(view code\)](<./Utf16.hx#L15>)


## function decode


```haxe
function decode(_s:stdgo.Slice<stdgo.GoUInt16>):Void
```


[\(view code\)](<./Utf16.hx#L16>)


## function decodeRune


```haxe
function decodeRune(_r1:stdgo.GoRune, _r2:stdgo.GoRune):Void
```


[\(view code\)](<./Utf16.hx#L12>)


## function encode


```haxe
function encode(_s:stdgo.Slice<stdgo.GoRune>):Void
```


[\(view code\)](<./Utf16.hx#L14>)


## function encodeRune


```haxe
function encodeRune(_r:stdgo.GoRune):Void
```


[\(view code\)](<./Utf16.hx#L13>)


## function isSurrogate


```haxe
function isSurrogate(_r:stdgo.GoRune):Void
```


[\(view code\)](<./Utf16.hx#L11>)


