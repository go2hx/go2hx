# Module: `stdgo._internal.unicode.utf8`

[(view library index)](../../../stdgo.md)


# Overview



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
import stdgo._internal.unicode.utf8.Utf8
```


```haxe
final _as:stdgo.GoUInt64 = ((240i64 : stdgo.GoUInt64))
```


```haxe
final _hicb:stdgo.GoUInt64 = ((191i64 : stdgo.GoUInt64))
```


```haxe
final _locb:stdgo.GoUInt64 = ((128i64 : stdgo.GoUInt64))
```


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


```haxe
final _s2:stdgo.GoUInt64 = ((19i64 : stdgo.GoUInt64))
```


```haxe
final _s3:stdgo.GoUInt64 = ((3i64 : stdgo.GoUInt64))
```


```haxe
final _s4:stdgo.GoUInt64 = ((35i64 : stdgo.GoUInt64))
```


```haxe
final _s5:stdgo.GoUInt64 = ((52i64 : stdgo.GoUInt64))
```


```haxe
final _s6:stdgo.GoUInt64 = ((4i64 : stdgo.GoUInt64))
```


```haxe
final _s7:stdgo.GoUInt64 = ((68i64 : stdgo.GoUInt64))
```


```haxe
final _surrogateMax:stdgo.GoUInt64 = ((57343i64 : stdgo.GoUInt64))
```


```haxe
final _surrogateMin:stdgo.GoUInt64 = ((55296i64 : stdgo.GoUInt64))
```


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


```haxe
final maxRune:stdgo.GoInt32 = ((1114111 : stdgo.GoInt32))
```


```haxe
final runeError:stdgo.GoInt32 = ((65533 : stdgo.GoInt32))
```


```haxe
final runeSelf:stdgo.GoUInt64 = ((128i64 : stdgo.GoUInt64))
```


```haxe
final utfmax:stdgo.GoUInt64 = ((4i64 : stdgo.GoUInt64))
```


# Variables


```haxe
import stdgo._internal.unicode.utf8.Utf8
```


```haxe
var _acceptRanges:stdgo.GoArray<stdgo._internal.unicode.utf8.T_acceptRange>
```


```haxe
var _first:stdgo.GoArray<stdgo.GoUInt8>
```


# Functions


```haxe
import stdgo._internal.unicode.utf8.Utf8
```


## function \_appendRuneNonASCII


```haxe
function _appendRuneNonASCII(_p:stdgo.Slice<stdgo.GoByte>, _r:stdgo.GoRune):stdgo.Slice<stdgo.GoByte>
```


[\(view code\)](<./Utf8.hx#L564>)


## function appendRune


```haxe
function appendRune(_p:stdgo.Slice<stdgo.GoByte>, _r:stdgo.GoRune):stdgo.Slice<stdgo.GoByte>
```


### exampleAppendRune


<details><summary></summary>
<p>


```haxe
function exampleAppendRune():Void {
        var _buf1 = stdgo._internal.unicode.utf8.Utf8.appendRune((null : stdgo.Slice<stdgo.GoUInt8>), (65536 : stdgo.GoInt32));
        var _buf2 = stdgo._internal.unicode.utf8.Utf8.appendRune((("init" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (65536 : stdgo.GoInt32));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface((_buf1 : stdgo.GoString)));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface((_buf2 : stdgo.GoString)));
    }
