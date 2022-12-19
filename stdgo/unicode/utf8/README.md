# Module: `stdgo.unicode.utf8`

[(view library index)](../../stdgo.md)


# Overview


Package utf8 implements functions and constants to support text encoded in��// UTF\-8. It includes functions to translate between runes and UTF\-8 byte sequences.��// See https://en.wikipedia.org/wiki/UTF-8 


<details><summary>hl tests passed</summary>
<p>

```
=== RUN   TestConstants
--- PASS: TestConstants (7.79628753662109e-05)
=== RUN   TestFullRune
--- PASS: TestFullRune (0.000236988067626953)
=== RUN   TestEncodeRune
--- PASS: TestEncodeRune (0.000358104705810547)
=== RUN   TestAppendRune
--- PASS: TestAppendRune (0.000365972518920898)
=== RUN   TestDecodeRune
--- PASS: TestDecodeRune (0.00174593925476074)
=== RUN   TestDecodeSurrogateRune
--- PASS: TestDecodeSurrogateRune (1.9073486328125e-05)
=== RUN   TestSequencing
--- PASS: TestSequencing (0.315031051635742)
=== RUN   TestRuntimeConversion
--- PASS: TestRuntimeConversion (0.00151205062866211)
=== RUN   TestDecodeInvalidSequence
--- PASS: TestDecodeInvalidSequence (0.000848054885864258)
=== RUN   TestNegativeRune
--- PASS: TestNegativeRune (2.59876251220703e-05)
=== RUN   TestRuneCount
--- PASS: TestRuneCount (2.88486480712891e-05)
=== RUN   TestRuneLen
--- PASS: TestRuneLen (9.05990600585938e-06)
=== RUN   TestValid
--- PASS: TestValid (0.00014185905456543)
=== RUN   TestValidRune
--- PASS: TestValidRune (9.05990600585938e-06)
```
</p>
</details>

<details><summary>interp tests passed</summary>
<p>

