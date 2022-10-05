# Module: `stdgo.math.bits`

[(view library index)](../../stdgo.md)


# Overview


Package bits implements bit counting and manipulation functions for the predeclared unsigned integer types. 


<details><summary>hl tests failed</summary>
<p>

```
(Test time-out - runtime exceeded 2m0s)
```
</p>
</details>

<details><summary>interp tests failed</summary>
<p>

```
(Test time-out - runtime exceeded 2m0s)
```
</p>
</details>

<details><summary>jvm tests failed</summary>
<p>

```
(Test time-out - runtime exceeded 2m0s)
```
</p>
</details>


# Index


- [Constants](<#constants>)

- [`function add(_x:stdgo.GoUInt, _y:stdgo.GoUInt, _carry:stdgo.GoUInt):{_1:stdgo.GoUInt, _0:stdgo.GoUInt}`](<#function-add>)

- [`function add32(_x:stdgo.GoUInt32, _y:stdgo.GoUInt32, _carry:stdgo.GoUInt32):{_1:stdgo.GoUInt32, _0:stdgo.GoUInt32}`](<#function-add32>)

- [`function add64(_x:stdgo.GoUInt64, _y:stdgo.GoUInt64, _carry:stdgo.GoUInt64):{_1:stdgo.GoUInt64, _0:stdgo.GoUInt64}`](<#function-add64>)

- [`function div(_hi:stdgo.GoUInt, _lo:stdgo.GoUInt, _y:stdgo.GoUInt):{_1:stdgo.GoUInt, _0:stdgo.GoUInt}`](<#function-div>)

- [`function div32(_hi:stdgo.GoUInt32, _lo:stdgo.GoUInt32, _y:stdgo.GoUInt32):{_1:stdgo.GoUInt32, _0:stdgo.GoUInt32}`](<#function-div32>)

- [`function div64(_hi:stdgo.GoUInt64, _lo:stdgo.GoUInt64, _y:stdgo.GoUInt64):{_1:stdgo.GoUInt64, _0:stdgo.GoUInt64}`](<#function-div64>)

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

- [`function mul(_x:stdgo.GoUInt, _y:stdgo.GoUInt):{_1:stdgo.GoUInt, _0:stdgo.GoUInt}`](<#function-mul>)

- [`function mul32(_x:stdgo.GoUInt32, _y:stdgo.GoUInt32):{_1:stdgo.GoUInt32, _0:stdgo.GoUInt32}`](<#function-mul32>)

- [`function mul64(_x:stdgo.GoUInt64, _y:stdgo.GoUInt64):{_1:stdgo.GoUInt64, _0:stdgo.GoUInt64}`](<#function-mul64>)

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

- [`function sub(_x:stdgo.GoUInt, _y:stdgo.GoUInt, _borrow:stdgo.GoUInt):{_1:stdgo.GoUInt, _0:stdgo.GoUInt}`](<#function-sub>)

- [`function sub32(_x:stdgo.GoUInt32, _y:stdgo.GoUInt32, _borrow:stdgo.GoUInt32):{_1:stdgo.GoUInt32, _0:stdgo.GoUInt32}`](<#function-sub32>)

- [`function sub64(_x:stdgo.GoUInt64, _y:stdgo.GoUInt64, _borrow:stdgo.GoUInt64):{_1:stdgo.GoUInt64, _0:stdgo.GoUInt64}`](<#function-sub64>)

- [`function trailingZeros(_x:stdgo.GoUInt):stdgo.GoInt`](<#function-trailingzeros>)

- [`function trailingZeros16(_x:stdgo.GoUInt16):stdgo.GoInt`](<#function-trailingzeros16>)

- [`function trailingZeros32(_x:stdgo.GoUInt32):stdgo.GoInt`](<#function-trailingzeros32>)

- [`function trailingZeros64(_x:stdgo.GoUInt64):stdgo.GoInt`](<#function-trailingzeros64>)

- [`function trailingZeros8(_x:stdgo.GoUInt8):stdgo.GoInt`](<#function-trailingzeros8>)

- [class T\_errorString\_static\_extension](<#class-t_errorstring_static_extension>)

  - [`function error(_e:stdgo.math.bits._Bits.T_errorString):stdgo.GoString`](<#t_errorstring_static_extension-function-error>)

  - [`function runtimeError(_e:stdgo.math.bits._Bits.T_errorString):Void`](<#t_errorstring_static_extension-function-runtimeerror>)

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
final deBruijn64:stdgo.GoUInt64 = (("285870213051353865" : GoUInt64))
```


```haxe
final uintSize:stdgo.GoUInt64 = (("32" : GoUInt64))
```


UintSize is the size of a uint in bits. 


# Functions


```haxe
import stdgo.math.bits.Bits
```


## function add


```haxe
function add(_x:stdgo.GoUInt, _y:stdgo.GoUInt, _carry:stdgo.GoUInt):{_1:stdgo.GoUInt, _0:stdgo.GoUInt}
```


Add returns the sum with carry of x, y and carry: sum = x \+ y \+ carry. The carry input must be 0 or 1; otherwise the behavior is undefined. The carryOut output is guaranteed to be 0 or 1.  This function's execution time does not depend on the inputs. 


[\(view code\)](<./Bits.hx#L542>)


## function add32


```haxe
function add32(_x:stdgo.GoUInt32, _y:stdgo.GoUInt32, _carry:stdgo.GoUInt32):{_1:stdgo.GoUInt32, _0:stdgo.GoUInt32}
```


Add32 returns the sum with carry of x, y and carry: sum = x \+ y \+ carry. The carry input must be 0 or 1; otherwise the behavior is undefined. The carryOut output is guaranteed to be 0 or 1.  This function's execution time does not depend on the inputs. 


### exampleAdd32


<details><summary></summary>
<p>


```haxe
function exampleAdd32():Void {
	var _n1 = (new Slice<GoUInt32>(0, 0, ("33" : GoUInt32), ("12" : GoUInt32)) : Slice<GoUInt32>);
	var _n2 = (new Slice<GoUInt32>(0, 0, ("21" : GoUInt32), ("23" : GoUInt32)) : Slice<GoUInt32>);
	var __tmp__ = stdgo.math.bits.Bits.add32(_n1[(1 : GoInt)], _n2[(1 : GoInt)], ("0" : GoUInt32)),
		_d1:GoUInt32 = __tmp__._0,
		_carry:GoUInt32 = __tmp__._1;
	var __tmp__ = stdgo.math.bits.Bits.add32(_n1[(0 : GoInt)], _n2[(0 : GoInt)], _carry),
		_d0:GoUInt32 = __tmp__._0,
		_0:GoUInt32 = __tmp__._1;
	var _nsum = (new Slice<GoUInt32>(0, 0, _d0, _d1) : Slice<GoUInt32>);
	stdgo.fmt.Fmt.printf(Go.str("%v + %v = %v (carry bit was %v)\n"), Go.toInterface(_n1), Go.toInterface(_n2), Go.toInterface(_nsum), Go.toInterface(_carry));
	_n1 = (new Slice<GoUInt32>(0, 0, ("1" : GoUInt32), ("2147483648" : GoUInt32)) : Slice<GoUInt32>);
	_n2 = (new Slice<GoUInt32>(0, 0, ("1" : GoUInt32), ("2147483648" : GoUInt32)) : Slice<GoUInt32>);
	{
		var __tmp__ = stdgo.math.bits.Bits.add32(_n1[(1 : GoInt)], _n2[(1 : GoInt)], ("0" : GoUInt32));
		_d1 = __tmp__._0;
		_carry = __tmp__._1;
	};
	{
		var __tmp__ = stdgo.math.bits.Bits.add32(_n1[(0 : GoInt)], _n2[(0 : GoInt)], _carry);
		_d0 = __tmp__._0;
	};
	_nsum = (new Slice<GoUInt32>(0, 0, _d0, _d1) : Slice<GoUInt32>);
	stdgo.fmt.Fmt.printf(Go.str("%v + %v = %v (carry bit was %v)\n"), Go.toInterface(_n1), Go.toInterface(_n2), Go.toInterface(_nsum), Go.toInterface(_carry));
}
```


</p>
</details>


[\(view code\)](<./Bits.hx#L563>)


## function add64


```haxe
function add64(_x:stdgo.GoUInt64, _y:stdgo.GoUInt64, _carry:stdgo.GoUInt64):{_1:stdgo.GoUInt64, _0:stdgo.GoUInt64}
```


Add64 returns the sum with carry of x, y and carry: sum = x \+ y \+ carry. The carry input must be 0 or 1; otherwise the behavior is undefined. The carryOut output is guaranteed to be 0 or 1.  This function's execution time does not depend on the inputs. 


### exampleAdd64


<details><summary></summary>
<p>


```haxe
function exampleAdd64():Void {
	var _n1 = (new Slice<GoUInt64>(0, 0, ("33" : GoUInt64), ("12" : GoUInt64)) : Slice<GoUInt64>);
	var _n2 = (new Slice<GoUInt64>(0, 0, ("21" : GoUInt64), ("23" : GoUInt64)) : Slice<GoUInt64>);
	var __tmp__ = stdgo.math.bits.Bits.add64(_n1[(1 : GoInt)], _n2[(1 : GoInt)], ("0" : GoUInt64)),
		_d1:GoUInt64 = __tmp__._0,
		_carry:GoUInt64 = __tmp__._1;
	var __tmp__ = stdgo.math.bits.Bits.add64(_n1[(0 : GoInt)], _n2[(0 : GoInt)], _carry),
		_d0:GoUInt64 = __tmp__._0,
		_0:GoUInt64 = __tmp__._1;
	var _nsum = (new Slice<GoUInt64>(0, 0, _d0, _d1) : Slice<GoUInt64>);
	stdgo.fmt.Fmt.printf(Go.str("%v + %v = %v (carry bit was %v)\n"), Go.toInterface(_n1), Go.toInterface(_n2), Go.toInterface(_nsum), Go.toInterface(_carry));
	_n1 = (new Slice<GoUInt64>(0, 0, ("1" : GoUInt64), ("9223372036854775808" : GoUInt64)) : Slice<GoUInt64>);
	_n2 = (new Slice<GoUInt64>(0, 0, ("1" : GoUInt64), ("9223372036854775808" : GoUInt64)) : Slice<GoUInt64>);
	{
		var __tmp__ = stdgo.math.bits.Bits.add64(_n1[(1 : GoInt)], _n2[(1 : GoInt)], ("0" : GoUInt64));
		_d1 = __tmp__._0;
		_carry = __tmp__._1;
	};
	{
		var __tmp__ = stdgo.math.bits.Bits.add64(_n1[(0 : GoInt)], _n2[(0 : GoInt)], _carry);
		_d0 = __tmp__._0;
	};
	_nsum = (new Slice<GoUInt64>(0, 0, _d0, _d1) : Slice<GoUInt64>);
	stdgo.fmt.Fmt.printf(Go.str("%v + %v = %v (carry bit was %v)\n"), Go.toInterface(_n1), Go.toInterface(_n2), Go.toInterface(_nsum), Go.toInterface(_carry));
}
```


</p>
</details>


[\(view code\)](<./Bits.hx#L578>)


## function div


```haxe
function div(_hi:stdgo.GoUInt, _lo:stdgo.GoUInt, _y:stdgo.GoUInt):{_1:stdgo.GoUInt, _0:stdgo.GoUInt}
```


Div returns the quotient and remainder of \(hi, lo\) divided by y: quo = \(hi, lo\)/y, rem = \(hi, lo\)%y with the dividend bits' upper half in parameter hi and the lower half in parameter lo. Div panics for y == 0 \(division by zero\) or y \<= hi \(quotient overflow\). 


[\(view code\)](<./Bits.hx#L704>)


## function div32


```haxe
function div32(_hi:stdgo.GoUInt32, _lo:stdgo.GoUInt32, _y:stdgo.GoUInt32):{_1:stdgo.GoUInt32, _0:stdgo.GoUInt32}
```


Div32 returns the quotient and remainder of \(hi, lo\) divided by y: quo = \(hi, lo\)/y, rem = \(hi, lo\)%y with the dividend bits' upper half in parameter hi and the lower half in parameter lo. Div32 panics for y == 0 \(division by zero\) or y \<= hi \(quotient overflow\). 


### exampleDiv32


<details><summary></summary>
<p>


```haxe
function exampleDiv32():Void {
	var _n1 = (new Slice<GoUInt32>(0, 0, ("0" : GoUInt32), ("6" : GoUInt32)) : Slice<GoUInt32>);
	var _n2 = (new Slice<GoUInt32>(0, 0, ("0" : GoUInt32), ("3" : GoUInt32)) : Slice<GoUInt32>);
	var __tmp__ = stdgo.math.bits.Bits.div32(_n1[(0 : GoInt)], _n1[(1 : GoInt)], _n2[(1 : GoInt)]),
		_quo:GoUInt32 = __tmp__._0,
		_rem:GoUInt32 = __tmp__._1;
	var _nsum = (new Slice<GoUInt32>(0, 0, _quo, _rem) : Slice<GoUInt32>);
	stdgo.fmt.Fmt.printf(Go.str("[%v %v] / %v = %v\n"), Go.toInterface(_n1[(0 : GoInt)]), Go.toInterface(_n1[(1 : GoInt)]), Go.toInterface(_n2[(1 : GoInt)]),
		Go.toInterface(_nsum));
	_n1 = (new Slice<GoUInt32>(0, 0, ("2" : GoUInt32), ("2147483648" : GoUInt32)) : Slice<GoUInt32>);
	_n2 = (new Slice<GoUInt32>(0, 0, ("0" : GoUInt32), ("2147483648" : GoUInt32)) : Slice<GoUInt32>);
	{
		var __tmp__ = stdgo.math.bits.Bits.div32(_n1[(0 : GoInt)], _n1[(1 : GoInt)], _n2[(1 : GoInt)]);
		_quo = __tmp__._0;
		_rem = __tmp__._1;
	};
	_nsum = (new Slice<GoUInt32>(0, 0, _quo, _rem) : Slice<GoUInt32>);
	stdgo.fmt.Fmt.printf(Go.str("[%v %v] / %v = %v\n"), Go.toInterface(_n1[(0 : GoInt)]), Go.toInterface(_n1[(1 : GoInt)]), Go.toInterface(_n2[(1 : GoInt)]),
		Go.toInterface(_nsum));
}
```


</p>
</details>


[\(view code\)](<./Bits.hx#L724>)


## function div64


```haxe
function div64(_hi:stdgo.GoUInt64, _lo:stdgo.GoUInt64, _y:stdgo.GoUInt64):{_1:stdgo.GoUInt64, _0:stdgo.GoUInt64}
```


Div64 returns the quotient and remainder of \(hi, lo\) divided by y: quo = \(hi, lo\)/y, rem = \(hi, lo\)%y with the dividend bits' upper half in parameter hi and the lower half in parameter lo. Div64 panics for y == 0 \(division by zero\) or y \<= hi \(quotient overflow\). 


### exampleDiv64


<details><summary></summary>
<p>


```haxe
function exampleDiv64():Void {
	var _n1 = (new Slice<GoUInt64>(0, 0, ("0" : GoUInt64), ("6" : GoUInt64)) : Slice<GoUInt64>);
	var _n2 = (new Slice<GoUInt64>(0, 0, ("0" : GoUInt64), ("3" : GoUInt64)) : Slice<GoUInt64>);
	var __tmp__ = stdgo.math.bits.Bits.div64(_n1[(0 : GoInt)], _n1[(1 : GoInt)], _n2[(1 : GoInt)]),
		_quo:GoUInt64 = __tmp__._0,
		_rem:GoUInt64 = __tmp__._1;
	var _nsum = (new Slice<GoUInt64>(0, 0, _quo, _rem) : Slice<GoUInt64>);
	stdgo.fmt.Fmt.printf(Go.str("[%v %v] / %v = %v\n"), Go.toInterface(_n1[(0 : GoInt)]), Go.toInterface(_n1[(1 : GoInt)]), Go.toInterface(_n2[(1 : GoInt)]),
		Go.toInterface(_nsum));
	_n1 = (new Slice<GoUInt64>(0, 0, ("2" : GoUInt64), ("9223372036854775808" : GoUInt64)) : Slice<GoUInt64>);
	_n2 = (new Slice<GoUInt64>(0, 0, ("0" : GoUInt64), ("9223372036854775808" : GoUInt64)) : Slice<GoUInt64>);
	{
		var __tmp__ = stdgo.math.bits.Bits.div64(_n1[(0 : GoInt)], _n1[(1 : GoInt)], _n2[(1 : GoInt)]);
		_quo = __tmp__._0;
		_rem = __tmp__._1;
	};
	_nsum = (new Slice<GoUInt64>(0, 0, _quo, _rem) : Slice<GoUInt64>);
	stdgo.fmt.Fmt.printf(Go.str("[%v %v] / %v = %v\n"), Go.toInterface(_n1[(0 : GoInt)]), Go.toInterface(_n1[(1 : GoInt)]), Go.toInterface(_n2[(1 : GoInt)]),
		Go.toInterface(_nsum));
}
```


</p>
</details>


[\(view code\)](<./Bits.hx#L745>)


## function leadingZeros


```haxe
function leadingZeros(_x:stdgo.GoUInt):stdgo.GoInt
```


LeadingZeros returns the number of leading zero bits in x; the result is UintSize for x == 0. 


[\(view code\)](<./Bits.hx#L110>)


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
	stdgo.fmt.Fmt.printf(Go.str("LeadingZeros16(%016b) = %d\n"), Go.toInterface((1 : GoInt)),
		Go.toInterface(stdgo.math.bits.Bits.leadingZeros16((1 : GoUInt16))));
}
```


</p>
</details>


[\(view code\)](<./Bits.hx#L124>)


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
	stdgo.fmt.Fmt.printf(Go.str("LeadingZeros32(%032b) = %d\n"), Go.toInterface((1 : GoInt)),
		Go.toInterface(stdgo.math.bits.Bits.leadingZeros32(("1" : GoUInt32))));
}
```


</p>
</details>


[\(view code\)](<./Bits.hx#L131>)


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
	stdgo.fmt.Fmt.printf(Go.str("LeadingZeros64(%064b) = %d\n"), Go.toInterface((1 : GoInt)),
		Go.toInterface(stdgo.math.bits.Bits.leadingZeros64(("1" : GoUInt64))));
}
```


</p>
</details>


[\(view code\)](<./Bits.hx#L138>)


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
	stdgo.fmt.Fmt.printf(Go.str("LeadingZeros8(%08b) = %d\n"), Go.toInterface((1 : GoInt)), Go.toInterface(stdgo.math.bits.Bits.leadingZeros8((1 : GoUInt8))));
}
```


</p>
</details>


[\(view code\)](<./Bits.hx#L117>)


## function len


```haxe
function len(_x:stdgo.GoUInt):stdgo.GoInt
```


Len returns the minimum number of bits required to represent x; the result is 0 for x == 0. 


[\(view code\)](<./Bits.hx#L462>)


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
	stdgo.fmt.Fmt.printf(Go.str("Len16(%016b) = %d\n"), Go.toInterface((8 : GoInt)), Go.toInterface(stdgo.math.bits.Bits.len16((8 : GoUInt16))));
}
```


</p>
</details>


[\(view code\)](<./Bits.hx#L481>)


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
	stdgo.fmt.Fmt.printf(Go.str("Len32(%032b) = %d\n"), Go.toInterface((8 : GoInt)), Go.toInterface(stdgo.math.bits.Bits.len32(("8" : GoUInt32))));
}
```


</p>
</details>


[\(view code\)](<./Bits.hx#L496>)


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
	stdgo.fmt.Fmt.printf(Go.str("Len64(%064b) = %d\n"), Go.toInterface((8 : GoInt)), Go.toInterface(stdgo.math.bits.Bits.len64(("8" : GoUInt64))));
}
```


</p>
</details>


[\(view code\)](<./Bits.hx#L515>)


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
	stdgo.fmt.Fmt.printf(Go.str("Len8(%08b) = %d\n"), Go.toInterface((8 : GoInt)), Go.toInterface(stdgo.math.bits.Bits.len8((8 : GoUInt8))));
}
```


</p>
</details>


[\(view code\)](<./Bits.hx#L472>)


## function mul


```haxe
function mul(_x:stdgo.GoUInt, _y:stdgo.GoUInt):{_1:stdgo.GoUInt, _0:stdgo.GoUInt}
```


Mul returns the full\-width product of x and y: \(hi, lo\) = x \* y with the product bits' upper half returned in hi and the lower half returned in lo.  This function's execution time does not depend on the inputs. 


[\(view code\)](<./Bits.hx#L641>)


## function mul32


```haxe
function mul32(_x:stdgo.GoUInt32, _y:stdgo.GoUInt32):{_1:stdgo.GoUInt32, _0:stdgo.GoUInt32}
```


Mul32 returns the 64\-bit product of x and y: \(hi, lo\) = x \* y with the product bits' upper half returned in hi and the lower half returned in lo.  This function's execution time does not depend on the inputs. 


### exampleMul32


<details><summary></summary>
<p>


```haxe
function exampleMul32():Void {
	var _n1 = (new Slice<GoUInt32>(0, 0, ("0" : GoUInt32), ("12" : GoUInt32)) : Slice<GoUInt32>);
	var _n2 = (new Slice<GoUInt32>(0, 0, ("0" : GoUInt32), ("12" : GoUInt32)) : Slice<GoUInt32>);
	var __tmp__ = stdgo.math.bits.Bits.mul32(_n1[(1 : GoInt)], _n2[(1 : GoInt)]),
		_hi:GoUInt32 = __tmp__._0,
		_lo:GoUInt32 = __tmp__._1;
	var _nsum = (new Slice<GoUInt32>(0, 0, _hi, _lo) : Slice<GoUInt32>);
	stdgo.fmt.Fmt.printf(Go.str("%v * %v = %v\n"), Go.toInterface(_n1[(1 : GoInt)]), Go.toInterface(_n2[(1 : GoInt)]), Go.toInterface(_nsum));
	_n1 = (new Slice<GoUInt32>(0, 0, ("0" : GoUInt32), ("2147483648" : GoUInt32)) : Slice<GoUInt32>);
	_n2 = (new Slice<GoUInt32>(0, 0, ("0" : GoUInt32), ("2" : GoUInt32)) : Slice<GoUInt32>);
	{
		var __tmp__ = stdgo.math.bits.Bits.mul32(_n1[(1 : GoInt)], _n2[(1 : GoInt)]);
		_hi = __tmp__._0;
		_lo = __tmp__._1;
	};
	_nsum = (new Slice<GoUInt32>(0, 0, _hi, _lo) : Slice<GoUInt32>);
	stdgo.fmt.Fmt.printf(Go.str("%v * %v = %v\n"), Go.toInterface(_n1[(1 : GoInt)]), Go.toInterface(_n2[(1 : GoInt)]), Go.toInterface(_nsum));
}
```


</p>
</details>


[\(view code\)](<./Bits.hx#L662>)


## function mul64


```haxe
function mul64(_x:stdgo.GoUInt64, _y:stdgo.GoUInt64):{_1:stdgo.GoUInt64, _0:stdgo.GoUInt64}
```


Mul64 returns the 128\-bit product of x and y: \(hi, lo\) = x \* y with the product bits' upper half returned in hi and the lower half returned in lo.  This function's execution time does not depend on the inputs. 


### exampleMul64


<details><summary></summary>
<p>


```haxe
function exampleMul64():Void {
	var _n1 = (new Slice<GoUInt64>(0, 0, ("0" : GoUInt64), ("12" : GoUInt64)) : Slice<GoUInt64>);
	var _n2 = (new Slice<GoUInt64>(0, 0, ("0" : GoUInt64), ("12" : GoUInt64)) : Slice<GoUInt64>);
	var __tmp__ = stdgo.math.bits.Bits.mul64(_n1[(1 : GoInt)], _n2[(1 : GoInt)]),
		_hi:GoUInt64 = __tmp__._0,
		_lo:GoUInt64 = __tmp__._1;
	var _nsum = (new Slice<GoUInt64>(0, 0, _hi, _lo) : Slice<GoUInt64>);
	stdgo.fmt.Fmt.printf(Go.str("%v * %v = %v\n"), Go.toInterface(_n1[(1 : GoInt)]), Go.toInterface(_n2[(1 : GoInt)]), Go.toInterface(_nsum));
	_n1 = (new Slice<GoUInt64>(0, 0, ("0" : GoUInt64), ("9223372036854775808" : GoUInt64)) : Slice<GoUInt64>);
	_n2 = (new Slice<GoUInt64>(0, 0, ("0" : GoUInt64), ("2" : GoUInt64)) : Slice<GoUInt64>);
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_n1[(1 : GoInt)], _n2[(1 : GoInt)]);
		_hi = __tmp__._0;
		_lo = __tmp__._1;
	};
	_nsum = (new Slice<GoUInt64>(0, 0, _hi, _lo) : Slice<GoUInt64>);
	stdgo.fmt.Fmt.printf(Go.str("%v * %v = %v\n"), Go.toInterface(_n1[(1 : GoInt)]), Go.toInterface(_n2[(1 : GoInt)]), Go.toInterface(_nsum));
}
```


</p>
</details>


[\(view code\)](<./Bits.hx#L681>)


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
	stdgo.fmt.Fmt.printf(Go.str("OnesCount(%b) = %d\n"), Go.toInterface((14 : GoInt)), Go.toInterface(stdgo.math.bits.Bits.onesCount(("14" : GoUInt))));
}
```


</p>
</details>


[\(view code\)](<./Bits.hx#L201>)


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
	stdgo.fmt.Fmt.printf(Go.str("OnesCount16(%016b) = %d\n"), Go.toInterface((14 : GoInt)), Go.toInterface(stdgo.math.bits.Bits.onesCount16((14 : GoUInt16))));
}
```


</p>
</details>


[\(view code\)](<./Bits.hx#L223>)


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
	stdgo.fmt.Fmt.printf(Go.str("OnesCount32(%032b) = %d\n"), Go.toInterface((14 : GoInt)),
		Go.toInterface(stdgo.math.bits.Bits.onesCount32(("14" : GoUInt32))));
}
```


</p>
</details>


[\(view code\)](<./Bits.hx#L241>)


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
	stdgo.fmt.Fmt.printf(Go.str("OnesCount64(%064b) = %d\n"), Go.toInterface((14 : GoInt)),
		Go.toInterface(stdgo.math.bits.Bits.onesCount64(("14" : GoUInt64))));
}
```


</p>
</details>


[\(view code\)](<./Bits.hx#L271>)


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
	stdgo.fmt.Fmt.printf(Go.str("OnesCount8(%08b) = %d\n"), Go.toInterface((14 : GoInt)), Go.toInterface(stdgo.math.bits.Bits.onesCount8((14 : GoUInt8))));
}
```


</p>
</details>


[\(view code\)](<./Bits.hx#L211>)


## function rem


```haxe
function rem(_hi:stdgo.GoUInt, _lo:stdgo.GoUInt, _y:stdgo.GoUInt):stdgo.GoUInt
```


Rem returns the remainder of \(hi, lo\) divided by y. Rem panics for y == 0 \(division by zero\) but, unlike Div, it doesn't panic on a quotient overflow. 


[\(view code\)](<./Bits.hx#L789>)


## function rem32


```haxe
function rem32(_hi:stdgo.GoUInt32, _lo:stdgo.GoUInt32, _y:stdgo.GoUInt32):stdgo.GoUInt32
```


Rem32 returns the remainder of \(hi, lo\) divided by y. Rem32 panics for y == 0 \(division by zero\) but, unlike Div32, it doesn't panic on a quotient overflow. 


[\(view code\)](<./Bits.hx#L801>)


## function rem64


```haxe
function rem64(_hi:stdgo.GoUInt64, _lo:stdgo.GoUInt64, _y:stdgo.GoUInt64):stdgo.GoUInt64
```


Rem64 returns the remainder of \(hi, lo\) divided by y. Rem64 panics for y == 0 \(division by zero\) but, unlike Div64, it doesn't panic on a quotient overflow. 


[\(view code\)](<./Bits.hx#L810>)


## function reverse


```haxe
function reverse(_x:stdgo.GoUInt):stdgo.GoUInt
```


Reverse returns the value of x with its bits in reversed order. 


[\(view code\)](<./Bits.hx#L346>)


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
	stdgo.fmt.Fmt.printf(Go.str("%016b\n"), Go.toInterface((19 : GoInt)));
	stdgo.fmt.Fmt.printf(Go.str("%016b\n"), Go.toInterface(stdgo.math.bits.Bits.reverse16((19 : GoUInt16))));
}
```


</p>
</details>


[\(view code\)](<./Bits.hx#L371>)


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
	stdgo.fmt.Fmt.printf(Go.str("%032b\n"), Go.toInterface((19 : GoInt)));
	stdgo.fmt.Fmt.printf(Go.str("%032b\n"), Go.toInterface(stdgo.math.bits.Bits.reverse32(("19" : GoUInt32))));
}
```


</p>
</details>


[\(view code\)](<./Bits.hx#L396>)


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
	stdgo.fmt.Fmt.printf(Go.str("%064b\n"), Go.toInterface((19 : GoInt)));
	stdgo.fmt.Fmt.printf(Go.str("%064b\n"), Go.toInterface(stdgo.math.bits.Bits.reverse64(("19" : GoUInt64))));
}
```


</p>
</details>


[\(view code\)](<./Bits.hx#L407>)


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
	stdgo.fmt.Fmt.printf(Go.str("%08b\n"), Go.toInterface((19 : GoInt)));
	stdgo.fmt.Fmt.printf(Go.str("%08b\n"), Go.toInterface(stdgo.math.bits.Bits.reverse8((19 : GoUInt8))));
}
```


</p>
</details>


[\(view code\)](<./Bits.hx#L356>)


## function reverseBytes


```haxe
function reverseBytes(_x:stdgo.GoUInt):stdgo.GoUInt
```


ReverseBytes returns the value of x with its bytes in reversed order.  This function's execution time does not depend on the inputs. 


[\(view code\)](<./Bits.hx#L420>)


## function reverseBytes16


```haxe
function reverseBytes16(_x:stdgo.GoUInt16):stdgo.GoUInt16
```


ReverseBytes16 returns the value of x with its bytes in reversed order.  This function's execution time does not depend on the inputs. 


### exampleReverseBytes16


<details><summary></summary>
<p>


```haxe
function exampleReverseBytes16():Void {
	stdgo.fmt.Fmt.printf(Go.str("%016b\n"), Go.toInterface((15 : GoInt)));
	stdgo.fmt.Fmt.printf(Go.str("%016b\n"), Go.toInterface(stdgo.math.bits.Bits.reverseBytes16((15 : GoUInt16))));
}
```


</p>
</details>


[\(view code\)](<./Bits.hx#L432>)


## function reverseBytes32


```haxe
function reverseBytes32(_x:stdgo.GoUInt32):stdgo.GoUInt32
```


ReverseBytes32 returns the value of x with its bytes in reversed order.  This function's execution time does not depend on the inputs. 


### exampleReverseBytes32


<details><summary></summary>
<p>


```haxe
function exampleReverseBytes32():Void {
	stdgo.fmt.Fmt.printf(Go.str("%032b\n"), Go.toInterface((15 : GoInt)));
	stdgo.fmt.Fmt.printf(Go.str("%032b\n"), Go.toInterface(stdgo.math.bits.Bits.reverseBytes32(("15" : GoUInt32))));
}
```


</p>
</details>


[\(view code\)](<./Bits.hx#L441>)


## function reverseBytes64


```haxe
function reverseBytes64(_x:stdgo.GoUInt64):stdgo.GoUInt64
```


ReverseBytes64 returns the value of x with its bytes in reversed order.  This function's execution time does not depend on the inputs. 


### exampleReverseBytes64


<details><summary></summary>
<p>


```haxe
function exampleReverseBytes64():Void {
	stdgo.fmt.Fmt.printf(Go.str("%064b\n"), Go.toInterface((15 : GoInt)));
	stdgo.fmt.Fmt.printf(Go.str("%064b\n"), Go.toInterface(stdgo.math.bits.Bits.reverseBytes64(("15" : GoUInt64))));
}
```


</p>
</details>


[\(view code\)](<./Bits.hx#L452>)


## function rotateLeft


```haxe
function rotateLeft(_x:stdgo.GoUInt, _k:stdgo.GoInt):stdgo.GoUInt
```


RotateLeft returns the value of x rotated left by \(k mod UintSize\) bits. To rotate x right by k bits, call RotateLeft\(x, \-k\).  This function's execution time does not depend on the inputs. 


[\(view code\)](<./Bits.hx#L288>)


## function rotateLeft16


```haxe
function rotateLeft16(_x:stdgo.GoUInt16, _k:stdgo.GoInt):stdgo.GoUInt16
```


RotateLeft16 returns the value of x rotated left by \(k mod 16\) bits. To rotate x right by k bits, call RotateLeft16\(x, \-k\).  This function's execution time does not depend on the inputs. 


### exampleRotateLeft16


<details><summary></summary>
<p>


```haxe
function exampleRotateLeft16():Void {
	stdgo.fmt.Fmt.printf(Go.str("%016b\n"), Go.toInterface((15 : GoInt)));
	stdgo.fmt.Fmt.printf(Go.str("%016b\n"), Go.toInterface(stdgo.math.bits.Bits.rotateLeft16((15 : GoUInt16), (2 : GoInt))));
	stdgo.fmt.Fmt.printf(Go.str("%016b\n"), Go.toInterface(stdgo.math.bits.Bits.rotateLeft16((15 : GoUInt16), (-2 : GoInt))));
}
```


</p>
</details>


[\(view code\)](<./Bits.hx#L313>)


## function rotateLeft32


```haxe
function rotateLeft32(_x:stdgo.GoUInt32, _k:stdgo.GoInt):stdgo.GoUInt32
```


RotateLeft32 returns the value of x rotated left by \(k mod 32\) bits. To rotate x right by k bits, call RotateLeft32\(x, \-k\).  This function's execution time does not depend on the inputs. 


### exampleRotateLeft32


<details><summary></summary>
<p>


```haxe
function exampleRotateLeft32():Void {
	stdgo.fmt.Fmt.printf(Go.str("%032b\n"), Go.toInterface((15 : GoInt)));
	stdgo.fmt.Fmt.printf(Go.str("%032b\n"), Go.toInterface(stdgo.math.bits.Bits.rotateLeft32(("15" : GoUInt32), (2 : GoInt))));
	stdgo.fmt.Fmt.printf(Go.str("%032b\n"), Go.toInterface(stdgo.math.bits.Bits.rotateLeft32(("15" : GoUInt32), (-2 : GoInt))));
}
```


</p>
</details>


[\(view code\)](<./Bits.hx#L325>)


## function rotateLeft64


```haxe
function rotateLeft64(_x:stdgo.GoUInt64, _k:stdgo.GoInt):stdgo.GoUInt64
```


RotateLeft64 returns the value of x rotated left by \(k mod 64\) bits. To rotate x right by k bits, call RotateLeft64\(x, \-k\).  This function's execution time does not depend on the inputs. 


### exampleRotateLeft64


<details><summary></summary>
<p>


```haxe
function exampleRotateLeft64():Void {
	stdgo.fmt.Fmt.printf(Go.str("%064b\n"), Go.toInterface((15 : GoInt)));
	stdgo.fmt.Fmt.printf(Go.str("%064b\n"), Go.toInterface(stdgo.math.bits.Bits.rotateLeft64(("15" : GoUInt64), (2 : GoInt))));
	stdgo.fmt.Fmt.printf(Go.str("%064b\n"), Go.toInterface(stdgo.math.bits.Bits.rotateLeft64(("15" : GoUInt64), (-2 : GoInt))));
}
```


</p>
</details>


[\(view code\)](<./Bits.hx#L337>)


## function rotateLeft8


```haxe
function rotateLeft8(_x:stdgo.GoUInt8, _k:stdgo.GoInt):stdgo.GoUInt8
```


RotateLeft8 returns the value of x rotated left by \(k mod 8\) bits. To rotate x right by k bits, call RotateLeft8\(x, \-k\).  This function's execution time does not depend on the inputs. 


### exampleRotateLeft8


<details><summary></summary>
<p>


```haxe
function exampleRotateLeft8():Void {
	stdgo.fmt.Fmt.printf(Go.str("%08b\n"), Go.toInterface((15 : GoInt)));
	stdgo.fmt.Fmt.printf(Go.str("%08b\n"), Go.toInterface(stdgo.math.bits.Bits.rotateLeft8((15 : GoUInt8), (2 : GoInt))));
	stdgo.fmt.Fmt.printf(Go.str("%08b\n"), Go.toInterface(stdgo.math.bits.Bits.rotateLeft8((15 : GoUInt8), (-2 : GoInt))));
}
```


</p>
</details>


[\(view code\)](<./Bits.hx#L301>)


## function sub


```haxe
function sub(_x:stdgo.GoUInt, _y:stdgo.GoUInt, _borrow:stdgo.GoUInt):{_1:stdgo.GoUInt, _0:stdgo.GoUInt}
```


Sub returns the difference of x, y and borrow: diff = x \- y \- borrow. The borrow input must be 0 or 1; otherwise the behavior is undefined. The borrowOut output is guaranteed to be 0 or 1.  This function's execution time does not depend on the inputs. 


[\(view code\)](<./Bits.hx#L592>)


## function sub32


```haxe
function sub32(_x:stdgo.GoUInt32, _y:stdgo.GoUInt32, _borrow:stdgo.GoUInt32):{_1:stdgo.GoUInt32, _0:stdgo.GoUInt32}
```


Sub32 returns the difference of x, y and borrow, diff = x \- y \- borrow. The borrow input must be 0 or 1; otherwise the behavior is undefined. The borrowOut output is guaranteed to be 0 or 1.  This function's execution time does not depend on the inputs. 


### exampleSub32


<details><summary></summary>
<p>


```haxe
function exampleSub32():Void {
	var _n1 = (new Slice<GoUInt32>(0, 0, ("33" : GoUInt32), ("23" : GoUInt32)) : Slice<GoUInt32>);
	var _n2 = (new Slice<GoUInt32>(0, 0, ("21" : GoUInt32), ("12" : GoUInt32)) : Slice<GoUInt32>);
	var __tmp__ = stdgo.math.bits.Bits.sub32(_n1[(1 : GoInt)], _n2[(1 : GoInt)], ("0" : GoUInt32)),
		_d1:GoUInt32 = __tmp__._0,
		_carry:GoUInt32 = __tmp__._1;
	var __tmp__ = stdgo.math.bits.Bits.sub32(_n1[(0 : GoInt)], _n2[(0 : GoInt)], _carry),
		_d0:GoUInt32 = __tmp__._0,
		_0:GoUInt32 = __tmp__._1;
	var _nsum = (new Slice<GoUInt32>(0, 0, _d0, _d1) : Slice<GoUInt32>);
	stdgo.fmt.Fmt.printf(Go.str("%v - %v = %v (carry bit was %v)\n"), Go.toInterface(_n1), Go.toInterface(_n2), Go.toInterface(_nsum), Go.toInterface(_carry));
	_n1 = (new Slice<GoUInt32>(0, 0, ("3" : GoUInt32), ("2147483647" : GoUInt32)) : Slice<GoUInt32>);
	_n2 = (new Slice<GoUInt32>(0, 0, ("1" : GoUInt32), ("2147483648" : GoUInt32)) : Slice<GoUInt32>);
	{
		var __tmp__ = stdgo.math.bits.Bits.sub32(_n1[(1 : GoInt)], _n2[(1 : GoInt)], ("0" : GoUInt32));
		_d1 = __tmp__._0;
		_carry = __tmp__._1;
	};
	{
		var __tmp__ = stdgo.math.bits.Bits.sub32(_n1[(0 : GoInt)], _n2[(0 : GoInt)], _carry);
		_d0 = __tmp__._0;
	};
	_nsum = (new Slice<GoUInt32>(0, 0, _d0, _d1) : Slice<GoUInt32>);
	stdgo.fmt.Fmt.printf(Go.str("%v - %v = %v (carry bit was %v)\n"), Go.toInterface(_n1), Go.toInterface(_n2), Go.toInterface(_nsum), Go.toInterface(_carry));
}
```


</p>
</details>


[\(view code\)](<./Bits.hx#L613>)


## function sub64


```haxe
function sub64(_x:stdgo.GoUInt64, _y:stdgo.GoUInt64, _borrow:stdgo.GoUInt64):{_1:stdgo.GoUInt64, _0:stdgo.GoUInt64}
```


Sub64 returns the difference of x, y and borrow: diff = x \- y \- borrow. The borrow input must be 0 or 1; otherwise the behavior is undefined. The borrowOut output is guaranteed to be 0 or 1.  This function's execution time does not depend on the inputs. 


### exampleSub64


<details><summary></summary>
<p>


```haxe
function exampleSub64():Void {
	var _n1 = (new Slice<GoUInt64>(0, 0, ("33" : GoUInt64), ("23" : GoUInt64)) : Slice<GoUInt64>);
	var _n2 = (new Slice<GoUInt64>(0, 0, ("21" : GoUInt64), ("12" : GoUInt64)) : Slice<GoUInt64>);
	var __tmp__ = stdgo.math.bits.Bits.sub64(_n1[(1 : GoInt)], _n2[(1 : GoInt)], ("0" : GoUInt64)),
		_d1:GoUInt64 = __tmp__._0,
		_carry:GoUInt64 = __tmp__._1;
	var __tmp__ = stdgo.math.bits.Bits.sub64(_n1[(0 : GoInt)], _n2[(0 : GoInt)], _carry),
		_d0:GoUInt64 = __tmp__._0,
		_0:GoUInt64 = __tmp__._1;
	var _nsum = (new Slice<GoUInt64>(0, 0, _d0, _d1) : Slice<GoUInt64>);
	stdgo.fmt.Fmt.printf(Go.str("%v - %v = %v (carry bit was %v)\n"), Go.toInterface(_n1), Go.toInterface(_n2), Go.toInterface(_nsum), Go.toInterface(_carry));
	_n1 = (new Slice<GoUInt64>(0, 0, ("3" : GoUInt64), ("9223372036854775807" : GoUInt64)) : Slice<GoUInt64>);
	_n2 = (new Slice<GoUInt64>(0, 0, ("1" : GoUInt64), ("9223372036854775808" : GoUInt64)) : Slice<GoUInt64>);
	{
		var __tmp__ = stdgo.math.bits.Bits.sub64(_n1[(1 : GoInt)], _n2[(1 : GoInt)], ("0" : GoUInt64));
		_d1 = __tmp__._0;
		_carry = __tmp__._1;
	};
	{
		var __tmp__ = stdgo.math.bits.Bits.sub64(_n1[(0 : GoInt)], _n2[(0 : GoInt)], _carry);
		_d0 = __tmp__._0;
	};
	_nsum = (new Slice<GoUInt64>(0, 0, _d0, _d1) : Slice<GoUInt64>);
	stdgo.fmt.Fmt.printf(Go.str("%v - %v = %v (carry bit was %v)\n"), Go.toInterface(_n1), Go.toInterface(_n2), Go.toInterface(_nsum), Go.toInterface(_carry));
}
```


</p>
</details>


[\(view code\)](<./Bits.hx#L627>)


## function trailingZeros


```haxe
function trailingZeros(_x:stdgo.GoUInt):stdgo.GoInt
```


TrailingZeros returns the number of trailing zero bits in x; the result is UintSize for x == 0. 


[\(view code\)](<./Bits.hx#L145>)


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
	stdgo.fmt.Fmt.printf(Go.str("TrailingZeros16(%016b) = %d\n"), Go.toInterface((14 : GoInt)),
		Go.toInterface(stdgo.math.bits.Bits.trailingZeros16((14 : GoUInt16))));
}
```


</p>
</details>


[\(view code\)](<./Bits.hx#L167>)


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
	stdgo.fmt.Fmt.printf(Go.str("TrailingZeros32(%032b) = %d\n"), Go.toInterface((14 : GoInt)),
		Go.toInterface(stdgo.math.bits.Bits.trailingZeros32(("14" : GoUInt32))));
}
```


</p>
</details>


[\(view code\)](<./Bits.hx#L179>)


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
	stdgo.fmt.Fmt.printf(Go.str("TrailingZeros64(%064b) = %d\n"), Go.toInterface((14 : GoInt)),
		Go.toInterface(stdgo.math.bits.Bits.trailingZeros64(("14" : GoUInt64))));
}
```


</p>
</details>


[\(view code\)](<./Bits.hx#L189>)


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
	stdgo.fmt.Fmt.printf(Go.str("TrailingZeros8(%08b) = %d\n"), Go.toInterface((14 : GoInt)),
		Go.toInterface(stdgo.math.bits.Bits.trailingZeros8((14 : GoUInt8))));
}
```


</p>
</details>


[\(view code\)](<./Bits.hx#L155>)


# Classes


```haxe
import stdgo.math.bits.*
```


## class T\_errorString\_static\_extension


 


### T\_errorString\_static\_extension function error


```haxe
function error(_e:stdgo.math.bits._Bits.T_errorString):stdgo.GoString
```


 


[\(view code\)](<./Bits.hx#L839>)


### T\_errorString\_static\_extension function runtimeError


```haxe
function runtimeError(_e:stdgo.math.bits._Bits.T_errorString):Void
```


 


[\(view code\)](<./Bits.hx#L844>)


