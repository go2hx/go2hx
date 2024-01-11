# Module: `stdgo.unicode.utf8`

[(view library index)](../../stdgo.md)


# Overview



Package utf8 implements functions and constants to support text encoded in
UTF\-8. It includes functions to translate between runes and UTF\-8 byte sequences.
See https://en.wikipedia.org/wiki/UTF-8  


# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function _appendRuneNonASCII(_p:stdgo.Slice<stdgo.GoByte>, _r:stdgo.GoRune):stdgo.Slice<stdgo.GoByte>`](<#function-_appendrunenonascii>)

- [`function appendRune(_p:stdgo.Slice<stdgo.GoByte>, _r:stdgo.GoRune):stdgo.Slice<stdgo.GoByte>`](<#function-appendrune>)

- [`function decodeLastRune(_p:stdgo.Slice<stdgo.GoByte>):{
	_1:stdgo.GoInt;
	_0:stdgo.GoRune;
}`](<#function-decodelastrune>)

- [`function decodeLastRuneInString(_s:stdgo.GoString):{
	_1:stdgo.GoInt;
	_0:stdgo.GoRune;
}`](<#function-decodelastruneinstring>)

- [`function decodeRune(_p:stdgo.Slice<stdgo.GoByte>):{
	_1:stdgo.GoInt;
	_0:stdgo.GoRune;
}`](<#function-decoderune>)

- [`function decodeRuneInString(_s:stdgo.GoString):{
	_1:stdgo.GoInt;
	_0:stdgo.GoRune;
}`](<#function-decoderuneinstring>)

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
final _as:stdgo.GoUInt64 = ((240i64 : stdgo.GoUInt64))
```



ASCII: size 1  

```haxe
final _hicb:stdgo.GoUInt64 = ((191i64 : stdgo.GoUInt64))
```


```haxe
final _locb:stdgo.GoUInt64 = ((128i64 : stdgo.GoUInt64))
```



The default lowest and highest continuation byte.  

```haxe
final _mask2:stdgo.GoUInt64 = ((31i64 : stdgo.GoUInt64))
```


```haxe
final _mask3:stdgo.GoUInt64 = ((15i64 : stdgo.GoUInt64))
```


```haxe
final _mask4:stdgo.GoUInt64 = ((7i64 : stdgo.GoUInt64))
```


```haxe
final _maskx:stdgo.GoUInt64 = ((63i64 : stdgo.GoUInt64))
```


```haxe
final _rune1Max:stdgo.GoUInt64 = ((127i64 : stdgo.GoUInt64))
```


```haxe
final _rune2Max:stdgo.GoUInt64 = ((2047i64 : stdgo.GoUInt64))
```


```haxe
final _rune3Max:stdgo.GoUInt64 = ((65535i64 : stdgo.GoUInt64))
```


```haxe
final _s1:stdgo.GoUInt64 = ((2i64 : stdgo.GoUInt64))
```



accept 0, size 2  

```haxe
final _s2:stdgo.GoUInt64 = ((19i64 : stdgo.GoUInt64))
```



accept 1, size 3  

```haxe
final _s3:stdgo.GoUInt64 = ((3i64 : stdgo.GoUInt64))
```



accept 0, size 3  

```haxe
final _s4:stdgo.GoUInt64 = ((35i64 : stdgo.GoUInt64))
```



accept 2, size 3  

```haxe
final _s5:stdgo.GoUInt64 = ((52i64 : stdgo.GoUInt64))
```



accept 3, size 4  

```haxe
final _s6:stdgo.GoUInt64 = ((4i64 : stdgo.GoUInt64))
```



accept 0, size 4  

```haxe
final _s7:stdgo.GoUInt64 = ((68i64 : stdgo.GoUInt64))
```



accept 4, size 4  

```haxe
final _surrogateMax:stdgo.GoUInt64 = ((57343i64 : stdgo.GoUInt64))
```



Code points in the surrogate range are not valid for UTF\-8.  

```haxe
final _surrogateMin:stdgo.GoUInt64 = ((55296i64 : stdgo.GoUInt64))
```



Code points in the surrogate range are not valid for UTF\-8.  

```haxe
final _t1:stdgo.GoUInt64 = ((0i64 : stdgo.GoUInt64))
```


```haxe
final _t2:stdgo.GoUInt64 = ((192i64 : stdgo.GoUInt64))
```


```haxe
final _t3:stdgo.GoUInt64 = ((224i64 : stdgo.GoUInt64))
```


```haxe
final _t4:stdgo.GoUInt64 = ((240i64 : stdgo.GoUInt64))
```


```haxe
final _t5:stdgo.GoUInt64 = ((248i64 : stdgo.GoUInt64))
```


```haxe
final _tx:stdgo.GoUInt64 = ((128i64 : stdgo.GoUInt64))
```


```haxe
final _xx:stdgo.GoUInt64 = ((241i64 : stdgo.GoUInt64))
```



These names of these constants are chosen to give nice alignment in the
table below. The first nibble is an index into acceptRanges or F for
special one\-byte cases. The second nibble is the Rune length or the
Status for the special one\-byte case.  


invalid: size 1  

```haxe
final maxRune:stdgo.GoInt32 = ((1114111 : stdgo.GoInt32))
```



Numbers fundamental to the encoding.  


Maximum valid Unicode code point.  

```haxe
final runeError:stdgo.GoInt32 = ((65533 : stdgo.GoInt32))
```



Numbers fundamental to the encoding.  


the "error" Rune or "Unicode replacement character"  

```haxe
final runeSelf:stdgo.GoUInt64 = ((128i64 : stdgo.GoUInt64))
```



Numbers fundamental to the encoding.  


characters below RuneSelf are represented as themselves in a single byte.  

```haxe
final utfmax:stdgo.GoUInt64 = ((4i64 : stdgo.GoUInt64))
```



Numbers fundamental to the encoding.  


maximum number of bytes of a UTF\-8 encoded Unicode character.  

# Variables


```haxe
import stdgo.unicode.utf8.Utf8
```


```haxe
var _acceptRanges:stdgo.GoArray<stdgo.unicode.utf8.T_acceptRange>
```



acceptRanges has size 16 to avoid bounds checks in the code that uses it.  

```haxe
var _first:stdgo.GoArray<stdgo.GoUInt8>
```



first is information about the first byte in a UTF\-8 sequence.  

# Functions


```haxe
import stdgo.unicode.utf8.Utf8
```


## function \_appendRuneNonASCII


```haxe
function _appendRuneNonASCII(_p:stdgo.Slice<stdgo.GoByte>, _r:stdgo.GoRune):stdgo.Slice<stdgo.GoByte>
```


[\(view code\)](<./Utf8.hx#L799>)


## function appendRune


```haxe
function appendRune(_p:stdgo.Slice<stdgo.GoByte>, _r:stdgo.GoRune):stdgo.Slice<stdgo.GoByte>
```



AppendRune appends the UTF\-8 encoding of r to the end of p and
returns the extended buffer. If the rune is out of range,
it appends the encoding of RuneError.  

### exampleAppendRune


<details><summary></summary>
<p>


```haxe
function exampleAppendRune():Void {
        var _buf1 = stdgo.unicode.utf8.Utf8.appendRune((null : stdgo.Slice<stdgo.GoUInt8>), (65536 : stdgo.GoInt32));
        var _buf2 = stdgo.unicode.utf8.Utf8.appendRune((("init" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (65536 : stdgo.GoInt32));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface((_buf1 : stdgo.GoString)));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface((_buf2 : stdgo.GoString)));
    }
```


</p>
</details>


[\(view code\)](<./Utf8.hx#L793>)


## function decodeLastRune


```haxe
function decodeLastRune(_p:stdgo.Slice<stdgo.GoByte>):{
	_1:stdgo.GoInt;
	_0:stdgo.GoRune;
}
```



DecodeLastRune unpacks the last UTF\-8 encoding in p and returns the rune and
its width in bytes. If p is empty it returns \(RuneError, 0\). Otherwise, if
the encoding is invalid, it returns \(RuneError, 1\). Both are impossible
results for correct, non\-empty UTF\-8.  


An encoding is invalid if it is incorrect UTF\-8, encodes a rune that is
out of range, or is not the shortest possible UTF\-8 encoding for the
value. No other validation is performed.  

### exampleDecodeLastRune


<details><summary></summary>
<p>


```haxe
function exampleDecodeLastRune():Void {
        var _b = (("Hello, 世界" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        while ((_b.length) > (0 : stdgo.GoInt)) {
            var __tmp__ = stdgo.unicode.utf8.Utf8.decodeLastRune(_b), _r:stdgo.GoInt32 = __tmp__._0, _size:stdgo.GoInt = __tmp__._1;
            stdgo.fmt.Fmt.printf(("%c %v\n" : stdgo.GoString), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_size));
            _b = (_b.__slice__(0, (_b.length) - _size) : stdgo.Slice<stdgo.GoUInt8>);
        };
    }
```


</p>
</details>


[\(view code\)](<./Utf8.hx#L630>)


## function decodeLastRuneInString


```haxe
function decodeLastRuneInString(_s:stdgo.GoString):{
	_1:stdgo.GoInt;
	_0:stdgo.GoRune;
}
```



DecodeLastRuneInString is like DecodeLastRune but its input is a string. If
s is empty it returns \(RuneError, 0\). Otherwise, if the encoding is invalid,
it returns \(RuneError, 1\). Both are impossible results for correct,
non\-empty UTF\-8.  


An encoding is invalid if it is incorrect UTF\-8, encodes a rune that is
out of range, or is not the shortest possible UTF\-8 encoding for the
value. No other validation is performed.  

### exampleDecodeLastRuneInString


<details><summary></summary>
<p>


```haxe
function exampleDecodeLastRuneInString():Void {
        var _str:stdgo.GoString = ("Hello, 世界" : stdgo.GoString);
        while ((_str.length) > (0 : stdgo.GoInt)) {
            var __tmp__ = stdgo.unicode.utf8.Utf8.decodeLastRuneInString(_str?.__copy__()), _r:stdgo.GoInt32 = __tmp__._0, _size:stdgo.GoInt = __tmp__._1;
            stdgo.fmt.Fmt.printf(("%c %v\n" : stdgo.GoString), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_size));
            _str = (_str.__slice__(0, (_str.length) - _size) : stdgo.GoString)?.__copy__();
        };
    }
```


</p>
</details>


[\(view code\)](<./Utf8.hx#L676>)


## function decodeRune


```haxe
function decodeRune(_p:stdgo.Slice<stdgo.GoByte>):{
	_1:stdgo.GoInt;
	_0:stdgo.GoRune;
}
```



DecodeRune unpacks the first UTF\-8 encoding in p and returns the rune and
its width in bytes. If p is empty it returns \(RuneError, 0\). Otherwise, if
the encoding is invalid, it returns \(RuneError, 1\). Both are impossible
results for correct, non\-empty UTF\-8.  


An encoding is invalid if it is incorrect UTF\-8, encodes a rune that is
out of range, or is not the shortest possible UTF\-8 encoding for the
value. No other validation is performed.  

### exampleDecodeRune


<details><summary></summary>
<p>


```haxe
function exampleDecodeRune():Void {
        var _b = (("Hello, 世界" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        while ((_b.length) > (0 : stdgo.GoInt)) {
            var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRune(_b), _r:stdgo.GoInt32 = __tmp__._0, _size:stdgo.GoInt = __tmp__._1;
            stdgo.fmt.Fmt.printf(("%c %v\n" : stdgo.GoString), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_size));
            _b = (_b.__slice__(_size) : stdgo.Slice<stdgo.GoUInt8>);
        };
    }
```


</p>
</details>


[\(view code\)](<./Utf8.hx#L536>)


## function decodeRuneInString


```haxe
function decodeRuneInString(_s:stdgo.GoString):{
	_1:stdgo.GoInt;
	_0:stdgo.GoRune;
}
```



DecodeRuneInString is like DecodeRune but its input is a string. If s is
empty it returns \(RuneError, 0\). Otherwise, if the encoding is invalid, it
returns \(RuneError, 1\). Both are impossible results for correct, non\-empty
UTF\-8.  


An encoding is invalid if it is incorrect UTF\-8, encodes a rune that is
out of range, or is not the shortest possible UTF\-8 encoding for the
value. No other validation is performed.  

### exampleDecodeRuneInString


<details><summary></summary>
<p>


```haxe
function exampleDecodeRuneInString():Void {
        var _str:stdgo.GoString = ("Hello, 世界" : stdgo.GoString);
        while ((_str.length) > (0 : stdgo.GoInt)) {
            var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRuneInString(_str?.__copy__()), _r:stdgo.GoInt32 = __tmp__._0, _size:stdgo.GoInt = __tmp__._1;
            stdgo.fmt.Fmt.printf(("%c %v\n" : stdgo.GoString), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_size));
            _str = (_str.__slice__(_size) : stdgo.GoString)?.__copy__();
        };
    }
```


</p>
</details>


[\(view code\)](<./Utf8.hx#L583>)


## function encodeRune


```haxe
function encodeRune(_p:stdgo.Slice<stdgo.GoByte>, _r:stdgo.GoRune):stdgo.GoInt
```



EncodeRune writes into p \(which must be large enough\) the UTF\-8 encoding of the rune.
If the rune is out of range, it writes the encoding of RuneError.
It returns the number of bytes written.  

### exampleEncodeRune


<details><summary></summary>
<p>


```haxe
function exampleEncodeRune():Void {
        var _r:stdgo.GoInt32 = (19990 : stdgo.GoInt32);
        var _buf = new stdgo.Slice<stdgo.GoUInt8>((3 : stdgo.GoInt).toBasic(), 0).__setNumber32__();
        var _n:stdgo.GoInt = stdgo.unicode.utf8.Utf8.encodeRune(_buf, _r);
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_buf));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_n));
    }
```


</p>
</details>


### exampleEncodeRune\_outOfRange


<details><summary></summary>
<p>


```haxe
function exampleEncodeRune_outOfRange():Void {
        var _runes = (new stdgo.Slice<stdgo.GoInt32>(3, 3, (-1 : stdgo.GoInt32), (1114112 : stdgo.GoInt32), (65533 : stdgo.GoInt32)) : stdgo.Slice<stdgo.GoInt32>);
        for (_i => _c in _runes) {
            var _buf = new stdgo.Slice<stdgo.GoUInt8>((3 : stdgo.GoInt).toBasic(), 0).__setNumber32__();
            var _size:stdgo.GoInt = stdgo.unicode.utf8.Utf8.encodeRune(_buf, _c);
            stdgo.fmt.Fmt.printf(("%d: %d %[2]s %d\n" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_buf), stdgo.Go.toInterface(_size));
        };
    }
```


</p>
</details>


[\(view code\)](<./Utf8.hx#L737>)


## function fullRune


```haxe
function fullRune(_p:stdgo.Slice<stdgo.GoByte>):Bool
```



FullRune reports whether the bytes in p begin with a full UTF\-8 encoding of a rune.
An invalid encoding is considered a full Rune since it will convert as a width\-1 error rune.  

### exampleFullRune


<details><summary></summary>
<p>


```haxe
function exampleFullRune():Void {
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>(3, 3, (228 : stdgo.GoUInt8), (184 : stdgo.GoUInt8), (150 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.unicode.utf8.Utf8.fullRune(_buf)));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.unicode.utf8.Utf8.fullRune((_buf.__slice__(0, (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>))));
    }
```


</p>
</details>


[\(view code\)](<./Utf8.hx#L489>)


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
        var _str:stdgo.GoString = ("世" : stdgo.GoString);
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.unicode.utf8.Utf8.fullRuneInString(_str?.__copy__())));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.unicode.utf8.Utf8.fullRuneInString((_str.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__())));
    }
```


</p>
</details>


[\(view code\)](<./Utf8.hx#L509>)


## function runeCount


```haxe
function runeCount(_p:stdgo.Slice<stdgo.GoByte>):stdgo.GoInt
```



RuneCount returns the number of runes in p. Erroneous and short
encodings are treated as single runes of width 1 byte.  

### exampleRuneCount


<details><summary></summary>
<p>


```haxe
function exampleRuneCount():Void {
        var _buf = (("Hello, 世界" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(("bytes =" : stdgo.GoString)), stdgo.Go.toInterface((_buf.length)));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(("runes =" : stdgo.GoString)), stdgo.Go.toInterface(stdgo.unicode.utf8.Utf8.runeCount(_buf)));
    }
```


</p>
</details>


[\(view code\)](<./Utf8.hx#L837>)


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
        var _str:stdgo.GoString = ("Hello, 世界" : stdgo.GoString);
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(("bytes =" : stdgo.GoString)), stdgo.Go.toInterface((_str.length)));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(("runes =" : stdgo.GoString)), stdgo.Go.toInterface(stdgo.unicode.utf8.Utf8.runeCountInString(_str?.__copy__())));
    }
