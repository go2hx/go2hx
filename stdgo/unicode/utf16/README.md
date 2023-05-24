# Module: `stdgo.unicode.utf16`

[(view library index)](../../stdgo.md)


# Overview



Package utf16 implements encoding and decoding of UTF\-16 sequences.  

<details><summary>hl tests passed</summary>
<p>

```
=== RUN  TestConstants
--- PASS: TestConstants (%!s(float64=3.0040740966796875e-05))

=== RUN  TestEncode
--- PASS: TestEncode (%!s(float64=0.0013489723205566406))

=== RUN  TestAppendRune
--- PASS: TestAppendRune (%!s(float64=0.0004911422729492188))

=== RUN  TestEncodeRune
--- PASS: TestEncodeRune (%!s(float64=2.193450927734375e-05))

=== RUN  TestDecode
--- PASS: TestDecode (%!s(float64=0.00025010108947753906))

=== RUN  TestDecodeRune
--- PASS: TestDecodeRune (%!s(float64=9.059906005859375e-06))

=== RUN  TestIsSurrogate
--- PASS: TestIsSurrogate (%!s(float64=1.1920928955078125e-05))

```
</p>
</details>

<details><summary>interp tests passed</summary>
<p>

```
=== RUN  TestConstants
--- PASS: TestConstants (%!s(float64=4.8160552978515625e-05))

=== RUN  TestEncode
--- PASS: TestEncode (%!s(float64=0.0006358623504638672))

=== RUN  TestAppendRune
--- PASS: TestAppendRune (%!s(float64=0.000553131103515625))

=== RUN  TestEncodeRune
--- PASS: TestEncodeRune (%!s(float64=8.106231689453125e-05))

=== RUN  TestDecode
--- PASS: TestDecode (%!s(float64=0.0004029273986816406))

=== RUN  TestDecodeRune
--- PASS: TestDecodeRune (%!s(float64=3.790855407714844e-05))

=== RUN  TestIsSurrogate
--- PASS: TestIsSurrogate (%!s(float64=3.814697265625e-05))

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


## function appendRune


```haxe
function appendRune(_a:stdgo.Slice<stdgo.GoUInt16>, _r:stdgo.GoRune):stdgo.Slice<stdgo.GoUInt16>
```



AppendRune appends the UTF\-16 encoding of the Unicode code point r
to the end of p and returns the extended buffer. If the rune is not
a valid Unicode code point, it appends the encoding of U\+FFFD.  

[\(view code\)](<./Utf16.hx#L129>)


## function decode


```haxe
function decode(_s:stdgo.Slice<stdgo.GoUInt16>):stdgo.Slice<stdgo.GoRune>
```



Decode returns the Unicode code point sequence represented
by the UTF\-16 encoding s.  

[\(view code\)](<./Utf16.hx#L142>)


## function decodeRune


```haxe
function decodeRune(_r1:stdgo.GoRune, _r2:stdgo.GoRune):stdgo.GoRune
```



DecodeRune returns the UTF\-16 decoding of a surrogate pair.
If the pair is not a valid UTF\-16 surrogate pair, DecodeRune returns
the Unicode replacement code point U\+FFFD.  

[\(view code\)](<./Utf16.hx#L77>)


## function encode


```haxe
function encode(_s:stdgo.Slice<stdgo.GoRune>):stdgo.Slice<stdgo.GoUInt16>
```



Encode returns the UTF\-16 encoding of the Unicode code point sequence s.  

[\(view code\)](<./Utf16.hx#L99>)


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

[\(view code\)](<./Utf16.hx#L88>)


## function isSurrogate


```haxe
function isSurrogate(_r:stdgo.GoRune):Bool
```



IsSurrogate reports whether the specified Unicode code point
can appear in a surrogate pair.  

[\(view code\)](<./Utf16.hx#L69>)


