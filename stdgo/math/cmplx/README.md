# Module: `stdgo.math.cmplx`

[(view library index)](../../stdgo.md)


# Overview


Package cmplx provides basic constants and mathematical functions for  complex numbers. Special case handling conforms to the C99 standard  Annex G IEC 60559\-compatible complex arithmetic. 


<details><summary>hl tests failed</summary>
<p>

```
stdgo/reflect/Reflect.hx:2977: characters 28-35 : Warning : Potential typo detected (expected similar values are refType). Consider using `var keyType` instead
Error: Command failed with error 1
stdgo/internal/Macro.macro.hx:35: define
=== RUN  TestAbs
--- PASS: TestAbs (%!s(float64=5.91278076171875e-05))

=== RUN  TestAcos
Acos((0+0i)) = (1.5707963267948966+0i), want (1.5707963267948966-0i)
```
</p>
</details>

<details><summary>interp tests failed</summary>
<p>

```
stdgo/reflect/Reflect.hx:2977: characters 28-35 : Warning : Potential typo detected (expected similar values are refType). Consider using `var keyType` instead
stdgo/internal/Macro.macro.hx:35: define
=== RUN  TestAbs
--- PASS: TestAbs (%!s(float64=9.202957153320312e-05))

=== RUN  TestAcos
Acos((0+0i)) = (1.5707963267948966+0i), want (1.5707963267948966-0i)
```
</p>
</details>

<details><summary>jvm tests failed</summary>
<p>

```
stdgo/reflect/Reflect.hx:2977: characters 28-35 : Warning : Potential typo detected (expected similar values are refType). Consider using `var keyType` instead
IO.Overflow("write_ui16")
stdgo/internal/Macro.macro.hx:35: define
```
</p>
</details>


# Index