```


</p>
</details>


[\(view code\)](<./Utf8.hx#L884>)


## function runeLen


```haxe
function runeLen(_r:stdgo.GoRune):stdgo.GoInt
```



RuneLen returns the number of bytes required to encode the rune.
It returns \-1 if the rune is not a valid value to encode in UTF\-8.  

### exampleRuneLen


<details><summary></summary>
<p>


```haxe
function exampleRuneLen():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.unicode.utf8.Utf8.runeLen((97 : stdgo.GoInt32))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.unicode.utf8.Utf8.runeLen((30028 : stdgo.GoInt32))));
    }
```


</p>
</details>


[\(view code\)](<./Utf8.hx#L716>)


## function runeStart


```haxe
function runeStart(_b:stdgo.GoByte):Bool
```



RuneStart reports whether the byte could be the first byte of an encoded,
possibly invalid rune. Second and subsequent bytes always have the top two
bits set to 10.  

### exampleRuneStart


<details><summary></summary>
<p>


```haxe
function exampleRuneStart():Void {
        var _buf = (("a界" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.unicode.utf8.Utf8.runeStart(_buf[(0 : stdgo.GoInt)])));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.unicode.utf8.Utf8.runeStart(_buf[(1 : stdgo.GoInt)])));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.unicode.utf8.Utf8.runeStart(_buf[(2 : stdgo.GoInt)])));
    }