```


</p>
</details>


[\(view code\)](<./Utf8.hx#L558>)


## function decodeLastRune


```haxe
function decodeLastRune(_p:stdgo.Slice<stdgo.GoByte>):{
	_1:stdgo.GoInt;
	_0:stdgo.GoRune;
}
```


### exampleDecodeLastRune


<details><summary></summary>
<p>


```haxe
function exampleDecodeLastRune():Void {
        var _b = (("Hello, 世界" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        while (((_b.length) > (0 : stdgo.GoInt) : Bool)) {
            var __tmp__ = stdgo._internal.unicode.utf8.Utf8.decodeLastRune(_b), _r:stdgo.GoInt32 = __tmp__._0, _size:stdgo.GoInt = __tmp__._1;
            stdgo._internal.fmt.Fmt.printf(("%c %v\n" : stdgo.GoString), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_size));
            _b = (_b.__slice__(0, ((_b.length) - _size : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
    }
```


</p>
</details>


[\(view code\)](<./Utf8.hx#L419>)


## function decodeLastRuneInString


```haxe
function decodeLastRuneInString(_s:stdgo.GoString):{
	_1:stdgo.GoInt;
	_0:stdgo.GoRune;
}
```


### exampleDecodeLastRuneInString


<details><summary></summary>
<p>


```haxe
function exampleDecodeLastRuneInString():Void {
        var _str = ("Hello, 世界" : stdgo.GoString);
        while (((_str.length) > (0 : stdgo.GoInt) : Bool)) {
            var __tmp__ = stdgo._internal.unicode.utf8.Utf8.decodeLastRuneInString(_str?.__copy__()), _r:stdgo.GoInt32 = __tmp__._0, _size:stdgo.GoInt = __tmp__._1;
            stdgo._internal.fmt.Fmt.printf(("%c %v\n" : stdgo.GoString), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_size));
            _str = (_str.__slice__(0, ((_str.length) - _size : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
    }
```


</p>
</details>


[\(view code\)](<./Utf8.hx#L455>)


## function decodeRune


```haxe
function decodeRune(_p:stdgo.Slice<stdgo.GoByte>):{
	_1:stdgo.GoInt;
	_0:stdgo.GoRune;
}
```


### exampleDecodeRune


<details><summary></summary>
<p>


```haxe
function exampleDecodeRune():Void {
        var _b = (("Hello, 世界" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        while (((_b.length) > (0 : stdgo.GoInt) : Bool)) {
            var __tmp__ = stdgo._internal.unicode.utf8.Utf8.decodeRune(_b), _r:stdgo.GoInt32 = __tmp__._0, _size:stdgo.GoInt = __tmp__._1;
            stdgo._internal.fmt.Fmt.printf(("%c %v\n" : stdgo.GoString), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_size));
            _b = (_b.__slice__(_size) : stdgo.Slice<stdgo.GoUInt8>);
        };
    }
```


</p>
</details>


[\(view code\)](<./Utf8.hx#L345>)


## function decodeRuneInString


```haxe
function decodeRuneInString(_s:stdgo.GoString):{
	_1:stdgo.GoInt;
	_0:stdgo.GoRune;
}
```


### exampleDecodeRuneInString


<details><summary></summary>
<p>


```haxe
function exampleDecodeRuneInString():Void {
        var _str = ("Hello, 世界" : stdgo.GoString);
        while (((_str.length) > (0 : stdgo.GoInt) : Bool)) {
            var __tmp__ = stdgo._internal.unicode.utf8.Utf8.decodeRuneInString(_str?.__copy__()), _r:stdgo.GoInt32 = __tmp__._0, _size:stdgo.GoInt = __tmp__._1;
            stdgo._internal.fmt.Fmt.printf(("%c %v\n" : stdgo.GoString), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_size));
            _str = (_str.__slice__(_size) : stdgo.GoString)?.__copy__();
        };
    }
```


</p>
</details>


[\(view code\)](<./Utf8.hx#L382>)


## function encodeRune


```haxe
function encodeRune(_p:stdgo.Slice<stdgo.GoByte>, _r:stdgo.GoRune):stdgo.GoInt
```


### exampleEncodeRune


<details><summary></summary>
<p>


```haxe
function exampleEncodeRune():Void {
        var _r = (19990 : stdgo.GoInt32);
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((3 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _n = stdgo._internal.unicode.utf8.Utf8.encodeRune(_buf, _r);
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_buf));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_n));
    }
```


</p>
</details>


### exampleEncodeRune\_outOfRange


<details><summary></summary>
<p>


```haxe
function exampleEncodeRune_outOfRange():Void {
        var _runes = (new stdgo.Slice<stdgo.GoInt32>(3, 3, ...[(-1 : stdgo.GoInt32), (1114112 : stdgo.GoInt32), (65533 : stdgo.GoInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        for (_i => _c in _runes) {
            var _buf = (new stdgo.Slice<stdgo.GoUInt8>((3 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            var _size = stdgo._internal.unicode.utf8.Utf8.encodeRune(_buf, _c);
            stdgo._internal.fmt.Fmt.printf(("%d: %d %[2]s %d\n" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_buf), stdgo.Go.toInterface(_size));
        };
    }
```


</p>
</details>


[\(view code\)](<./Utf8.hx#L507>)


## function fullRune


```haxe
function fullRune(_p:stdgo.Slice<stdgo.GoByte>):Bool
```


### exampleFullRune


<details><summary></summary>
<p>


```haxe
function exampleFullRune():Void {
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>(3, 3, ...[(228 : stdgo.GoUInt8), (184 : stdgo.GoUInt8), (150 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.unicode.utf8.Utf8.fullRune(_buf)));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.unicode.utf8.Utf8.fullRune((_buf.__slice__(0, (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>))));
    }
```


</p>
</details>


[\(view code\)](<./Utf8.hx#L311>)


## function fullRuneInString


```haxe
function fullRuneInString(_s:stdgo.GoString):Bool
```


### exampleFullRuneInString


<details><summary></summary>
<p>


```haxe
function exampleFullRuneInString():Void {
        var _str = ("世" : stdgo.GoString);
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.unicode.utf8.Utf8.fullRuneInString(_str?.__copy__())));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.unicode.utf8.Utf8.fullRuneInString((_str.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__())));
    }
```


</p>
</details>


[\(view code\)](<./Utf8.hx#L328>)


## function runeCount


```haxe
function runeCount(_p:stdgo.Slice<stdgo.GoByte>):stdgo.GoInt
```


### exampleRuneCount


<details><summary></summary>
<p>


```haxe
function exampleRuneCount():Void {
        var _buf = (("Hello, 世界" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("bytes =" : stdgo.GoString)), stdgo.Go.toInterface((_buf.length)));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("runes =" : stdgo.GoString)), stdgo.Go.toInterface(stdgo._internal.unicode.utf8.Utf8.runeCount(_buf)));
    }
```


</p>
</details>


[\(view code\)](<./Utf8.hx#L598>)


## function runeCountInString


```haxe
function runeCountInString(_s:stdgo.GoString):stdgo.GoInt
```


### exampleRuneCountInString


<details><summary></summary>
<p>


```haxe
function exampleRuneCountInString():Void {
        var _str = ("Hello, 世界" : stdgo.GoString);
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("bytes =" : stdgo.GoString)), stdgo.Go.toInterface((_str.length)));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("runes =" : stdgo.GoString)), stdgo.Go.toInterface(stdgo._internal.unicode.utf8.Utf8.runeCountInString(_str?.__copy__())));
    }
```


</p>
</details>


[\(view code\)](<./Utf8.hx#L642>)


## function runeLen


```haxe
function runeLen(_r:stdgo.GoRune):stdgo.GoInt
```


### exampleRuneLen


<details><summary></summary>
<p>


```haxe
function exampleRuneLen():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.unicode.utf8.Utf8.runeLen((97 : stdgo.GoInt32))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.unicode.utf8.Utf8.runeLen((30028 : stdgo.GoInt32))));
    }
```


</p>
</details>


[\(view code\)](<./Utf8.hx#L491>)


## function runeStart


```haxe
function runeStart(_b:stdgo.GoByte):Bool
```


### exampleRuneStart


<details><summary></summary>
<p>


```haxe
function exampleRuneStart():Void {
        var _buf = (("a界" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.unicode.utf8.Utf8.runeStart(_buf[(0 : stdgo.GoInt)])));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.unicode.utf8.Utf8.runeStart(_buf[(1 : stdgo.GoInt)])));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.unicode.utf8.Utf8.runeStart(_buf[(2 : stdgo.GoInt)])));
    }
