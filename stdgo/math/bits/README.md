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

<details><summary>hl tests passed</summary>
<p>

```
=== RUN  TestUintSize
--- PASS: TestUintSize (%!s(float64=3.790855407714844e-05))

=== RUN  TestLeadingZeros
--- PASS: TestLeadingZeros (%!s(float64=0.10420894622802734))

=== RUN  TestTrailingZeros
--- PASS: TestTrailingZeros (%!s(float64=0.032317161560058594))

=== RUN  TestOnesCount
--- PASS: TestOnesCount (%!s(float64=0.29433107376098633))

=== RUN  TestRotateLeft
--- PASS: TestRotateLeft (%!s(float64=0.0014548301696777344))

=== RUN  TestReverse
--- PASS: TestReverse (%!s(float64=0.0045549869537353516))

=== RUN  TestReverseBytes
--- PASS: TestReverseBytes (%!s(float64=9.393692016601562e-05))

=== RUN  TestLen
--- PASS: TestLen (%!s(float64=0.10103392601013184))

=== RUN  TestAddSubUint
--- PASS: TestAddSubUint (%!s(float64=8.988380432128906e-05))

=== RUN  TestAddSubUint32
--- PASS: TestAddSubUint32 (%!s(float64=7.295608520507812e-05))

=== RUN  TestAddSubUint64
--- PASS: TestAddSubUint64 (%!s(float64=0.0001399517059326172))

=== RUN  TestAdd64OverflowPanic
--- PASS: TestAdd64OverflowPanic (%!s(float64=0.00019598007202148438))

=== RUN  TestSub64OverflowPanic
--- PASS: TestSub64OverflowPanic (%!s(float64=0.00018906593322753906))

=== RUN  TestMulDiv
--- PASS: TestMulDiv (%!s(float64=0.0002620220184326172))

=== RUN  TestMulDiv32
--- PASS: TestMulDiv32 (%!s(float64=0.00016999244689941406))

=== RUN  TestMulDiv64
--- PASS: TestMulDiv64 (%!s(float64=0.0006170272827148438))

=== RUN  TestDivPanicOverflow
--- PASS: TestDivPanicOverflow (%!s(float64=5.817413330078125e-05))

=== RUN  TestDiv32PanicOverflow
--- PASS: TestDiv32PanicOverflow (%!s(float64=5.2928924560546875e-05))

=== RUN  TestDiv64PanicOverflow
--- PASS: TestDiv64PanicOverflow (%!s(float64=4.887580871582031e-05))

=== RUN  TestDivPanicZero
--- PASS: TestDivPanicZero (%!s(float64=8.416175842285156e-05))

=== RUN  TestDiv32PanicZero
--- PASS: TestDiv32PanicZero (%!s(float64=0.0011038780212402344))

=== RUN  TestDiv64PanicZero
--- PASS: TestDiv64PanicZero (%!s(float64=5.1021575927734375e-05))

=== RUN  TestRem32
--- PASS: TestRem32 (%!s(float64=0.04751110076904297))

=== RUN  TestRem32Overflow
--- PASS: TestRem32Overflow (%!s(float64=0.05620980262756348))

=== RUN  TestRem64
--- PASS: TestRem64 (%!s(float64=0.20221900939941406))

=== RUN  TestRem64Overflow
--- PASS: TestRem64Overflow (%!s(float64=0.0003490447998046875))

```
</p>
</details>

<details><summary>interp tests passed</summary>
<p>