```


</p>
</details>


[\(view code\)](<./Utf8.hx#L932>)


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
        var _valid = (("Hello, 世界" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        var _invalid = (new stdgo.Slice<stdgo.GoUInt8>(3, 3, (255 : stdgo.GoUInt8), (254 : stdgo.GoUInt8), (253 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.unicode.utf8.Utf8.valid(_valid)));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.unicode.utf8.Utf8.valid(_invalid)));
    }
```


</p>
</details>


[\(view code\)](<./Utf8.hx#L938>)


## function validRune


```haxe
function validRune(_r:stdgo.GoRune):Bool
```



ValidRune reports whether r can be legally encoded as UTF\-8.
Code points that are out of range or a surrogate half are illegal.  

### exampleValidRune


<details><summary></summary>
<p>


```haxe
function exampleValidRune():Void {
        var _valid:stdgo.GoInt32 = (97 : stdgo.GoInt32);
        var _invalid:stdgo.GoInt32 = ((268435455 : stdgo.GoInt32) : stdgo.GoRune);
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.unicode.utf8.Utf8.validRune(_valid)));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.unicode.utf8.Utf8.validRune(_invalid)));
    }
```


</p>
</details>


[\(view code\)](<./Utf8.hx#L1042>)


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
        var _valid:stdgo.GoString = ("Hello, 世界" : stdgo.GoString);
        var _invalid:stdgo.GoString = ((new stdgo.Slice<stdgo.GoUInt8>(3, 3, (255 : stdgo.GoUInt8), (254 : stdgo.GoUInt8), (253 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString);
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.unicode.utf8.Utf8.validString(_valid?.__copy__())));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.unicode.utf8.Utf8.validString(_invalid?.__copy__())));
    }
```


</p>
</details>


[\(view code\)](<./Utf8.hx#L990>)