```
=== RUN   TestConstants
--- PASS: TestConstants (5.41210174560546875e-05)
=== RUN   TestFullRune
--- PASS: TestFullRune (0.00142002105712890625)
=== RUN   TestEncodeRune
--- PASS: TestEncodeRune (0.00143384933471679688)
=== RUN   TestAppendRune
--- PASS: TestAppendRune (0.00211191177368164062)
=== RUN   TestDecodeRune
--- PASS: TestDecodeRune (0.00557088851928710938)
=== RUN   TestDecodeSurrogateRune
--- PASS: TestDecodeSurrogateRune (8.89301300048828125e-05)
=== RUN   TestSequencing
--- PASS: TestSequencing (1.66038107872009277)
=== RUN   TestRuntimeConversion
--- PASS: TestRuntimeConversion (0.00904512405395507812)
=== RUN   TestDecodeInvalidSequence
--- PASS: TestDecodeInvalidSequence (0.0020599365234375)
=== RUN   TestNegativeRune
--- PASS: TestNegativeRune (0.00012683868408203125)
=== RUN   TestRuneCount
--- PASS: TestRuneCount (0.000170946121215820312)
=== RUN   TestRuneLen
--- PASS: TestRuneLen (2.88486480712890625e-05)
=== RUN   TestValid
--- PASS: TestValid (0.0009918212890625)
=== RUN   TestValidRune
--- PASS: TestValidRune (3.40938568115234375e-05)
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

- [`function _appendRuneNonASCII(_p:stdgo.Slice<stdgo.GoByte>, _r:stdgo.GoRune):stdgo.Slice<stdgo.GoByte>`](<#function-_appendrunenonascii>)

- [`function appendRune(_p:stdgo.Slice<stdgo.GoByte>, _r:stdgo.GoRune):stdgo.Slice<stdgo.GoByte>`](<#function-appendrune>)

- [`function decodeLastRune(_p:stdgo.Slice<stdgo.GoByte>):{_1:stdgo.GoInt, _0:stdgo.GoRune}`](<#function-decodelastrune>)

- [`function decodeLastRuneInString(_s:stdgo.GoString):{_1:stdgo.GoInt, _0:stdgo.GoRune}`](<#function-decodelastruneinstring>)

- [`function decodeRune(_p:stdgo.Slice<stdgo.GoByte>):{_1:stdgo.GoInt, _0:stdgo.GoRune}`](<#function-decoderune>)

- [`function decodeRuneInString(_s:stdgo.GoString):{_1:stdgo.GoInt, _0:stdgo.GoRune}`](<#function-decoderuneinstring>)

- [`function encodeRune(_p:stdgo.Slice<stdgo.GoByte>, _r:stdgo.GoRune):stdgo.GoInt`](<#function-encoderune>)

- [`function fullRune(_p:stdgo.Slice<stdgo.GoByte>):Bool`](<#function-fullrune>)

- [`function fullRuneInString(_s:stdgo.GoString):Bool`](<#function-fullruneinstring>)

- [`function runeCount(_p:stdgo.Slice<stdgo.GoByte>):stdgo.GoInt`](<#function-runecount>)

- [`function runeCountInString(_s:stdgo.GoString):stdgo.GoInt`](<#function-runecountinstring>)

- [`function runeLen(_r:stdgo.GoRune):stdgo.GoInt`](<#function-runelen>)

- [`function runeStart(_b:stdgo.GoByte):Bool`](<#function-runestart>)

- [`function valid(_p:stdgo.Slice<stdgo.GoByte>):Bool`](<#function-valid>)

- [`function validRune(_r:stdgo.GoRune):Bool`](<#function-validrune>)

- [`function validString(_s:stdgo.GoString):Bool`](<#function-validstring>)

# Examples


- [`exampleAppendRune`](<#exampleappendrune>)

- [`exampleDecodeLastRune`](<#exampledecodelastrune>)

- [`exampleDecodeLastRuneInString`](<#exampledecodelastruneinstring>)

- [`exampleDecodeRune`](<#exampledecoderune>)

- [`exampleDecodeRuneInString`](<#exampledecoderuneinstring>)

- [`exampleEncodeRune`](<#exampleencoderune>)

- [`exampleEncodeRune_outOfRange`](<#exampleencoderune_outofrange>)

- [`exampleFullRune`](<#examplefullrune>)

- [`exampleFullRuneInString`](<#examplefullruneinstring>)

- [`exampleRuneCount`](<#examplerunecount>)

- [`exampleRuneCountInString`](<#examplerunecountinstring>)

- [`exampleRuneLen`](<#examplerunelen>)

- [`exampleRuneStart`](<#examplerunestart>)

- [`exampleValid`](<#examplevalid>)

- [`exampleValidRune`](<#examplevalidrune>)

- [`exampleValidString`](<#examplevalidstring>)

# Constants


```haxe
import stdgo.unicode.utf8.Utf8
```


```haxe
final maxRune:stdgo.GoInt32 = ((1114111 : GoInt32))
```


Maximum valid Unicode code point.// Numbers fundamental to the encoding. 


```haxe
final runeError:stdgo.GoInt32 = ((65533 : GoInt32))
```


the "error" Rune or "Unicode replacement character"// Numbers fundamental to the encoding. 


```haxe
final runeSelf:stdgo.GoUInt64 = (("128" : GoUInt64))
```


characters below RuneSelf are represented as themselves in a single byte.// Numbers fundamental to the encoding. 


```haxe
final utfmax:stdgo.GoUInt64 = (("4" : GoUInt64))
```


maximum number of bytes of a UTF\-8 encoded Unicode character.// Numbers fundamental to the encoding. 


# Functions


```haxe
import stdgo.unicode.utf8.Utf8
```


## function \_appendRuneNonASCII


```haxe
function _appendRuneNonASCII(_p:stdgo.Slice<stdgo.GoByte>, _r:stdgo.GoRune):stdgo.Slice<stdgo.GoByte>
```


 


[\(view code\)](<./Utf8.hx#L524>)


## function appendRune


```haxe
function appendRune(_p:stdgo.Slice<stdgo.GoByte>, _r:stdgo.GoRune):stdgo.Slice<stdgo.GoByte>
```


AppendRune appends the UTF\-8 encoding of r to the end of p and��// returns the extended buffer. If the rune is out of range,��// it appends the encoding of RuneError. 


### exampleAppendRune


<details><summary></summary>
<p>


```haxe
function exampleAppendRune():Void {
	var _buf1 = stdgo.unicode.utf8.Utf8.appendRune((null : Slice<GoUInt8>), (65536 : GoInt32));
	var _buf2 = stdgo.unicode.utf8.Utf8.appendRune((Go.str("init") : Slice<GoByte>), (65536 : GoInt32));
	stdgo.fmt.Fmt.println((_buf1 : GoString));
	stdgo.fmt.Fmt.println((_buf2 : GoString));
}
```


</p>
</details>


[\(view code\)](<./Utf8.hx#L517>)


## function decodeLastRune


```haxe
function decodeLastRune(_p:stdgo.Slice<stdgo.GoByte>):{_1:stdgo.GoInt, _0:stdgo.GoRune}
```


DecodeLastRune unpacks the last UTF\-8 encoding in p and returns the rune and��// its width in bytes. If p is empty it returns \(RuneError, 0\). Otherwise, if��// the encoding is invalid, it returns \(RuneError, 1\). Both are impossible��// results for correct, non\-empty UTF\-8.��//��// An encoding is invalid if it is incorrect UTF\-8, encodes a rune that is��// out of range, or is not the shortest possible UTF\-8 encoding for the��// value. No other validation is performed. 


### exampleDecodeLastRune


<details><summary></summary>
<p>


```haxe
function exampleDecodeLastRune():Void {
	var _b = (Go.str("Hello, 世界") : Slice<GoByte>);
	while ((_b.length) > (0 : GoInt)) {
		var __tmp__ = stdgo.unicode.utf8.Utf8.decodeLastRune(_b),
			_r:GoInt32 = __tmp__._0,
			_size:GoInt = __tmp__._1;
		stdgo.fmt.Fmt.printf(Go.str("%c %v\n"), Go.toInterface(_r), Go.toInterface(_size));
		_b = (_b.__slice__(0, (_b.length) - _size) : Slice<GoUInt8>);
	};
}
```


</p>
</details>


[\(view code\)](<./Utf8.hx#L349>)


## function decodeLastRuneInString


```haxe
function decodeLastRuneInString(_s:stdgo.GoString):{_1:stdgo.GoInt, _0:stdgo.GoRune}
```


DecodeLastRuneInString is like DecodeLastRune but its input is a string. If��// s is empty it returns \(RuneError, 0\). Otherwise, if the encoding is invalid,��// it returns \(RuneError, 1\). Both are impossible results for correct,��// non\-empty UTF\-8.��//��// An encoding is invalid if it is incorrect UTF\-8, encodes a rune that is��// out of range, or is not the shortest possible UTF\-8 encoding for the��// value. No other validation is performed. 


### exampleDecodeLastRuneInString


<details><summary></summary>
<p>


```haxe
function exampleDecodeLastRuneInString():Void {
	var _str:GoString = Go.str("Hello, 世界");
	while ((_str.length) > (0 : GoInt)) {
		var __tmp__ = stdgo.unicode.utf8.Utf8.decodeLastRuneInString(_str),
			_r:GoInt32 = __tmp__._0,
			_size:GoInt = __tmp__._1;
		stdgo.fmt.Fmt.printf(Go.str("%c %v\n"), Go.toInterface(_r), Go.toInterface(_size));
		_str = (_str.__slice__(0, (_str.length) - _size) : GoString);
	};
}
```


</p>
</details>


[\(view code\)](<./Utf8.hx#L396>)


## function decodeRune


```haxe
function decodeRune(_p:stdgo.Slice<stdgo.GoByte>):{_1:stdgo.GoInt, _0:stdgo.GoRune}
```


DecodeRune unpacks the first UTF\-8 encoding in p and returns the rune and��// its width in bytes. If p is empty it returns \(RuneError, 0\). Otherwise, if��// the encoding is invalid, it returns \(RuneError, 1\). Both are impossible��// results for correct, non\-empty UTF\-8.��//��// An encoding is invalid if it is incorrect UTF\-8, encodes a rune that is��// out of range, or is not the shortest possible UTF\-8 encoding for the��// value. No other validation is performed. 


### exampleDecodeRune


<details><summary></summary>
<p>


```haxe
function exampleDecodeRune():Void {
	var _b = (Go.str("Hello, 世界") : Slice<GoByte>);
	while ((_b.length) > (0 : GoInt)) {
		var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRune(_b),
			_r:GoInt32 = __tmp__._0,
			_size:GoInt = __tmp__._1;
		stdgo.fmt.Fmt.printf(Go.str("%c %v\n"), Go.toInterface(_r), Go.toInterface(_size));
		_b = (_b.__slice__(_size) : Slice<GoUInt8>);
	};
}
```


</p>
</details>


[\(view code\)](<./Utf8.hx#L245>)


## function decodeRuneInString


```haxe
function decodeRuneInString(_s:stdgo.GoString):{_1:stdgo.GoInt, _0:stdgo.GoRune}
```


DecodeRuneInString is like DecodeRune but its input is a string. If s is��// empty it returns \(RuneError, 0\). Otherwise, if the encoding is invalid, it��// returns \(RuneError, 1\). Both are impossible results for correct, non\-empty��// UTF\-8.��//��// An encoding is invalid if it is incorrect UTF\-8, encodes a rune that is��// out of range, or is not the shortest possible UTF\-8 encoding for the��// value. No other validation is performed. 


### exampleDecodeRuneInString


<details><summary></summary>
<p>


```haxe
function exampleDecodeRuneInString():Void {
	var _str:GoString = Go.str("Hello, 世界");
	while ((_str.length) > (0 : GoInt)) {
		var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRuneInString(_str),
			_r:GoInt32 = __tmp__._0,
			_size:GoInt = __tmp__._1;
		stdgo.fmt.Fmt.printf(Go.str("%c %v\n"), Go.toInterface(_r), Go.toInterface(_size));
		_str = (_str.__slice__(_size) : GoString);
	};
}
```


</p>
</details>


[\(view code\)](<./Utf8.hx#L297>)


## function encodeRune


```haxe
function encodeRune(_p:stdgo.Slice<stdgo.GoByte>, _r:stdgo.GoRune):stdgo.GoInt
```


EncodeRune writes into p \(which must be large enough\) the UTF\-8 encoding of the rune.��// If the rune is out of range, it writes the encoding of RuneError.��// It returns the number of bytes written. 


### exampleEncodeRune


<details><summary></summary>
<p>


```haxe
function exampleEncodeRune():Void {
	var _r:GoInt32 = (19990 : GoInt32);
	var _buf = new Slice<GoUInt8>((3 : GoInt).toBasic(), 0, ...[for (i in 0...(3 : GoInt).toBasic()) (0 : GoUInt8)]);
	var _n:GoInt = stdgo.unicode.utf8.Utf8.encodeRune(_buf, _r);
	stdgo.fmt.Fmt.println(_buf);
	stdgo.fmt.Fmt.println(_n);
}
```


</p>
</details>


### exampleEncodeRune\_outOfRange


<details><summary></summary>
<p>


```haxe
function exampleEncodeRune_outOfRange():Void {
	var _runes = (new Slice<GoInt32>(0, 0, (-1 : GoInt32), (1114112 : GoInt32), (65533 : GoInt32)) : Slice<GoInt32>);
	for (_i => _c in _runes) {
		var _buf = new Slice<GoUInt8>((3 : GoInt).toBasic(), 0, ...[for (i in 0...(3 : GoInt).toBasic()) (0 : GoUInt8)]);
		var _size:GoInt = stdgo.unicode.utf8.Utf8.encodeRune(_buf, _c);
		stdgo.fmt.Fmt.printf(Go.str("%d: %d %[2]s %d\n"), Go.toInterface(_i), Go.toInterface(_buf), Go.toInterface(_size));
	};
}
```


</p>
</details>


[\(view code\)](<./Utf8.hx#L459>)


## function fullRune


```haxe
function fullRune(_p:stdgo.Slice<stdgo.GoByte>):Bool
```


FullRune reports whether the bytes in p begin with a full UTF\-8 encoding of a rune.��// An invalid encoding is considered a full Rune since it will convert as a width\-1 error rune. 


### exampleFullRune


<details><summary></summary>
<p>


```haxe
function exampleFullRune():Void {
	var _buf = (new Slice<GoUInt8>(0, 0, (228 : GoUInt8), (184 : GoUInt8), (150 : GoUInt8)) : Slice<GoUInt8>);
	stdgo.fmt.Fmt.println(stdgo.unicode.utf8.Utf8.fullRune(_buf));
	stdgo.fmt.Fmt.println(stdgo.unicode.utf8.Utf8.fullRune((_buf.__slice__(0, (2 : GoInt)) : Slice<GoUInt8>)));
}
```


</p>
</details>


[\(view code\)](<./Utf8.hx#L196>)


## function fullRuneInString


```haxe
function fullRuneInString(_s:stdgo.GoString):Bool
```


FullRuneInString is like FullRune but its input is a string. 


### exampleFullRuneInString


<details><summary></summary>
<p>


```haxe
function exampleFullRuneInString():Void {
	var _str:GoString = Go.str("世");
	stdgo.fmt.Fmt.println(stdgo.unicode.utf8.Utf8.fullRuneInString(_str));
	stdgo.fmt.Fmt.println(stdgo.unicode.utf8.Utf8.fullRuneInString((_str.__slice__(0, (2 : GoInt)) : GoString)));
}
```


</p>
</details>


[\(view code\)](<./Utf8.hx#L217>)


## function runeCount


```haxe
function runeCount(_p:stdgo.Slice<stdgo.GoByte>):stdgo.GoInt
```


RuneCount returns the number of runes in p. Erroneous and short��// encodings are treated as single runes of width 1 byte. 


### exampleRuneCount


<details><summary></summary>
<p>


```haxe
function exampleRuneCount():Void {
	var _buf = (Go.str("Hello, 世界") : Slice<GoByte>);
	stdgo.fmt.Fmt.println(Go.str("bytes ="), (_buf.length));
	stdgo.fmt.Fmt.println(Go.str("runes ="), stdgo.unicode.utf8.Utf8.runeCount(_buf));
}
```


</p>
</details>


[\(view code\)](<./Utf8.hx#L567>)


## function runeCountInString


```haxe
function runeCountInString(_s:stdgo.GoString):stdgo.GoInt
```


RuneCountInString is like RuneCount but its input is a string. 


### exampleRuneCountInString


<details><summary></summary>
<p>


```haxe
function exampleRuneCountInString():Void {
	var _str:GoString = Go.str("Hello, 世界");
	stdgo.fmt.Fmt.println(Go.str("bytes ="), (_str.length));
	stdgo.fmt.Fmt.println(Go.str("runes ="), stdgo.unicode.utf8.Utf8.runeCountInString(_str));
}
```


</p>
</details>


[\(view code\)](<./Utf8.hx#L615>)


## function runeLen


```haxe
function runeLen(_r:stdgo.GoRune):stdgo.GoInt
```


RuneLen returns the number of bytes required to encode the rune.��// It returns \-1 if the rune is not a valid value to encode in UTF\-8. 


### exampleRuneLen


<details><summary></summary>
<p>


```haxe
function exampleRuneLen():Void {
	stdgo.fmt.Fmt.println(stdgo.unicode.utf8.Utf8.runeLen((97 : GoInt32)));
	stdgo.fmt.Fmt.println(stdgo.unicode.utf8.Utf8.runeLen((30028 : GoInt32)));
}
```


</p>
</details>


[\(view code\)](<./Utf8.hx#L437>)


## function runeStart


```haxe
function runeStart(_b:stdgo.GoByte):Bool
```


RuneStart reports whether the byte could be the first byte of an encoded,��// possibly invalid rune. Second and subsequent bytes always have the top two��// bits set to 10. 


### exampleRuneStart


<details><summary></summary>
<p>


```haxe
function exampleRuneStart():Void {
	var _buf = (Go.str("a界") : Slice<GoByte>);
	stdgo.fmt.Fmt.println(stdgo.unicode.utf8.Utf8.runeStart(_buf[(0 : GoInt)]));
	stdgo.fmt.Fmt.println(stdgo.unicode.utf8.Utf8.runeStart(_buf[(1 : GoInt)]));
	stdgo.fmt.Fmt.println(stdgo.unicode.utf8.Utf8.runeStart(_buf[(2 : GoInt)]));
}
```


</p>
</details>


[\(view code\)](<./Utf8.hx#L664>)


## function valid


```haxe
function valid(_p:stdgo.Slice<stdgo.GoByte>):Bool
```


Valid reports whether p consists entirely of valid UTF\-8\-encoded runes. 


### exampleValid


<details><summary></summary>
<p>


```haxe
function exampleValid():Void {
	var _valid = (Go.str("Hello, 世界") : Slice<GoByte>);
	var _invalid = (new Slice<GoUInt8>(0, 0, (255 : GoUInt8), (254 : GoUInt8), (253 : GoUInt8)) : Slice<GoUInt8>);
	stdgo.fmt.Fmt.println(stdgo.unicode.utf8.Utf8.valid(_valid));
	stdgo.fmt.Fmt.println(stdgo.unicode.utf8.Utf8.valid(_invalid));
}
```


</p>
</details>


[\(view code\)](<./Utf8.hx#L671>)


## function validRune


```haxe
function validRune(_r:stdgo.GoRune):Bool
```


ValidRune reports whether r can be legally encoded as UTF\-8.��// Code points that are out of range or a surrogate half are illegal. 


### exampleValidRune


<details><summary></summary>
<p>


```haxe
function exampleValidRune():Void {
	var _valid:GoInt32 = (97 : GoInt32);
	var _invalid:GoInt32 = ((268435455 : GoInt32) : GoRune);
	stdgo.fmt.Fmt.println(stdgo.unicode.utf8.Utf8.validRune(_valid));
	stdgo.fmt.Fmt.println(stdgo.unicode.utf8.Utf8.validRune(_invalid));
}
```


</p>
</details>


[\(view code\)](<./Utf8.hx#L777>)


## function validString


```haxe
function validString(_s:stdgo.GoString):Bool
```


ValidString reports whether s consists entirely of valid UTF\-8\-encoded runes. 


### exampleValidString


<details><summary></summary>
<p>


```haxe
function exampleValidString():Void {
	var _valid:GoString = Go.str("Hello, 世界");
	var _invalid:GoString = ((new Slice<GoUInt8>(0, 0, (255 : GoUInt8), (254 : GoUInt8), (253 : GoUInt8)) : Slice<GoUInt8>) : GoString);
	stdgo.fmt.Fmt.println(stdgo.unicode.utf8.Utf8.validString(_valid));
	stdgo.fmt.Fmt.println(stdgo.unicode.utf8.Utf8.validString(_invalid));
}
```


</p>
</details>


[\(view code\)](<./Utf8.hx#L724>)


