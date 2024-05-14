# Module: `stdgo.math.cmplx`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [class Cmplx](<#class-cmplx>)

  - [`function abs(x:stdgo.GoComplex128):Float`](<#cmplx-function-abs>)

  - [`function acos(x:stdgo.GoComplex128):stdgo.GoComplex128`](<#cmplx-function-acos>)

  - [`function acosh(x:stdgo.GoComplex128):stdgo.GoComplex128`](<#cmplx-function-acosh>)

  - [`function asin(x:stdgo.GoComplex128):stdgo.GoComplex128`](<#cmplx-function-asin>)

  - [`function asinh(x:stdgo.GoComplex128):stdgo.GoComplex128`](<#cmplx-function-asinh>)

  - [`function atan(x:stdgo.GoComplex128):stdgo.GoComplex128`](<#cmplx-function-atan>)

  - [`function atanh(x:stdgo.GoComplex128):stdgo.GoComplex128`](<#cmplx-function-atanh>)

  - [`function benchmarkAbs(b:stdgo._internal.testing.B):Void`](<#cmplx-function-benchmarkabs>)

  - [`function benchmarkAcos(b:stdgo._internal.testing.B):Void`](<#cmplx-function-benchmarkacos>)

  - [`function benchmarkAcosh(b:stdgo._internal.testing.B):Void`](<#cmplx-function-benchmarkacosh>)

  - [`function benchmarkAsin(b:stdgo._internal.testing.B):Void`](<#cmplx-function-benchmarkasin>)

  - [`function benchmarkAsinh(b:stdgo._internal.testing.B):Void`](<#cmplx-function-benchmarkasinh>)

  - [`function benchmarkAtan(b:stdgo._internal.testing.B):Void`](<#cmplx-function-benchmarkatan>)

  - [`function benchmarkAtanh(b:stdgo._internal.testing.B):Void`](<#cmplx-function-benchmarkatanh>)

  - [`function benchmarkConj(b:stdgo._internal.testing.B):Void`](<#cmplx-function-benchmarkconj>)

  - [`function benchmarkCos(b:stdgo._internal.testing.B):Void`](<#cmplx-function-benchmarkcos>)

  - [`function benchmarkCosh(b:stdgo._internal.testing.B):Void`](<#cmplx-function-benchmarkcosh>)

  - [`function benchmarkExp(b:stdgo._internal.testing.B):Void`](<#cmplx-function-benchmarkexp>)

  - [`function benchmarkLog(b:stdgo._internal.testing.B):Void`](<#cmplx-function-benchmarklog>)

  - [`function benchmarkLog10(b:stdgo._internal.testing.B):Void`](<#cmplx-function-benchmarklog10>)

  - [`function benchmarkPhase(b:stdgo._internal.testing.B):Void`](<#cmplx-function-benchmarkphase>)

  - [`function benchmarkPolar(b:stdgo._internal.testing.B):Void`](<#cmplx-function-benchmarkpolar>)

  - [`function benchmarkPow(b:stdgo._internal.testing.B):Void`](<#cmplx-function-benchmarkpow>)

  - [`function benchmarkRect(b:stdgo._internal.testing.B):Void`](<#cmplx-function-benchmarkrect>)

  - [`function benchmarkSin(b:stdgo._internal.testing.B):Void`](<#cmplx-function-benchmarksin>)

  - [`function benchmarkSinh(b:stdgo._internal.testing.B):Void`](<#cmplx-function-benchmarksinh>)

  - [`function benchmarkSqrt(b:stdgo._internal.testing.B):Void`](<#cmplx-function-benchmarksqrt>)

  - [`function benchmarkTan(b:stdgo._internal.testing.B):Void`](<#cmplx-function-benchmarktan>)

  - [`function benchmarkTanh(b:stdgo._internal.testing.B):Void`](<#cmplx-function-benchmarktanh>)

  - [`function conj(x:stdgo.GoComplex128):stdgo.GoComplex128`](<#cmplx-function-conj>)

  - [`function cos(x:stdgo.GoComplex128):stdgo.GoComplex128`](<#cmplx-function-cos>)

  - [`function cosh(x:stdgo.GoComplex128):stdgo.GoComplex128`](<#cmplx-function-cosh>)

  - [`function cot(x:stdgo.GoComplex128):stdgo.GoComplex128`](<#cmplx-function-cot>)

  - [`function exp(x:stdgo.GoComplex128):stdgo.GoComplex128`](<#cmplx-function-exp>)

  - [`function inf():stdgo.GoComplex128`](<#cmplx-function-inf>)

  - [`function isInf(x:stdgo.GoComplex128):Bool`](<#cmplx-function-isinf>)

  - [`function isNaN(x:stdgo.GoComplex128):Bool`](<#cmplx-function-isnan>)

  - [`function log(x:stdgo.GoComplex128):stdgo.GoComplex128`](<#cmplx-function-log>)

  - [`function log10(x:stdgo.GoComplex128):stdgo.GoComplex128`](<#cmplx-function-log10>)

  - [`function naN():stdgo.GoComplex128`](<#cmplx-function-nan>)

  - [`function phase(x:stdgo.GoComplex128):Float`](<#cmplx-function-phase>)

  - [`function polar(x:stdgo.GoComplex128):stdgo.Tuple<Float, Float>`](<#cmplx-function-polar>)

  - [`function pow(x:stdgo.GoComplex128, y:stdgo.GoComplex128):stdgo.GoComplex128`](<#cmplx-function-pow>)

  - [`function rect(r:Float, _952:Float):stdgo.GoComplex128`](<#cmplx-function-rect>)

  - [`function sin(x:stdgo.GoComplex128):stdgo.GoComplex128`](<#cmplx-function-sin>)

  - [`function sinh(x:stdgo.GoComplex128):stdgo.GoComplex128`](<#cmplx-function-sinh>)

  - [`function sqrt(x:stdgo.GoComplex128):stdgo.GoComplex128`](<#cmplx-function-sqrt>)

  - [`function tan(x:stdgo.GoComplex128):stdgo.GoComplex128`](<#cmplx-function-tan>)

  - [`function tanh(x:stdgo.GoComplex128):stdgo.GoComplex128`](<#cmplx-function-tanh>)

  - [`function testAbs(t:stdgo._internal.testing.T_):Void`](<#cmplx-function-testabs>)

  - [`function testAcos(t:stdgo._internal.testing.T_):Void`](<#cmplx-function-testacos>)

  - [`function testAcosh(t:stdgo._internal.testing.T_):Void`](<#cmplx-function-testacosh>)

  - [`function testAsin(t:stdgo._internal.testing.T_):Void`](<#cmplx-function-testasin>)

  - [`function testAsinh(t:stdgo._internal.testing.T_):Void`](<#cmplx-function-testasinh>)

  - [`function testAtan(t:stdgo._internal.testing.T_):Void`](<#cmplx-function-testatan>)

  - [`function testAtanh(t:stdgo._internal.testing.T_):Void`](<#cmplx-function-testatanh>)

  - [`function testConj(t:stdgo._internal.testing.T_):Void`](<#cmplx-function-testconj>)

  - [`function testCos(t:stdgo._internal.testing.T_):Void`](<#cmplx-function-testcos>)

  - [`function testCosh(t:stdgo._internal.testing.T_):Void`](<#cmplx-function-testcosh>)

  - [`function testExp(t:stdgo._internal.testing.T_):Void`](<#cmplx-function-testexp>)

  - [`function testInfiniteLoopIntanSeries(t:stdgo._internal.testing.T_):Void`](<#cmplx-function-testinfiniteloopintanseries>)

  - [`function testIsNaN(t:stdgo._internal.testing.T_):Void`](<#cmplx-function-testisnan>)

  - [`function testLog(t:stdgo._internal.testing.T_):Void`](<#cmplx-function-testlog>)

  - [`function testLog10(t:stdgo._internal.testing.T_):Void`](<#cmplx-function-testlog10>)

  - [`function testPolar(t:stdgo._internal.testing.T_):Void`](<#cmplx-function-testpolar>)

  - [`function testPow(t:stdgo._internal.testing.T_):Void`](<#cmplx-function-testpow>)

  - [`function testRect(t:stdgo._internal.testing.T_):Void`](<#cmplx-function-testrect>)

  - [`function testSin(t:stdgo._internal.testing.T_):Void`](<#cmplx-function-testsin>)

  - [`function testSinh(t:stdgo._internal.testing.T_):Void`](<#cmplx-function-testsinh>)

  - [`function testSqrt(t:stdgo._internal.testing.T_):Void`](<#cmplx-function-testsqrt>)

  - [`function testTan(t:stdgo._internal.testing.T_):Void`](<#cmplx-function-testtan>)

  - [`function testTanHuge(t:stdgo._internal.testing.T_):Void`](<#cmplx-function-testtanhuge>)

  - [`function testTanh(t:stdgo._internal.testing.T_):Void`](<#cmplx-function-testtanh>)

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
function abs(x:stdgo.GoComplex128):Float
```



Abs returns the absolute value \(also called the modulus\) of x.  

[\(view code\)](<./Cmplx.hx#L32>)


### Cmplx function acos


```haxe
function acos(x:stdgo.GoComplex128):stdgo.GoComplex128
```



Acos returns the inverse cosine of x.  

[\(view code\)](<./Cmplx.hx#L50>)


### Cmplx function acosh


```haxe
function acosh(x:stdgo.GoComplex128):stdgo.GoComplex128
```



Acosh returns the inverse hyperbolic cosine of x.  

[\(view code\)](<./Cmplx.hx#L56>)


### Cmplx function asin


```haxe
function asin(x:stdgo.GoComplex128):stdgo.GoComplex128
```



Asin returns the inverse sine of x.  

[\(view code\)](<./Cmplx.hx#L38>)


### Cmplx function asinh


```haxe
function asinh(x:stdgo.GoComplex128):stdgo.GoComplex128
```



Asinh returns the inverse hyperbolic sine of x.  

[\(view code\)](<./Cmplx.hx#L44>)


### Cmplx function atan


```haxe
function atan(x:stdgo.GoComplex128):stdgo.GoComplex128
```



Atan returns the inverse tangent of x.  

[\(view code\)](<./Cmplx.hx#L62>)


### Cmplx function atanh


```haxe
function atanh(x:stdgo.GoComplex128):stdgo.GoComplex128
```



Atanh returns the inverse hyperbolic tangent of x.  

[\(view code\)](<./Cmplx.hx#L68>)


### Cmplx function benchmarkAbs


```haxe
function benchmarkAbs(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Cmplx.hx#L143>)


### Cmplx function benchmarkAcos


```haxe
function benchmarkAcos(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Cmplx.hx#L146>)


### Cmplx function benchmarkAcosh


```haxe
function benchmarkAcosh(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Cmplx.hx#L149>)


### Cmplx function benchmarkAsin


```haxe
function benchmarkAsin(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Cmplx.hx#L152>)


### Cmplx function benchmarkAsinh


```haxe
function benchmarkAsinh(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Cmplx.hx#L155>)


### Cmplx function benchmarkAtan


```haxe
function benchmarkAtan(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Cmplx.hx#L158>)


### Cmplx function benchmarkAtanh


```haxe
function benchmarkAtanh(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Cmplx.hx#L161>)


### Cmplx function benchmarkConj


```haxe
function benchmarkConj(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Cmplx.hx#L164>)


### Cmplx function benchmarkCos


```haxe
function benchmarkCos(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Cmplx.hx#L167>)


### Cmplx function benchmarkCosh


```haxe
function benchmarkCosh(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Cmplx.hx#L170>)


### Cmplx function benchmarkExp


```haxe
function benchmarkExp(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Cmplx.hx#L173>)


### Cmplx function benchmarkLog


```haxe
function benchmarkLog(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Cmplx.hx#L176>)


### Cmplx function benchmarkLog10


```haxe
function benchmarkLog10(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Cmplx.hx#L179>)


### Cmplx function benchmarkPhase


```haxe
function benchmarkPhase(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Cmplx.hx#L182>)


### Cmplx function benchmarkPolar


```haxe
function benchmarkPolar(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Cmplx.hx#L185>)


### Cmplx function benchmarkPow


```haxe
function benchmarkPow(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Cmplx.hx#L188>)


### Cmplx function benchmarkRect


```haxe
function benchmarkRect(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Cmplx.hx#L191>)


### Cmplx function benchmarkSin


```haxe
function benchmarkSin(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Cmplx.hx#L194>)


### Cmplx function benchmarkSinh


```haxe
function benchmarkSinh(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Cmplx.hx#L197>)


### Cmplx function benchmarkSqrt


```haxe
function benchmarkSqrt(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Cmplx.hx#L200>)


### Cmplx function benchmarkTan


```haxe
function benchmarkTan(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Cmplx.hx#L203>)


### Cmplx function benchmarkTanh


```haxe
function benchmarkTanh(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Cmplx.hx#L206>)


### Cmplx function conj


```haxe
function conj(x:stdgo.GoComplex128):stdgo.GoComplex128
```



Conj returns the complex conjugate of x.  

[\(view code\)](<./Cmplx.hx#L212>)


### Cmplx function cos


```haxe
function cos(x:stdgo.GoComplex128):stdgo.GoComplex128
```



Cos returns the cosine of x.  

[\(view code\)](<./Cmplx.hx#L310>)


### Cmplx function cosh


```haxe
function cosh(x:stdgo.GoComplex128):stdgo.GoComplex128
```



Cosh returns the hyperbolic cosine of x.  

[\(view code\)](<./Cmplx.hx#L316>)


### Cmplx function cot


```haxe
function cot(x:stdgo.GoComplex128):stdgo.GoComplex128
```



Cot returns the cotangent of x.  

[\(view code\)](<./Cmplx.hx#L341>)


### Cmplx function exp


```haxe
function exp(x:stdgo.GoComplex128):stdgo.GoComplex128
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
function isInf(x:stdgo.GoComplex128):Bool
```



IsInf reports whether either real\(x\) or imag\(x\) is an infinity.  

[\(view code\)](<./Cmplx.hx#L227>)


### Cmplx function isNaN


```haxe
function isNaN(x:stdgo.GoComplex128):Bool
```


```
IsNaN reports whether either real(x) or imag(x) is NaN
        and neither is an infinity.
```
[\(view code\)](<./Cmplx.hx#L240>)


### Cmplx function log


```haxe
function log(x:stdgo.GoComplex128):stdgo.GoComplex128
```



Log returns the natural logarithm of x.  

[\(view code\)](<./Cmplx.hx#L252>)


### Cmplx function log10


```haxe
function log10(x:stdgo.GoComplex128):stdgo.GoComplex128
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
function phase(x:stdgo.GoComplex128):Float
```


```
Phase returns the phase (also called the argument) of x.
        The returned value is in the range [-Pi, Pi].
```
[\(view code\)](<./Cmplx.hx#L265>)


### Cmplx function polar


```haxe
function polar(x:stdgo.GoComplex128):stdgo.Tuple<Float, Float>
```


```
Polar returns the absolute value r and phase θ of x,
        such that x = r * e**θi.
        The phase is in the range [-Pi, Pi].
```
[\(view code\)](<./Cmplx.hx#L273>)


### Cmplx function pow


```haxe
function pow(x:stdgo.GoComplex128, y:stdgo.GoComplex128):stdgo.GoComplex128
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
function rect(r:Float, _952:Float):stdgo.GoComplex128
```



Rect returns the complex number x with polar coordinates r, θ.  

[\(view code\)](<./Cmplx.hx#L292>)


### Cmplx function sin


```haxe
function sin(x:stdgo.GoComplex128):stdgo.GoComplex128
```



Sin returns the sine of x.  

[\(view code\)](<./Cmplx.hx#L298>)


### Cmplx function sinh


```haxe
function sinh(x:stdgo.GoComplex128):stdgo.GoComplex128
```



Sinh returns the hyperbolic sine of x.  

[\(view code\)](<./Cmplx.hx#L304>)


### Cmplx function sqrt


```haxe
function sqrt(x:stdgo.GoComplex128):stdgo.GoComplex128
```


```
Sqrt returns the square root of x.
        The result r is chosen so that real(r) ≥ 0 and imag(r) has the same sign as imag(x).
```
[\(view code\)](<./Cmplx.hx#L323>)


### Cmplx function tan


```haxe
function tan(x:stdgo.GoComplex128):stdgo.GoComplex128
```



Tan returns the tangent of x.  

[\(view code\)](<./Cmplx.hx#L329>)


### Cmplx function tanh


```haxe
function tanh(x:stdgo.GoComplex128):stdgo.GoComplex128
```



Tanh returns the hyperbolic tangent of x.  

[\(view code\)](<./Cmplx.hx#L335>)


### Cmplx function testAbs


```haxe
function testAbs(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Cmplx.hx#L71>)


### Cmplx function testAcos


```haxe
function testAcos(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Cmplx.hx#L74>)


### Cmplx function testAcosh


```haxe
function testAcosh(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Cmplx.hx#L77>)


### Cmplx function testAsin


```haxe
function testAsin(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Cmplx.hx#L80>)


### Cmplx function testAsinh


```haxe
function testAsinh(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Cmplx.hx#L83>)


### Cmplx function testAtan


```haxe
function testAtan(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Cmplx.hx#L86>)


### Cmplx function testAtanh


```haxe
function testAtanh(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Cmplx.hx#L89>)


### Cmplx function testConj


```haxe
function testConj(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Cmplx.hx#L92>)


### Cmplx function testCos


```haxe
function testCos(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Cmplx.hx#L95>)


### Cmplx function testCosh


```haxe
function testCosh(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Cmplx.hx#L98>)


### Cmplx function testExp


```haxe
function testExp(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Cmplx.hx#L101>)


### Cmplx function testInfiniteLoopIntanSeries


```haxe
function testInfiniteLoopIntanSeries(t:stdgo._internal.testing.T_):Void
```



See issue 17577  

[\(view code\)](<./Cmplx.hx#L140>)


### Cmplx function testIsNaN


```haxe
function testIsNaN(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Cmplx.hx#L104>)


### Cmplx function testLog


```haxe
function testLog(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Cmplx.hx#L107>)


### Cmplx function testLog10


```haxe
function testLog10(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Cmplx.hx#L110>)


### Cmplx function testPolar


```haxe
function testPolar(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Cmplx.hx#L113>)


### Cmplx function testPow


```haxe
function testPow(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Cmplx.hx#L116>)


### Cmplx function testRect


```haxe
function testRect(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Cmplx.hx#L119>)


### Cmplx function testSin


```haxe
function testSin(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Cmplx.hx#L122>)


### Cmplx function testSinh


```haxe
function testSinh(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Cmplx.hx#L125>)


### Cmplx function testSqrt


```haxe
function testSqrt(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Cmplx.hx#L128>)


### Cmplx function testTan


```haxe
function testTan(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Cmplx.hx#L131>)


### Cmplx function testTanHuge


```haxe
function testTanHuge(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Cmplx.hx#L221>)


### Cmplx function testTanh


```haxe
function testTanh(t:stdgo._internal.testing.T_):Void
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


