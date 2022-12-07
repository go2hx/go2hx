# Module: `stdgo.math.cmplx`

[(view library index)](../../stdgo.md)


# Overview


Package cmplx provides basic constants and mathematical functions for complex numbers. Special case handling conforms to the C99 standard Annex G IEC 60559\-compatible complex arithmetic. 


<details><summary>hl tests failed</summary>
<p>

```
Error: Command failed with error 1
=== RUN   TestAbs
--- PASS: TestAbs (7.98702239990234e-05)
=== RUN   TestAcos
Acos((0+0i)) = (1.5707963267949+0i), want (1.5707963267949+-0i)
```
</p>
</details>

<details><summary>interp tests failed</summary>
<p>

```
=== RUN   TestAbs
--- PASS: TestAbs (0.000120878219604492188)
=== RUN   TestAcos
Acos((0+0i)) = (1.57079632679489656+0i), want (1.57079632679489656+-0i)
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


- [`function _alike(_a:stdgo.GoFloat64, _b:stdgo.GoFloat64):Bool`](<#function-_alike>)

- [`function _cAlike(_a:stdgo.GoComplex128, _b:stdgo.GoComplex128):Bool`](<#function-_calike>)

- [`function _cSoclose(_a:stdgo.GoComplex128, _b:stdgo.GoComplex128, _e:stdgo.GoFloat64):Bool`](<#function-_csoclose>)

- [`function _cTolerance(_a:stdgo.GoComplex128, _b:stdgo.GoComplex128, _e:stdgo.GoFloat64):Bool`](<#function-_ctolerance>)

- [`function _cVeryclose(_a:stdgo.GoComplex128, _b:stdgo.GoComplex128):Bool`](<#function-_cveryclose>)

- [`function _isExact(_x:stdgo.GoFloat64):Bool`](<#function-_isexact>)

- [`function _reducePi(_x:stdgo.GoFloat64):stdgo.GoFloat64`](<#function-_reducepi>)

- [`function _sinhcosh(_x:stdgo.GoFloat64):{_1:stdgo.GoFloat64, _0:stdgo.GoFloat64}`](<#function-_sinhcosh>)

- [`function _tanSeries(_z:stdgo.GoComplex128):stdgo.GoFloat64`](<#function-_tanseries>)

- [`function _tolerance(_a:stdgo.GoFloat64, _b:stdgo.GoFloat64, _e:stdgo.GoFloat64):Bool`](<#function-_tolerance>)

- [`function _veryclose(_a:stdgo.GoFloat64, _b:stdgo.GoFloat64):Bool`](<#function-_veryclose>)

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

# Examples


- [`exampleAbs`](<#exampleabs>)

- [`exampleExp`](<#exampleexp>)

- [`examplePolar`](<#examplepolar>)

# Functions


```haxe
import stdgo.math.cmplx.Cmplx
```


## function \_alike


```haxe
function _alike(_a:stdgo.GoFloat64, _b:stdgo.GoFloat64):Bool
```


 


[\(view code\)](<./Cmplx.hx#L715>)


## function \_cAlike


```haxe
function _cAlike(_a:stdgo.GoComplex128, _b:stdgo.GoComplex128):Bool
```


 


[\(view code\)](<./Cmplx.hx#L743>)


## function \_cSoclose


```haxe
function _cSoclose(_a:stdgo.GoComplex128, _b:stdgo.GoComplex128, _e:stdgo.GoFloat64):Bool
```


 


[\(view code\)](<./Cmplx.hx#L735>)


## function \_cTolerance


```haxe
function _cTolerance(_a:stdgo.GoComplex128, _b:stdgo.GoComplex128, _e:stdgo.GoFloat64):Bool
```


 


[\(view code\)](<./Cmplx.hx#L724>)


## function \_cVeryclose


```haxe
function _cVeryclose(_a:stdgo.GoComplex128, _b:stdgo.GoComplex128):Bool
```


 


[\(view code\)](<./Cmplx.hx#L739>)


## function \_isExact


```haxe
function _isExact(_x:stdgo.GoFloat64):Bool
```


 


[\(view code\)](<./Cmplx.hx#L758>)


## function \_reducePi


```haxe
function _reducePi(_x:stdgo.GoFloat64):stdgo.GoFloat64
```


reducePi reduces the input argument x to the range \(\-Pi/2, Pi/2\]. x must be greater than or equal to 0. For small arguments it uses Cody\-Waite reduction in 3 float64 parts based on: "Elementary Function Evaluation:  Algorithms and Implementation" Jean\-Michel Muller, 1997. For very large arguments it uses Payne\-Hanek range reduction based on: "ARGUMENT REDUCTION FOR HUGE ARGUMENTS: Good to the Last Bit" K. C. Ng et al, March 24, 1992. 


[\(view code\)](<./Cmplx.hx#L2212>)


## function \_sinhcosh


```haxe
function _sinhcosh(_x:stdgo.GoFloat64):{_1:stdgo.GoFloat64, _0:stdgo.GoFloat64}
```


calculate sinh and cosh 


[\(view code\)](<./Cmplx.hx#L2089>)


## function \_tanSeries


```haxe
function _tanSeries(_z:stdgo.GoComplex128):stdgo.GoFloat64
```


Taylor series expansion for cosh\(2y\) \- cos\(2x\) 


[\(view code\)](<./Cmplx.hx#L2265>)


## function \_tolerance


```haxe
function _tolerance(_a:stdgo.GoFloat64, _b:stdgo.GoFloat64, _e:stdgo.GoFloat64):Bool
```


functions borrowed from pkg/math/all\_test.go 


[\(view code\)](<./Cmplx.hx#L697>)


## function \_veryclose


```haxe
function _veryclose(_a:stdgo.GoFloat64, _b:stdgo.GoFloat64):Bool
```


 


[\(view code\)](<./Cmplx.hx#L711>)


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
	stdgo.fmt.Fmt.printf(Go.str("%.1f"), Go.toInterface(stdgo.math.cmplx.Cmplx.abs(((3 : GoFloat64) + new GoComplex128(0, 4)))));
}
```