```
=== RUN  TestUintSize
--- PASS: TestUintSize (%!s(float64=5.0067901611328125e-05))

=== RUN  TestLeadingZeros
--- PASS: TestLeadingZeros (%!s(float64=0.38420987129211426))

=== RUN  TestTrailingZeros
--- PASS: TestTrailingZeros (%!s(float64=0.27083492279052734))

=== RUN  TestOnesCount
--- PASS: TestOnesCount (%!s(float64=1.1071789264678955))

=== RUN  TestRotateLeft
--- PASS: TestRotateLeft (%!s(float64=0.0059549808502197266))

=== RUN  TestReverse
--- PASS: TestReverse (%!s(float64=0.011900901794433594))

=== RUN  TestReverseBytes
--- PASS: TestReverseBytes (%!s(float64=0.0007929801940917969))

=== RUN  TestLen
--- PASS: TestLen (%!s(float64=0.37243103981018066))

=== RUN  TestAddSubUint
--- PASS: TestAddSubUint (%!s(float64=0.0006089210510253906))

=== RUN  TestAddSubUint32
--- PASS: TestAddSubUint32 (%!s(float64=0.00033211708068847656))

=== RUN  TestAddSubUint64
--- PASS: TestAddSubUint64 (%!s(float64=0.000888824462890625))

=== RUN  TestAdd64OverflowPanic
--- PASS: TestAdd64OverflowPanic (%!s(float64=0.0007059574127197266))

=== RUN  TestSub64OverflowPanic
--- PASS: TestSub64OverflowPanic (%!s(float64=0.0006220340728759766))

=== RUN  TestMulDiv
--- PASS: TestMulDiv (%!s(float64=0.00152587890625))

=== RUN  TestMulDiv32
--- PASS: TestMulDiv32 (%!s(float64=0.0010271072387695312))

=== RUN  TestMulDiv64
--- PASS: TestMulDiv64 (%!s(float64=0.004101991653442383))

=== RUN  TestDivPanicOverflow
--- PASS: TestDivPanicOverflow (%!s(float64=0.0002219676971435547))

=== RUN  TestDiv32PanicOverflow
--- PASS: TestDiv32PanicOverflow (%!s(float64=0.00012087821960449219))

=== RUN  TestDiv64PanicOverflow
--- PASS: TestDiv64PanicOverflow (%!s(float64=0.00011801719665527344))

=== RUN  TestDivPanicZero
--- PASS: TestDivPanicZero (%!s(float64=0.0001289844512939453))

=== RUN  TestDiv32PanicZero
--- PASS: TestDiv32PanicZero (%!s(float64=0.00011992454528808594))

=== RUN  TestDiv64PanicZero
--- PASS: TestDiv64PanicZero (%!s(float64=0.00011396408081054688))

=== RUN  TestRem32
--- PASS: TestRem32 (%!s(float64=0.20337605476379395))

=== RUN  TestRem32Overflow
--- PASS: TestRem32Overflow (%!s(float64=0.24059104919433594))

=== RUN  TestRem64
--- PASS: TestRem64 (%!s(float64=0.9259710311889648))

=== RUN  TestRem64Overflow
--- PASS: TestRem64Overflow (%!s(float64=0.0020270347595214844))

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
final deBruijn64:stdgo.GoUInt64 = ((285870213051353865i64 : GoUInt64))
```


```haxe
final uintSize:stdgo.GoUInt64 = ((32i64 : GoUInt64))
```



UintSize is the size of a uint in bits.  

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

[\(view code\)](<./Bits.hx#L4416>)


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
        var _n1 = (new Slice<GoUInt32>(2, 2, (33u32 : GoUInt32), (12u32 : GoUInt32)) : Slice<GoUInt32>);
        var _n2 = (new Slice<GoUInt32>(2, 2, (21u32 : GoUInt32), (23u32 : GoUInt32)) : Slice<GoUInt32>);
        var __tmp__ = stdgo.math.bits.Bits.add32(_n1[(1 : GoInt)], _n2[(1 : GoInt)], (0u32 : GoUInt32)), _d1:GoUInt32 = __tmp__._0, _carry:GoUInt32 = __tmp__._1;
        var __tmp__ = stdgo.math.bits.Bits.add32(_n1[(0 : GoInt)], _n2[(0 : GoInt)], _carry), _d0:GoUInt32 = __tmp__._0, __0:GoUInt32 = __tmp__._1;
        var _nsum = (new Slice<GoUInt32>(2, 2, _d0, _d1) : Slice<GoUInt32>);
        stdgo.fmt.Fmt.printf(("%v + %v = %v (carry bit was %v)\n" : GoString), Go.toInterface(_n1), Go.toInterface(_n2), Go.toInterface(_nsum), Go.toInterface(_carry));
        _n1 = (new Slice<GoUInt32>(2, 2, (1u32 : GoUInt32), (-2147483648u32 : GoUInt32)) : Slice<GoUInt32>);
        _n2 = (new Slice<GoUInt32>(2, 2, (1u32 : GoUInt32), (-2147483648u32 : GoUInt32)) : Slice<GoUInt32>);
        {
            var __tmp__ = stdgo.math.bits.Bits.add32(_n1[(1 : GoInt)], _n2[(1 : GoInt)], (0u32 : GoUInt32));
            _d1 = __tmp__._0;
            _carry = __tmp__._1;
        };
        {
            var __tmp__ = stdgo.math.bits.Bits.add32(_n1[(0 : GoInt)], _n2[(0 : GoInt)], _carry);
            _d0 = __tmp__._0;
        };
        _nsum = (new Slice<GoUInt32>(2, 2, _d0, _d1) : Slice<GoUInt32>);
        stdgo.fmt.Fmt.printf(("%v + %v = %v (carry bit was %v)\n" : GoString), Go.toInterface(_n1), Go.toInterface(_n2), Go.toInterface(_nsum), Go.toInterface(_carry));
    }
