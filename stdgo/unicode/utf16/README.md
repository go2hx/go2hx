# Module: `stdgo.unicode.utf16`

[(view library index)](../../stdgo.md)


# Overview


Package utf16 implements encoding and decoding of UTF\-16 sequences. 


<details><summary>hl tests passed</summary>
<p>

```
=== RUN   TestConstants
--- PASS: TestConstants (4.57763671875e-05)
=== RUN   TestEncode
--- PASS: TestEncode (0.000270843505859375)
=== RUN   TestEncodeRune
--- PASS: TestEncodeRune (3.09944152832031e-05)
=== RUN   TestDecode
--- PASS: TestDecode (0.000542879104614258)
=== RUN   TestDecodeRune
--- PASS: TestDecodeRune (1.69277191162109e-05)
=== RUN   TestIsSurrogate
--- PASS: TestIsSurrogate (1.28746032714844e-05)
```
</p>
</details>

<details><summary>interp tests passed</summary>
<p>

```
=== RUN   TestConstants
--- PASS: TestConstants (3.88622283935546875e-05)
=== RUN   TestEncode
--- PASS: TestEncode (0.000733852386474609375)
=== RUN   TestEncodeRune
--- PASS: TestEncodeRune (0.000173807144165039062)
=== RUN   TestDecode
--- PASS: TestDecode (0.000416994094848632812)
=== RUN   TestDecodeRune
--- PASS: TestDecodeRune (5.41210174560546875e-05)
=== RUN   TestIsSurrogate
--- PASS: TestIsSurrogate (2.09808349609375e-05)
```
</p>
</details>

<details><summary>jvm tests failed</summary>
<p>

```
IO.Overflow("write_ui16")
```
</p>
</details>


# Index


- [Constants](<#constants>)

- [`function decode(_s:stdgo.Slice<stdgo.GoUInt16>):stdgo.Slice<stdgo.GoRune>`](<#function-decode>)

- [`function decodeRune(_r1:stdgo.GoRune, _r2:stdgo.GoRune):stdgo.GoRune`](<#function-decoderune>)

- [`function encode(_s:stdgo.Slice<stdgo.GoRune>):stdgo.Slice<stdgo.GoUInt16>`](<#function-encode>)

- [`function encodeRune(_r:stdgo.GoRune):{_1:stdgo.GoRune, _0:stdgo.GoRune}`](<#function-encoderune>)

- [`function isSurrogate(_r:stdgo.GoRune):Bool`](<#function-issurrogate>)

# Constants


```haxe
import stdgo.unicode.utf16.Utf16
```


```haxe
final maxRune:stdgo.GoInt32 = ((1114111 : GoInt32))
```


Extra names for constants so we can validate them during testing. 


```haxe
final replacementChar:stdgo.GoInt32 = ((65533 : GoInt32))
```


Extra names for constants so we can validate them during testing. 


# Functions


```haxe
import stdgo.unicode.utf16.Utf16
```


## function decode


```haxe
function decode(_s:stdgo.Slice<stdgo.GoUInt16>):stdgo.Slice<stdgo.GoRune>
```


Decode returns the Unicode code point sequence represented by the UTF\-16 encoding s. 


[\(view code\)](<./Utf16.hx#L118>)


## function decodeRune


```haxe
function decodeRune(_r1:stdgo.GoRune, _r2:stdgo.GoRune):stdgo.GoRune
```


DecodeRune returns the UTF\-16 decoding of a surrogate pair. If the pair is not a valid UTF\-16 surrogate pair, DecodeRune returns the Unicode replacement code point U\+FFFD. 


[\(view code\)](<./Utf16.hx#L62>)


## function encode


```haxe
function encode(_s:stdgo.Slice<stdgo.GoRune>):stdgo.Slice<stdgo.GoUInt16>
```


Encode returns the UTF\-16 encoding of the Unicode code point sequence s. 


[\(view code\)](<./Utf16.hx#L86>)


## function encodeRune


```haxe
function encodeRune(_r:stdgo.GoRune):{_1:stdgo.GoRune, _0:stdgo.GoRune}
```


EncodeRune returns the UTF\-16 surrogate pair r1, r2 for the given rune. If the rune is not a valid Unicode code point or does not need encoding, EncodeRune returns U\+FFFD, U\+FFFD. 


[\(view code\)](<./Utf16.hx#L74>)


## function isSurrogate


```haxe
function isSurrogate(_r:stdgo.GoRune):Bool
```


IsSurrogate reports whether the specified Unicode code point can appear in a surrogate pair. 


[\(view code\)](<./Utf16.hx#L53>)