```


</p>
</details>


[\(view code\)](<./Utf8.hx#L685>)


## function valid


```haxe
function valid(_p:stdgo.Slice<stdgo.GoByte>):Bool
```


### exampleValid


<details><summary></summary>
<p>


```haxe
function exampleValid():Void {
        var _valid = (("Hello, 世界" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        var _invalid = (new stdgo.Slice<stdgo.GoUInt8>(3, 3, ...[(255 : stdgo.GoUInt8), (254 : stdgo.GoUInt8), (253 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.unicode.utf8.Utf8.valid(_valid)));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.unicode.utf8.Utf8.valid(_invalid)));
    }
```


</p>
</details>


[\(view code\)](<./Utf8.hx#L688>)


## function validRune


```haxe
function validRune(_r:stdgo.GoRune):Bool
```


### exampleValidRune


<details><summary></summary>
<p>


```haxe
function exampleValidRune():Void {
        var _valid = (97 : stdgo.GoInt32);
        var _invalid = ((268435455 : stdgo.GoInt32) : stdgo.GoRune);
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.unicode.utf8.Utf8.validRune(_valid)));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.unicode.utf8.Utf8.validRune(_invalid)));
    }
```


</p>
</details>


[\(view code\)](<./Utf8.hx#L785>)


## function validString


```haxe
function validString(_s:stdgo.GoString):Bool
```


### exampleValidString


<details><summary></summary>
<p>


```haxe
function exampleValidString():Void {
        var _valid = ("Hello, 世界" : stdgo.GoString);
        var _invalid = ((new stdgo.Slice<stdgo.GoUInt8>(3, 3, ...[(255 : stdgo.GoUInt8), (254 : stdgo.GoUInt8), (253 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.unicode.utf8.Utf8.validString(_valid?.__copy__())));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.unicode.utf8.Utf8.validString(_invalid?.__copy__())));
    }
```


</p>
</details>


[\(view code\)](<./Utf8.hx#L737>)


