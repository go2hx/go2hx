# Module: `stdgo.math.bits`

[(view library index)](../../stdgo.md)


# Overview



Package bits implements bit counting and manipulation
functions for the predeclared unsigned integer types.  


Functions in this package may be implemented directly by
the compiler, for better performance. For those functions
the code in this package will not be used. Which
functions are implemented by the compiler depends on the
architecture and the Go release.  


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
import stdgo.math.bits.Bits
```


```haxe
final _deBruijn32:stdgo.GoUInt64 = ((125613361i64 : stdgo.StdGoTypes.GoUInt64))
```



See http://supertech.csail.mit.edu/papers/debruijn.pdf  

```haxe
final _deBruijn64:stdgo.GoUInt64 = ((285870213051353865i64 : stdgo.StdGoTypes.GoUInt64))
```


```haxe
final _len8tab:stdgo.GoString = stdgo.Go.str(0, 1, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, "\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08")
```


```haxe
final _m0:stdgo.GoUInt64 = ((6148914691236517205i64 : stdgo.StdGoTypes.GoUInt64))
```



01010101 ...  

```haxe
final _m1:stdgo.GoUInt64 = ((3689348814741910323i64 : stdgo.StdGoTypes.GoUInt64))
```



00110011 ...  

```haxe
final _m2:stdgo.GoUInt64 = ((1085102592571150095i64 : stdgo.StdGoTypes.GoUInt64))
```



00001111 ...  

```haxe
final _m3:stdgo.GoUInt64 = ((71777214294589695i64 : stdgo.StdGoTypes.GoUInt64))
```



etc.  

```haxe
final _m4:stdgo.GoUInt64 = ((281470681808895i64 : stdgo.StdGoTypes.GoUInt64))
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
final _uintSize:stdgo.GoUInt64 = ((32i64 : stdgo.StdGoTypes.GoUInt64))
```



32 or 64  

```haxe
final deBruijn64:stdgo.GoUInt64 = ((285870213051353865i64 : stdgo.StdGoTypes.GoUInt64))
```


```haxe
final uintSize:stdgo.GoUInt64 = ((32i64 : stdgo.StdGoTypes.GoUInt64))
```



UintSize is the size of a uint in bits.  

# Variables


```haxe
import stdgo.math.bits.Bits
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



go:linkname divideError runtime.divideError  

```haxe
var _overflowError:stdgo.Error
```



go:linkname overflowError runtime.overflowError  

# Functions


```haxe
import stdgo.math.bits.Bits
```


## function add


```haxe
function add(_x:stdgo.GoUInt, _y:stdgo.GoUInt, _carry:stdgo.GoUInt):{
	_1:stdgo.GoUInt;
	_0:stdgo.GoUInt;
}
```



Add returns the sum with carry of x, y and carry: sum = x \+ y \+ carry.
The carry input must be 0 or 1; otherwise the behavior is undefined.
The carryOut output is guaranteed to be 0 or 1.  


This function's execution time does not depend on the inputs.  