- [`function abs(_x:stdgo.GoComplex128):stdgo.GoFloat64`](<#function-abs>)

- [`function acos(_x:stdgo.GoComplex128):stdgo.GoComplex128`](<#function-acos>)

- [`function acosh(_x:stdgo.GoComplex128):stdgo.GoComplex128`](<#function-acosh>)

- [`function asin(_x:stdgo.GoComplex128):stdgo.GoComplex128`](<#function-asin>)

- [`function asinh(_x:stdgo.GoComplex128):stdgo.GoComplex128`](<#function-asinh>)

- [`function atan(_x:stdgo.GoComplex128):stdgo.GoComplex128`](<#function-atan>)

- [`function atanh(_x:stdgo.GoComplex128):stdgo.GoComplex128`](<#function-atanh>)

- [`function benchmarkAbs(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkabs>)

- [`function benchmarkAcos(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkacos>)

- [`function benchmarkAcosh(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkacosh>)

- [`function benchmarkAsin(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkasin>)

- [`function benchmarkAsinh(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkasinh>)

- [`function benchmarkAtan(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkatan>)

- [`function benchmarkAtanh(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkatanh>)

- [`function benchmarkConj(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkconj>)

- [`function benchmarkCos(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkcos>)

- [`function benchmarkCosh(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkcosh>)

- [`function benchmarkExp(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkexp>)

- [`function benchmarkLog(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarklog>)

- [`function benchmarkLog10(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarklog10>)

- [`function benchmarkPhase(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkphase>)

- [`function benchmarkPolar(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkpolar>)

- [`function benchmarkPow(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkpow>)

- [`function benchmarkRect(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkrect>)

- [`function benchmarkSin(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarksin>)

- [`function benchmarkSinh(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarksinh>)

- [`function benchmarkSqrt(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarksqrt>)

- [`function benchmarkTan(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarktan>)

- [`function benchmarkTanh(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarktanh>)

- [`function conj(_x:stdgo.GoComplex128):stdgo.GoComplex128`](<#function-conj>)

- [`function cos(_x:stdgo.GoComplex128):stdgo.GoComplex128`](<#function-cos>)

- [`function cosh(_x:stdgo.GoComplex128):stdgo.GoComplex128`](<#function-cosh>)

- [`function cot(_x:stdgo.GoComplex128):stdgo.GoComplex128`](<#function-cot>)

- [`function exp(_x:stdgo.GoComplex128):stdgo.GoComplex128`](<#function-exp>)

- [`function inf():stdgo.GoComplex128`](<#function-inf>)

- [`function isInf(_x:stdgo.GoComplex128):Bool`](<#function-isinf>)

- [`function isNaN(_x:stdgo.GoComplex128):Bool`](<#function-isnan>)

- [`function log(_x:stdgo.GoComplex128):stdgo.GoComplex128`](<#function-log>)

- [`function log10(_x:stdgo.GoComplex128):stdgo.GoComplex128`](<#function-log10>)

- [`function naN():stdgo.GoComplex128`](<#function-nan>)

- [`function phase(_x:stdgo.GoComplex128):stdgo.GoFloat64`](<#function-phase>)

- [`function polar(_x:stdgo.GoComplex128):{_1:stdgo.GoFloat64, _0:stdgo.GoFloat64}`](<#function-polar>)

- [`function pow(_x:stdgo.GoComplex128, _y:stdgo.GoComplex128):stdgo.GoComplex128`](<#function-pow>)

- [`function rect(_r:stdgo.GoFloat64, __952:stdgo.GoFloat64):stdgo.GoComplex128`](<#function-rect>)

- [`function sin(_x:stdgo.GoComplex128):stdgo.GoComplex128`](<#function-sin>)

- [`function sinh(_x:stdgo.GoComplex128):stdgo.GoComplex128`](<#function-sinh>)

- [`function sqrt(_x:stdgo.GoComplex128):stdgo.GoComplex128`](<#function-sqrt>)

- [`function tan(_x:stdgo.GoComplex128):stdgo.GoComplex128`](<#function-tan>)

- [`function tanh(_x:stdgo.GoComplex128):stdgo.GoComplex128`](<#function-tanh>)

- [`function testAbs(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testabs>)

- [`function testAcos(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testacos>)

- [`function testAcosh(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testacosh>)

- [`function testAsin(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testasin>)

- [`function testAsinh(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testasinh>)

- [`function testAtan(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testatan>)

- [`function testAtanh(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testatanh>)

- [`function testConj(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testconj>)

- [`function testCos(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testcos>)

- [`function testCosh(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testcosh>)

- [`function testExp(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testexp>)

- [`function testInfiniteLoopIntanSeries(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testinfiniteloopintanseries>)

- [`function testIsNaN(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testisnan>)

- [`function testLog(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testlog>)

- [`function testLog10(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testlog10>)

- [`function testPolar(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testpolar>)

- [`function testPow(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testpow>)

- [`function testRect(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testrect>)

- [`function testSin(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testsin>)

- [`function testSinh(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testsinh>)

- [`function testSqrt(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testsqrt>)

- [`function testTan(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testtan>)

- [`function testTanHuge(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testtanhuge>)

- [`function testTanh(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testtanh>)

- [class T\_\_struct\_0\_static\_extension](<#class-t__struct_0_static_extension>)

# Examples


- [`exampleAbs`](<#exampleabs>)

- [`exampleExp`](<#exampleexp>)

- [`examplePolar`](<#examplepolar>)

# Functions


```haxe
import stdgo.math.cmplx.Cmplx
```


## function abs


```haxe
function abs(_x:stdgo.GoComplex128):stdgo.GoFloat64
```


Abs returns the absolute value \(also called the modulus\) of x. 


### exampleAbs


<details><summary></summary>
<p>


```haxe
function exampleAbs():Void {
	stdgo.fmt.Fmt.printf(("%.1f" : GoString), Go.toInterface(stdgo.math.cmplx.Cmplx.abs(((3 : GoFloat64) + new GoComplex128(0, 4)))));
}
```


</p>
</details>


[\(view code\)](<./Cmplx.hx#L571>)


## function acos


```haxe
function acos(_x:stdgo.GoComplex128):stdgo.GoComplex128
```


Acos returns the inverse cosine of x. 


[\(view code\)](<./Cmplx.hx#L657>)


## function acosh


```haxe
function acosh(_x:stdgo.GoComplex128):stdgo.GoComplex128
```


Acosh returns the inverse hyperbolic cosine of x. 


[\(view code\)](<./Cmplx.hx#L665>)


## function asin


```haxe
function asin(_x:stdgo.GoComplex128):stdgo.GoComplex128
```


Asin returns the inverse sine of x. 


[\(view code\)](<./Cmplx.hx#L578>)


## function asinh


```haxe
function asinh(_x:stdgo.GoComplex128):stdgo.GoComplex128
```


Asinh returns the inverse hyperbolic sine of x. 


[\(view code\)](<./Cmplx.hx#L619>)


## function atan


```haxe
function atan(_x:stdgo.GoComplex128):stdgo.GoComplex128
```


Atan returns the inverse tangent of x. 


[\(view code\)](<./Cmplx.hx#L679>)


## function atanh


```haxe
function atanh(_x:stdgo.GoComplex128):stdgo.GoComplex128
```


Atanh returns the inverse hyperbolic tangent of x. 


[\(view code\)](<./Cmplx.hx#L718>)


## function benchmarkAbs


```haxe
function benchmarkAbs(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Cmplx.hx#L1677>)


## function benchmarkAcos


```haxe
function benchmarkAcos(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Cmplx.hx#L1686>)


## function benchmarkAcosh


```haxe
function benchmarkAcosh(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Cmplx.hx#L1695>)


## function benchmarkAsin


```haxe
function benchmarkAsin(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Cmplx.hx#L1704>)


## function benchmarkAsinh


```haxe
function benchmarkAsinh(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Cmplx.hx#L1713>)


## function benchmarkAtan


```haxe
function benchmarkAtan(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Cmplx.hx#L1722>)


## function benchmarkAtanh


```haxe
function benchmarkAtanh(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Cmplx.hx#L1731>)


## function benchmarkConj


```haxe
function benchmarkConj(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Cmplx.hx#L1740>)


## function benchmarkCos


```haxe
function benchmarkCos(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Cmplx.hx#L1749>)


## function benchmarkCosh


```haxe
function benchmarkCosh(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Cmplx.hx#L1758>)


## function benchmarkExp


```haxe
function benchmarkExp(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Cmplx.hx#L1767>)


## function benchmarkLog


```haxe
function benchmarkLog(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Cmplx.hx#L1776>)


## function benchmarkLog10


```haxe
function benchmarkLog10(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Cmplx.hx#L1785>)


## function benchmarkPhase


```haxe
function benchmarkPhase(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Cmplx.hx#L1794>)


## function benchmarkPolar


```haxe
function benchmarkPolar(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Cmplx.hx#L1803>)


## function benchmarkPow


```haxe
function benchmarkPow(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Cmplx.hx#L1812>)


## function benchmarkRect


```haxe
function benchmarkRect(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Cmplx.hx#L1821>)


## function benchmarkSin


```haxe
function benchmarkSin(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Cmplx.hx#L1830>)


## function benchmarkSinh


```haxe
function benchmarkSinh(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Cmplx.hx#L1839>)


## function benchmarkSqrt


```haxe
function benchmarkSqrt(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Cmplx.hx#L1848>)


## function benchmarkTan


```haxe
function benchmarkTan(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Cmplx.hx#L1857>)


## function benchmarkTanh


```haxe
function benchmarkTanh(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Cmplx.hx#L1866>)


## function conj


```haxe
function conj(_x:stdgo.GoComplex128):stdgo.GoComplex128
```


Conj returns the complex conjugate of x. 


[\(view code\)](<./Cmplx.hx#L1878>)


## function cos


```haxe
function cos(_x:stdgo.GoComplex128):stdgo.GoComplex128
```


Cos returns the cosine of x. 


[\(view code\)](<./Cmplx.hx#L2115>)


## function cosh


```haxe
function cosh(_x:stdgo.GoComplex128):stdgo.GoComplex128
```


Cosh returns the hyperbolic cosine of x. 


[\(view code\)](<./Cmplx.hx#L2145>)


## function cot


```haxe
function cot(_x:stdgo.GoComplex128):stdgo.GoComplex128
```


Cot returns the cotangent of x. 


[\(view code\)](<./Cmplx.hx#L2402>)


## function exp


```haxe
function exp(_x:stdgo.GoComplex128):stdgo.GoComplex128
```


Exp returns e\*\*x, the base\-e exponential of x. 


### exampleExp


<details><summary></summary>
<p>


```haxe
function exampleExp():Void {
	stdgo.fmt.Fmt.printf(("%.1f" : GoString),
		Go.toInterface(stdgo.math.cmplx.Cmplx.exp(((0 : GoFloat64) + new GoComplex128(0, 3.141592653589793))) + ((1 : GoFloat64) + new GoComplex128(0, 0))));
}
```


</p>
</details>


[\(view code\)](<./Cmplx.hx#L1885>)


## function inf


```haxe
function inf():stdgo.GoComplex128
```


Inf returns a complex infinity, complex\(\+Inf, \+Inf\). 


[\(view code\)](<./Cmplx.hx#L1938>)


## function isInf


```haxe
function isInf(_x:stdgo.GoComplex128):Bool
```


IsInf reports whether either real\(x\) or imag\(x\) is an infinity. 


[\(view code\)](<./Cmplx.hx#L1928>)


## function isNaN


```haxe
function isNaN(_x:stdgo.GoComplex128):Bool
```


IsNaN reports whether either real\(x\) or imag\(x\) is NaN  and neither is an infinity. 


[\(view code\)](<./Cmplx.hx#L1947>)


## function log


```haxe
function log(_x:stdgo.GoComplex128):stdgo.GoComplex128
```


Log returns the natural logarithm of x. 


[\(view code\)](<./Cmplx.hx#L1967>)


## function log10


```haxe
function log10(_x:stdgo.GoComplex128):stdgo.GoComplex128
```


Log10 returns the decimal logarithm of x. 


[\(view code\)](<./Cmplx.hx#L1974>)


## function naN


```haxe
function naN():stdgo.GoComplex128
```


NaN returns a complex “not\-a\-number” value. 


[\(view code\)](<./Cmplx.hx#L1959>)


## function phase


```haxe
function phase(_x:stdgo.GoComplex128):stdgo.GoFloat64
```


Phase returns the phase \(also called the argument\) of x.  The returned value is in the range \[\-Pi, Pi\]. 


[\(view code\)](<./Cmplx.hx#L1983>)


## function polar


```haxe
function polar(_x:stdgo.GoComplex128):{_1:stdgo.GoFloat64, _0:stdgo.GoFloat64}
```


Polar returns the absolute value r and phase θ of x,  such that x = r \* e\*\*θi.  The phase is in the range \[\-Pi, Pi\]. 


### examplePolar


<details><summary></summary>
<p>


```haxe
function examplePolar():Void {
	var __tmp__ = stdgo.math.cmplx.Cmplx.polar(((0 : GoFloat64) + new GoComplex128(0, 2))),
		_r:GoFloat64 = __tmp__._0,
		_theta:GoFloat64 = __tmp__._1;
	stdgo.fmt.Fmt.printf(("r: %.1f, θ: %.1f*π" : GoString), Go.toInterface(_r), Go.toInterface(_theta / (3.141592653589793 : GoFloat64)));
}
```


</p>
</details>


[\(view code\)](<./Cmplx.hx#L1992>)


## function pow


```haxe
function pow(_x:stdgo.GoComplex128, _y:stdgo.GoComplex128):stdgo.GoComplex128
```


Pow returns x\*\*y, the base\-x exponential of y.  For generalized compatibility with math.Pow:     Pow\(0, ±0\) returns 1\+0i   Pow\(0, c\) for real\(c\)\<0 returns Inf\+0i if imag\(c\) is zero, otherwise Inf\+Inf i. 


[\(view code\)](<./Cmplx.hx#L2004>)


## function rect


```haxe
function rect(_r:stdgo.GoFloat64, __952:stdgo.GoFloat64):stdgo.GoComplex128
```


Rect returns the complex number x with polar coordinates r, θ. 


[\(view code\)](<./Cmplx.hx#L2045>)


## function sin


```haxe
function sin(_x:stdgo.GoComplex128):stdgo.GoComplex128
```


Sin returns the sine of x. 


[\(view code\)](<./Cmplx.hx#L2055>)


## function sinh


```haxe
function sinh(_x:stdgo.GoComplex128):stdgo.GoComplex128
```


Sinh returns the hyperbolic sine of x. 


[\(view code\)](<./Cmplx.hx#L2085>)


## function sqrt


```haxe
function sqrt(_x:stdgo.GoComplex128):stdgo.GoComplex128
```


Sqrt returns the square root of x.  The result r is chosen so that real\(r\) ≥ 0 and imag\(r\) has the same sign as imag\(x\). 


[\(view code\)](<./Cmplx.hx#L2190>)


## function tan


```haxe
function tan(_x:stdgo.GoComplex128):stdgo.GoComplex128
```


Tan returns the tangent of x. 


[\(view code\)](<./Cmplx.hx#L2242>)


## function tanh


```haxe
function tanh(_x:stdgo.GoComplex128):stdgo.GoComplex128
```


Tanh returns the hyperbolic tangent of x. 


[\(view code\)](<./Cmplx.hx#L2271>)


## function testAbs


```haxe
function testAbs(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Cmplx.hx#L797>)


## function testAcos


```haxe
function testAcos(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Cmplx.hx#L823>)


## function testAcosh


```haxe
function testAcosh(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Cmplx.hx#L866>)


## function testAsin


```haxe
function testAsin(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Cmplx.hx#L909>)


## function testAsinh


```haxe
function testAsinh(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Cmplx.hx#L961>)


## function testAtan


```haxe
function testAtan(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Cmplx.hx#L1013>)


## function testAtanh


```haxe
function testAtanh(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Cmplx.hx#L1065>)


## function testConj


```haxe
function testConj(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Cmplx.hx#L1117>)


## function testCos


```haxe
function testCos(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Cmplx.hx#L1144>)


## function testCosh


```haxe
function testCosh(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Cmplx.hx#L1184>)


## function testExp


```haxe
function testExp(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Cmplx.hx#L1225>)


## function testInfiniteLoopIntanSeries


```haxe
function testInfiniteLoopIntanSeries(_t:stdgo.Ref<stdgo.testing.T>):Void
```


See issue 17577 


[\(view code\)](<./Cmplx.hx#L1667>)


## function testIsNaN


```haxe
function testIsNaN(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Cmplx.hx#L1256>)


## function testLog


```haxe
function testLog(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Cmplx.hx#L1271>)


## function testLog10


```haxe
function testLog10(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Cmplx.hx#L1313>)


## function testPolar


```haxe
function testPolar(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Cmplx.hx#L1345>)


## function testPow


```haxe
function testPow(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Cmplx.hx#L1376>)


## function testRect


```haxe
function testRect(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Cmplx.hx#L1432>)


## function testSin


```haxe
function testSin(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Cmplx.hx#L1459>)


## function testSinh


```haxe
function testSinh(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Cmplx.hx#L1499>)


## function testSqrt


```haxe
function testSqrt(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Cmplx.hx#L1540>)


## function testTan


```haxe
function testTan(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Cmplx.hx#L1583>)


## function testTanHuge


```haxe
function testTanHuge(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Cmplx.hx#L1914>)


## function testTanh


```haxe
function testTanh(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Cmplx.hx#L1623>)


# Classes


```haxe
import stdgo.math.cmplx.*
```


## class T\_\_struct\_0\_static\_extension


 


