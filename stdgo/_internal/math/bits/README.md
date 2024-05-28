# Module: `stdgo._internal.math.bits`

[(view library index)](../../../stdgo.md)


# Overview



# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function add(_x:stdgo.GoUInt, _y:stdgo.GoUInt, _carry:stdgo.GoUInt):{
	_1:stdgo.GoUInt;
	_0:stdgo.GoUInt;
}`](<#function-add>)

- [`function add32(_x:stdgo.GoUInt32, _y:stdgo.GoUInt32, _carry:stdgo.GoUInt32):{
	_1:stdgo.GoUInt32;
	_0:stdgo.GoUInt32;
}`](<#function-add32>)

- [`function add64(_x:stdgo.GoUInt64, _y:stdgo.GoUInt64, _carry:stdgo.GoUInt64):{
	_1:stdgo.GoUInt64;
	_0:stdgo.GoUInt64;
}`](<#function-add64>)

- [`function div(_hi:stdgo.GoUInt, _lo:stdgo.GoUInt, _y:stdgo.GoUInt):{
	_1:stdgo.GoUInt;
	_0:stdgo.GoUInt;
}`](<#function-div>)

- [`function div32(_hi:stdgo.GoUInt32, _lo:stdgo.GoUInt32, _y:stdgo.GoUInt32):{
	_1:stdgo.GoUInt32;
	_0:stdgo.GoUInt32;
}`](<#function-div32>)

- [`function div64(_hi:stdgo.GoUInt64, _lo:stdgo.GoUInt64, _y:stdgo.GoUInt64):{
	_1:stdgo.GoUInt64;
	_0:stdgo.GoUInt64;
}`](<#function-div64>)

- [`function leadingZeros(_x:stdgo.GoUInt):stdgo.GoInt`](<#function-leadingzeros>)

- [`function leadingZeros16(_x:stdgo.GoUInt16):stdgo.GoInt`](<#function-leadingzeros16>)

- [`function leadingZeros32(_x:stdgo.GoUInt32):stdgo.GoInt`](<#function-leadingzeros32>)

- [`function leadingZeros64(_x:stdgo.GoUInt64):stdgo.GoInt`](<#function-leadingzeros64>)

- [`function leadingZeros8(_x:stdgo.GoUInt8):stdgo.GoInt`](<#function-leadingzeros8>)

- [`function len(_x:stdgo.GoUInt):stdgo.GoInt`](<#function-len>)

- [`function len16(_x:stdgo.GoUInt16):stdgo.GoInt`](<#function-len16>)

- [`function len32(_x:stdgo.GoUInt32):stdgo.GoInt`](<#function-len32>)

- [`function len64(_x:stdgo.GoUInt64):stdgo.GoInt`](<#function-len64>)

- [`function len8(_x:stdgo.GoUInt8):stdgo.GoInt`](<#function-len8>)

- [`function mul(_x:stdgo.GoUInt, _y:stdgo.GoUInt):{
	_1:stdgo.GoUInt;
	_0:stdgo.GoUInt;
}`](<#function-mul>)

- [`function mul32(_x:stdgo.GoUInt32, _y:stdgo.GoUInt32):{
	_1:stdgo.GoUInt32;
	_0:stdgo.GoUInt32;
}`](<#function-mul32>)

- [`function mul64(_x:stdgo.GoUInt64, _y:stdgo.GoUInt64):{
	_1:stdgo.GoUInt64;
	_0:stdgo.GoUInt64;
}`](<#function-mul64>)

- [`function onesCount(_x:stdgo.GoUInt):stdgo.GoInt`](<#function-onescount>)

- [`function onesCount16(_x:stdgo.GoUInt16):stdgo.GoInt`](<#function-onescount16>)

- [`function onesCount32(_x:stdgo.GoUInt32):stdgo.GoInt`](<#function-onescount32>)

- [`function onesCount64(_x:stdgo.GoUInt64):stdgo.GoInt`](<#function-onescount64>)

- [`function onesCount8(_x:stdgo.GoUInt8):stdgo.GoInt`](<#function-onescount8>)

- [`function rem(_hi:stdgo.GoUInt, _lo:stdgo.GoUInt, _y:stdgo.GoUInt):stdgo.GoUInt`](<#function-rem>)

- [`function rem32(_hi:stdgo.GoUInt32, _lo:stdgo.GoUInt32, _y:stdgo.GoUInt32):stdgo.GoUInt32`](<#function-rem32>)

- [`function rem64(_hi:stdgo.GoUInt64, _lo:stdgo.GoUInt64, _y:stdgo.GoUInt64):stdgo.GoUInt64`](<#function-rem64>)

- [`function reverse(_x:stdgo.GoUInt):stdgo.GoUInt`](<#function-reverse>)

- [`function reverse16(_x:stdgo.GoUInt16):stdgo.GoUInt16`](<#function-reverse16>)

- [`function reverse32(_x:stdgo.GoUInt32):stdgo.GoUInt32`](<#function-reverse32>)

- [`function reverse64(_x:stdgo.GoUInt64):stdgo.GoUInt64`](<#function-reverse64>)

- [`function reverse8(_x:stdgo.GoUInt8):stdgo.GoUInt8`](<#function-reverse8>)

- [`function reverseBytes(_x:stdgo.GoUInt):stdgo.GoUInt`](<#function-reversebytes>)

- [`function reverseBytes16(_x:stdgo.GoUInt16):stdgo.GoUInt16`](<#function-reversebytes16>)

- [`function reverseBytes32(_x:stdgo.GoUInt32):stdgo.GoUInt32`](<#function-reversebytes32>)

- [`function reverseBytes64(_x:stdgo.GoUInt64):stdgo.GoUInt64`](<#function-reversebytes64>)

- [`function rotateLeft(_x:stdgo.GoUInt, _k:stdgo.GoInt):stdgo.GoUInt`](<#function-rotateleft>)

- [`function rotateLeft16(_x:stdgo.GoUInt16, _k:stdgo.GoInt):stdgo.GoUInt16`](<#function-rotateleft16>)

- [`function rotateLeft32(_x:stdgo.GoUInt32, _k:stdgo.GoInt):stdgo.GoUInt32`](<#function-rotateleft32>)

- [`function rotateLeft64(_x:stdgo.GoUInt64, _k:stdgo.GoInt):stdgo.GoUInt64`](<#function-rotateleft64>)

- [`function rotateLeft8(_x:stdgo.GoUInt8, _k:stdgo.GoInt):stdgo.GoUInt8`](<#function-rotateleft8>)

- [`function sub(_x:stdgo.GoUInt, _y:stdgo.GoUInt, _borrow:stdgo.GoUInt):{
	_1:stdgo.GoUInt;
	_0:stdgo.GoUInt;
}`](<#function-sub>)

- [`function sub32(_x:stdgo.GoUInt32, _y:stdgo.GoUInt32, _borrow:stdgo.GoUInt32):{
	_1:stdgo.GoUInt32;
	_0:stdgo.GoUInt32;
}`](<#function-sub32>)

- [`function sub64(_x:stdgo.GoUInt64, _y:stdgo.GoUInt64, _borrow:stdgo.GoUInt64):{
	_1:stdgo.GoUInt64;
	_0:stdgo.GoUInt64;
}`](<#function-sub64>)

- [`function trailingZeros(_x:stdgo.GoUInt):stdgo.GoInt`](<#function-trailingzeros>)

- [`function trailingZeros16(_x:stdgo.GoUInt16):stdgo.GoInt`](<#function-trailingzeros16>)

- [`function trailingZeros32(_x:stdgo.GoUInt32):stdgo.GoInt`](<#function-trailingzeros32>)

- [`function trailingZeros64(_x:stdgo.GoUInt64):stdgo.GoInt`](<#function-trailingzeros64>)

- [`function trailingZeros8(_x:stdgo.GoUInt8):stdgo.GoInt`](<#function-trailingzeros8>)

# Examples


- [`exampleAdd32`](<#exampleadd32>)

- [`exampleAdd64`](<#exampleadd64>)

- [`exampleDiv32`](<#examplediv32>)

- [`exampleDiv64`](<#examplediv64>)

- [`exampleLeadingZeros16`](<#exampleleadingzeros16>)

- [`exampleLeadingZeros32`](<#exampleleadingzeros32>)

- [`exampleLeadingZeros64`](<#exampleleadingzeros64>)

- [`exampleLeadingZeros8`](<#exampleleadingzeros8>)

- [`exampleLen16`](<#examplelen16>)

- [`exampleLen32`](<#examplelen32>)

- [`exampleLen64`](<#examplelen64>)

- [`exampleLen8`](<#examplelen8>)

- [`exampleMul32`](<#examplemul32>)

- [`exampleMul64`](<#examplemul64>)

- [`exampleOnesCount`](<#exampleonescount>)

- [`exampleOnesCount16`](<#exampleonescount16>)

- [`exampleOnesCount32`](<#exampleonescount32>)

- [`exampleOnesCount64`](<#exampleonescount64>)

- [`exampleOnesCount8`](<#exampleonescount8>)

- [`exampleReverse16`](<#examplereverse16>)

- [`exampleReverse32`](<#examplereverse32>)

- [`exampleReverse64`](<#examplereverse64>)

- [`exampleReverse8`](<#examplereverse8>)

- [`exampleReverseBytes16`](<#examplereversebytes16>)

- [`exampleReverseBytes32`](<#examplereversebytes32>)

- [`exampleReverseBytes64`](<#examplereversebytes64>)

- [`exampleRotateLeft16`](<#examplerotateleft16>)

- [`exampleRotateLeft32`](<#examplerotateleft32>)

- [`exampleRotateLeft64`](<#examplerotateleft64>)

- [`exampleRotateLeft8`](<#examplerotateleft8>)

- [`exampleSub32`](<#examplesub32>)

- [`exampleSub64`](<#examplesub64>)

- [`exampleTrailingZeros16`](<#exampletrailingzeros16>)

- [`exampleTrailingZeros32`](<#exampletrailingzeros32>)

- [`exampleTrailingZeros64`](<#exampletrailingzeros64>)

- [`exampleTrailingZeros8`](<#exampletrailingzeros8>)

# Constants


```haxe
import stdgo._internal.math.bits.Bits
```


```haxe
final _deBruijn32:stdgo.GoUInt64 = ((125613361i64 : stdgo.GoUInt64))
```


```haxe
final _deBruijn64:stdgo.GoUInt64 = ((285870213051353865i64 : stdgo.GoUInt64))
```


```haxe
final _len8tab:stdgo.GoString = stdgo.Go.str(0, 1, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, "\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08")
```


```haxe
final _m0:stdgo.GoUInt64 = ((6148914691236517205i64 : stdgo.GoUInt64))
```


```haxe
final _m1:stdgo.GoUInt64 = ((3689348814741910323i64 : stdgo.GoUInt64))
```


```haxe
final _m2:stdgo.GoUInt64 = ((1085102592571150095i64 : stdgo.GoUInt64))
```


```haxe
final _m3:stdgo.GoUInt64 = ((71777214294589695i64 : stdgo.GoUInt64))
```


```haxe
final _m4:stdgo.GoUInt64 = ((281470681808895i64 : stdgo.GoUInt64))
```


```haxe
final _ntz8tab:stdgo.GoString = stdgo.Go.str("\x08", 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 2, 0, 1, 0, 4, 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 2, 0, 1, 0, 5, 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 2, 0, 1, 0, 4, 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 2, 0, 1, 0, 6, 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 2, 0, 1, 0, 4, 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 2, 0, 1, 0, 5, 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 2, 0, 1, 0, 4, 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 2, 0, 1, 0, "\x07", 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 2, 0, 1, 0, 4, 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 2, 0, 1, 0, 5, 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 2, 0, 1, 0, 4, 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 2, 0, 1, 0, 6, 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 2, 0, 1, 0, 4, 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 2, 0, 1, 0, 5, 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 2, 0, 1, 0, 4, 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 2, 0, 1, 0)
```


```haxe
final _pop8tab:stdgo.GoString = stdgo.Go.str(0, 1, 1, 2, 1, 2, 2, 3, 1, 2, 2, 3, 2, 3, 3, 4, 1, 2, 2, 3, 2, 3, 3, 4, 2, 3, 3, 4, 3, 4, 4, 5, 1, 2, 2, 3, 2, 3, 3, 4, 2, 3, 3, 4, 3, 4, 4, 5, 2, 3, 3, 4, 3, 4, 4, 5, 3, 4, 4, 5, 4, 5, 5, 6, 1, 2, 2, 3, 2, 3, 3, 4, 2, 3, 3, 4, 3, 4, 4, 5, 2, 3, 3, 4, 3, 4, 4, 5, 3, 4, 4, 5, 4, 5, 5, 6, 2, 3, 3, 4, 3, 4, 4, 5, 3, 4, 4, 5, 4, 5, 5, 6, 3, 4, 4, 5, 4, 5, 5, 6, 4, 5, 5, 6, 5, 6, 6, "\x07", 1, 2, 2, 3, 2, 3, 3, 4, 2, 3, 3, 4, 3, 4, 4, 5, 2, 3, 3, 4, 3, 4, 4, 5, 3, 4, 4, 5, 4, 5, 5, 6, 2, 3, 3, 4, 3, 4, 4, 5, 3, 4, 4, 5, 4, 5, 5, 6, 3, 4, 4, 5, 4, 5, 5, 6, 4, 5, 5, 6, 5, 6, 6, "\x07", 2, 3, 3, 4, 3, 4, 4, 5, 3, 4, 4, 5, 4, 5, 5, 6, 3, 4, 4, 5, 4, 5, 5, 6, 4, 5, 5, 6, 5, 6, 6, "\x07", 3, 4, 4, 5, 4, 5, 5, 6, 4, 5, 5, 6, 5, 6, 6, "\x07", 4, 5, 5, 6, 5, 6, 6, "\x07", 5, 6, 6, "\x07", 6, "\x07\x07\x08")
```


```haxe
final _rev8tab:stdgo.GoString = stdgo.Go.str(0, 128, "@", 192, " ", 160, "`", 224, 16, 144, "P", 208, "0", 176, "p", 240, "\x08", 136, "H", 200, "(", 168, "h", 232, 24, 152, "X", 216, "8", 184, "x", 248, 4, 132, "D", 196, "$", 164, "d", 228, 20, 148, "T", 212, "4", 180, "t", 244, "\x0C", 140, "L", 204, ",", 172, "l", 236, 28, 156, "\\", 220, "<", 188, "|", 252, 2, 130, "B", 194, "\"", 162, "b", 226, 18, 146, "R", 210, "2", 178, "r", 242, "\n", 138, "J", 202, "*", 170, "j", 234, 26, 154, "Z", 218, ":", 186, "z", 250, 6, 134, "F", 198, "&", 166, "f", 230, 22, 150, "V", 214, "6", 182, "v", 246, 14, 142, "N", 206, ".", 174, "n", 238, 30, 158, "^", 222, ">", 190, "~", 254, 1, 129, "A", 193, "!", 161, "a", 225, 17, 145, "Q", 209, "1", 177, "q", 241, "\t", 137, "I", 201, ")", 169, "i", 233, 25, 153, "Y", 217, "9", 185, "y", 249, 5, 133, "E", 197, "%", 165, "e", 229, 21, 149, "U", 213, "5", 181, "u", 245, "\r", 141, "M", 205, "-", 173, "m", 237, 29, 157, "]", 221, "=", 189, "}", 253, 3, 131, "C", 195, "#", 163, "c", 227, 19, 147, "S", 211, "3", 179, "s", 243, "\x0B", 139, "K", 203, "+", 171, "k", 235, 27, 155, "[", 219, ";", 187, "{", 251, "\x07", 135, "G", 199, "'", 167, "g", 231, 23, 151, "W", 215, "7", 183, "w", 247, 15, 143, "O", 207, "/", 175, "o", 239, 31, 159, "_", 223, "?", 191, 127, 255)
```


```haxe
final _uintSize:stdgo.GoUInt64 = ((32i64 : stdgo.GoUInt64))
```


```haxe
final deBruijn64:stdgo.GoUInt64 = ((285870213051353865i64 : stdgo.GoUInt64))
```


```haxe
final uintSize:stdgo.GoUInt64 = ((32i64 : stdgo.GoUInt64))
```


# Variables


```haxe
import stdgo._internal.math.bits.Bits
```


```haxe
var _deBruijn32tab:stdgo.GoArray<stdgo.GoUInt8>
```


```haxe
var _deBruijn64tab:stdgo.GoArray<stdgo.GoUInt8>
```


```haxe
var _divideError:stdgo.Error
```


```haxe
var _overflowError:stdgo.Error
```


# Functions


```haxe
import stdgo._internal.math.bits.Bits
```


## function add


```haxe
function add(_x:stdgo.GoUInt, _y:stdgo.GoUInt, _carry:stdgo.GoUInt):{
	_1:stdgo.GoUInt;
	_0:stdgo.GoUInt;
}
```


[\(view code\)](<./Bits.hx#L4176>)


## function add32


```haxe
function add32(_x:stdgo.GoUInt32, _y:stdgo.GoUInt32, _carry:stdgo.GoUInt32):{
	_1:stdgo.GoUInt32;
	_0:stdgo.GoUInt32;
}
```


### exampleAdd32


<details><summary></summary>
<p>


```haxe
function exampleAdd32():Void {
        var _n1 = (new stdgo.Slice<stdgo.GoUInt32>(2, 2, ...[(33u32 : stdgo.GoUInt32), (12u32 : stdgo.GoUInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
        var _n2 = (new stdgo.Slice<stdgo.GoUInt32>(2, 2, ...[(21u32 : stdgo.GoUInt32), (23u32 : stdgo.GoUInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
        var __tmp__ = stdgo._internal.math.bits.Bits.add32(_n1[(1 : stdgo.GoInt)], _n2[(1 : stdgo.GoInt)], (0u32 : stdgo.GoUInt32)), _d1:stdgo.GoUInt32 = __tmp__._0, _carry:stdgo.GoUInt32 = __tmp__._1;
        var __tmp__ = stdgo._internal.math.bits.Bits.add32(_n1[(0 : stdgo.GoInt)], _n2[(0 : stdgo.GoInt)], _carry), _d0:stdgo.GoUInt32 = __tmp__._0, __0:stdgo.GoUInt32 = __tmp__._1;
        var _nsum = (new stdgo.Slice<stdgo.GoUInt32>(2, 2, ...[_d0, _d1]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
        stdgo._internal.fmt.Fmt.printf(("%v + %v = %v (carry bit was %v)\n" : stdgo.GoString), stdgo.Go.toInterface(_n1), stdgo.Go.toInterface(_n2), stdgo.Go.toInterface(_nsum), stdgo.Go.toInterface(_carry));
        _n1 = (new stdgo.Slice<stdgo.GoUInt32>(2, 2, ...[(1u32 : stdgo.GoUInt32), (-2147483648u32 : stdgo.GoUInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
        _n2 = (new stdgo.Slice<stdgo.GoUInt32>(2, 2, ...[(1u32 : stdgo.GoUInt32), (-2147483648u32 : stdgo.GoUInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits.add32(_n1[(1 : stdgo.GoInt)], _n2[(1 : stdgo.GoInt)], (0u32 : stdgo.GoUInt32));
            _d1 = __tmp__._0;
            _carry = __tmp__._1;
        };
        {
            var __tmp__ = stdgo._internal.math.bits.Bits.add32(_n1[(0 : stdgo.GoInt)], _n2[(0 : stdgo.GoInt)], _carry);
            _d0 = __tmp__._0;
        };
        _nsum = (new stdgo.Slice<stdgo.GoUInt32>(2, 2, ...[_d0, _d1]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
        stdgo._internal.fmt.Fmt.printf(("%v + %v = %v (carry bit was %v)\n" : stdgo.GoString), stdgo.Go.toInterface(_n1), stdgo.Go.toInterface(_n2), stdgo.Go.toInterface(_nsum), stdgo.Go.toInterface(_carry));
    }
```


</p>
</details>


[\(view code\)](<./Bits.hx#L4185>)


## function add64


```haxe
function add64(_x:stdgo.GoUInt64, _y:stdgo.GoUInt64, _carry:stdgo.GoUInt64):{
	_1:stdgo.GoUInt64;
	_0:stdgo.GoUInt64;
}
```


### exampleAdd64


<details><summary></summary>
<p>


```haxe
function exampleAdd64():Void {
        var _n1 = (new stdgo.Slice<stdgo.GoUInt64>(2, 2, ...[(33i64 : stdgo.GoUInt64), (12i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>);
        var _n2 = (new stdgo.Slice<stdgo.GoUInt64>(2, 2, ...[(21i64 : stdgo.GoUInt64), (23i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>);
        var __tmp__ = stdgo._internal.math.bits.Bits.add64(_n1[(1 : stdgo.GoInt)], _n2[(1 : stdgo.GoInt)], (0i64 : stdgo.GoUInt64)), _d1:stdgo.GoUInt64 = __tmp__._0, _carry:stdgo.GoUInt64 = __tmp__._1;
        var __tmp__ = stdgo._internal.math.bits.Bits.add64(_n1[(0 : stdgo.GoInt)], _n2[(0 : stdgo.GoInt)], _carry), _d0:stdgo.GoUInt64 = __tmp__._0, __0:stdgo.GoUInt64 = __tmp__._1;
        var _nsum = (new stdgo.Slice<stdgo.GoUInt64>(2, 2, ...[_d0, _d1]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>);
        stdgo._internal.fmt.Fmt.printf(("%v + %v = %v (carry bit was %v)\n" : stdgo.GoString), stdgo.Go.toInterface(_n1), stdgo.Go.toInterface(_n2), stdgo.Go.toInterface(_nsum), stdgo.Go.toInterface(_carry));
        _n1 = (new stdgo.Slice<stdgo.GoUInt64>(2, 2, ...[(1i64 : stdgo.GoUInt64), (-9223372036854775808i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>);
        _n2 = (new stdgo.Slice<stdgo.GoUInt64>(2, 2, ...[(1i64 : stdgo.GoUInt64), (-9223372036854775808i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits.add64(_n1[(1 : stdgo.GoInt)], _n2[(1 : stdgo.GoInt)], (0i64 : stdgo.GoUInt64));
            _d1 = __tmp__._0;
            _carry = __tmp__._1;
        };
        {
            var __tmp__ = stdgo._internal.math.bits.Bits.add64(_n1[(0 : stdgo.GoInt)], _n2[(0 : stdgo.GoInt)], _carry);
            _d0 = __tmp__._0;
        };
        _nsum = (new stdgo.Slice<stdgo.GoUInt64>(2, 2, ...[_d0, _d1]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>);
        stdgo._internal.fmt.Fmt.printf(("%v + %v = %v (carry bit was %v)\n" : stdgo.GoString), stdgo.Go.toInterface(_n1), stdgo.Go.toInterface(_n2), stdgo.Go.toInterface(_nsum), stdgo.Go.toInterface(_carry));
    }
```


</p>
</details>


[\(view code\)](<./Bits.hx#L4192>)


## function div


```haxe
function div(_hi:stdgo.GoUInt, _lo:stdgo.GoUInt, _y:stdgo.GoUInt):{
	_1:stdgo.GoUInt;
	_0:stdgo.GoUInt;
}
```


[\(view code\)](<./Bits.hx#L4255>)


## function div32


```haxe
function div32(_hi:stdgo.GoUInt32, _lo:stdgo.GoUInt32, _y:stdgo.GoUInt32):{
	_1:stdgo.GoUInt32;
	_0:stdgo.GoUInt32;
}
```


### exampleDiv32


<details><summary></summary>
<p>


```haxe
function exampleDiv32():Void {
        var _n1 = (new stdgo.Slice<stdgo.GoUInt32>(2, 2, ...[(0u32 : stdgo.GoUInt32), (6u32 : stdgo.GoUInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
        var _n2 = (new stdgo.Slice<stdgo.GoUInt32>(2, 2, ...[(0u32 : stdgo.GoUInt32), (3u32 : stdgo.GoUInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
        var __tmp__ = stdgo._internal.math.bits.Bits.div32(_n1[(0 : stdgo.GoInt)], _n1[(1 : stdgo.GoInt)], _n2[(1 : stdgo.GoInt)]), _quo:stdgo.GoUInt32 = __tmp__._0, _rem:stdgo.GoUInt32 = __tmp__._1;
        var _nsum = (new stdgo.Slice<stdgo.GoUInt32>(2, 2, ...[_quo, _rem]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
        stdgo._internal.fmt.Fmt.printf(("[%v %v] / %v = %v\n" : stdgo.GoString), stdgo.Go.toInterface(_n1[(0 : stdgo.GoInt)]), stdgo.Go.toInterface(_n1[(1 : stdgo.GoInt)]), stdgo.Go.toInterface(_n2[(1 : stdgo.GoInt)]), stdgo.Go.toInterface(_nsum));
        _n1 = (new stdgo.Slice<stdgo.GoUInt32>(2, 2, ...[(2u32 : stdgo.GoUInt32), (-2147483648u32 : stdgo.GoUInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
        _n2 = (new stdgo.Slice<stdgo.GoUInt32>(2, 2, ...[(0u32 : stdgo.GoUInt32), (-2147483648u32 : stdgo.GoUInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits.div32(_n1[(0 : stdgo.GoInt)], _n1[(1 : stdgo.GoInt)], _n2[(1 : stdgo.GoInt)]);
            _quo = __tmp__._0;
            _rem = __tmp__._1;
        };
        _nsum = (new stdgo.Slice<stdgo.GoUInt32>(2, 2, ...[_quo, _rem]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
        stdgo._internal.fmt.Fmt.printf(("[%v %v] / %v = %v\n" : stdgo.GoString), stdgo.Go.toInterface(_n1[(0 : stdgo.GoInt)]), stdgo.Go.toInterface(_n1[(1 : stdgo.GoInt)]), stdgo.Go.toInterface(_n2[(1 : stdgo.GoInt)]), stdgo.Go.toInterface(_nsum));
    }
```


</p>
</details>


[\(view code\)](<./Bits.hx#L4264>)


## function div64


```haxe
function div64(_hi:stdgo.GoUInt64, _lo:stdgo.GoUInt64, _y:stdgo.GoUInt64):{
	_1:stdgo.GoUInt64;
	_0:stdgo.GoUInt64;
}
```


### exampleDiv64


<details><summary></summary>
<p>


```haxe
function exampleDiv64():Void {
        var _n1 = (new stdgo.Slice<stdgo.GoUInt64>(2, 2, ...[(0i64 : stdgo.GoUInt64), (6i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>);
        var _n2 = (new stdgo.Slice<stdgo.GoUInt64>(2, 2, ...[(0i64 : stdgo.GoUInt64), (3i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>);
        var __tmp__ = stdgo._internal.math.bits.Bits.div64(_n1[(0 : stdgo.GoInt)], _n1[(1 : stdgo.GoInt)], _n2[(1 : stdgo.GoInt)]), _quo:stdgo.GoUInt64 = __tmp__._0, _rem:stdgo.GoUInt64 = __tmp__._1;
        var _nsum = (new stdgo.Slice<stdgo.GoUInt64>(2, 2, ...[_quo, _rem]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>);
        stdgo._internal.fmt.Fmt.printf(("[%v %v] / %v = %v\n" : stdgo.GoString), stdgo.Go.toInterface(_n1[(0 : stdgo.GoInt)]), stdgo.Go.toInterface(_n1[(1 : stdgo.GoInt)]), stdgo.Go.toInterface(_n2[(1 : stdgo.GoInt)]), stdgo.Go.toInterface(_nsum));
        _n1 = (new stdgo.Slice<stdgo.GoUInt64>(2, 2, ...[(2i64 : stdgo.GoUInt64), (-9223372036854775808i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>);
        _n2 = (new stdgo.Slice<stdgo.GoUInt64>(2, 2, ...[(0i64 : stdgo.GoUInt64), (-9223372036854775808i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits.div64(_n1[(0 : stdgo.GoInt)], _n1[(1 : stdgo.GoInt)], _n2[(1 : stdgo.GoInt)]);
            _quo = __tmp__._0;
            _rem = __tmp__._1;
        };
        _nsum = (new stdgo.Slice<stdgo.GoUInt64>(2, 2, ...[_quo, _rem]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>);
        stdgo._internal.fmt.Fmt.printf(("[%v %v] / %v = %v\n" : stdgo.GoString), stdgo.Go.toInterface(_n1[(0 : stdgo.GoInt)]), stdgo.Go.toInterface(_n1[(1 : stdgo.GoInt)]), stdgo.Go.toInterface(_n2[(1 : stdgo.GoInt)]), stdgo.Go.toInterface(_nsum));
    }
```


</p>
</details>


[\(view code\)](<./Bits.hx#L4278>)


## function leadingZeros


```haxe
function leadingZeros(_x:stdgo.GoUInt):stdgo.GoInt
```


[\(view code\)](<./Bits.hx#L945>)


## function leadingZeros16


```haxe
function leadingZeros16(_x:stdgo.GoUInt16):stdgo.GoInt
```


### exampleLeadingZeros16


<details><summary></summary>
<p>


```haxe
function exampleLeadingZeros16():Void {
        stdgo._internal.fmt.Fmt.printf(("LeadingZeros16(%016b) = %d\n" : stdgo.GoString), stdgo.Go.toInterface((1 : stdgo.GoInt)), stdgo.Go.toInterface(stdgo._internal.math.bits.Bits.leadingZeros16((1 : stdgo.GoUInt16))));
    }
```


</p>
</details>


[\(view code\)](<./Bits.hx#L951>)


## function leadingZeros32


```haxe
function leadingZeros32(_x:stdgo.GoUInt32):stdgo.GoInt
```


### exampleLeadingZeros32


<details><summary></summary>
<p>


```haxe
function exampleLeadingZeros32():Void {
        stdgo._internal.fmt.Fmt.printf(("LeadingZeros32(%032b) = %d\n" : stdgo.GoString), stdgo.Go.toInterface((1 : stdgo.GoInt)), stdgo.Go.toInterface(stdgo._internal.math.bits.Bits.leadingZeros32((1u32 : stdgo.GoUInt32))));
    }
```


</p>
</details>


[\(view code\)](<./Bits.hx#L954>)


## function leadingZeros64


```haxe
function leadingZeros64(_x:stdgo.GoUInt64):stdgo.GoInt
```


### exampleLeadingZeros64


<details><summary></summary>
<p>


```haxe
function exampleLeadingZeros64():Void {
        stdgo._internal.fmt.Fmt.printf(("LeadingZeros64(%064b) = %d\n" : stdgo.GoString), stdgo.Go.toInterface((1 : stdgo.GoInt)), stdgo.Go.toInterface(stdgo._internal.math.bits.Bits.leadingZeros64((1i64 : stdgo.GoUInt64))));
    }
```


</p>
</details>


[\(view code\)](<./Bits.hx#L957>)


## function leadingZeros8


```haxe
function leadingZeros8(_x:stdgo.GoUInt8):stdgo.GoInt
```


### exampleLeadingZeros8


<details><summary></summary>
<p>


```haxe
function exampleLeadingZeros8():Void {
        stdgo._internal.fmt.Fmt.printf(("LeadingZeros8(%08b) = %d\n" : stdgo.GoString), stdgo.Go.toInterface((1 : stdgo.GoInt)), stdgo.Go.toInterface(stdgo._internal.math.bits.Bits.leadingZeros8((1 : stdgo.GoUInt8))));
    }
```


</p>
</details>


[\(view code\)](<./Bits.hx#L948>)


## function len


```haxe
function len(_x:stdgo.GoUInt):stdgo.GoInt
```


[\(view code\)](<./Bits.hx#L3875>)


## function len16


```haxe
function len16(_x:stdgo.GoUInt16):stdgo.GoInt
```


### exampleLen16


<details><summary></summary>
<p>


```haxe
function exampleLen16():Void {
        stdgo._internal.fmt.Fmt.printf(("Len16(%016b) = %d\n" : stdgo.GoString), stdgo.Go.toInterface((8 : stdgo.GoInt)), stdgo.Go.toInterface(stdgo._internal.math.bits.Bits.len16((8 : stdgo.GoUInt16))));
    }
```


</p>
</details>


[\(view code\)](<./Bits.hx#L3948>)


## function len32


```haxe
function len32(_x:stdgo.GoUInt32):stdgo.GoInt
```


### exampleLen32


<details><summary></summary>
<p>


```haxe
function exampleLen32():Void {
        stdgo._internal.fmt.Fmt.printf(("Len32(%032b) = %d\n" : stdgo.GoString), stdgo.Go.toInterface((8 : stdgo.GoInt)), stdgo.Go.toInterface(stdgo._internal.math.bits.Bits.len32((8u32 : stdgo.GoUInt32))));
    }
```


</p>
</details>


[\(view code\)](<./Bits.hx#L4020>)


## function len64


```haxe
function len64(_x:stdgo.GoUInt64):stdgo.GoInt
```


### exampleLen64


<details><summary></summary>
<p>


```haxe
function exampleLen64():Void {
        stdgo._internal.fmt.Fmt.printf(("Len64(%064b) = %d\n" : stdgo.GoString), stdgo.Go.toInterface((8 : stdgo.GoInt)), stdgo.Go.toInterface(stdgo._internal.math.bits.Bits.len64((8i64 : stdgo.GoUInt64))));
    }
```


</p>
</details>


[\(view code\)](<./Bits.hx#L4096>)


## function len8


```haxe
function len8(_x:stdgo.GoUInt8):stdgo.GoInt
```


### exampleLen8


<details><summary></summary>
<p>


```haxe
function exampleLen8():Void {
        stdgo._internal.fmt.Fmt.printf(("Len8(%08b) = %d\n" : stdgo.GoString), stdgo.Go.toInterface((8 : stdgo.GoInt)), stdgo.Go.toInterface(stdgo._internal.math.bits.Bits.len8((8 : stdgo.GoUInt8))));
    }
```


</p>
</details>


[\(view code\)](<./Bits.hx#L3881>)


## function mul


```haxe
function mul(_x:stdgo.GoUInt, _y:stdgo.GoUInt):{
	_1:stdgo.GoUInt;
	_0:stdgo.GoUInt;
}
```


[\(view code\)](<./Bits.hx#L4219>)


## function mul32


```haxe
function mul32(_x:stdgo.GoUInt32, _y:stdgo.GoUInt32):{
	_1:stdgo.GoUInt32;
	_0:stdgo.GoUInt32;
}
```


### exampleMul32


<details><summary></summary>
<p>


```haxe
function exampleMul32():Void {
        var _n1 = (new stdgo.Slice<stdgo.GoUInt32>(2, 2, ...[(0u32 : stdgo.GoUInt32), (12u32 : stdgo.GoUInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
        var _n2 = (new stdgo.Slice<stdgo.GoUInt32>(2, 2, ...[(0u32 : stdgo.GoUInt32), (12u32 : stdgo.GoUInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
        var __tmp__ = stdgo._internal.math.bits.Bits.mul32(_n1[(1 : stdgo.GoInt)], _n2[(1 : stdgo.GoInt)]), _hi:stdgo.GoUInt32 = __tmp__._0, _lo:stdgo.GoUInt32 = __tmp__._1;
        var _nsum = (new stdgo.Slice<stdgo.GoUInt32>(2, 2, ...[_hi, _lo]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
        stdgo._internal.fmt.Fmt.printf(("%v * %v = %v\n" : stdgo.GoString), stdgo.Go.toInterface(_n1[(1 : stdgo.GoInt)]), stdgo.Go.toInterface(_n2[(1 : stdgo.GoInt)]), stdgo.Go.toInterface(_nsum));
        _n1 = (new stdgo.Slice<stdgo.GoUInt32>(2, 2, ...[(0u32 : stdgo.GoUInt32), (-2147483648u32 : stdgo.GoUInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
        _n2 = (new stdgo.Slice<stdgo.GoUInt32>(2, 2, ...[(0u32 : stdgo.GoUInt32), (2u32 : stdgo.GoUInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits.mul32(_n1[(1 : stdgo.GoInt)], _n2[(1 : stdgo.GoInt)]);
            _hi = __tmp__._0;
            _lo = __tmp__._1;
        };
        _nsum = (new stdgo.Slice<stdgo.GoUInt32>(2, 2, ...[_hi, _lo]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
        stdgo._internal.fmt.Fmt.printf(("%v * %v = %v\n" : stdgo.GoString), stdgo.Go.toInterface(_n1[(1 : stdgo.GoInt)]), stdgo.Go.toInterface(_n2[(1 : stdgo.GoInt)]), stdgo.Go.toInterface(_nsum));
    }
```


</p>
</details>


[\(view code\)](<./Bits.hx#L4228>)


## function mul64


```haxe
function mul64(_x:stdgo.GoUInt64, _y:stdgo.GoUInt64):{
	_1:stdgo.GoUInt64;
	_0:stdgo.GoUInt64;
}
```


### exampleMul64


<details><summary></summary>
<p>


```haxe
function exampleMul64():Void {
        var _n1 = (new stdgo.Slice<stdgo.GoUInt64>(2, 2, ...[(0i64 : stdgo.GoUInt64), (12i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>);
        var _n2 = (new stdgo.Slice<stdgo.GoUInt64>(2, 2, ...[(0i64 : stdgo.GoUInt64), (12i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>);
        var __tmp__ = stdgo._internal.math.bits.Bits.mul64(_n1[(1 : stdgo.GoInt)], _n2[(1 : stdgo.GoInt)]), _hi:stdgo.GoUInt64 = __tmp__._0, _lo:stdgo.GoUInt64 = __tmp__._1;
        var _nsum = (new stdgo.Slice<stdgo.GoUInt64>(2, 2, ...[_hi, _lo]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>);
        stdgo._internal.fmt.Fmt.printf(("%v * %v = %v\n" : stdgo.GoString), stdgo.Go.toInterface(_n1[(1 : stdgo.GoInt)]), stdgo.Go.toInterface(_n2[(1 : stdgo.GoInt)]), stdgo.Go.toInterface(_nsum));
        _n1 = (new stdgo.Slice<stdgo.GoUInt64>(2, 2, ...[(0i64 : stdgo.GoUInt64), (-9223372036854775808i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>);
        _n2 = (new stdgo.Slice<stdgo.GoUInt64>(2, 2, ...[(0i64 : stdgo.GoUInt64), (2i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits.mul64(_n1[(1 : stdgo.GoInt)], _n2[(1 : stdgo.GoInt)]);
            _hi = __tmp__._0;
            _lo = __tmp__._1;
        };
        _nsum = (new stdgo.Slice<stdgo.GoUInt64>(2, 2, ...[_hi, _lo]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>);
        stdgo._internal.fmt.Fmt.printf(("%v * %v = %v\n" : stdgo.GoString), stdgo.Go.toInterface(_n1[(1 : stdgo.GoInt)]), stdgo.Go.toInterface(_n2[(1 : stdgo.GoInt)]), stdgo.Go.toInterface(_nsum));
    }
```


</p>
</details>


[\(view code\)](<./Bits.hx#L4239>)


## function onesCount


```haxe
function onesCount(_x:stdgo.GoUInt):stdgo.GoInt
```


### exampleOnesCount


<details><summary></summary>
<p>


```haxe
function exampleOnesCount():Void {
        stdgo._internal.fmt.Fmt.printf(("OnesCount(%b) = %d\n" : stdgo.GoString), stdgo.Go.toInterface((14 : stdgo.GoInt)), stdgo.Go.toInterface(stdgo._internal.math.bits.Bits.onesCount((14u32 : stdgo.GoUInt))));
    }
```


</p>
</details>


[\(view code\)](<./Bits.hx#L1242>)


## function onesCount16


```haxe
function onesCount16(_x:stdgo.GoUInt16):stdgo.GoInt
```


### exampleOnesCount16


<details><summary></summary>
<p>


```haxe
function exampleOnesCount16():Void {
        stdgo._internal.fmt.Fmt.printf(("OnesCount16(%016b) = %d\n" : stdgo.GoString), stdgo.Go.toInterface((14 : stdgo.GoInt)), stdgo.Go.toInterface(stdgo._internal.math.bits.Bits.onesCount16((14 : stdgo.GoUInt16))));
    }
```


</p>
</details>


[\(view code\)](<./Bits.hx#L1504>)


## function onesCount32


```haxe
function onesCount32(_x:stdgo.GoUInt32):stdgo.GoInt
```


### exampleOnesCount32


<details><summary></summary>
<p>


```haxe
function exampleOnesCount32():Void {
        stdgo._internal.fmt.Fmt.printf(("OnesCount32(%032b) = %d\n" : stdgo.GoString), stdgo.Go.toInterface((14 : stdgo.GoInt)), stdgo.Go.toInterface(stdgo._internal.math.bits.Bits.onesCount32((14u32 : stdgo.GoUInt32))));
    }
```


</p>
</details>


[\(view code\)](<./Bits.hx#L2013>)


## function onesCount64


```haxe
function onesCount64(_x:stdgo.GoUInt64):stdgo.GoInt
```


### exampleOnesCount64


<details><summary></summary>
<p>


```haxe
function exampleOnesCount64():Void {
        stdgo._internal.fmt.Fmt.printf(("OnesCount64(%064b) = %d\n" : stdgo.GoString), stdgo.Go.toInterface((14 : stdgo.GoInt)), stdgo.Go.toInterface(stdgo._internal.math.bits.Bits.onesCount64((14i64 : stdgo.GoUInt64))));
    }
```


</p>
</details>


[\(view code\)](<./Bits.hx#L3028>)


## function onesCount8


```haxe
function onesCount8(_x:stdgo.GoUInt8):stdgo.GoInt
```


### exampleOnesCount8


<details><summary></summary>
<p>


```haxe
function exampleOnesCount8():Void {
        stdgo._internal.fmt.Fmt.printf(("OnesCount8(%08b) = %d\n" : stdgo.GoString), stdgo.Go.toInterface((14 : stdgo.GoInt)), stdgo.Go.toInterface(stdgo._internal.math.bits.Bits.onesCount8((14 : stdgo.GoUInt8))));
    }
```


</p>
</details>


[\(view code\)](<./Bits.hx#L1248>)


## function rem


```haxe
function rem(_hi:stdgo.GoUInt, _lo:stdgo.GoUInt, _y:stdgo.GoUInt):stdgo.GoUInt
```


[\(view code\)](<./Bits.hx#L4319>)


## function rem32


```haxe
function rem32(_hi:stdgo.GoUInt32, _lo:stdgo.GoUInt32, _y:stdgo.GoUInt32):stdgo.GoUInt32
```


[\(view code\)](<./Bits.hx#L4325>)


## function rem64


```haxe
function rem64(_hi:stdgo.GoUInt64, _lo:stdgo.GoUInt64, _y:stdgo.GoUInt64):stdgo.GoUInt64
```


[\(view code\)](<./Bits.hx#L4328>)


## function reverse


```haxe
function reverse(_x:stdgo.GoUInt):stdgo.GoUInt
```


[\(view code\)](<./Bits.hx#L3064>)


## function reverse16


```haxe
function reverse16(_x:stdgo.GoUInt16):stdgo.GoUInt16
```


### exampleReverse16


<details><summary></summary>
<p>


```haxe
function exampleReverse16():Void {
        stdgo._internal.fmt.Fmt.printf(("%016b\n" : stdgo.GoString), stdgo.Go.toInterface((19 : stdgo.GoInt)));
        stdgo._internal.fmt.Fmt.printf(("%016b\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.bits.Bits.reverse16((19 : stdgo.GoUInt16))));
    }
```


</p>
</details>


[\(view code\)](<./Bits.hx#L3328>)


## function reverse32


```haxe
function reverse32(_x:stdgo.GoUInt32):stdgo.GoUInt32
```


### exampleReverse32


<details><summary></summary>
<p>


```haxe
function exampleReverse32():Void {
        stdgo._internal.fmt.Fmt.printf(("%032b\n" : stdgo.GoString), stdgo.Go.toInterface((19 : stdgo.GoInt)));
        stdgo._internal.fmt.Fmt.printf(("%032b\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.bits.Bits.reverse32((19u32 : stdgo.GoUInt32))));
    }
```


</p>
</details>


[\(view code\)](<./Bits.hx#L3841>)


## function reverse64


```haxe
function reverse64(_x:stdgo.GoUInt64):stdgo.GoUInt64
```


### exampleReverse64


<details><summary></summary>
<p>


```haxe
function exampleReverse64():Void {
        stdgo._internal.fmt.Fmt.printf(("%064b\n" : stdgo.GoString), stdgo.Go.toInterface((19 : stdgo.GoInt)));
        stdgo._internal.fmt.Fmt.printf(("%064b\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.bits.Bits.reverse64((19i64 : stdgo.GoUInt64))));
    }
```


</p>
</details>


[\(view code\)](<./Bits.hx#L3848>)


## function reverse8


```haxe
function reverse8(_x:stdgo.GoUInt8):stdgo.GoUInt8
```


### exampleReverse8


<details><summary></summary>
<p>


```haxe
function exampleReverse8():Void {
        stdgo._internal.fmt.Fmt.printf(("%08b\n" : stdgo.GoString), stdgo.Go.toInterface((19 : stdgo.GoInt)));
        stdgo._internal.fmt.Fmt.printf(("%08b\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.bits.Bits.reverse8((19 : stdgo.GoUInt8))));
    }
```


</p>
</details>


[\(view code\)](<./Bits.hx#L3070>)


## function reverseBytes


```haxe
function reverseBytes(_x:stdgo.GoUInt):stdgo.GoUInt
```


[\(view code\)](<./Bits.hx#L3855>)


## function reverseBytes16


```haxe
function reverseBytes16(_x:stdgo.GoUInt16):stdgo.GoUInt16
```


### exampleReverseBytes16


<details><summary></summary>
<p>


```haxe
function exampleReverseBytes16():Void {
        stdgo._internal.fmt.Fmt.printf(("%016b\n" : stdgo.GoString), stdgo.Go.toInterface((15 : stdgo.GoInt)));
        stdgo._internal.fmt.Fmt.printf(("%016b\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.bits.Bits.reverseBytes16((15 : stdgo.GoUInt16))));
    }
```


</p>
</details>


[\(view code\)](<./Bits.hx#L3861>)


## function reverseBytes32


```haxe
function reverseBytes32(_x:stdgo.GoUInt32):stdgo.GoUInt32
```


### exampleReverseBytes32


<details><summary></summary>
<p>


```haxe
function exampleReverseBytes32():Void {
        stdgo._internal.fmt.Fmt.printf(("%032b\n" : stdgo.GoString), stdgo.Go.toInterface((15 : stdgo.GoInt)));
        stdgo._internal.fmt.Fmt.printf(("%032b\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.bits.Bits.reverseBytes32((15u32 : stdgo.GoUInt32))));
    }
```


</p>
</details>


[\(view code\)](<./Bits.hx#L3864>)


## function reverseBytes64


```haxe
function reverseBytes64(_x:stdgo.GoUInt64):stdgo.GoUInt64
```


### exampleReverseBytes64


<details><summary></summary>
<p>


```haxe
function exampleReverseBytes64():Void {
        stdgo._internal.fmt.Fmt.printf(("%064b\n" : stdgo.GoString), stdgo.Go.toInterface((15 : stdgo.GoInt)));
        stdgo._internal.fmt.Fmt.printf(("%064b\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.bits.Bits.reverseBytes64((15i64 : stdgo.GoUInt64))));
    }
```


</p>
</details>


[\(view code\)](<./Bits.hx#L3869>)


## function rotateLeft


```haxe
function rotateLeft(_x:stdgo.GoUInt, _k:stdgo.GoInt):stdgo.GoUInt
```


[\(view code\)](<./Bits.hx#L3038>)


## function rotateLeft16


```haxe
function rotateLeft16(_x:stdgo.GoUInt16, _k:stdgo.GoInt):stdgo.GoUInt16
```


### exampleRotateLeft16


<details><summary></summary>
<p>


```haxe
function exampleRotateLeft16():Void {
        stdgo._internal.fmt.Fmt.printf(("%016b\n" : stdgo.GoString), stdgo.Go.toInterface((15 : stdgo.GoInt)));
        stdgo._internal.fmt.Fmt.printf(("%016b\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.bits.Bits.rotateLeft16((15 : stdgo.GoUInt16), (2 : stdgo.GoInt))));
        stdgo._internal.fmt.Fmt.printf(("%016b\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.bits.Bits.rotateLeft16((15 : stdgo.GoUInt16), (-2 : stdgo.GoInt))));
    }
```


</p>
</details>


[\(view code\)](<./Bits.hx#L3049>)


## function rotateLeft32


```haxe
function rotateLeft32(_x:stdgo.GoUInt32, _k:stdgo.GoInt):stdgo.GoUInt32
```


### exampleRotateLeft32


<details><summary></summary>
<p>


```haxe
function exampleRotateLeft32():Void {
        stdgo._internal.fmt.Fmt.printf(("%032b\n" : stdgo.GoString), stdgo.Go.toInterface((15 : stdgo.GoInt)));
        stdgo._internal.fmt.Fmt.printf(("%032b\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.bits.Bits.rotateLeft32((15u32 : stdgo.GoUInt32), (2 : stdgo.GoInt))));
        stdgo._internal.fmt.Fmt.printf(("%032b\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.bits.Bits.rotateLeft32((15u32 : stdgo.GoUInt32), (-2 : stdgo.GoInt))));
    }
```


</p>
</details>


[\(view code\)](<./Bits.hx#L3054>)


## function rotateLeft64


```haxe
function rotateLeft64(_x:stdgo.GoUInt64, _k:stdgo.GoInt):stdgo.GoUInt64
```


### exampleRotateLeft64


<details><summary></summary>
<p>


```haxe
function exampleRotateLeft64():Void {
        stdgo._internal.fmt.Fmt.printf(("%064b\n" : stdgo.GoString), stdgo.Go.toInterface((15 : stdgo.GoInt)));
        stdgo._internal.fmt.Fmt.printf(("%064b\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.bits.Bits.rotateLeft64((15i64 : stdgo.GoUInt64), (2 : stdgo.GoInt))));
        stdgo._internal.fmt.Fmt.printf(("%064b\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.bits.Bits.rotateLeft64((15i64 : stdgo.GoUInt64), (-2 : stdgo.GoInt))));
    }
```


</p>
</details>


[\(view code\)](<./Bits.hx#L3059>)


## function rotateLeft8


```haxe
function rotateLeft8(_x:stdgo.GoUInt8, _k:stdgo.GoInt):stdgo.GoUInt8
```


### exampleRotateLeft8


<details><summary></summary>
<p>


```haxe
function exampleRotateLeft8():Void {
        stdgo._internal.fmt.Fmt.printf(("%08b\n" : stdgo.GoString), stdgo.Go.toInterface((15 : stdgo.GoInt)));
        stdgo._internal.fmt.Fmt.printf(("%08b\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.bits.Bits.rotateLeft8((15 : stdgo.GoUInt8), (2 : stdgo.GoInt))));
        stdgo._internal.fmt.Fmt.printf(("%08b\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.bits.Bits.rotateLeft8((15 : stdgo.GoUInt8), (-2 : stdgo.GoInt))));
    }
```


</p>
</details>


[\(view code\)](<./Bits.hx#L3044>)


## function sub


```haxe
function sub(_x:stdgo.GoUInt, _y:stdgo.GoUInt, _borrow:stdgo.GoUInt):{
	_1:stdgo.GoUInt;
	_0:stdgo.GoUInt;
}
```


[\(view code\)](<./Bits.hx#L4198>)


## function sub32


```haxe
function sub32(_x:stdgo.GoUInt32, _y:stdgo.GoUInt32, _borrow:stdgo.GoUInt32):{
	_1:stdgo.GoUInt32;
	_0:stdgo.GoUInt32;
}
```


### exampleSub32


<details><summary></summary>
<p>


```haxe
function exampleSub32():Void {
        var _n1 = (new stdgo.Slice<stdgo.GoUInt32>(2, 2, ...[(33u32 : stdgo.GoUInt32), (23u32 : stdgo.GoUInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
        var _n2 = (new stdgo.Slice<stdgo.GoUInt32>(2, 2, ...[(21u32 : stdgo.GoUInt32), (12u32 : stdgo.GoUInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
        var __tmp__ = stdgo._internal.math.bits.Bits.sub32(_n1[(1 : stdgo.GoInt)], _n2[(1 : stdgo.GoInt)], (0u32 : stdgo.GoUInt32)), _d1:stdgo.GoUInt32 = __tmp__._0, _carry:stdgo.GoUInt32 = __tmp__._1;
        var __tmp__ = stdgo._internal.math.bits.Bits.sub32(_n1[(0 : stdgo.GoInt)], _n2[(0 : stdgo.GoInt)], _carry), _d0:stdgo.GoUInt32 = __tmp__._0, __0:stdgo.GoUInt32 = __tmp__._1;
        var _nsum = (new stdgo.Slice<stdgo.GoUInt32>(2, 2, ...[_d0, _d1]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
        stdgo._internal.fmt.Fmt.printf(("%v - %v = %v (carry bit was %v)\n" : stdgo.GoString), stdgo.Go.toInterface(_n1), stdgo.Go.toInterface(_n2), stdgo.Go.toInterface(_nsum), stdgo.Go.toInterface(_carry));
        _n1 = (new stdgo.Slice<stdgo.GoUInt32>(2, 2, ...[(3u32 : stdgo.GoUInt32), (2147483647u32 : stdgo.GoUInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
        _n2 = (new stdgo.Slice<stdgo.GoUInt32>(2, 2, ...[(1u32 : stdgo.GoUInt32), (-2147483648u32 : stdgo.GoUInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits.sub32(_n1[(1 : stdgo.GoInt)], _n2[(1 : stdgo.GoInt)], (0u32 : stdgo.GoUInt32));
            _d1 = __tmp__._0;
            _carry = __tmp__._1;
        };
        {
            var __tmp__ = stdgo._internal.math.bits.Bits.sub32(_n1[(0 : stdgo.GoInt)], _n2[(0 : stdgo.GoInt)], _carry);
            _d0 = __tmp__._0;
        };
        _nsum = (new stdgo.Slice<stdgo.GoUInt32>(2, 2, ...[_d0, _d1]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
        stdgo._internal.fmt.Fmt.printf(("%v - %v = %v (carry bit was %v)\n" : stdgo.GoString), stdgo.Go.toInterface(_n1), stdgo.Go.toInterface(_n2), stdgo.Go.toInterface(_nsum), stdgo.Go.toInterface(_carry));
    }
```


</p>
</details>


[\(view code\)](<./Bits.hx#L4207>)


## function sub64


```haxe
function sub64(_x:stdgo.GoUInt64, _y:stdgo.GoUInt64, _borrow:stdgo.GoUInt64):{
	_1:stdgo.GoUInt64;
	_0:stdgo.GoUInt64;
}
```


### exampleSub64


<details><summary></summary>
<p>


```haxe
function exampleSub64():Void {
        var _n1 = (new stdgo.Slice<stdgo.GoUInt64>(2, 2, ...[(33i64 : stdgo.GoUInt64), (23i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>);
        var _n2 = (new stdgo.Slice<stdgo.GoUInt64>(2, 2, ...[(21i64 : stdgo.GoUInt64), (12i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>);
        var __tmp__ = stdgo._internal.math.bits.Bits.sub64(_n1[(1 : stdgo.GoInt)], _n2[(1 : stdgo.GoInt)], (0i64 : stdgo.GoUInt64)), _d1:stdgo.GoUInt64 = __tmp__._0, _carry:stdgo.GoUInt64 = __tmp__._1;
        var __tmp__ = stdgo._internal.math.bits.Bits.sub64(_n1[(0 : stdgo.GoInt)], _n2[(0 : stdgo.GoInt)], _carry), _d0:stdgo.GoUInt64 = __tmp__._0, __0:stdgo.GoUInt64 = __tmp__._1;
        var _nsum = (new stdgo.Slice<stdgo.GoUInt64>(2, 2, ...[_d0, _d1]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>);
        stdgo._internal.fmt.Fmt.printf(("%v - %v = %v (carry bit was %v)\n" : stdgo.GoString), stdgo.Go.toInterface(_n1), stdgo.Go.toInterface(_n2), stdgo.Go.toInterface(_nsum), stdgo.Go.toInterface(_carry));
        _n1 = (new stdgo.Slice<stdgo.GoUInt64>(2, 2, ...[(3i64 : stdgo.GoUInt64), (9223372036854775807i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>);
        _n2 = (new stdgo.Slice<stdgo.GoUInt64>(2, 2, ...[(1i64 : stdgo.GoUInt64), (-9223372036854775808i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits.sub64(_n1[(1 : stdgo.GoInt)], _n2[(1 : stdgo.GoInt)], (0i64 : stdgo.GoUInt64));
            _d1 = __tmp__._0;
            _carry = __tmp__._1;
        };
        {
            var __tmp__ = stdgo._internal.math.bits.Bits.sub64(_n1[(0 : stdgo.GoInt)], _n2[(0 : stdgo.GoInt)], _carry);
            _d0 = __tmp__._0;
        };
        _nsum = (new stdgo.Slice<stdgo.GoUInt64>(2, 2, ...[_d0, _d1]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>);
        stdgo._internal.fmt.Fmt.printf(("%v - %v = %v (carry bit was %v)\n" : stdgo.GoString), stdgo.Go.toInterface(_n1), stdgo.Go.toInterface(_n2), stdgo.Go.toInterface(_nsum), stdgo.Go.toInterface(_carry));
    }
```


</p>
</details>


[\(view code\)](<./Bits.hx#L4213>)


## function trailingZeros


```haxe
function trailingZeros(_x:stdgo.GoUInt):stdgo.GoInt
```


[\(view code\)](<./Bits.hx#L960>)


## function trailingZeros16


```haxe
function trailingZeros16(_x:stdgo.GoUInt16):stdgo.GoInt
```


### exampleTrailingZeros16


<details><summary></summary>
<p>


```haxe
function exampleTrailingZeros16():Void {
        stdgo._internal.fmt.Fmt.printf(("TrailingZeros16(%016b) = %d\n" : stdgo.GoString), stdgo.Go.toInterface((14 : stdgo.GoInt)), stdgo.Go.toInterface(stdgo._internal.math.bits.Bits.trailingZeros16((14 : stdgo.GoUInt16))));
    }
```


</p>
</details>


[\(view code\)](<./Bits.hx#L1224>)


## function trailingZeros32


```haxe
function trailingZeros32(_x:stdgo.GoUInt32):stdgo.GoInt
```


### exampleTrailingZeros32


<details><summary></summary>
<p>


```haxe
function exampleTrailingZeros32():Void {
        stdgo._internal.fmt.Fmt.printf(("TrailingZeros32(%032b) = %d\n" : stdgo.GoString), stdgo.Go.toInterface((14 : stdgo.GoInt)), stdgo.Go.toInterface(stdgo._internal.math.bits.Bits.trailingZeros32((14u32 : stdgo.GoUInt32))));
    }
```


</p>
</details>


[\(view code\)](<./Bits.hx#L1230>)


## function trailingZeros64


```haxe
function trailingZeros64(_x:stdgo.GoUInt64):stdgo.GoInt
```


### exampleTrailingZeros64


<details><summary></summary>
<p>


```haxe
function exampleTrailingZeros64():Void {
        stdgo._internal.fmt.Fmt.printf(("TrailingZeros64(%064b) = %d\n" : stdgo.GoString), stdgo.Go.toInterface((14 : stdgo.GoInt)), stdgo.Go.toInterface(stdgo._internal.math.bits.Bits.trailingZeros64((14i64 : stdgo.GoUInt64))));
    }
```


</p>
</details>


[\(view code\)](<./Bits.hx#L1236>)


## function trailingZeros8


```haxe
function trailingZeros8(_x:stdgo.GoUInt8):stdgo.GoInt
```


### exampleTrailingZeros8


<details><summary></summary>
<p>


```haxe
function exampleTrailingZeros8():Void {
        stdgo._internal.fmt.Fmt.printf(("TrailingZeros8(%08b) = %d\n" : stdgo.GoString), stdgo.Go.toInterface((14 : stdgo.GoInt)), stdgo.Go.toInterface(stdgo._internal.math.bits.Bits.trailingZeros8((14 : stdgo.GoUInt8))));
    }
```


</p>
</details>


[\(view code\)](<./Bits.hx#L966>)


