# Module: `stdgo.math.cmplx`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [class Cmplx](<#class-cmplx>)

  - [`function abs(_x:stdgo.GoComplex128):Float`](<#cmplx-function-abs>)

  - [`function acos(_x:stdgo.GoComplex128):stdgo.GoComplex128`](<#cmplx-function-acos>)

  - [`function acosh(_x:stdgo.GoComplex128):stdgo.GoComplex128`](<#cmplx-function-acosh>)

  - [`function asin(_x:stdgo.GoComplex128):stdgo.GoComplex128`](<#cmplx-function-asin>)

  - [`function asinh(_x:stdgo.GoComplex128):stdgo.GoComplex128`](<#cmplx-function-asinh>)

  - [`function atan(_x:stdgo.GoComplex128):stdgo.GoComplex128`](<#cmplx-function-atan>)

  - [`function atanh(_x:stdgo.GoComplex128):stdgo.GoComplex128`](<#cmplx-function-atanh>)

  - [`function benchmarkAbs(_b:stdgo._internal.testing.B):Void`](<#cmplx-function-benchmarkabs>)

  - [`function benchmarkAcos(_b:stdgo._internal.testing.B):Void`](<#cmplx-function-benchmarkacos>)

  - [`function benchmarkAcosh(_b:stdgo._internal.testing.B):Void`](<#cmplx-function-benchmarkacosh>)

  - [`function benchmarkAsin(_b:stdgo._internal.testing.B):Void`](<#cmplx-function-benchmarkasin>)

  - [`function benchmarkAsinh(_b:stdgo._internal.testing.B):Void`](<#cmplx-function-benchmarkasinh>)

  - [`function benchmarkAtan(_b:stdgo._internal.testing.B):Void`](<#cmplx-function-benchmarkatan>)

  - [`function benchmarkAtanh(_b:stdgo._internal.testing.B):Void`](<#cmplx-function-benchmarkatanh>)

  - [`function benchmarkConj(_b:stdgo._internal.testing.B):Void`](<#cmplx-function-benchmarkconj>)

  - [`function benchmarkCos(_b:stdgo._internal.testing.B):Void`](<#cmplx-function-benchmarkcos>)

  - [`function benchmarkCosh(_b:stdgo._internal.testing.B):Void`](<#cmplx-function-benchmarkcosh>)

  - [`function benchmarkExp(_b:stdgo._internal.testing.B):Void`](<#cmplx-function-benchmarkexp>)

  - [`function benchmarkLog(_b:stdgo._internal.testing.B):Void`](<#cmplx-function-benchmarklog>)

  - [`function benchmarkLog10(_b:stdgo._internal.testing.B):Void`](<#cmplx-function-benchmarklog10>)

  - [`function benchmarkPhase(_b:stdgo._internal.testing.B):Void`](<#cmplx-function-benchmarkphase>)

  - [`function benchmarkPolar(_b:stdgo._internal.testing.B):Void`](<#cmplx-function-benchmarkpolar>)

  - [`function benchmarkPow(_b:stdgo._internal.testing.B):Void`](<#cmplx-function-benchmarkpow>)

  - [`function benchmarkRect(_b:stdgo._internal.testing.B):Void`](<#cmplx-function-benchmarkrect>)

  - [`function benchmarkSin(_b:stdgo._internal.testing.B):Void`](<#cmplx-function-benchmarksin>)

  - [`function benchmarkSinh(_b:stdgo._internal.testing.B):Void`](<#cmplx-function-benchmarksinh>)

  - [`function benchmarkSqrt(_b:stdgo._internal.testing.B):Void`](<#cmplx-function-benchmarksqrt>)

  - [`function benchmarkTan(_b:stdgo._internal.testing.B):Void`](<#cmplx-function-benchmarktan>)

  - [`function benchmarkTanh(_b:stdgo._internal.testing.B):Void`](<#cmplx-function-benchmarktanh>)

  - [`function conj(_x:stdgo.GoComplex128):stdgo.GoComplex128`](<#cmplx-function-conj>)

  - [`function cos(_x:stdgo.GoComplex128):stdgo.GoComplex128`](<#cmplx-function-cos>)

  - [`function cosh(_x:stdgo.GoComplex128):stdgo.GoComplex128`](<#cmplx-function-cosh>)

  - [`function cot(_x:stdgo.GoComplex128):stdgo.GoComplex128`](<#cmplx-function-cot>)

  - [`function exp(_x:stdgo.GoComplex128):stdgo.GoComplex128`](<#cmplx-function-exp>)

  - [`function inf():stdgo.GoComplex128`](<#cmplx-function-inf>)

  - [`function isInf(_x:stdgo.GoComplex128):Bool`](<#cmplx-function-isinf>)

  - [`function isNaN(_x:stdgo.GoComplex128):Bool`](<#cmplx-function-isnan>)

  - [`function log(_x:stdgo.GoComplex128):stdgo.GoComplex128`](<#cmplx-function-log>)

  - [`function log10(_x:stdgo.GoComplex128):stdgo.GoComplex128`](<#cmplx-function-log10>)

  - [`function naN():stdgo.GoComplex128`](<#cmplx-function-nan>)

  - [`function phase(_x:stdgo.GoComplex128):Float`](<#cmplx-function-phase>)

  - [`function polar(_x:stdgo.GoComplex128):stdgo.Tuple<Float, Float>`](<#cmplx-function-polar>)

  - [`function pow(_x:stdgo.GoComplex128, _y:stdgo.GoComplex128):stdgo.GoComplex128`](<#cmplx-function-pow>)

  - [`function rect(_r:Float, __952:Float):stdgo.GoComplex128`](<#cmplx-function-rect>)

  - [`function sin(_x:stdgo.GoComplex128):stdgo.GoComplex128`](<#cmplx-function-sin>)

  - [`function sinh(_x:stdgo.GoComplex128):stdgo.GoComplex128`](<#cmplx-function-sinh>)

  - [`function sqrt(_x:stdgo.GoComplex128):stdgo.GoComplex128`](<#cmplx-function-sqrt>)

  - [`function tan(_x:stdgo.GoComplex128):stdgo.GoComplex128`](<#cmplx-function-tan>)

  - [`function tanh(_x:stdgo.GoComplex128):stdgo.GoComplex128`](<#cmplx-function-tanh>)

  - [`function testAbs(_t:stdgo._internal.testing.T_):Void`](<#cmplx-function-testabs>)

  - [`function testAcos(_t:stdgo._internal.testing.T_):Void`](<#cmplx-function-testacos>)

  - [`function testAcosh(_t:stdgo._internal.testing.T_):Void`](<#cmplx-function-testacosh>)

  - [`function testAsin(_t:stdgo._internal.testing.T_):Void`](<#cmplx-function-testasin>)

  - [`function testAsinh(_t:stdgo._internal.testing.T_):Void`](<#cmplx-function-testasinh>)

  - [`function testAtan(_t:stdgo._internal.testing.T_):Void`](<#cmplx-function-testatan>)

  - [`function testAtanh(_t:stdgo._internal.testing.T_):Void`](<#cmplx-function-testatanh>)

  - [`function testConj(_t:stdgo._internal.testing.T_):Void`](<#cmplx-function-testconj>)

  - [`function testCos(_t:stdgo._internal.testing.T_):Void`](<#cmplx-function-testcos>)

  - [`function testCosh(_t:stdgo._internal.testing.T_):Void`](<#cmplx-function-testcosh>)

  - [`function testExp(_t:stdgo._internal.testing.T_):Void`](<#cmplx-function-testexp>)

  - [`function testInfiniteLoopIntanSeries(_t:stdgo._internal.testing.T_):Void`](<#cmplx-function-testinfiniteloopintanseries>)

  - [`function testIsNaN(_t:stdgo._internal.testing.T_):Void`](<#cmplx-function-testisnan>)

  - [`function testLog(_t:stdgo._internal.testing.T_):Void`](<#cmplx-function-testlog>)

  - [`function testLog10(_t:stdgo._internal.testing.T_):Void`](<#cmplx-function-testlog10>)

  - [`function testPolar(_t:stdgo._internal.testing.T_):Void`](<#cmplx-function-testpolar>)

  - [`function testPow(_t:stdgo._internal.testing.T_):Void`](<#cmplx-function-testpow>)

  - [`function testRect(_t:stdgo._internal.testing.T_):Void`](<#cmplx-function-testrect>)

  - [`function testSin(_t:stdgo._internal.testing.T_):Void`](<#cmplx-function-testsin>)

  - [`function testSinh(_t:stdgo._internal.testing.T_):Void`](<#cmplx-function-testsinh>)

  - [`function testSqrt(_t:stdgo._internal.testing.T_):Void`](<#cmplx-function-testsqrt>)

  - [`function testTan(_t:stdgo._internal.testing.T_):Void`](<#cmplx-function-testtan>)

  - [`function testTanHuge(_t:stdgo._internal.testing.T_):Void`](<#cmplx-function-testtanhuge>)

  - [`function testTanh(_t:stdgo._internal.testing.T_):Void`](<#cmplx-function-testtanh>)

- [typedef T\_\_struct\_0](<#typedef-t__struct_0>)

- [abstract T\_ff](<#abstract-t_ff>)

# Classes


```haxe
import
```


## class Cmplx


```
Package cmplx provides basic constants and mathematical functions for
    complex numbers. Special case handling conforms to the C99 standard
    Annex G IEC 60559-compatible complex arithmetic.
```
### Cmplx function abs


```haxe
function abs(_x:stdgo.GoComplex128):Float
```



Abs returns the absolute value \(also called the modulus\) of x.  

[\(view code\)](<./Cmplx.hx#L32>)


### Cmplx function acos


```haxe
function acos(_x:stdgo.GoComplex128):stdgo.GoComplex128
```



Acos returns the inverse cosine of x.  

[\(view code\)](<./Cmplx.hx#L50>)


### Cmplx function acosh


```haxe
function acosh(_x:stdgo.GoComplex128):stdgo.GoComplex128
```



Acosh returns the inverse hyperbolic cosine of x.  

[\(view code\)](<./Cmplx.hx#L56>)


### Cmplx function asin


```haxe
function asin(_x:stdgo.GoComplex128):stdgo.GoComplex128
```



Asin returns the inverse sine of x.  

[\(view code\)](<./Cmplx.hx#L38>)


### Cmplx function asinh


```haxe
function asinh(_x:stdgo.GoComplex128):stdgo.GoComplex128
```



Asinh returns the inverse hyperbolic sine of x.  

[\(view code\)](<./Cmplx.hx#L44>)


### Cmplx function atan


```haxe
function atan(_x:stdgo.GoComplex128):stdgo.GoComplex128
```



Atan returns the inverse tangent of x.  

[\(view code\)](<./Cmplx.hx#L62>)


### Cmplx function atanh


```haxe
function atanh(_x:stdgo.GoComplex128):stdgo.GoComplex128
```



Atanh returns the inverse hyperbolic tangent of x.  

[\(view code\)](<./Cmplx.hx#L68>)


### Cmplx function benchmarkAbs


```haxe
function benchmarkAbs(_b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Cmplx.hx#L143>)


### Cmplx function benchmarkAcos


```haxe
function benchmarkAcos(_b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Cmplx.hx#L146>)


### Cmplx function benchmarkAcosh


```haxe
function benchmarkAcosh(_b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Cmplx.hx#L149>)


### Cmplx function benchmarkAsin


```haxe
function benchmarkAsin(_b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Cmplx.hx#L152>)


### Cmplx function benchmarkAsinh


```haxe
function benchmarkAsinh(_b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Cmplx.hx#L155>)


### Cmplx function benchmarkAtan


```haxe
function benchmarkAtan(_b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Cmplx.hx#L158>)


### Cmplx function benchmarkAtanh


```haxe
function benchmarkAtanh(_b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Cmplx.hx#L161>)


### Cmplx function benchmarkConj


```haxe
function benchmarkConj(_b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Cmplx.hx#L164>)


### Cmplx function benchmarkCos


```haxe
function benchmarkCos(_b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Cmplx.hx#L167>)


### Cmplx function benchmarkCosh


```haxe
function benchmarkCosh(_b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Cmplx.hx#L170>)


### Cmplx function benchmarkExp


```haxe
function benchmarkExp(_b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Cmplx.hx#L173>)


### Cmplx function benchmarkLog


```haxe
function benchmarkLog(_b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Cmplx.hx#L176>)


### Cmplx function benchmarkLog10


```haxe
function benchmarkLog10(_b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Cmplx.hx#L179>)


### Cmplx function benchmarkPhase


```haxe
function benchmarkPhase(_b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Cmplx.hx#L182>)


### Cmplx function benchmarkPolar


```haxe
function benchmarkPolar(_b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Cmplx.hx#L185>)


### Cmplx function benchmarkPow


```haxe
function benchmarkPow(_b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Cmplx.hx#L188>)


### Cmplx function benchmarkRect


```haxe
function benchmarkRect(_b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Cmplx.hx#L191>)


### Cmplx function benchmarkSin


```haxe
function benchmarkSin(_b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Cmplx.hx#L194>)


### Cmplx function benchmarkSinh


```haxe
function benchmarkSinh(_b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Cmplx.hx#L197>)


### Cmplx function benchmarkSqrt


```haxe
function benchmarkSqrt(_b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Cmplx.hx#L200>)


### Cmplx function benchmarkTan


```haxe
function benchmarkTan(_b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Cmplx.hx#L203>)


### Cmplx function benchmarkTanh


```haxe
function benchmarkTanh(_b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Cmplx.hx#L206>)


### Cmplx function conj


```haxe
function conj(_x:stdgo.GoComplex128):stdgo.GoComplex128
```



Conj returns the complex conjugate of x.  

[\(view code\)](<./Cmplx.hx#L212>)


### Cmplx function cos


```haxe
function cos(_x:stdgo.GoComplex128):stdgo.GoComplex128
```



Cos returns the cosine of x.  

[\(view code\)](<./Cmplx.hx#L310>)


### Cmplx function cosh


```haxe
function cosh(_x:stdgo.GoComplex128):stdgo.GoComplex128
```



Cosh returns the hyperbolic cosine of x.  

[\(view code\)](<./Cmplx.hx#L316>)


### Cmplx function cot


```haxe
function cot(_x:stdgo.GoComplex128):stdgo.GoComplex128
```



Cot returns the cotangent of x.  

[\(view code\)](<./Cmplx.hx#L341>)


### Cmplx function exp


```haxe
function exp(_x:stdgo.GoComplex128):stdgo.GoComplex128
```



Exp returns e\*\*x, the base\-e exponential of x.  

[\(view code\)](<./Cmplx.hx#L218>)


### Cmplx function inf


```haxe
function inf():stdgo.GoComplex128
```



Inf returns a complex infinity, complex\(\+Inf, \+Inf\).  

[\(view code\)](<./Cmplx.hx#L233>)


### Cmplx function isInf


```haxe
function isInf(_x:stdgo.GoComplex128):Bool
```



IsInf reports whether either real\(x\) or imag\(x\) is an infinity.  

[\(view code\)](<./Cmplx.hx#L227>)


### Cmplx function isNaN


```haxe
function isNaN(_x:stdgo.GoComplex128):Bool
```


```
IsNaN reports whether either real(x) or imag(x) is NaN
        and neither is an infinity.
```
[\(view code\)](<./Cmplx.hx#L240>)


### Cmplx function log


```haxe
function log(_x:stdgo.GoComplex128):stdgo.GoComplex128
```



Log returns the natural logarithm of x.  

[\(view code\)](<./Cmplx.hx#L252>)


### Cmplx function log10


```haxe
function log10(_x:stdgo.GoComplex128):stdgo.GoComplex128
```



Log10 returns the decimal logarithm of x.  

[\(view code\)](<./Cmplx.hx#L258>)


### Cmplx function naN


```haxe
function naN():stdgo.GoComplex128
```



NaN returns a complex “not\-a\-number” value.  

[\(view code\)](<./Cmplx.hx#L246>)


### Cmplx function phase


```haxe
function phase(_x:stdgo.GoComplex128):Float
```


```
Phase returns the phase (also called the argument) of x.
        The returned value is in the range [-Pi, Pi].
```
[\(view code\)](<./Cmplx.hx#L265>)


### Cmplx function polar


```haxe
function polar(_x:stdgo.GoComplex128):stdgo.Tuple<Float, Float>
```


```
Polar returns the absolute value r and phase θ of x,
        such that x = r * e**θi.
        The phase is in the range [-Pi, Pi].
```
[\(view code\)](<./Cmplx.hx#L273>)


### Cmplx function pow


```haxe
function pow(_x:stdgo.GoComplex128, _y:stdgo.GoComplex128):stdgo.GoComplex128
```


```
Pow returns x**y, the base-x exponential of y.
        For generalized compatibility with math.Pow:
```
```
        	Pow(0, ±0) returns 1+0i
        	Pow(0, c) for real(c)<0 returns Inf+0i if imag(c) is zero, otherwise Inf+Inf i.
```
[\(view code\)](<./Cmplx.hx#L286>)


### Cmplx function rect


```haxe
function rect(_r:Float, __952:Float):stdgo.GoComplex128
```



Rect returns the complex number x with polar coordinates r, θ.  

[\(view code\)](<./Cmplx.hx#L292>)


### Cmplx function sin


```haxe
function sin(_x:stdgo.GoComplex128):stdgo.GoComplex128
```



Sin returns the sine of x.  

[\(view code\)](<./Cmplx.hx#L298>)


### Cmplx function sinh


```haxe
function sinh(_x:stdgo.GoComplex128):stdgo.GoComplex128
```



Sinh returns the hyperbolic sine of x.  

[\(view code\)](<./Cmplx.hx#L304>)


### Cmplx function sqrt


```haxe
function sqrt(_x:stdgo.GoComplex128):stdgo.GoComplex128
```


```
Sqrt returns the square root of x.
        The result r is chosen so that real(r) ≥ 0 and imag(r) has the same sign as imag(x).
```
[\(view code\)](<./Cmplx.hx#L323>)


### Cmplx function tan


```haxe
function tan(_x:stdgo.GoComplex128):stdgo.GoComplex128
```



Tan returns the tangent of x.  

[\(view code\)](<./Cmplx.hx#L329>)


### Cmplx function tanh


```haxe
function tanh(_x:stdgo.GoComplex128):stdgo.GoComplex128
```



Tanh returns the hyperbolic tangent of x.  

[\(view code\)](<./Cmplx.hx#L335>)


### Cmplx function testAbs


```haxe
function testAbs(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Cmplx.hx#L71>)


### Cmplx function testAcos


```haxe
function testAcos(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Cmplx.hx#L74>)


### Cmplx function testAcosh


```haxe
function testAcosh(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Cmplx.hx#L77>)


### Cmplx function testAsin


```haxe
function testAsin(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Cmplx.hx#L80>)


### Cmplx function testAsinh


```haxe
function testAsinh(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Cmplx.hx#L83>)


### Cmplx function testAtan


```haxe
function testAtan(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Cmplx.hx#L86>)


### Cmplx function testAtanh


```haxe
function testAtanh(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Cmplx.hx#L89>)


### Cmplx function testConj


```haxe
function testConj(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Cmplx.hx#L92>)


### Cmplx function testCos


```haxe
function testCos(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Cmplx.hx#L95>)


### Cmplx function testCosh


```haxe
function testCosh(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Cmplx.hx#L98>)


### Cmplx function testExp


```haxe
function testExp(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Cmplx.hx#L101>)


### Cmplx function testInfiniteLoopIntanSeries


```haxe
function testInfiniteLoopIntanSeries(_t:stdgo._internal.testing.T_):Void
```



See issue 17577  

[\(view code\)](<./Cmplx.hx#L140>)


### Cmplx function testIsNaN


```haxe
function testIsNaN(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Cmplx.hx#L104>)


### Cmplx function testLog


```haxe
function testLog(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Cmplx.hx#L107>)


### Cmplx function testLog10


```haxe
function testLog10(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Cmplx.hx#L110>)


### Cmplx function testPolar


```haxe
function testPolar(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Cmplx.hx#L113>)


### Cmplx function testPow


```haxe
function testPow(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Cmplx.hx#L116>)


### Cmplx function testRect


```haxe
function testRect(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Cmplx.hx#L119>)


### Cmplx function testSin


```haxe
function testSin(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Cmplx.hx#L122>)


### Cmplx function testSinh


```haxe
function testSinh(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Cmplx.hx#L125>)


### Cmplx function testSqrt


```haxe
function testSqrt(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Cmplx.hx#L128>)


### Cmplx function testTan


```haxe
function testTan(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Cmplx.hx#L131>)


### Cmplx function testTanHuge


```haxe
function testTanHuge(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Cmplx.hx#L221>)


### Cmplx function testTanh


```haxe
function testTanh(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Cmplx.hx#L134>)


# Typedefs


```haxe
import
```


## typedef T\_\_struct\_0


```haxe
typedef T__struct_0 = stdgo._internal.math.cmplx.T__struct_0;
```


# Abstracts


## abstract T\_ff


[\(view file containing code\)](<./Cmplx.hx>)