</p>
</details>


[\(view code\)](<./Cmplx.hx#L550>)


## function acos


```haxe
function acos(_x:stdgo.GoComplex128):stdgo.GoComplex128
```


Acos returns the inverse cosine of x. 


[\(view code\)](<./Cmplx.hx#L630>)


## function acosh


```haxe
function acosh(_x:stdgo.GoComplex128):stdgo.GoComplex128
```


Acosh returns the inverse hyperbolic cosine of x. 


[\(view code\)](<./Cmplx.hx#L638>)


## function asin


```haxe
function asin(_x:stdgo.GoComplex128):stdgo.GoComplex128
```


Asin returns the inverse sine of x. 


[\(view code\)](<./Cmplx.hx#L557>)


## function asinh


```haxe
function asinh(_x:stdgo.GoComplex128):stdgo.GoComplex128
```


Asinh returns the inverse hyperbolic sine of x. 


[\(view code\)](<./Cmplx.hx#L595>)


## function atan


```haxe
function atan(_x:stdgo.GoComplex128):stdgo.GoComplex128
```


Atan returns the inverse tangent of x. 


[\(view code\)](<./Cmplx.hx#L652>)


## function atanh


```haxe
function atanh(_x:stdgo.GoComplex128):stdgo.GoComplex128
```


Atanh returns the inverse hyperbolic tangent of x. 


[\(view code\)](<./Cmplx.hx#L688>)


## function benchmarkAbs


```haxe
function benchmarkAbs(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Cmplx.hx#L1609>)


## function benchmarkAcos


```haxe
function benchmarkAcos(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Cmplx.hx#L1618>)


## function benchmarkAcosh


```haxe
function benchmarkAcosh(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Cmplx.hx#L1627>)


## function benchmarkAsin


```haxe
function benchmarkAsin(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Cmplx.hx#L1636>)


## function benchmarkAsinh


```haxe
function benchmarkAsinh(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Cmplx.hx#L1645>)


## function benchmarkAtan


```haxe
function benchmarkAtan(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Cmplx.hx#L1654>)


## function benchmarkAtanh


```haxe
function benchmarkAtanh(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Cmplx.hx#L1663>)


## function benchmarkConj


```haxe
function benchmarkConj(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Cmplx.hx#L1672>)


## function benchmarkCos


```haxe
function benchmarkCos(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Cmplx.hx#L1681>)


## function benchmarkCosh


```haxe
function benchmarkCosh(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Cmplx.hx#L1690>)


## function benchmarkExp


```haxe
function benchmarkExp(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Cmplx.hx#L1699>)


## function benchmarkLog


```haxe
function benchmarkLog(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Cmplx.hx#L1708>)


## function benchmarkLog10


```haxe
function benchmarkLog10(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Cmplx.hx#L1717>)


## function benchmarkPhase


```haxe
function benchmarkPhase(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Cmplx.hx#L1726>)


## function benchmarkPolar


```haxe
function benchmarkPolar(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Cmplx.hx#L1735>)


## function benchmarkPow


```haxe
function benchmarkPow(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Cmplx.hx#L1744>)


## function benchmarkRect


```haxe
function benchmarkRect(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Cmplx.hx#L1753>)


## function benchmarkSin


```haxe
function benchmarkSin(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Cmplx.hx#L1762>)


## function benchmarkSinh


```haxe
function benchmarkSinh(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Cmplx.hx#L1771>)


## function benchmarkSqrt


```haxe
function benchmarkSqrt(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Cmplx.hx#L1780>)


## function benchmarkTan


```haxe
function benchmarkTan(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Cmplx.hx#L1789>)


## function benchmarkTanh


```haxe
function benchmarkTanh(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Cmplx.hx#L1798>)


## function conj


```haxe
function conj(_x:stdgo.GoComplex128):stdgo.GoComplex128
```


Conj returns the complex conjugate of x. 


[\(view code\)](<./Cmplx.hx#L1810>)


## function cos


```haxe
function cos(_x:stdgo.GoComplex128):stdgo.GoComplex128
```


Cos returns the cosine of x. 


[\(view code\)](<./Cmplx.hx#L2035>)


## function cosh


```haxe
function cosh(_x:stdgo.GoComplex128):stdgo.GoComplex128
```


Cosh returns the hyperbolic cosine of x. 


[\(view code\)](<./Cmplx.hx#L2062>)


## function cot


```haxe
function cot(_x:stdgo.GoComplex128):stdgo.GoComplex128
```


Cot returns the cotangent of x. 


[\(view code\)](<./Cmplx.hx#L2306>)


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
	stdgo.fmt.Fmt.printf(Go.str("%.1f"),
		Go.toInterface(stdgo.math.cmplx.Cmplx.exp(((0 : GoFloat64) + new GoComplex128(0, 3.141592653589793))) + new GoComplex128(1, 0)));
}
```


</p>
</details>


[\(view code\)](<./Cmplx.hx#L1817>)


## function inf


```haxe
function inf():stdgo.GoComplex128
```


Inf returns a complex infinity, complex\(\+Inf, \+Inf\). 


[\(view code\)](<./Cmplx.hx#L1867>)


## function isInf


```haxe
function isInf(_x:stdgo.GoComplex128):Bool
```


IsInf reports whether either real\(x\) or imag\(x\) is an infinity. 


[\(view code\)](<./Cmplx.hx#L1857>)


## function isNaN


```haxe
function isNaN(_x:stdgo.GoComplex128):Bool
```


IsNaN reports whether either real\(x\) or imag\(x\) is NaN and neither is an infinity. 


[\(view code\)](<./Cmplx.hx#L1876>)


## function log


```haxe
function log(_x:stdgo.GoComplex128):stdgo.GoComplex128
```


Log returns the natural logarithm of x. 


[\(view code\)](<./Cmplx.hx#L1896>)


## function log10


```haxe
function log10(_x:stdgo.GoComplex128):stdgo.GoComplex128
```


Log10 returns the decimal logarithm of x. 


[\(view code\)](<./Cmplx.hx#L1903>)


## function naN


```haxe
function naN():stdgo.GoComplex128
```


NaN returns a complex “not\-a\-number” value. 


[\(view code\)](<./Cmplx.hx#L1888>)


## function phase


```haxe
function phase(_x:stdgo.GoComplex128):stdgo.GoFloat64
```


Phase returns the phase \(also called the argument\) of x. The returned value is in the range \[\-Pi, Pi\]. 


[\(view code\)](<./Cmplx.hx#L1912>)


## function polar


```haxe
function polar(_x:stdgo.GoComplex128):{_1:stdgo.GoFloat64, _0:stdgo.GoFloat64}
```


Polar returns the absolute value r and phase θ of x, such that x = r \* e\*\*θi. The phase is in the range \[\-Pi, Pi\]. 


### examplePolar


<details><summary></summary>
<p>


```haxe
function examplePolar():Void {
	var __tmp__ = stdgo.math.cmplx.Cmplx.polar(new GoComplex128(0, 2)),
		_r:GoFloat64 = __tmp__._0,
		_theta:GoFloat64 = __tmp__._1;
	stdgo.fmt.Fmt.printf(Go.str("r: %.1f, θ: %.1f*π"), Go.toInterface(_r), Go.toInterface(_theta / (3.141592653589793 : GoFloat64)));
}
```


</p>
</details>


[\(view code\)](<./Cmplx.hx#L1921>)


## function pow


```haxe
function pow(_x:stdgo.GoComplex128, _y:stdgo.GoComplex128):stdgo.GoComplex128
```


Pow returns x\*\*y, the base\-x exponential of y. For generalized compatibility with math.Pow:  Pow\(0, ±0\) returns 1\+0i Pow\(0, c\) for real\(c\)\<0 returns Inf\+0i if imag\(c\) is zero, otherwise Inf\+Inf i. 


[\(view code\)](<./Cmplx.hx#L1933>)


## function rect


```haxe
function rect(_r:stdgo.GoFloat64, __952:stdgo.GoFloat64):stdgo.GoComplex128
```


Rect returns the complex number x with polar coordinates r, θ. 


[\(view code\)](<./Cmplx.hx#L1971>)


## function sin


```haxe
function sin(_x:stdgo.GoComplex128):stdgo.GoComplex128
```


Sin returns the sine of x. 


[\(view code\)](<./Cmplx.hx#L1981>)


## function sinh


```haxe
function sinh(_x:stdgo.GoComplex128):stdgo.GoComplex128
```


Sinh returns the hyperbolic sine of x. 


[\(view code\)](<./Cmplx.hx#L2008>)


## function sqrt


```haxe
function sqrt(_x:stdgo.GoComplex128):stdgo.GoComplex128
```


Sqrt returns the square root of x. The result r is chosen so that real\(r\) ≥ 0 and imag\(r\) has the same sign as imag\(x\). 


[\(view code\)](<./Cmplx.hx#L2104>)


## function tan


```haxe
function tan(_x:stdgo.GoComplex128):stdgo.GoComplex128
```


Tan returns the tangent of x. 


[\(view code\)](<./Cmplx.hx#L2156>)


## function tanh


```haxe
function tanh(_x:stdgo.GoComplex128):stdgo.GoComplex128
```


Tanh returns the hyperbolic tangent of x. 


[\(view code\)](<./Cmplx.hx#L2182>)


## function testAbs


```haxe
function testAbs(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Cmplx.hx#L764>)


## function testAcos


```haxe
function testAcos(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Cmplx.hx#L789>)


## function testAcosh


```haxe
function testAcosh(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Cmplx.hx#L829>)


## function testAsin


```haxe
function testAsin(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Cmplx.hx#L869>)


## function testAsinh


```haxe
function testAsinh(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Cmplx.hx#L918>)


## function testAtan


```haxe
function testAtan(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Cmplx.hx#L967>)


## function testAtanh


```haxe
function testAtanh(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Cmplx.hx#L1016>)


## function testConj


```haxe
function testConj(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Cmplx.hx#L1065>)


## function testCos


```haxe
function testCos(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Cmplx.hx#L1090>)


## function testCosh


```haxe
function testCosh(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Cmplx.hx#L1130>)


## function testExp


```haxe
function testExp(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Cmplx.hx#L1170>)


## function testInfiniteLoopIntanSeries


```haxe
function testInfiniteLoopIntanSeries(_t:stdgo.Ref<stdgo.testing.T>):Void
```


See issue 17577 


[\(view code\)](<./Cmplx.hx#L1599>)


## function testIsNaN


```haxe
function testIsNaN(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Cmplx.hx#L1201>)


## function testLog


```haxe
function testLog(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Cmplx.hx#L1215>)


## function testLog10


```haxe
function testLog10(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Cmplx.hx#L1255>)


## function testPolar


```haxe
function testPolar(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Cmplx.hx#L1286>)


## function testPow


```haxe
function testPow(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Cmplx.hx#L1317>)


## function testRect


```haxe
function testRect(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Cmplx.hx#L1369>)


## function testSin


```haxe
function testSin(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Cmplx.hx#L1396>)


## function testSinh


```haxe
function testSinh(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Cmplx.hx#L1436>)


## function testSqrt


```haxe
function testSqrt(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Cmplx.hx#L1476>)


## function testTan


```haxe
function testTan(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Cmplx.hx#L1516>)


## function testTanHuge


```haxe
function testTanHuge(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Cmplx.hx#L1843>)


## function testTanh


```haxe
function testTanh(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Cmplx.hx#L1556>)