```


</p>
</details>


[\(view code\)](<./Bits.hx#L4432>)


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
        var _n1 = (new Slice<GoUInt64>(2, 2, (33i64 : GoUInt64), (12i64 : GoUInt64)) : Slice<GoUInt64>);
        var _n2 = (new Slice<GoUInt64>(2, 2, (21i64 : GoUInt64), (23i64 : GoUInt64)) : Slice<GoUInt64>);
        var __tmp__ = stdgo.math.bits.Bits.add64(_n1[(1 : GoInt)], _n2[(1 : GoInt)], (0i64 : GoUInt64)), _d1:GoUInt64 = __tmp__._0, _carry:GoUInt64 = __tmp__._1;
        var __tmp__ = stdgo.math.bits.Bits.add64(_n1[(0 : GoInt)], _n2[(0 : GoInt)], _carry), _d0:GoUInt64 = __tmp__._0, __0:GoUInt64 = __tmp__._1;
        var _nsum = (new Slice<GoUInt64>(2, 2, _d0, _d1) : Slice<GoUInt64>);
        stdgo.fmt.Fmt.printf(("%v + %v = %v (carry bit was %v)\n" : GoString), Go.toInterface(_n1), Go.toInterface(_n2), Go.toInterface(_nsum), Go.toInterface(_carry));
        _n1 = (new Slice<GoUInt64>(2, 2, (1i64 : GoUInt64), (-9223372036854775808i64 : GoUInt64)) : Slice<GoUInt64>);
        _n2 = (new Slice<GoUInt64>(2, 2, (1i64 : GoUInt64), (-9223372036854775808i64 : GoUInt64)) : Slice<GoUInt64>);
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_n1[(1 : GoInt)], _n2[(1 : GoInt)], (0i64 : GoUInt64));
            _d1 = __tmp__._0;
            _carry = __tmp__._1;
        };
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_n1[(0 : GoInt)], _n2[(0 : GoInt)], _carry);
            _d0 = __tmp__._0;
        };
        _nsum = (new Slice<GoUInt64>(2, 2, _d0, _d1) : Slice<GoUInt64>);
        stdgo.fmt.Fmt.printf(("%v + %v = %v (carry bit was %v)\n" : GoString), Go.toInterface(_n1), Go.toInterface(_n2), Go.toInterface(_nsum), Go.toInterface(_carry));
    }
```


</p>
</details>