[\(view code\)](<./Bits.hx#L4407>)


## function add32


```haxe
function add32(_x:stdgo.GoUInt32, _y:stdgo.GoUInt32, _carry:stdgo.GoUInt32):{
	_1:stdgo.GoUInt32;
	_0:stdgo.GoUInt32;
}
```



Add32 returns the sum with carry of x, y and carry: sum = x \+ y \+ carry.
The carry input must be 0 or 1; otherwise the behavior is undefined.
The carryOut output is guaranteed to be 0 or 1.  


This function's execution time does not depend on the inputs.  

### exampleAdd32


<details><summary></summary>
<p>


```haxe
function exampleAdd32():Void {
        var _n1 = (new stdgo.Slice<stdgo.StdGoTypes.GoUInt32>(2, 2, (33u32 : stdgo.StdGoTypes.GoUInt32), (12u32 : stdgo.StdGoTypes.GoUInt32)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt32>);
        var _n2 = (new stdgo.Slice<stdgo.StdGoTypes.GoUInt32>(2, 2, (21u32 : stdgo.StdGoTypes.GoUInt32), (23u32 : stdgo.StdGoTypes.GoUInt32)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt32>);
        var __tmp__ = stdgo.math.bits.Bits.add32(_n1[(1 : stdgo.StdGoTypes.GoInt)], _n2[(1 : stdgo.StdGoTypes.GoInt)], (0u32 : stdgo.StdGoTypes.GoUInt32)), _d1:stdgo.StdGoTypes.GoUInt32 = __tmp__._0, _carry:stdgo.StdGoTypes.GoUInt32 = __tmp__._1;
        var __tmp__ = stdgo.math.bits.Bits.add32(_n1[(0 : stdgo.StdGoTypes.GoInt)], _n2[(0 : stdgo.StdGoTypes.GoInt)], _carry), _d0:stdgo.StdGoTypes.GoUInt32 = __tmp__._0, __0:stdgo.StdGoTypes.GoUInt32 = __tmp__._1;
        var _nsum = (new stdgo.Slice<stdgo.StdGoTypes.GoUInt32>(2, 2, _d0, _d1) : stdgo.Slice<stdgo.StdGoTypes.GoUInt32>);
        stdgo.fmt.Fmt.printf(("%v + %v = %v (carry bit was %v)\n" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_n1), stdgo.Go.toInterface(_n2), stdgo.Go.toInterface(_nsum), stdgo.Go.toInterface(_carry));
        _n1 = (new stdgo.Slice<stdgo.StdGoTypes.GoUInt32>(2, 2, (1u32 : stdgo.StdGoTypes.GoUInt32), (-2147483648u32 : stdgo.StdGoTypes.GoUInt32)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt32>);
        _n2 = (new stdgo.Slice<stdgo.StdGoTypes.GoUInt32>(2, 2, (1u32 : stdgo.StdGoTypes.GoUInt32), (-2147483648u32 : stdgo.StdGoTypes.GoUInt32)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt32>);
        {
            var __tmp__ = stdgo.math.bits.Bits.add32(_n1[(1 : stdgo.StdGoTypes.GoInt)], _n2[(1 : stdgo.StdGoTypes.GoInt)], (0u32 : stdgo.StdGoTypes.GoUInt32));
            _d1 = __tmp__._0;
            _carry = __tmp__._1;
        };
        {
            var __tmp__ = stdgo.math.bits.Bits.add32(_n1[(0 : stdgo.StdGoTypes.GoInt)], _n2[(0 : stdgo.StdGoTypes.GoInt)], _carry);
            _d0 = __tmp__._0;
        };
        _nsum = (new stdgo.Slice<stdgo.StdGoTypes.GoUInt32>(2, 2, _d0, _d1) : stdgo.Slice<stdgo.StdGoTypes.GoUInt32>);
        stdgo.fmt.Fmt.printf(("%v + %v = %v (carry bit was %v)\n" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_n1), stdgo.Go.toInterface(_n2), stdgo.Go.toInterface(_nsum), stdgo.Go.toInterface(_carry));
    }
```


</p>
</details>


[\(view code\)](<./Bits.hx#L4423>)


## function add64


```haxe
function add64(_x:stdgo.GoUInt64, _y:stdgo.GoUInt64, _carry:stdgo.GoUInt64):{
	_1:stdgo.GoUInt64;
	_0:stdgo.GoUInt64;
}
```



Add64 returns the sum with carry of x, y and carry: sum = x \+ y \+ carry.
The carry input must be 0 or 1; otherwise the behavior is undefined.
The carryOut output is guaranteed to be 0 or 1.  


This function's execution time does not depend on the inputs.  

### exampleAdd64


<details><summary></summary>
<p>


```haxe
function exampleAdd64():Void {
        var _n1 = (new stdgo.Slice<stdgo.StdGoTypes.GoUInt64>(2, 2, (33i64 : stdgo.StdGoTypes.GoUInt64), (12i64 : stdgo.StdGoTypes.GoUInt64)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt64>);
        var _n2 = (new stdgo.Slice<stdgo.StdGoTypes.GoUInt64>(2, 2, (21i64 : stdgo.StdGoTypes.GoUInt64), (23i64 : stdgo.StdGoTypes.GoUInt64)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt64>);
        var __tmp__ = stdgo.math.bits.Bits.add64(_n1[(1 : stdgo.StdGoTypes.GoInt)], _n2[(1 : stdgo.StdGoTypes.GoInt)], (0i64 : stdgo.StdGoTypes.GoUInt64)), _d1:stdgo.StdGoTypes.GoUInt64 = __tmp__._0, _carry:stdgo.StdGoTypes.GoUInt64 = __tmp__._1;
        var __tmp__ = stdgo.math.bits.Bits.add64(_n1[(0 : stdgo.StdGoTypes.GoInt)], _n2[(0 : stdgo.StdGoTypes.GoInt)], _carry), _d0:stdgo.StdGoTypes.GoUInt64 = __tmp__._0, __0:stdgo.StdGoTypes.GoUInt64 = __tmp__._1;
        var _nsum = (new stdgo.Slice<stdgo.StdGoTypes.GoUInt64>(2, 2, _d0, _d1) : stdgo.Slice<stdgo.StdGoTypes.GoUInt64>);
        stdgo.fmt.Fmt.printf(("%v + %v = %v (carry bit was %v)\n" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_n1), stdgo.Go.toInterface(_n2), stdgo.Go.toInterface(_nsum), stdgo.Go.toInterface(_carry));
        _n1 = (new stdgo.Slice<stdgo.StdGoTypes.GoUInt64>(2, 2, (1i64 : stdgo.StdGoTypes.GoUInt64), (-9223372036854775808i64 : stdgo.StdGoTypes.GoUInt64)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt64>);
        _n2 = (new stdgo.Slice<stdgo.StdGoTypes.GoUInt64>(2, 2, (1i64 : stdgo.StdGoTypes.GoUInt64), (-9223372036854775808i64 : stdgo.StdGoTypes.GoUInt64)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt64>);
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_n1[(1 : stdgo.StdGoTypes.GoInt)], _n2[(1 : stdgo.StdGoTypes.GoInt)], (0i64 : stdgo.StdGoTypes.GoUInt64));
            _d1 = __tmp__._0;
            _carry = __tmp__._1;
        };
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_n1[(0 : stdgo.StdGoTypes.GoInt)], _n2[(0 : stdgo.StdGoTypes.GoInt)], _carry);
            _d0 = __tmp__._0;
        };
        _nsum = (new stdgo.Slice<stdgo.StdGoTypes.GoUInt64>(2, 2, _d0, _d1) : stdgo.Slice<stdgo.StdGoTypes.GoUInt64>);
        stdgo.fmt.Fmt.printf(("%v + %v = %v (carry bit was %v)\n" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_n1), stdgo.Go.toInterface(_n2), stdgo.Go.toInterface(_nsum), stdgo.Go.toInterface(_carry));
    }
```


</p>
</details>


[\(view code\)](<./Bits.hx#L4437>)


## function div


```haxe
function div(_hi:stdgo.GoUInt, _lo:stdgo.GoUInt, _y:stdgo.GoUInt):{
	_1:stdgo.GoUInt;
	_0:stdgo.GoUInt;
}
```



Div returns the quotient and remainder of \(hi, lo\) divided by y:
quo = \(hi, lo\)/y, rem = \(hi, lo\)%y with the dividend bits' upper
half in parameter hi and the lower half in parameter lo.
Div panics for y == 0 \(division by zero\) or y \<= hi \(quotient overflow\).  

[\(view code\)](<./Bits.hx#L4548>)


## function div32


```haxe
function div32(_hi:stdgo.GoUInt32, _lo:stdgo.GoUInt32, _y:stdgo.GoUInt32):{
	_1:stdgo.GoUInt32;
	_0:stdgo.GoUInt32;
}
```



Div32 returns the quotient and remainder of \(hi, lo\) divided by y:
quo = \(hi, lo\)/y, rem = \(hi, lo\)%y with the dividend bits' upper
half in parameter hi and the lower half in parameter lo.
Div32 panics for y == 0 \(division by zero\) or y \<= hi \(quotient overflow\).  

### exampleDiv32


<details><summary></summary>
<p>


```haxe
function exampleDiv32():Void {
        var _n1 = (new stdgo.Slice<stdgo.StdGoTypes.GoUInt32>(2, 2, (0u32 : stdgo.StdGoTypes.GoUInt32), (6u32 : stdgo.StdGoTypes.GoUInt32)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt32>);
        var _n2 = (new stdgo.Slice<stdgo.StdGoTypes.GoUInt32>(2, 2, (0u32 : stdgo.StdGoTypes.GoUInt32), (3u32 : stdgo.StdGoTypes.GoUInt32)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt32>);
        var __tmp__ = stdgo.math.bits.Bits.div32(_n1[(0 : stdgo.StdGoTypes.GoInt)], _n1[(1 : stdgo.StdGoTypes.GoInt)], _n2[(1 : stdgo.StdGoTypes.GoInt)]), _quo:stdgo.StdGoTypes.GoUInt32 = __tmp__._0, _rem:stdgo.StdGoTypes.GoUInt32 = __tmp__._1;
        var _nsum = (new stdgo.Slice<stdgo.StdGoTypes.GoUInt32>(2, 2, _quo, _rem) : stdgo.Slice<stdgo.StdGoTypes.GoUInt32>);
        stdgo.fmt.Fmt.printf(("[%v %v] / %v = %v\n" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_n1[(0 : stdgo.StdGoTypes.GoInt)]), stdgo.Go.toInterface(_n1[(1 : stdgo.StdGoTypes.GoInt)]), stdgo.Go.toInterface(_n2[(1 : stdgo.StdGoTypes.GoInt)]), stdgo.Go.toInterface(_nsum));
        _n1 = (new stdgo.Slice<stdgo.StdGoTypes.GoUInt32>(2, 2, (2u32 : stdgo.StdGoTypes.GoUInt32), (-2147483648u32 : stdgo.StdGoTypes.GoUInt32)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt32>);
        _n2 = (new stdgo.Slice<stdgo.StdGoTypes.GoUInt32>(2, 2, (0u32 : stdgo.StdGoTypes.GoUInt32), (-2147483648u32 : stdgo.StdGoTypes.GoUInt32)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt32>);
        {
            var __tmp__ = stdgo.math.bits.Bits.div32(_n1[(0 : stdgo.StdGoTypes.GoInt)], _n1[(1 : stdgo.StdGoTypes.GoInt)], _n2[(1 : stdgo.StdGoTypes.GoInt)]);
            _quo = __tmp__._0;
            _rem = __tmp__._1;
        };
        _nsum = (new stdgo.Slice<stdgo.StdGoTypes.GoUInt32>(2, 2, _quo, _rem) : stdgo.Slice<stdgo.StdGoTypes.GoUInt32>);
        stdgo.fmt.Fmt.printf(("[%v %v] / %v = %v\n" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_n1[(0 : stdgo.StdGoTypes.GoInt)]), stdgo.Go.toInterface(_n1[(1 : stdgo.StdGoTypes.GoInt)]), stdgo.Go.toInterface(_n2[(1 : stdgo.StdGoTypes.GoInt)]), stdgo.Go.toInterface(_nsum));
    }
```


</p>
</details>


[\(view code\)](<./Bits.hx#L4563>)


## function div64


```haxe
function div64(_hi:stdgo.GoUInt64, _lo:stdgo.GoUInt64, _y:stdgo.GoUInt64):{
	_1:stdgo.GoUInt64;
	_0:stdgo.GoUInt64;
}
```



Div64 returns the quotient and remainder of \(hi, lo\) divided by y:
quo = \(hi, lo\)/y, rem = \(hi, lo\)%y with the dividend bits' upper
half in parameter hi and the lower half in parameter lo.
Div64 panics for y == 0 \(division by zero\) or y \<= hi \(quotient overflow\).  

### exampleDiv64


<details><summary></summary>
<p>


```haxe
function exampleDiv64():Void {
        var _n1 = (new stdgo.Slice<stdgo.StdGoTypes.GoUInt64>(2, 2, (0i64 : stdgo.StdGoTypes.GoUInt64), (6i64 : stdgo.StdGoTypes.GoUInt64)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt64>);
        var _n2 = (new stdgo.Slice<stdgo.StdGoTypes.GoUInt64>(2, 2, (0i64 : stdgo.StdGoTypes.GoUInt64), (3i64 : stdgo.StdGoTypes.GoUInt64)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt64>);
        var __tmp__ = stdgo.math.bits.Bits.div64(_n1[(0 : stdgo.StdGoTypes.GoInt)], _n1[(1 : stdgo.StdGoTypes.GoInt)], _n2[(1 : stdgo.StdGoTypes.GoInt)]), _quo:stdgo.StdGoTypes.GoUInt64 = __tmp__._0, _rem:stdgo.StdGoTypes.GoUInt64 = __tmp__._1;
        var _nsum = (new stdgo.Slice<stdgo.StdGoTypes.GoUInt64>(2, 2, _quo, _rem) : stdgo.Slice<stdgo.StdGoTypes.GoUInt64>);
        stdgo.fmt.Fmt.printf(("[%v %v] / %v = %v\n" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_n1[(0 : stdgo.StdGoTypes.GoInt)]), stdgo.Go.toInterface(_n1[(1 : stdgo.StdGoTypes.GoInt)]), stdgo.Go.toInterface(_n2[(1 : stdgo.StdGoTypes.GoInt)]), stdgo.Go.toInterface(_nsum));
        _n1 = (new stdgo.Slice<stdgo.StdGoTypes.GoUInt64>(2, 2, (2i64 : stdgo.StdGoTypes.GoUInt64), (-9223372036854775808i64 : stdgo.StdGoTypes.GoUInt64)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt64>);
        _n2 = (new stdgo.Slice<stdgo.StdGoTypes.GoUInt64>(2, 2, (0i64 : stdgo.StdGoTypes.GoUInt64), (-9223372036854775808i64 : stdgo.StdGoTypes.GoUInt64)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt64>);
        {
            var __tmp__ = stdgo.math.bits.Bits.div64(_n1[(0 : stdgo.StdGoTypes.GoInt)], _n1[(1 : stdgo.StdGoTypes.GoInt)], _n2[(1 : stdgo.StdGoTypes.GoInt)]);
            _quo = __tmp__._0;
            _rem = __tmp__._1;
        };
        _nsum = (new stdgo.Slice<stdgo.StdGoTypes.GoUInt64>(2, 2, _quo, _rem) : stdgo.Slice<stdgo.StdGoTypes.GoUInt64>);
        stdgo.fmt.Fmt.printf(("[%v %v] / %v = %v\n" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_n1[(0 : stdgo.StdGoTypes.GoInt)]), stdgo.Go.toInterface(_n1[(1 : stdgo.StdGoTypes.GoInt)]), stdgo.Go.toInterface(_n2[(1 : stdgo.StdGoTypes.GoInt)]), stdgo.Go.toInterface(_nsum));
    }
```


</p>
</details>


[\(view code\)](<./Bits.hx#L4583>)


## function leadingZeros


```haxe
function leadingZeros(_x:stdgo.GoUInt):stdgo.GoInt
```



LeadingZeros returns the number of leading zero bits in x; the result is UintSize for x == 0.  

[\(view code\)](<./Bits.hx#L1047>)


## function leadingZeros16


```haxe
function leadingZeros16(_x:stdgo.GoUInt16):stdgo.GoInt
```



LeadingZeros16 returns the number of leading zero bits in x; the result is 16 for x == 0.  

### exampleLeadingZeros16


<details><summary></summary>
<p>


```haxe
function exampleLeadingZeros16():Void {
        stdgo.fmt.Fmt.printf(("LeadingZeros16(%016b) = %d\n" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface((1 : stdgo.StdGoTypes.GoInt)), stdgo.Go.toInterface(stdgo.math.bits.Bits.leadingZeros16((1 : stdgo.StdGoTypes.GoUInt16))));
    }
```


</p>
</details>


[\(view code\)](<./Bits.hx#L1059>)


## function leadingZeros32


```haxe
function leadingZeros32(_x:stdgo.GoUInt32):stdgo.GoInt
```



LeadingZeros32 returns the number of leading zero bits in x; the result is 32 for x == 0.  

### exampleLeadingZeros32


<details><summary></summary>
<p>


```haxe
function exampleLeadingZeros32():Void {
        stdgo.fmt.Fmt.printf(("LeadingZeros32(%032b) = %d\n" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface((1 : stdgo.StdGoTypes.GoInt)), stdgo.Go.toInterface(stdgo.math.bits.Bits.leadingZeros32((1u32 : stdgo.StdGoTypes.GoUInt32))));
    }
```


</p>
</details>


[\(view code\)](<./Bits.hx#L1065>)


## function leadingZeros64


```haxe
function leadingZeros64(_x:stdgo.GoUInt64):stdgo.GoInt
```



LeadingZeros64 returns the number of leading zero bits in x; the result is 64 for x == 0.  

### exampleLeadingZeros64


<details><summary></summary>
<p>


```haxe
function exampleLeadingZeros64():Void {
        stdgo.fmt.Fmt.printf(("LeadingZeros64(%064b) = %d\n" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface((1 : stdgo.StdGoTypes.GoInt)), stdgo.Go.toInterface(stdgo.math.bits.Bits.leadingZeros64((1i64 : stdgo.StdGoTypes.GoUInt64))));
    }
```


</p>
</details>


[\(view code\)](<./Bits.hx#L1071>)


## function leadingZeros8


```haxe
function leadingZeros8(_x:stdgo.GoUInt8):stdgo.GoInt
```



LeadingZeros8 returns the number of leading zero bits in x; the result is 8 for x == 0.  

### exampleLeadingZeros8


<details><summary></summary>
<p>


```haxe
function exampleLeadingZeros8():Void {
        stdgo.fmt.Fmt.printf(("LeadingZeros8(%08b) = %d\n" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface((1 : stdgo.StdGoTypes.GoInt)), stdgo.Go.toInterface(stdgo.math.bits.Bits.leadingZeros8((1 : stdgo.StdGoTypes.GoUInt8))));
    }
```


</p>
</details>


[\(view code\)](<./Bits.hx#L1053>)


## function len


```haxe
function len(_x:stdgo.GoUInt):stdgo.GoInt
```



Len returns the minimum number of bits required to represent x; the result is 0 for x == 0.  

[\(view code\)](<./Bits.hx#L4087>)


## function len16


```haxe
function len16(_x:stdgo.GoUInt16):stdgo.GoInt
```



Len16 returns the minimum number of bits required to represent x; the result is 0 for x == 0.  

### exampleLen16


<details><summary></summary>
<p>


```haxe
function exampleLen16():Void {
        stdgo.fmt.Fmt.printf(("Len16(%016b) = %d\n" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface((8 : stdgo.StdGoTypes.GoInt)), stdgo.Go.toInterface(stdgo.math.bits.Bits.len16((8 : stdgo.StdGoTypes.GoUInt16))));
    }
```


</p>
</details>


[\(view code\)](<./Bits.hx#L4166>)


## function len32


```haxe
function len32(_x:stdgo.GoUInt32):stdgo.GoInt
```



Len32 returns the minimum number of bits required to represent x; the result is 0 for x == 0.  

### exampleLen32


<details><summary></summary>
<p>


```haxe
function exampleLen32():Void {
        stdgo.fmt.Fmt.printf(("Len32(%032b) = %d\n" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface((8 : stdgo.StdGoTypes.GoInt)), stdgo.Go.toInterface(stdgo.math.bits.Bits.len32((8u32 : stdgo.StdGoTypes.GoUInt32))));
    }
```


</p>
</details>


[\(view code\)](<./Bits.hx#L4241>)


## function len64


```haxe
function len64(_x:stdgo.GoUInt64):stdgo.GoInt
```



Len64 returns the minimum number of bits required to represent x; the result is 0 for x == 0.  

### exampleLen64


<details><summary></summary>
<p>


```haxe
function exampleLen64():Void {
        stdgo.fmt.Fmt.printf(("Len64(%064b) = %d\n" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface((8 : stdgo.StdGoTypes.GoInt)), stdgo.Go.toInterface(stdgo.math.bits.Bits.len64((8i64 : stdgo.StdGoTypes.GoUInt64))));
    }
```


</p>
</details>


[\(view code\)](<./Bits.hx#L4320>)


## function len8


```haxe
function len8(_x:stdgo.GoUInt8):stdgo.GoInt
```



Len8 returns the minimum number of bits required to represent x; the result is 0 for x == 0.  

### exampleLen8


<details><summary></summary>
<p>


```haxe
function exampleLen8():Void {
        stdgo.fmt.Fmt.printf(("Len8(%08b) = %d\n" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface((8 : stdgo.StdGoTypes.GoInt)), stdgo.Go.toInterface(stdgo.math.bits.Bits.len8((8 : stdgo.StdGoTypes.GoUInt8))));
    }
```


</p>
</details>


[\(view code\)](<./Bits.hx#L4096>)


## function mul


```haxe
function mul(_x:stdgo.GoUInt, _y:stdgo.GoUInt):{
	_1:stdgo.GoUInt;
	_0:stdgo.GoUInt;
}
```



Mul returns the full\-width product of x and y: \(hi, lo\) = x \* y
with the product bits' upper half returned in hi and the lower
half returned in lo.  


This function's execution time does not depend on the inputs.  

[\(view code\)](<./Bits.hx#L4492>)


## function mul32


```haxe
function mul32(_x:stdgo.GoUInt32, _y:stdgo.GoUInt32):{
	_1:stdgo.GoUInt32;
	_0:stdgo.GoUInt32;
}
```



Mul32 returns the 64\-bit product of x and y: \(hi, lo\) = x \* y
with the product bits' upper half returned in hi and the lower
half returned in lo.  


This function's execution time does not depend on the inputs.  

### exampleMul32


<details><summary></summary>
<p>


```haxe
function exampleMul32():Void {
        var _n1 = (new stdgo.Slice<stdgo.StdGoTypes.GoUInt32>(2, 2, (0u32 : stdgo.StdGoTypes.GoUInt32), (12u32 : stdgo.StdGoTypes.GoUInt32)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt32>);
        var _n2 = (new stdgo.Slice<stdgo.StdGoTypes.GoUInt32>(2, 2, (0u32 : stdgo.StdGoTypes.GoUInt32), (12u32 : stdgo.StdGoTypes.GoUInt32)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt32>);
        var __tmp__ = stdgo.math.bits.Bits.mul32(_n1[(1 : stdgo.StdGoTypes.GoInt)], _n2[(1 : stdgo.StdGoTypes.GoInt)]), _hi:stdgo.StdGoTypes.GoUInt32 = __tmp__._0, _lo:stdgo.StdGoTypes.GoUInt32 = __tmp__._1;
        var _nsum = (new stdgo.Slice<stdgo.StdGoTypes.GoUInt32>(2, 2, _hi, _lo) : stdgo.Slice<stdgo.StdGoTypes.GoUInt32>);
        stdgo.fmt.Fmt.printf(("%v * %v = %v\n" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_n1[(1 : stdgo.StdGoTypes.GoInt)]), stdgo.Go.toInterface(_n2[(1 : stdgo.StdGoTypes.GoInt)]), stdgo.Go.toInterface(_nsum));
        _n1 = (new stdgo.Slice<stdgo.StdGoTypes.GoUInt32>(2, 2, (0u32 : stdgo.StdGoTypes.GoUInt32), (-2147483648u32 : stdgo.StdGoTypes.GoUInt32)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt32>);
        _n2 = (new stdgo.Slice<stdgo.StdGoTypes.GoUInt32>(2, 2, (0u32 : stdgo.StdGoTypes.GoUInt32), (2u32 : stdgo.StdGoTypes.GoUInt32)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt32>);
        {
            var __tmp__ = stdgo.math.bits.Bits.mul32(_n1[(1 : stdgo.StdGoTypes.GoInt)], _n2[(1 : stdgo.StdGoTypes.GoInt)]);
            _hi = __tmp__._0;
            _lo = __tmp__._1;
        };
        _nsum = (new stdgo.Slice<stdgo.StdGoTypes.GoUInt32>(2, 2, _hi, _lo) : stdgo.Slice<stdgo.StdGoTypes.GoUInt32>);
        stdgo.fmt.Fmt.printf(("%v * %v = %v\n" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_n1[(1 : stdgo.StdGoTypes.GoInt)]), stdgo.Go.toInterface(_n2[(1 : stdgo.StdGoTypes.GoInt)]), stdgo.Go.toInterface(_nsum));
    }
```


</p>
</details>


[\(view code\)](<./Bits.hx#L4508>)


## function mul64


```haxe
function mul64(_x:stdgo.GoUInt64, _y:stdgo.GoUInt64):{
	_1:stdgo.GoUInt64;
	_0:stdgo.GoUInt64;
}
```



Mul64 returns the 128\-bit product of x and y: \(hi, lo\) = x \* y
with the product bits' upper half returned in hi and the lower
half returned in lo.  


This function's execution time does not depend on the inputs.  

### exampleMul64


<details><summary></summary>
<p>


```haxe
function exampleMul64():Void {
        var _n1 = (new stdgo.Slice<stdgo.StdGoTypes.GoUInt64>(2, 2, (0i64 : stdgo.StdGoTypes.GoUInt64), (12i64 : stdgo.StdGoTypes.GoUInt64)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt64>);
        var _n2 = (new stdgo.Slice<stdgo.StdGoTypes.GoUInt64>(2, 2, (0i64 : stdgo.StdGoTypes.GoUInt64), (12i64 : stdgo.StdGoTypes.GoUInt64)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt64>);
        var __tmp__ = stdgo.math.bits.Bits.mul64(_n1[(1 : stdgo.StdGoTypes.GoInt)], _n2[(1 : stdgo.StdGoTypes.GoInt)]), _hi:stdgo.StdGoTypes.GoUInt64 = __tmp__._0, _lo:stdgo.StdGoTypes.GoUInt64 = __tmp__._1;
        var _nsum = (new stdgo.Slice<stdgo.StdGoTypes.GoUInt64>(2, 2, _hi, _lo) : stdgo.Slice<stdgo.StdGoTypes.GoUInt64>);
        stdgo.fmt.Fmt.printf(("%v * %v = %v\n" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_n1[(1 : stdgo.StdGoTypes.GoInt)]), stdgo.Go.toInterface(_n2[(1 : stdgo.StdGoTypes.GoInt)]), stdgo.Go.toInterface(_nsum));
        _n1 = (new stdgo.Slice<stdgo.StdGoTypes.GoUInt64>(2, 2, (0i64 : stdgo.StdGoTypes.GoUInt64), (-9223372036854775808i64 : stdgo.StdGoTypes.GoUInt64)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt64>);
        _n2 = (new stdgo.Slice<stdgo.StdGoTypes.GoUInt64>(2, 2, (0i64 : stdgo.StdGoTypes.GoUInt64), (2i64 : stdgo.StdGoTypes.GoUInt64)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt64>);
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_n1[(1 : stdgo.StdGoTypes.GoInt)], _n2[(1 : stdgo.StdGoTypes.GoInt)]);
            _hi = __tmp__._0;
            _lo = __tmp__._1;
        };
        _nsum = (new stdgo.Slice<stdgo.StdGoTypes.GoUInt64>(2, 2, _hi, _lo) : stdgo.Slice<stdgo.StdGoTypes.GoUInt64>);
        stdgo.fmt.Fmt.printf(("%v * %v = %v\n" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_n1[(1 : stdgo.StdGoTypes.GoInt)]), stdgo.Go.toInterface(_n2[(1 : stdgo.StdGoTypes.GoInt)]), stdgo.Go.toInterface(_nsum));
    }
```


</p>
</details>


[\(view code\)](<./Bits.hx#L4526>)


## function onesCount


```haxe
function onesCount(_x:stdgo.GoUInt):stdgo.GoInt
```



OnesCount returns the number of one bits \("population count"\) in x.  

### exampleOnesCount


<details><summary></summary>
<p>


```haxe
function exampleOnesCount():Void {
        stdgo.fmt.Fmt.printf(("OnesCount(%b) = %d\n" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface((14 : stdgo.StdGoTypes.GoInt)), stdgo.Go.toInterface(stdgo.math.bits.Bits.onesCount((14u32 : stdgo.StdGoTypes.GoUInt))));
    }
```


</p>
</details>


[\(view code\)](<./Bits.hx#L1374>)


## function onesCount16


```haxe
function onesCount16(_x:stdgo.GoUInt16):stdgo.GoInt
```



OnesCount16 returns the number of one bits \("population count"\) in x.  

### exampleOnesCount16


<details><summary></summary>
<p>


```haxe
function exampleOnesCount16():Void {
        stdgo.fmt.Fmt.printf(("OnesCount16(%016b) = %d\n" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface((14 : stdgo.StdGoTypes.GoInt)), stdgo.Go.toInterface(stdgo.math.bits.Bits.onesCount16((14 : stdgo.StdGoTypes.GoUInt16))));
    }
```


</p>
</details>


[\(view code\)](<./Bits.hx#L1642>)


## function onesCount32


```haxe
function onesCount32(_x:stdgo.GoUInt32):stdgo.GoInt
```



OnesCount32 returns the number of one bits \("population count"\) in x.  

### exampleOnesCount32


<details><summary></summary>
<p>


```haxe
function exampleOnesCount32():Void {
        stdgo.fmt.Fmt.printf(("OnesCount32(%032b) = %d\n" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface((14 : stdgo.StdGoTypes.GoInt)), stdgo.Go.toInterface(stdgo.math.bits.Bits.onesCount32((14u32 : stdgo.StdGoTypes.GoUInt32))));
    }
```


</p>
</details>


[\(view code\)](<./Bits.hx#L2154>)


## function onesCount64


```haxe
function onesCount64(_x:stdgo.GoUInt64):stdgo.GoInt
```



OnesCount64 returns the number of one bits \("population count"\) in x.  

### exampleOnesCount64


<details><summary></summary>
<p>


```haxe
function exampleOnesCount64():Void {
        stdgo.fmt.Fmt.printf(("OnesCount64(%064b) = %d\n" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface((14 : stdgo.StdGoTypes.GoInt)), stdgo.Go.toInterface(stdgo.math.bits.Bits.onesCount64((14i64 : stdgo.StdGoTypes.GoUInt64))));
    }
```


</p>
</details>


[\(view code\)](<./Bits.hx#L3172>)


## function onesCount8


```haxe
function onesCount8(_x:stdgo.GoUInt8):stdgo.GoInt
```



OnesCount8 returns the number of one bits \("population count"\) in x.  

### exampleOnesCount8


<details><summary></summary>
<p>


```haxe
function exampleOnesCount8():Void {
        stdgo.fmt.Fmt.printf(("OnesCount8(%08b) = %d\n" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface((14 : stdgo.StdGoTypes.GoInt)), stdgo.Go.toInterface(stdgo.math.bits.Bits.onesCount8((14 : stdgo.StdGoTypes.GoUInt8))));
    }
```


</p>
</details>


[\(view code\)](<./Bits.hx#L1383>)


## function rem


```haxe
function rem(_hi:stdgo.GoUInt, _lo:stdgo.GoUInt, _y:stdgo.GoUInt):stdgo.GoUInt
```



Rem returns the remainder of \(hi, lo\) divided by y. Rem panics for
y == 0 \(division by zero\) but, unlike Div, it doesn't panic on a
quotient overflow.  

[\(view code\)](<./Bits.hx#L4629>)


## function rem32


```haxe
function rem32(_hi:stdgo.GoUInt32, _lo:stdgo.GoUInt32, _y:stdgo.GoUInt32):stdgo.GoUInt32
```



Rem32 returns the remainder of \(hi, lo\) divided by y. Rem32 panics
for y == 0 \(division by zero\) but, unlike Div32, it doesn't panic
on a quotient overflow.  

[\(view code\)](<./Bits.hx#L4640>)


## function rem64


```haxe
function rem64(_hi:stdgo.GoUInt64, _lo:stdgo.GoUInt64, _y:stdgo.GoUInt64):stdgo.GoUInt64
```



Rem64 returns the remainder of \(hi, lo\) divided by y. Rem64 panics
for y == 0 \(division by zero\) but, unlike Div64, it doesn't panic
on a quotient overflow.  

[\(view code\)](<./Bits.hx#L4648>)


## function reverse


```haxe
function reverse(_x:stdgo.GoUInt):stdgo.GoUInt
```



Reverse returns the value of x with its bits in reversed order.  

[\(view code\)](<./Bits.hx#L3241>)


## function reverse16


```haxe
function reverse16(_x:stdgo.GoUInt16):stdgo.GoUInt16
```



Reverse16 returns the value of x with its bits in reversed order.  

### exampleReverse16


<details><summary></summary>
<p>


```haxe
function exampleReverse16():Void {
        stdgo.fmt.Fmt.printf(("%016b\n" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface((19 : stdgo.StdGoTypes.GoInt)));
        stdgo.fmt.Fmt.printf(("%016b\n" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(stdgo.math.bits.Bits.reverse16((19 : stdgo.StdGoTypes.GoUInt16))));
    }
```


</p>
</details>


[\(view code\)](<./Bits.hx#L3511>)


## function reverse32


```haxe
function reverse32(_x:stdgo.GoUInt32):stdgo.GoUInt32
```



Reverse32 returns the value of x with its bits in reversed order.  

### exampleReverse32


<details><summary></summary>
<p>


```haxe
function exampleReverse32():Void {
        stdgo.fmt.Fmt.printf(("%032b\n" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface((19 : stdgo.StdGoTypes.GoInt)));
        stdgo.fmt.Fmt.printf(("%032b\n" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(stdgo.math.bits.Bits.reverse32((19u32 : stdgo.StdGoTypes.GoUInt32))));
    }
```


</p>
</details>


[\(view code\)](<./Bits.hx#L4027>)


## function reverse64


```haxe
function reverse64(_x:stdgo.GoUInt64):stdgo.GoUInt64
```



Reverse64 returns the value of x with its bits in reversed order.  

### exampleReverse64


<details><summary></summary>
<p>


```haxe
function exampleReverse64():Void {
        stdgo.fmt.Fmt.printf(("%064b\n" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface((19 : stdgo.StdGoTypes.GoInt)));
        stdgo.fmt.Fmt.printf(("%064b\n" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(stdgo.math.bits.Bits.reverse64((19i64 : stdgo.StdGoTypes.GoUInt64))));
    }
```


</p>
</details>


[\(view code\)](<./Bits.hx#L4037>)


## function reverse8


```haxe
function reverse8(_x:stdgo.GoUInt8):stdgo.GoUInt8
```



Reverse8 returns the value of x with its bits in reversed order.  

### exampleReverse8


<details><summary></summary>
<p>


```haxe
function exampleReverse8():Void {
        stdgo.fmt.Fmt.printf(("%08b\n" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface((19 : stdgo.StdGoTypes.GoInt)));
        stdgo.fmt.Fmt.printf(("%08b\n" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(stdgo.math.bits.Bits.reverse8((19 : stdgo.StdGoTypes.GoUInt8))));
    }
```


</p>
</details>


[\(view code\)](<./Bits.hx#L3250>)


## function reverseBytes


```haxe
function reverseBytes(_x:stdgo.GoUInt):stdgo.GoUInt
```



ReverseBytes returns the value of x with its bytes in reversed order.  


This function's execution time does not depend on the inputs.  

[\(view code\)](<./Bits.hx#L4049>)


## function reverseBytes16


```haxe
function reverseBytes16(_x:stdgo.GoUInt16):stdgo.GoUInt16
```



ReverseBytes16 returns the value of x with its bytes in reversed order.  


This function's execution time does not depend on the inputs.  

### exampleReverseBytes16


<details><summary></summary>
<p>


```haxe
function exampleReverseBytes16():Void {
        stdgo.fmt.Fmt.printf(("%016b\n" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface((15 : stdgo.StdGoTypes.GoInt)));
        stdgo.fmt.Fmt.printf(("%016b\n" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(stdgo.math.bits.Bits.reverseBytes16((15 : stdgo.StdGoTypes.GoUInt16))));
    }
```


</p>
</details>


[\(view code\)](<./Bits.hx#L4060>)


## function reverseBytes32


```haxe
function reverseBytes32(_x:stdgo.GoUInt32):stdgo.GoUInt32
```



ReverseBytes32 returns the value of x with its bytes in reversed order.  


This function's execution time does not depend on the inputs.  

### exampleReverseBytes32


<details><summary></summary>
<p>


```haxe
function exampleReverseBytes32():Void {
        stdgo.fmt.Fmt.printf(("%032b\n" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface((15 : stdgo.StdGoTypes.GoInt)));
        stdgo.fmt.Fmt.printf(("%032b\n" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(stdgo.math.bits.Bits.reverseBytes32((15u32 : stdgo.StdGoTypes.GoUInt32))));
    }
```


</p>
</details>


[\(view code\)](<./Bits.hx#L4068>)


## function reverseBytes64


```haxe
function reverseBytes64(_x:stdgo.GoUInt64):stdgo.GoUInt64
```



ReverseBytes64 returns the value of x with its bytes in reversed order.  


This function's execution time does not depend on the inputs.  

### exampleReverseBytes64


<details><summary></summary>
<p>


```haxe
function exampleReverseBytes64():Void {
        stdgo.fmt.Fmt.printf(("%064b\n" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface((15 : stdgo.StdGoTypes.GoInt)));
        stdgo.fmt.Fmt.printf(("%064b\n" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(stdgo.math.bits.Bits.reverseBytes64((15i64 : stdgo.StdGoTypes.GoUInt64))));
    }
```


</p>
</details>


[\(view code\)](<./Bits.hx#L4078>)


## function rotateLeft


```haxe
function rotateLeft(_x:stdgo.GoUInt, _k:stdgo.GoInt):stdgo.GoUInt
```



RotateLeft returns the value of x rotated left by \(k mod UintSize\) bits.
To rotate x right by k bits, call RotateLeft\(x, \-k\).  


This function's execution time does not depend on the inputs.  

[\(view code\)](<./Bits.hx#L3188>)


## function rotateLeft16


```haxe
function rotateLeft16(_x:stdgo.GoUInt16, _k:stdgo.GoInt):stdgo.GoUInt16
```



RotateLeft16 returns the value of x rotated left by \(k mod 16\) bits.
To rotate x right by k bits, call RotateLeft16\(x, \-k\).  


This function's execution time does not depend on the inputs.  

### exampleRotateLeft16


<details><summary></summary>
<p>


```haxe
function exampleRotateLeft16():Void {
        stdgo.fmt.Fmt.printf(("%016b\n" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface((15 : stdgo.StdGoTypes.GoInt)));
        stdgo.fmt.Fmt.printf(("%016b\n" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(stdgo.math.bits.Bits.rotateLeft16((15 : stdgo.StdGoTypes.GoUInt16), (2 : stdgo.StdGoTypes.GoInt))));
        stdgo.fmt.Fmt.printf(("%016b\n" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(stdgo.math.bits.Bits.rotateLeft16((15 : stdgo.StdGoTypes.GoUInt16), (-2 : stdgo.StdGoTypes.GoInt))));
    }
```


</p>
</details>


[\(view code\)](<./Bits.hx#L3211>)


## function rotateLeft32


```haxe
function rotateLeft32(_x:stdgo.GoUInt32, _k:stdgo.GoInt):stdgo.GoUInt32
```



RotateLeft32 returns the value of x rotated left by \(k mod 32\) bits.
To rotate x right by k bits, call RotateLeft32\(x, \-k\).  


This function's execution time does not depend on the inputs.  

### exampleRotateLeft32


<details><summary></summary>
<p>


```haxe
function exampleRotateLeft32():Void {
        stdgo.fmt.Fmt.printf(("%032b\n" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface((15 : stdgo.StdGoTypes.GoInt)));
        stdgo.fmt.Fmt.printf(("%032b\n" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(stdgo.math.bits.Bits.rotateLeft32((15u32 : stdgo.StdGoTypes.GoUInt32), (2 : stdgo.StdGoTypes.GoInt))));
        stdgo.fmt.Fmt.printf(("%032b\n" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(stdgo.math.bits.Bits.rotateLeft32((15u32 : stdgo.StdGoTypes.GoUInt32), (-2 : stdgo.StdGoTypes.GoInt))));
    }
```


</p>
</details>


[\(view code\)](<./Bits.hx#L3222>)


## function rotateLeft64


```haxe
function rotateLeft64(_x:stdgo.GoUInt64, _k:stdgo.GoInt):stdgo.GoUInt64
```



RotateLeft64 returns the value of x rotated left by \(k mod 64\) bits.
To rotate x right by k bits, call RotateLeft64\(x, \-k\).  


This function's execution time does not depend on the inputs.  

### exampleRotateLeft64


<details><summary></summary>
<p>


```haxe
function exampleRotateLeft64():Void {
        stdgo.fmt.Fmt.printf(("%064b\n" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface((15 : stdgo.StdGoTypes.GoInt)));
        stdgo.fmt.Fmt.printf(("%064b\n" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(stdgo.math.bits.Bits.rotateLeft64((15i64 : stdgo.StdGoTypes.GoUInt64), (2 : stdgo.StdGoTypes.GoInt))));
        stdgo.fmt.Fmt.printf(("%064b\n" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(stdgo.math.bits.Bits.rotateLeft64((15i64 : stdgo.StdGoTypes.GoUInt64), (-2 : stdgo.StdGoTypes.GoInt))));
    }
```


</p>
</details>


[\(view code\)](<./Bits.hx#L3233>)


## function rotateLeft8


```haxe
function rotateLeft8(_x:stdgo.GoUInt8, _k:stdgo.GoInt):stdgo.GoUInt8
```



RotateLeft8 returns the value of x rotated left by \(k mod 8\) bits.
To rotate x right by k bits, call RotateLeft8\(x, \-k\).  


This function's execution time does not depend on the inputs.  

### exampleRotateLeft8


<details><summary></summary>
<p>


```haxe
function exampleRotateLeft8():Void {
        stdgo.fmt.Fmt.printf(("%08b\n" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface((15 : stdgo.StdGoTypes.GoInt)));
        stdgo.fmt.Fmt.printf(("%08b\n" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(stdgo.math.bits.Bits.rotateLeft8((15 : stdgo.StdGoTypes.GoUInt8), (2 : stdgo.StdGoTypes.GoInt))));
        stdgo.fmt.Fmt.printf(("%08b\n" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(stdgo.math.bits.Bits.rotateLeft8((15 : stdgo.StdGoTypes.GoUInt8), (-2 : stdgo.StdGoTypes.GoInt))));
    }
```


</p>
</details>


[\(view code\)](<./Bits.hx#L3200>)


## function sub


```haxe
function sub(_x:stdgo.GoUInt, _y:stdgo.GoUInt, _borrow:stdgo.GoUInt):{
	_1:stdgo.GoUInt;
	_0:stdgo.GoUInt;
}
```



Sub returns the difference of x, y and borrow: diff = x \- y \- borrow.
The borrow input must be 0 or 1; otherwise the behavior is undefined.
The borrowOut output is guaranteed to be 0 or 1.  


This function's execution time does not depend on the inputs.  

[\(view code\)](<./Bits.hx#L4450>)


## function sub32


```haxe
function sub32(_x:stdgo.GoUInt32, _y:stdgo.GoUInt32, _borrow:stdgo.GoUInt32):{
	_1:stdgo.GoUInt32;
	_0:stdgo.GoUInt32;
}
```



Sub32 returns the difference of x, y and borrow, diff = x \- y \- borrow.
The borrow input must be 0 or 1; otherwise the behavior is undefined.
The borrowOut output is guaranteed to be 0 or 1.  


This function's execution time does not depend on the inputs.  

### exampleSub32


<details><summary></summary>
<p>


```haxe
function exampleSub32():Void {
        var _n1 = (new stdgo.Slice<stdgo.StdGoTypes.GoUInt32>(2, 2, (33u32 : stdgo.StdGoTypes.GoUInt32), (23u32 : stdgo.StdGoTypes.GoUInt32)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt32>);
        var _n2 = (new stdgo.Slice<stdgo.StdGoTypes.GoUInt32>(2, 2, (21u32 : stdgo.StdGoTypes.GoUInt32), (12u32 : stdgo.StdGoTypes.GoUInt32)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt32>);
        var __tmp__ = stdgo.math.bits.Bits.sub32(_n1[(1 : stdgo.StdGoTypes.GoInt)], _n2[(1 : stdgo.StdGoTypes.GoInt)], (0u32 : stdgo.StdGoTypes.GoUInt32)), _d1:stdgo.StdGoTypes.GoUInt32 = __tmp__._0, _carry:stdgo.StdGoTypes.GoUInt32 = __tmp__._1;
        var __tmp__ = stdgo.math.bits.Bits.sub32(_n1[(0 : stdgo.StdGoTypes.GoInt)], _n2[(0 : stdgo.StdGoTypes.GoInt)], _carry), _d0:stdgo.StdGoTypes.GoUInt32 = __tmp__._0, __0:stdgo.StdGoTypes.GoUInt32 = __tmp__._1;
        var _nsum = (new stdgo.Slice<stdgo.StdGoTypes.GoUInt32>(2, 2, _d0, _d1) : stdgo.Slice<stdgo.StdGoTypes.GoUInt32>);
        stdgo.fmt.Fmt.printf(("%v - %v = %v (carry bit was %v)\n" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_n1), stdgo.Go.toInterface(_n2), stdgo.Go.toInterface(_nsum), stdgo.Go.toInterface(_carry));
        _n1 = (new stdgo.Slice<stdgo.StdGoTypes.GoUInt32>(2, 2, (3u32 : stdgo.StdGoTypes.GoUInt32), (2147483647u32 : stdgo.StdGoTypes.GoUInt32)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt32>);
        _n2 = (new stdgo.Slice<stdgo.StdGoTypes.GoUInt32>(2, 2, (1u32 : stdgo.StdGoTypes.GoUInt32), (-2147483648u32 : stdgo.StdGoTypes.GoUInt32)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt32>);
        {
            var __tmp__ = stdgo.math.bits.Bits.sub32(_n1[(1 : stdgo.StdGoTypes.GoInt)], _n2[(1 : stdgo.StdGoTypes.GoInt)], (0u32 : stdgo.StdGoTypes.GoUInt32));
            _d1 = __tmp__._0;
            _carry = __tmp__._1;
        };
        {
            var __tmp__ = stdgo.math.bits.Bits.sub32(_n1[(0 : stdgo.StdGoTypes.GoInt)], _n2[(0 : stdgo.StdGoTypes.GoInt)], _carry);
            _d0 = __tmp__._0;
        };
        _nsum = (new stdgo.Slice<stdgo.StdGoTypes.GoUInt32>(2, 2, _d0, _d1) : stdgo.Slice<stdgo.StdGoTypes.GoUInt32>);
        stdgo.fmt.Fmt.printf(("%v - %v = %v (carry bit was %v)\n" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_n1), stdgo.Go.toInterface(_n2), stdgo.Go.toInterface(_nsum), stdgo.Go.toInterface(_carry));
    }
```


</p>
</details>


[\(view code\)](<./Bits.hx#L4466>)


## function sub64


```haxe
function sub64(_x:stdgo.GoUInt64, _y:stdgo.GoUInt64, _borrow:stdgo.GoUInt64):{
	_1:stdgo.GoUInt64;
	_0:stdgo.GoUInt64;
}
```



Sub64 returns the difference of x, y and borrow: diff = x \- y \- borrow.
The borrow input must be 0 or 1; otherwise the behavior is undefined.
The borrowOut output is guaranteed to be 0 or 1.  


This function's execution time does not depend on the inputs.  

### exampleSub64


<details><summary></summary>
<p>


```haxe
function exampleSub64():Void {
        var _n1 = (new stdgo.Slice<stdgo.StdGoTypes.GoUInt64>(2, 2, (33i64 : stdgo.StdGoTypes.GoUInt64), (23i64 : stdgo.StdGoTypes.GoUInt64)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt64>);
        var _n2 = (new stdgo.Slice<stdgo.StdGoTypes.GoUInt64>(2, 2, (21i64 : stdgo.StdGoTypes.GoUInt64), (12i64 : stdgo.StdGoTypes.GoUInt64)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt64>);
        var __tmp__ = stdgo.math.bits.Bits.sub64(_n1[(1 : stdgo.StdGoTypes.GoInt)], _n2[(1 : stdgo.StdGoTypes.GoInt)], (0i64 : stdgo.StdGoTypes.GoUInt64)), _d1:stdgo.StdGoTypes.GoUInt64 = __tmp__._0, _carry:stdgo.StdGoTypes.GoUInt64 = __tmp__._1;
        var __tmp__ = stdgo.math.bits.Bits.sub64(_n1[(0 : stdgo.StdGoTypes.GoInt)], _n2[(0 : stdgo.StdGoTypes.GoInt)], _carry), _d0:stdgo.StdGoTypes.GoUInt64 = __tmp__._0, __0:stdgo.StdGoTypes.GoUInt64 = __tmp__._1;
        var _nsum = (new stdgo.Slice<stdgo.StdGoTypes.GoUInt64>(2, 2, _d0, _d1) : stdgo.Slice<stdgo.StdGoTypes.GoUInt64>);
        stdgo.fmt.Fmt.printf(("%v - %v = %v (carry bit was %v)\n" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_n1), stdgo.Go.toInterface(_n2), stdgo.Go.toInterface(_nsum), stdgo.Go.toInterface(_carry));
        _n1 = (new stdgo.Slice<stdgo.StdGoTypes.GoUInt64>(2, 2, (3i64 : stdgo.StdGoTypes.GoUInt64), (9223372036854775807i64 : stdgo.StdGoTypes.GoUInt64)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt64>);
        _n2 = (new stdgo.Slice<stdgo.StdGoTypes.GoUInt64>(2, 2, (1i64 : stdgo.StdGoTypes.GoUInt64), (-9223372036854775808i64 : stdgo.StdGoTypes.GoUInt64)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt64>);
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(_n1[(1 : stdgo.StdGoTypes.GoInt)], _n2[(1 : stdgo.StdGoTypes.GoInt)], (0i64 : stdgo.StdGoTypes.GoUInt64));
            _d1 = __tmp__._0;
            _carry = __tmp__._1;
        };
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(_n1[(0 : stdgo.StdGoTypes.GoInt)], _n2[(0 : stdgo.StdGoTypes.GoInt)], _carry);
            _d0 = __tmp__._0;
        };
        _nsum = (new stdgo.Slice<stdgo.StdGoTypes.GoUInt64>(2, 2, _d0, _d1) : stdgo.Slice<stdgo.StdGoTypes.GoUInt64>);
        stdgo.fmt.Fmt.printf(("%v - %v = %v (carry bit was %v)\n" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_n1), stdgo.Go.toInterface(_n2), stdgo.Go.toInterface(_nsum), stdgo.Go.toInterface(_carry));
    }
```


</p>
</details>


[\(view code\)](<./Bits.hx#L4479>)


## function trailingZeros


```haxe
function trailingZeros(_x:stdgo.GoUInt):stdgo.GoInt
```



TrailingZeros returns the number of trailing zero bits in x; the result is UintSize for x == 0.  

[\(view code\)](<./Bits.hx#L1077>)


## function trailingZeros16


```haxe
function trailingZeros16(_x:stdgo.GoUInt16):stdgo.GoInt
```



TrailingZeros16 returns the number of trailing zero bits in x; the result is 16 for x == 0.  

### exampleTrailingZeros16


<details><summary></summary>
<p>


```haxe
function exampleTrailingZeros16():Void {
        stdgo.fmt.Fmt.printf(("TrailingZeros16(%016b) = %d\n" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface((14 : stdgo.StdGoTypes.GoInt)), stdgo.Go.toInterface(stdgo.math.bits.Bits.trailingZeros16((14 : stdgo.StdGoTypes.GoUInt16))));
    }
```


</p>
</details>


[\(view code\)](<./Bits.hx#L1347>)


## function trailingZeros32


```haxe
function trailingZeros32(_x:stdgo.GoUInt32):stdgo.GoInt
```



TrailingZeros32 returns the number of trailing zero bits in x; the result is 32 for x == 0.  

### exampleTrailingZeros32


<details><summary></summary>
<p>


```haxe
function exampleTrailingZeros32():Void {
        stdgo.fmt.Fmt.printf(("TrailingZeros32(%032b) = %d\n" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface((14 : stdgo.StdGoTypes.GoInt)), stdgo.Go.toInterface(stdgo.math.bits.Bits.trailingZeros32((14u32 : stdgo.StdGoTypes.GoUInt32))));
    }
```


</p>
</details>


[\(view code\)](<./Bits.hx#L1356>)


## function trailingZeros64


```haxe
function trailingZeros64(_x:stdgo.GoUInt64):stdgo.GoInt
```



TrailingZeros64 returns the number of trailing zero bits in x; the result is 64 for x == 0.  

### exampleTrailingZeros64


<details><summary></summary>
<p>


```haxe
function exampleTrailingZeros64():Void {
        stdgo.fmt.Fmt.printf(("TrailingZeros64(%064b) = %d\n" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface((14 : stdgo.StdGoTypes.GoInt)), stdgo.Go.toInterface(stdgo.math.bits.Bits.trailingZeros64((14i64 : stdgo.StdGoTypes.GoUInt64))));
    }
```


</p>
</details>


[\(view code\)](<./Bits.hx#L1365>)


## function trailingZeros8


```haxe
function trailingZeros8(_x:stdgo.GoUInt8):stdgo.GoInt
```



TrailingZeros8 returns the number of trailing zero bits in x; the result is 8 for x == 0.  

### exampleTrailingZeros8


<details><summary></summary>
<p>


```haxe
function exampleTrailingZeros8():Void {
        stdgo.fmt.Fmt.printf(("TrailingZeros8(%08b) = %d\n" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface((14 : stdgo.StdGoTypes.GoInt)), stdgo.Go.toInterface(stdgo.math.bits.Bits.trailingZeros8((14 : stdgo.StdGoTypes.GoUInt8))));
    }
```


</p>
</details>


[\(view code\)](<./Bits.hx#L1086>)