[\(view code\)](<./Bits.hx#L4446>)


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

[\(view code\)](<./Bits.hx#L4557>)


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
        var _n1 = (new Slice<GoUInt32>(2, 2, (0u32 : GoUInt32), (6u32 : GoUInt32)) : Slice<GoUInt32>);
        var _n2 = (new Slice<GoUInt32>(2, 2, (0u32 : GoUInt32), (3u32 : GoUInt32)) : Slice<GoUInt32>);
        var __tmp__ = stdgo.math.bits.Bits.div32(_n1[(0 : GoInt)], _n1[(1 : GoInt)], _n2[(1 : GoInt)]), _quo:GoUInt32 = __tmp__._0, _rem:GoUInt32 = __tmp__._1;
        var _nsum = (new Slice<GoUInt32>(2, 2, _quo, _rem) : Slice<GoUInt32>);
        stdgo.fmt.Fmt.printf(("[%v %v] / %v = %v\n" : GoString), Go.toInterface(_n1[(0 : GoInt)]), Go.toInterface(_n1[(1 : GoInt)]), Go.toInterface(_n2[(1 : GoInt)]), Go.toInterface(_nsum));
        _n1 = (new Slice<GoUInt32>(2, 2, (2u32 : GoUInt32), (-2147483648u32 : GoUInt32)) : Slice<GoUInt32>);
        _n2 = (new Slice<GoUInt32>(2, 2, (0u32 : GoUInt32), (-2147483648u32 : GoUInt32)) : Slice<GoUInt32>);
        {
            var __tmp__ = stdgo.math.bits.Bits.div32(_n1[(0 : GoInt)], _n1[(1 : GoInt)], _n2[(1 : GoInt)]);
            _quo = __tmp__._0;
            _rem = __tmp__._1;
        };
        _nsum = (new Slice<GoUInt32>(2, 2, _quo, _rem) : Slice<GoUInt32>);
        stdgo.fmt.Fmt.printf(("[%v %v] / %v = %v\n" : GoString), Go.toInterface(_n1[(0 : GoInt)]), Go.toInterface(_n1[(1 : GoInt)]), Go.toInterface(_n2[(1 : GoInt)]), Go.toInterface(_nsum));
    }
```


</p>
</details>


[\(view code\)](<./Bits.hx#L4572>)


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
        var _n1 = (new Slice<GoUInt64>(2, 2, (0i64 : GoUInt64), (6i64 : GoUInt64)) : Slice<GoUInt64>);
        var _n2 = (new Slice<GoUInt64>(2, 2, (0i64 : GoUInt64), (3i64 : GoUInt64)) : Slice<GoUInt64>);
        var __tmp__ = stdgo.math.bits.Bits.div64(_n1[(0 : GoInt)], _n1[(1 : GoInt)], _n2[(1 : GoInt)]), _quo:GoUInt64 = __tmp__._0, _rem:GoUInt64 = __tmp__._1;
        var _nsum = (new Slice<GoUInt64>(2, 2, _quo, _rem) : Slice<GoUInt64>);
        stdgo.fmt.Fmt.printf(("[%v %v] / %v = %v\n" : GoString), Go.toInterface(_n1[(0 : GoInt)]), Go.toInterface(_n1[(1 : GoInt)]), Go.toInterface(_n2[(1 : GoInt)]), Go.toInterface(_nsum));
        _n1 = (new Slice<GoUInt64>(2, 2, (2i64 : GoUInt64), (-9223372036854775808i64 : GoUInt64)) : Slice<GoUInt64>);
        _n2 = (new Slice<GoUInt64>(2, 2, (0i64 : GoUInt64), (-9223372036854775808i64 : GoUInt64)) : Slice<GoUInt64>);
        {
            var __tmp__ = stdgo.math.bits.Bits.div64(_n1[(0 : GoInt)], _n1[(1 : GoInt)], _n2[(1 : GoInt)]);
            _quo = __tmp__._0;
            _rem = __tmp__._1;
        };
        _nsum = (new Slice<GoUInt64>(2, 2, _quo, _rem) : Slice<GoUInt64>);
        stdgo.fmt.Fmt.printf(("[%v %v] / %v = %v\n" : GoString), Go.toInterface(_n1[(0 : GoInt)]), Go.toInterface(_n1[(1 : GoInt)]), Go.toInterface(_n2[(1 : GoInt)]), Go.toInterface(_nsum));
    }
```


</p>
</details>


[\(view code\)](<./Bits.hx#L4592>)


## function leadingZeros


```haxe
function leadingZeros(_x:stdgo.GoUInt):stdgo.GoInt
```



LeadingZeros returns the number of leading zero bits in x; the result is UintSize for x == 0.  

[\(view code\)](<./Bits.hx#L1056>)


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
        stdgo.fmt.Fmt.printf(("LeadingZeros16(%016b) = %d\n" : GoString), Go.toInterface((1 : GoInt)), Go.toInterface(stdgo.math.bits.Bits.leadingZeros16((1 : GoUInt16))));
    }
```


</p>
</details>


[\(view code\)](<./Bits.hx#L1068>)


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
        stdgo.fmt.Fmt.printf(("LeadingZeros32(%032b) = %d\n" : GoString), Go.toInterface((1 : GoInt)), Go.toInterface(stdgo.math.bits.Bits.leadingZeros32((1u32 : GoUInt32))));
    }
```


</p>
</details>


[\(view code\)](<./Bits.hx#L1074>)


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
        stdgo.fmt.Fmt.printf(("LeadingZeros64(%064b) = %d\n" : GoString), Go.toInterface((1 : GoInt)), Go.toInterface(stdgo.math.bits.Bits.leadingZeros64((1i64 : GoUInt64))));
    }
```


</p>
</details>


[\(view code\)](<./Bits.hx#L1080>)


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
        stdgo.fmt.Fmt.printf(("LeadingZeros8(%08b) = %d\n" : GoString), Go.toInterface((1 : GoInt)), Go.toInterface(stdgo.math.bits.Bits.leadingZeros8((1 : GoUInt8))));
    }
```


</p>
</details>


[\(view code\)](<./Bits.hx#L1062>)


## function len


```haxe
function len(_x:stdgo.GoUInt):stdgo.GoInt
```



Len returns the minimum number of bits required to represent x; the result is 0 for x == 0.  

[\(view code\)](<./Bits.hx#L4096>)


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
        stdgo.fmt.Fmt.printf(("Len16(%016b) = %d\n" : GoString), Go.toInterface((8 : GoInt)), Go.toInterface(stdgo.math.bits.Bits.len16((8 : GoUInt16))));
    }
```


</p>
</details>


[\(view code\)](<./Bits.hx#L4175>)


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
        stdgo.fmt.Fmt.printf(("Len32(%032b) = %d\n" : GoString), Go.toInterface((8 : GoInt)), Go.toInterface(stdgo.math.bits.Bits.len32((8u32 : GoUInt32))));
    }
```


</p>
</details>


[\(view code\)](<./Bits.hx#L4250>)


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
        stdgo.fmt.Fmt.printf(("Len64(%064b) = %d\n" : GoString), Go.toInterface((8 : GoInt)), Go.toInterface(stdgo.math.bits.Bits.len64((8i64 : GoUInt64))));
    }
```


</p>
</details>


[\(view code\)](<./Bits.hx#L4329>)


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
        stdgo.fmt.Fmt.printf(("Len8(%08b) = %d\n" : GoString), Go.toInterface((8 : GoInt)), Go.toInterface(stdgo.math.bits.Bits.len8((8 : GoUInt8))));
    }
```


</p>
</details>


[\(view code\)](<./Bits.hx#L4105>)


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

[\(view code\)](<./Bits.hx#L4501>)


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
        var _n1 = (new Slice<GoUInt32>(2, 2, (0u32 : GoUInt32), (12u32 : GoUInt32)) : Slice<GoUInt32>);
        var _n2 = (new Slice<GoUInt32>(2, 2, (0u32 : GoUInt32), (12u32 : GoUInt32)) : Slice<GoUInt32>);
        var __tmp__ = stdgo.math.bits.Bits.mul32(_n1[(1 : GoInt)], _n2[(1 : GoInt)]), _hi:GoUInt32 = __tmp__._0, _lo:GoUInt32 = __tmp__._1;
        var _nsum = (new Slice<GoUInt32>(2, 2, _hi, _lo) : Slice<GoUInt32>);
        stdgo.fmt.Fmt.printf(("%v * %v = %v\n" : GoString), Go.toInterface(_n1[(1 : GoInt)]), Go.toInterface(_n2[(1 : GoInt)]), Go.toInterface(_nsum));
        _n1 = (new Slice<GoUInt32>(2, 2, (0u32 : GoUInt32), (-2147483648u32 : GoUInt32)) : Slice<GoUInt32>);
        _n2 = (new Slice<GoUInt32>(2, 2, (0u32 : GoUInt32), (2u32 : GoUInt32)) : Slice<GoUInt32>);
        {
            var __tmp__ = stdgo.math.bits.Bits.mul32(_n1[(1 : GoInt)], _n2[(1 : GoInt)]);
            _hi = __tmp__._0;
            _lo = __tmp__._1;
        };
        _nsum = (new Slice<GoUInt32>(2, 2, _hi, _lo) : Slice<GoUInt32>);
        stdgo.fmt.Fmt.printf(("%v * %v = %v\n" : GoString), Go.toInterface(_n1[(1 : GoInt)]), Go.toInterface(_n2[(1 : GoInt)]), Go.toInterface(_nsum));
    }
```


</p>
</details>


[\(view code\)](<./Bits.hx#L4517>)


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
        var _n1 = (new Slice<GoUInt64>(2, 2, (0i64 : GoUInt64), (12i64 : GoUInt64)) : Slice<GoUInt64>);
        var _n2 = (new Slice<GoUInt64>(2, 2, (0i64 : GoUInt64), (12i64 : GoUInt64)) : Slice<GoUInt64>);
        var __tmp__ = stdgo.math.bits.Bits.mul64(_n1[(1 : GoInt)], _n2[(1 : GoInt)]), _hi:GoUInt64 = __tmp__._0, _lo:GoUInt64 = __tmp__._1;
        var _nsum = (new Slice<GoUInt64>(2, 2, _hi, _lo) : Slice<GoUInt64>);
        stdgo.fmt.Fmt.printf(("%v * %v = %v\n" : GoString), Go.toInterface(_n1[(1 : GoInt)]), Go.toInterface(_n2[(1 : GoInt)]), Go.toInterface(_nsum));
        _n1 = (new Slice<GoUInt64>(2, 2, (0i64 : GoUInt64), (-9223372036854775808i64 : GoUInt64)) : Slice<GoUInt64>);
        _n2 = (new Slice<GoUInt64>(2, 2, (0i64 : GoUInt64), (2i64 : GoUInt64)) : Slice<GoUInt64>);
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_n1[(1 : GoInt)], _n2[(1 : GoInt)]);
            _hi = __tmp__._0;
            _lo = __tmp__._1;
        };
        _nsum = (new Slice<GoUInt64>(2, 2, _hi, _lo) : Slice<GoUInt64>);
        stdgo.fmt.Fmt.printf(("%v * %v = %v\n" : GoString), Go.toInterface(_n1[(1 : GoInt)]), Go.toInterface(_n2[(1 : GoInt)]), Go.toInterface(_nsum));
    }
```


</p>
</details>


[\(view code\)](<./Bits.hx#L4535>)


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
        stdgo.fmt.Fmt.printf(("OnesCount(%b) = %d\n" : GoString), Go.toInterface((14 : GoInt)), Go.toInterface(stdgo.math.bits.Bits.onesCount((14u32 : GoUInt))));
    }
```


</p>
</details>


[\(view code\)](<./Bits.hx#L1383>)


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
        stdgo.fmt.Fmt.printf(("OnesCount16(%016b) = %d\n" : GoString), Go.toInterface((14 : GoInt)), Go.toInterface(stdgo.math.bits.Bits.onesCount16((14 : GoUInt16))));
    }
```


</p>
</details>


[\(view code\)](<./Bits.hx#L1651>)


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
        stdgo.fmt.Fmt.printf(("OnesCount32(%032b) = %d\n" : GoString), Go.toInterface((14 : GoInt)), Go.toInterface(stdgo.math.bits.Bits.onesCount32((14u32 : GoUInt32))));
    }
```


</p>
</details>


[\(view code\)](<./Bits.hx#L2163>)


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
        stdgo.fmt.Fmt.printf(("OnesCount64(%064b) = %d\n" : GoString), Go.toInterface((14 : GoInt)), Go.toInterface(stdgo.math.bits.Bits.onesCount64((14i64 : GoUInt64))));
    }
```


</p>
</details>


[\(view code\)](<./Bits.hx#L3181>)


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
        stdgo.fmt.Fmt.printf(("OnesCount8(%08b) = %d\n" : GoString), Go.toInterface((14 : GoInt)), Go.toInterface(stdgo.math.bits.Bits.onesCount8((14 : GoUInt8))));
    }
```


</p>
</details>


[\(view code\)](<./Bits.hx#L1392>)


## function rem


```haxe
function rem(_hi:stdgo.GoUInt, _lo:stdgo.GoUInt, _y:stdgo.GoUInt):stdgo.GoUInt
```



Rem returns the remainder of \(hi, lo\) divided by y. Rem panics for
y == 0 \(division by zero\) but, unlike Div, it doesn't panic on a
quotient overflow.  

[\(view code\)](<./Bits.hx#L4638>)


## function rem32


```haxe
function rem32(_hi:stdgo.GoUInt32, _lo:stdgo.GoUInt32, _y:stdgo.GoUInt32):stdgo.GoUInt32
```



Rem32 returns the remainder of \(hi, lo\) divided by y. Rem32 panics
for y == 0 \(division by zero\) but, unlike Div32, it doesn't panic
on a quotient overflow.  

[\(view code\)](<./Bits.hx#L4649>)


## function rem64


```haxe
function rem64(_hi:stdgo.GoUInt64, _lo:stdgo.GoUInt64, _y:stdgo.GoUInt64):stdgo.GoUInt64
```



Rem64 returns the remainder of \(hi, lo\) divided by y. Rem64 panics
for y == 0 \(division by zero\) but, unlike Div64, it doesn't panic
on a quotient overflow.  

[\(view code\)](<./Bits.hx#L4657>)


## function reverse


```haxe
function reverse(_x:stdgo.GoUInt):stdgo.GoUInt
```



Reverse returns the value of x with its bits in reversed order.  

[\(view code\)](<./Bits.hx#L3250>)


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
        stdgo.fmt.Fmt.printf(("%016b\n" : GoString), Go.toInterface((19 : GoInt)));
        stdgo.fmt.Fmt.printf(("%016b\n" : GoString), Go.toInterface(stdgo.math.bits.Bits.reverse16((19 : GoUInt16))));
    }
```


</p>
</details>


[\(view code\)](<./Bits.hx#L3520>)


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
        stdgo.fmt.Fmt.printf(("%032b\n" : GoString), Go.toInterface((19 : GoInt)));
        stdgo.fmt.Fmt.printf(("%032b\n" : GoString), Go.toInterface(stdgo.math.bits.Bits.reverse32((19u32 : GoUInt32))));
    }
```


</p>
</details>


[\(view code\)](<./Bits.hx#L4036>)


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
        stdgo.fmt.Fmt.printf(("%064b\n" : GoString), Go.toInterface((19 : GoInt)));
        stdgo.fmt.Fmt.printf(("%064b\n" : GoString), Go.toInterface(stdgo.math.bits.Bits.reverse64((19i64 : GoUInt64))));
    }
```


</p>
</details>


[\(view code\)](<./Bits.hx#L4046>)


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
        stdgo.fmt.Fmt.printf(("%08b\n" : GoString), Go.toInterface((19 : GoInt)));
        stdgo.fmt.Fmt.printf(("%08b\n" : GoString), Go.toInterface(stdgo.math.bits.Bits.reverse8((19 : GoUInt8))));
    }
```


</p>
</details>


[\(view code\)](<./Bits.hx#L3259>)


## function reverseBytes


```haxe
function reverseBytes(_x:stdgo.GoUInt):stdgo.GoUInt
```



ReverseBytes returns the value of x with its bytes in reversed order.  


This function's execution time does not depend on the inputs.  

[\(view code\)](<./Bits.hx#L4058>)


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
        stdgo.fmt.Fmt.printf(("%016b\n" : GoString), Go.toInterface((15 : GoInt)));
        stdgo.fmt.Fmt.printf(("%016b\n" : GoString), Go.toInterface(stdgo.math.bits.Bits.reverseBytes16((15 : GoUInt16))));
    }
```


</p>
</details>


[\(view code\)](<./Bits.hx#L4069>)


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
        stdgo.fmt.Fmt.printf(("%032b\n" : GoString), Go.toInterface((15 : GoInt)));
        stdgo.fmt.Fmt.printf(("%032b\n" : GoString), Go.toInterface(stdgo.math.bits.Bits.reverseBytes32((15u32 : GoUInt32))));
    }
```


</p>
</details>


[\(view code\)](<./Bits.hx#L4077>)


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
        stdgo.fmt.Fmt.printf(("%064b\n" : GoString), Go.toInterface((15 : GoInt)));
        stdgo.fmt.Fmt.printf(("%064b\n" : GoString), Go.toInterface(stdgo.math.bits.Bits.reverseBytes64((15i64 : GoUInt64))));
    }
```


</p>
</details>


[\(view code\)](<./Bits.hx#L4087>)


## function rotateLeft


```haxe
function rotateLeft(_x:stdgo.GoUInt, _k:stdgo.GoInt):stdgo.GoUInt
```



RotateLeft returns the value of x rotated left by \(k mod UintSize\) bits.
To rotate x right by k bits, call RotateLeft\(x, \-k\).  


This function's execution time does not depend on the inputs.  

[\(view code\)](<./Bits.hx#L3197>)


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
        stdgo.fmt.Fmt.printf(("%016b\n" : GoString), Go.toInterface((15 : GoInt)));
        stdgo.fmt.Fmt.printf(("%016b\n" : GoString), Go.toInterface(stdgo.math.bits.Bits.rotateLeft16((15 : GoUInt16), (2 : GoInt))));
        stdgo.fmt.Fmt.printf(("%016b\n" : GoString), Go.toInterface(stdgo.math.bits.Bits.rotateLeft16((15 : GoUInt16), (-2 : GoInt))));
    }
```


</p>
</details>


[\(view code\)](<./Bits.hx#L3220>)


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
        stdgo.fmt.Fmt.printf(("%032b\n" : GoString), Go.toInterface((15 : GoInt)));
        stdgo.fmt.Fmt.printf(("%032b\n" : GoString), Go.toInterface(stdgo.math.bits.Bits.rotateLeft32((15u32 : GoUInt32), (2 : GoInt))));
        stdgo.fmt.Fmt.printf(("%032b\n" : GoString), Go.toInterface(stdgo.math.bits.Bits.rotateLeft32((15u32 : GoUInt32), (-2 : GoInt))));
    }
```


</p>
</details>


[\(view code\)](<./Bits.hx#L3231>)


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
        stdgo.fmt.Fmt.printf(("%064b\n" : GoString), Go.toInterface((15 : GoInt)));
        stdgo.fmt.Fmt.printf(("%064b\n" : GoString), Go.toInterface(stdgo.math.bits.Bits.rotateLeft64((15i64 : GoUInt64), (2 : GoInt))));
        stdgo.fmt.Fmt.printf(("%064b\n" : GoString), Go.toInterface(stdgo.math.bits.Bits.rotateLeft64((15i64 : GoUInt64), (-2 : GoInt))));
    }
```


</p>
</details>


[\(view code\)](<./Bits.hx#L3242>)


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
        stdgo.fmt.Fmt.printf(("%08b\n" : GoString), Go.toInterface((15 : GoInt)));
        stdgo.fmt.Fmt.printf(("%08b\n" : GoString), Go.toInterface(stdgo.math.bits.Bits.rotateLeft8((15 : GoUInt8), (2 : GoInt))));
        stdgo.fmt.Fmt.printf(("%08b\n" : GoString), Go.toInterface(stdgo.math.bits.Bits.rotateLeft8((15 : GoUInt8), (-2 : GoInt))));
    }
```


</p>
</details>


[\(view code\)](<./Bits.hx#L3209>)


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

[\(view code\)](<./Bits.hx#L4459>)


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
        var _n1 = (new Slice<GoUInt32>(2, 2, (33u32 : GoUInt32), (23u32 : GoUInt32)) : Slice<GoUInt32>);
        var _n2 = (new Slice<GoUInt32>(2, 2, (21u32 : GoUInt32), (12u32 : GoUInt32)) : Slice<GoUInt32>);
        var __tmp__ = stdgo.math.bits.Bits.sub32(_n1[(1 : GoInt)], _n2[(1 : GoInt)], (0u32 : GoUInt32)), _d1:GoUInt32 = __tmp__._0, _carry:GoUInt32 = __tmp__._1;
        var __tmp__ = stdgo.math.bits.Bits.sub32(_n1[(0 : GoInt)], _n2[(0 : GoInt)], _carry), _d0:GoUInt32 = __tmp__._0, __0:GoUInt32 = __tmp__._1;
        var _nsum = (new Slice<GoUInt32>(2, 2, _d0, _d1) : Slice<GoUInt32>);
        stdgo.fmt.Fmt.printf(("%v - %v = %v (carry bit was %v)\n" : GoString), Go.toInterface(_n1), Go.toInterface(_n2), Go.toInterface(_nsum), Go.toInterface(_carry));
        _n1 = (new Slice<GoUInt32>(2, 2, (3u32 : GoUInt32), (2147483647u32 : GoUInt32)) : Slice<GoUInt32>);
        _n2 = (new Slice<GoUInt32>(2, 2, (1u32 : GoUInt32), (-2147483648u32 : GoUInt32)) : Slice<GoUInt32>);
        {
            var __tmp__ = stdgo.math.bits.Bits.sub32(_n1[(1 : GoInt)], _n2[(1 : GoInt)], (0u32 : GoUInt32));
            _d1 = __tmp__._0;
            _carry = __tmp__._1;
        };
        {
            var __tmp__ = stdgo.math.bits.Bits.sub32(_n1[(0 : GoInt)], _n2[(0 : GoInt)], _carry);
            _d0 = __tmp__._0;
        };
        _nsum = (new Slice<GoUInt32>(2, 2, _d0, _d1) : Slice<GoUInt32>);
        stdgo.fmt.Fmt.printf(("%v - %v = %v (carry bit was %v)\n" : GoString), Go.toInterface(_n1), Go.toInterface(_n2), Go.toInterface(_nsum), Go.toInterface(_carry));
    }
```


</p>
</details>


[\(view code\)](<./Bits.hx#L4475>)


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
        var _n1 = (new Slice<GoUInt64>(2, 2, (33i64 : GoUInt64), (23i64 : GoUInt64)) : Slice<GoUInt64>);
        var _n2 = (new Slice<GoUInt64>(2, 2, (21i64 : GoUInt64), (12i64 : GoUInt64)) : Slice<GoUInt64>);
        var __tmp__ = stdgo.math.bits.Bits.sub64(_n1[(1 : GoInt)], _n2[(1 : GoInt)], (0i64 : GoUInt64)), _d1:GoUInt64 = __tmp__._0, _carry:GoUInt64 = __tmp__._1;
        var __tmp__ = stdgo.math.bits.Bits.sub64(_n1[(0 : GoInt)], _n2[(0 : GoInt)], _carry), _d0:GoUInt64 = __tmp__._0, __0:GoUInt64 = __tmp__._1;
        var _nsum = (new Slice<GoUInt64>(2, 2, _d0, _d1) : Slice<GoUInt64>);
        stdgo.fmt.Fmt.printf(("%v - %v = %v (carry bit was %v)\n" : GoString), Go.toInterface(_n1), Go.toInterface(_n2), Go.toInterface(_nsum), Go.toInterface(_carry));
        _n1 = (new Slice<GoUInt64>(2, 2, (3i64 : GoUInt64), (9223372036854775807i64 : GoUInt64)) : Slice<GoUInt64>);
        _n2 = (new Slice<GoUInt64>(2, 2, (1i64 : GoUInt64), (-9223372036854775808i64 : GoUInt64)) : Slice<GoUInt64>);
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(_n1[(1 : GoInt)], _n2[(1 : GoInt)], (0i64 : GoUInt64));
            _d1 = __tmp__._0;
            _carry = __tmp__._1;
        };
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(_n1[(0 : GoInt)], _n2[(0 : GoInt)], _carry);
            _d0 = __tmp__._0;
        };
        _nsum = (new Slice<GoUInt64>(2, 2, _d0, _d1) : Slice<GoUInt64>);
        stdgo.fmt.Fmt.printf(("%v - %v = %v (carry bit was %v)\n" : GoString), Go.toInterface(_n1), Go.toInterface(_n2), Go.toInterface(_nsum), Go.toInterface(_carry));
    }
```


</p>
</details>


[\(view code\)](<./Bits.hx#L4488>)


## function trailingZeros


```haxe
function trailingZeros(_x:stdgo.GoUInt):stdgo.GoInt
```



TrailingZeros returns the number of trailing zero bits in x; the result is UintSize for x == 0.  

[\(view code\)](<./Bits.hx#L1086>)


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
        stdgo.fmt.Fmt.printf(("TrailingZeros16(%016b) = %d\n" : GoString), Go.toInterface((14 : GoInt)), Go.toInterface(stdgo.math.bits.Bits.trailingZeros16((14 : GoUInt16))));
    }
```


</p>
</details>


[\(view code\)](<./Bits.hx#L1356>)


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
        stdgo.fmt.Fmt.printf(("TrailingZeros32(%032b) = %d\n" : GoString), Go.toInterface((14 : GoInt)), Go.toInterface(stdgo.math.bits.Bits.trailingZeros32((14u32 : GoUInt32))));
    }
```


</p>
</details>


[\(view code\)](<./Bits.hx#L1365>)


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
        stdgo.fmt.Fmt.printf(("TrailingZeros64(%064b) = %d\n" : GoString), Go.toInterface((14 : GoInt)), Go.toInterface(stdgo.math.bits.Bits.trailingZeros64((14i64 : GoUInt64))));
    }
```


</p>
</details>


[\(view code\)](<./Bits.hx#L1374>)


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
        stdgo.fmt.Fmt.printf(("TrailingZeros8(%08b) = %d\n" : GoString), Go.toInterface((14 : GoInt)), Go.toInterface(stdgo.math.bits.Bits.trailingZeros8((14 : GoUInt8))));
    }
```


</p>
</details>


[\(view code\)](<./Bits.hx#L1095>)


