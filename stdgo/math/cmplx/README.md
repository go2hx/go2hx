# Module: `stdgo.math.cmplx`

[(view library index)](../../stdgo.md)


# Overview



Package cmplx provides basic constants and mathematical functions for
complex numbers. Special case handling conforms to the C99 standard
Annex G IEC 60559\-compatible complex arithmetic.  

# Index


- [`function abs(x:stdgo.GoComplex128):Float`](<#function-abs>)

- [`function acos(x:stdgo.GoComplex128):stdgo.GoComplex128`](<#function-acos>)

- [`function acosh(x:stdgo.GoComplex128):stdgo.GoComplex128`](<#function-acosh>)

- [`function asin(x:stdgo.GoComplex128):stdgo.GoComplex128`](<#function-asin>)

- [`function asinh(x:stdgo.GoComplex128):stdgo.GoComplex128`](<#function-asinh>)

- [`function atan(x:stdgo.GoComplex128):stdgo.GoComplex128`](<#function-atan>)

- [`function atanh(x:stdgo.GoComplex128):stdgo.GoComplex128`](<#function-atanh>)

- [`function benchmarkAbs(b:stdgo._internal.testing.B):Void`](<#function-benchmarkabs>)

- [`function benchmarkAcos(b:stdgo._internal.testing.B):Void`](<#function-benchmarkacos>)

- [`function benchmarkAcosh(b:stdgo._internal.testing.B):Void`](<#function-benchmarkacosh>)

- [`function benchmarkAsin(b:stdgo._internal.testing.B):Void`](<#function-benchmarkasin>)

- [`function benchmarkAsinh(b:stdgo._internal.testing.B):Void`](<#function-benchmarkasinh>)

- [`function benchmarkAtan(b:stdgo._internal.testing.B):Void`](<#function-benchmarkatan>)

- [`function benchmarkAtanh(b:stdgo._internal.testing.B):Void`](<#function-benchmarkatanh>)

- [`function benchmarkConj(b:stdgo._internal.testing.B):Void`](<#function-benchmarkconj>)

- [`function benchmarkCos(b:stdgo._internal.testing.B):Void`](<#function-benchmarkcos>)

- [`function benchmarkCosh(b:stdgo._internal.testing.B):Void`](<#function-benchmarkcosh>)

- [`function benchmarkExp(b:stdgo._internal.testing.B):Void`](<#function-benchmarkexp>)

- [`function benchmarkLog(b:stdgo._internal.testing.B):Void`](<#function-benchmarklog>)

- [`function benchmarkLog10(b:stdgo._internal.testing.B):Void`](<#function-benchmarklog10>)

- [`function benchmarkPhase(b:stdgo._internal.testing.B):Void`](<#function-benchmarkphase>)

- [`function benchmarkPolar(b:stdgo._internal.testing.B):Void`](<#function-benchmarkpolar>)

- [`function benchmarkPow(b:stdgo._internal.testing.B):Void`](<#function-benchmarkpow>)

- [`function benchmarkRect(b:stdgo._internal.testing.B):Void`](<#function-benchmarkrect>)

- [`function benchmarkSin(b:stdgo._internal.testing.B):Void`](<#function-benchmarksin>)

- [`function benchmarkSinh(b:stdgo._internal.testing.B):Void`](<#function-benchmarksinh>)

- [`function benchmarkSqrt(b:stdgo._internal.testing.B):Void`](<#function-benchmarksqrt>)

- [`function benchmarkTan(b:stdgo._internal.testing.B):Void`](<#function-benchmarktan>)

- [`function benchmarkTanh(b:stdgo._internal.testing.B):Void`](<#function-benchmarktanh>)

- [`function conj(x:stdgo.GoComplex128):stdgo.GoComplex128`](<#function-conj>)

- [`function cos(x:stdgo.GoComplex128):stdgo.GoComplex128`](<#function-cos>)

- [`function cosh(x:stdgo.GoComplex128):stdgo.GoComplex128`](<#function-cosh>)

- [`function cot(x:stdgo.GoComplex128):stdgo.GoComplex128`](<#function-cot>)

- [`function exp(x:stdgo.GoComplex128):stdgo.GoComplex128`](<#function-exp>)

- [`function inf():stdgo.GoComplex128`](<#function-inf>)

- [`function isInf(x:stdgo.GoComplex128):Bool`](<#function-isinf>)

- [`function isNaN(x:stdgo.GoComplex128):Bool`](<#function-isnan>)

- [`function log(x:stdgo.GoComplex128):stdgo.GoComplex128`](<#function-log>)

- [`function log10(x:stdgo.GoComplex128):stdgo.GoComplex128`](<#function-log10>)

- [`function naN():stdgo.GoComplex128`](<#function-nan>)

- [`function phase(x:stdgo.GoComplex128):Float`](<#function-phase>)

- [`function polar(x:stdgo.GoComplex128):stdgo.Tuple<Float, Float>`](<#function-polar>)

- [`function pow(x:stdgo.GoComplex128, y:stdgo.GoComplex128):stdgo.GoComplex128`](<#function-pow>)

- [`function rect(r:Float, _952:Float):stdgo.GoComplex128`](<#function-rect>)

- [`function sin(x:stdgo.GoComplex128):stdgo.GoComplex128`](<#function-sin>)

- [`function sinh(x:stdgo.GoComplex128):stdgo.GoComplex128`](<#function-sinh>)

- [`function sqrt(x:stdgo.GoComplex128):stdgo.GoComplex128`](<#function-sqrt>)

- [`function tan(x:stdgo.GoComplex128):stdgo.GoComplex128`](<#function-tan>)

- [`function tanh(x:stdgo.GoComplex128):stdgo.GoComplex128`](<#function-tanh>)

- [`function testAbs(t:stdgo._internal.testing.T_):Void`](<#function-testabs>)

- [`function testAcos(t:stdgo._internal.testing.T_):Void`](<#function-testacos>)

- [`function testAcosh(t:stdgo._internal.testing.T_):Void`](<#function-testacosh>)

- [`function testAsin(t:stdgo._internal.testing.T_):Void`](<#function-testasin>)

- [`function testAsinh(t:stdgo._internal.testing.T_):Void`](<#function-testasinh>)

- [`function testAtan(t:stdgo._internal.testing.T_):Void`](<#function-testatan>)

- [`function testAtanh(t:stdgo._internal.testing.T_):Void`](<#function-testatanh>)

- [`function testConj(t:stdgo._internal.testing.T_):Void`](<#function-testconj>)

- [`function testCos(t:stdgo._internal.testing.T_):Void`](<#function-testcos>)

- [`function testCosh(t:stdgo._internal.testing.T_):Void`](<#function-testcosh>)

- [`function testExp(t:stdgo._internal.testing.T_):Void`](<#function-testexp>)

- [`function testInfiniteLoopIntanSeries(t:stdgo._internal.testing.T_):Void`](<#function-testinfiniteloopintanseries>)

- [`function testIsNaN(t:stdgo._internal.testing.T_):Void`](<#function-testisnan>)

- [`function testLog(t:stdgo._internal.testing.T_):Void`](<#function-testlog>)

- [`function testLog10(t:stdgo._internal.testing.T_):Void`](<#function-testlog10>)

- [`function testPolar(t:stdgo._internal.testing.T_):Void`](<#function-testpolar>)

- [`function testPow(t:stdgo._internal.testing.T_):Void`](<#function-testpow>)

- [`function testRect(t:stdgo._internal.testing.T_):Void`](<#function-testrect>)

- [`function testSin(t:stdgo._internal.testing.T_):Void`](<#function-testsin>)

- [`function testSinh(t:stdgo._internal.testing.T_):Void`](<#function-testsinh>)

- [`function testSqrt(t:stdgo._internal.testing.T_):Void`](<#function-testsqrt>)

- [`function testTan(t:stdgo._internal.testing.T_):Void`](<#function-testtan>)

- [`function testTanHuge(t:stdgo._internal.testing.T_):Void`](<#function-testtanhuge>)

- [`function testTanh(t:stdgo._internal.testing.T_):Void`](<#function-testtanh>)

- [typedef T\_\_struct\_0](<#typedef-t__struct_0>)

- [typedef T\_\_struct\_0\_asInterface](<#typedef-t__struct_0_asinterface>)

- [typedef T\_\_struct\_0\_static\_extension](<#typedef-t__struct_0_static_extension>)

- [typedef T\_ff](<#typedef-t_ff>)

# Functions


```haxe
import stdgo.math.cmplx.Cmplx
```


## function abs


```haxe
function abs(x:stdgo.GoComplex128):Float
```



Abs returns the absolute value \(also called the modulus\) of x.  

[\(view code\)](<./Cmplx.hx#L15>)


## function acos


```haxe
function acos(x:stdgo.GoComplex128):stdgo.GoComplex128
```



Acos returns the inverse cosine of x.  

[\(view code\)](<./Cmplx.hx#L27>)


## function acosh


```haxe
function acosh(x:stdgo.GoComplex128):stdgo.GoComplex128
```



Acosh returns the inverse hyperbolic cosine of x.  

[\(view code\)](<./Cmplx.hx#L31>)


## function asin


```haxe
function asin(x:stdgo.GoComplex128):stdgo.GoComplex128
```



Asin returns the inverse sine of x.  

[\(view code\)](<./Cmplx.hx#L19>)


## function asinh


```haxe
function asinh(x:stdgo.GoComplex128):stdgo.GoComplex128
```



Asinh returns the inverse hyperbolic sine of x.  

[\(view code\)](<./Cmplx.hx#L23>)


## function atan


```haxe
function atan(x:stdgo.GoComplex128):stdgo.GoComplex128
```



Atan returns the inverse tangent of x.  

[\(view code\)](<./Cmplx.hx#L35>)


## function atanh


```haxe
function atanh(x:stdgo.GoComplex128):stdgo.GoComplex128
```



Atanh returns the inverse hyperbolic tangent of x.  

[\(view code\)](<./Cmplx.hx#L39>)


## function benchmarkAbs


```haxe
function benchmarkAbs(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Cmplx.hx#L66>)


## function benchmarkAcos


```haxe
function benchmarkAcos(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Cmplx.hx#L67>)


## function benchmarkAcosh


```haxe
function benchmarkAcosh(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Cmplx.hx#L68>)


## function benchmarkAsin


```haxe
function benchmarkAsin(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Cmplx.hx#L69>)


## function benchmarkAsinh


```haxe
function benchmarkAsinh(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Cmplx.hx#L70>)


## function benchmarkAtan


```haxe
function benchmarkAtan(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Cmplx.hx#L71>)


## function benchmarkAtanh


```haxe
function benchmarkAtanh(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Cmplx.hx#L72>)


## function benchmarkConj


```haxe
function benchmarkConj(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Cmplx.hx#L73>)


## function benchmarkCos


```haxe
function benchmarkCos(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Cmplx.hx#L74>)


## function benchmarkCosh


```haxe
function benchmarkCosh(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Cmplx.hx#L75>)


## function benchmarkExp


```haxe
function benchmarkExp(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Cmplx.hx#L76>)


## function benchmarkLog


```haxe
function benchmarkLog(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Cmplx.hx#L77>)


## function benchmarkLog10


```haxe
function benchmarkLog10(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Cmplx.hx#L78>)


## function benchmarkPhase


```haxe
function benchmarkPhase(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Cmplx.hx#L79>)


## function benchmarkPolar


```haxe
function benchmarkPolar(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Cmplx.hx#L80>)


## function benchmarkPow


```haxe
function benchmarkPow(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Cmplx.hx#L81>)


## function benchmarkRect


```haxe
function benchmarkRect(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Cmplx.hx#L82>)


## function benchmarkSin


```haxe
function benchmarkSin(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Cmplx.hx#L83>)


## function benchmarkSinh


```haxe
function benchmarkSinh(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Cmplx.hx#L84>)


## function benchmarkSqrt


```haxe
function benchmarkSqrt(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Cmplx.hx#L85>)


## function benchmarkTan


```haxe
function benchmarkTan(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Cmplx.hx#L86>)


## function benchmarkTanh


```haxe
function benchmarkTanh(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Cmplx.hx#L87>)


## function conj


```haxe
function conj(x:stdgo.GoComplex128):stdgo.GoComplex128
```



Conj returns the complex conjugate of x.  

[\(view code\)](<./Cmplx.hx#L91>)


## function cos


```haxe
function cos(x:stdgo.GoComplex128):stdgo.GoComplex128
```



Cos returns the cosine of x.  

[\(view code\)](<./Cmplx.hx#L156>)


## function cosh


```haxe
function cosh(x:stdgo.GoComplex128):stdgo.GoComplex128
```



Cosh returns the hyperbolic cosine of x.  

[\(view code\)](<./Cmplx.hx#L160>)


## function cot


```haxe
function cot(x:stdgo.GoComplex128):stdgo.GoComplex128
```



Cot returns the cotangent of x.  

[\(view code\)](<./Cmplx.hx#L177>)


## function exp


```haxe
function exp(x:stdgo.GoComplex128):stdgo.GoComplex128
```



Exp returns e\*\*x, the base\-e exponential of x.  

[\(view code\)](<./Cmplx.hx#L95>)


## function inf


```haxe
function inf():stdgo.GoComplex128
```



Inf returns a complex infinity, complex\(\+Inf, \+Inf\).  

[\(view code\)](<./Cmplx.hx#L104>)


## function isInf


```haxe
function isInf(x:stdgo.GoComplex128):Bool
```



IsInf reports whether either real\(x\) or imag\(x\) is an infinity.  

[\(view code\)](<./Cmplx.hx#L100>)


## function isNaN


```haxe
function isNaN(x:stdgo.GoComplex128):Bool
```



IsNaN reports whether either real\(x\) or imag\(x\) is NaN
and neither is an infinity.  

[\(view code\)](<./Cmplx.hx#L109>)


## function log


```haxe
function log(x:stdgo.GoComplex128):stdgo.GoComplex128
```



Log returns the natural logarithm of x.  

[\(view code\)](<./Cmplx.hx#L117>)


## function log10


```haxe
function log10(x:stdgo.GoComplex128):stdgo.GoComplex128
```



Log10 returns the decimal logarithm of x.  

[\(view code\)](<./Cmplx.hx#L121>)


## function naN


```haxe
function naN():stdgo.GoComplex128
```



NaN returns a complex “not\-a\-number” value.  

[\(view code\)](<./Cmplx.hx#L113>)


## function phase


```haxe
function phase(x:stdgo.GoComplex128):Float
```



Phase returns the phase \(also called the argument\) of x.
The returned value is in the range \[\-Pi, Pi\].  

[\(view code\)](<./Cmplx.hx#L126>)


## function polar


```haxe
function polar(x:stdgo.GoComplex128):stdgo.Tuple<Float, Float>
```



Polar returns the absolute value r and phase θ of x,
such that x = r \* e\*\*θi.
The phase is in the range \[\-Pi, Pi\].  

[\(view code\)](<./Cmplx.hx#L132>)


## function pow


```haxe
function pow(x:stdgo.GoComplex128, y:stdgo.GoComplex128):stdgo.GoComplex128
```



Pow returns x\*\*y, the base\-x exponential of y.
For generalized compatibility with math.Pow:  

```
	Pow(0, ±0) returns 1+0i
	Pow(0, c) for real(c)<0 returns Inf+0i if imag(c) is zero, otherwise Inf+Inf i.
```
[\(view code\)](<./Cmplx.hx#L140>)


## function rect


```haxe
function rect(r:Float, _952:Float):stdgo.GoComplex128
```



Rect returns the complex number x with polar coordinates r, θ.  

[\(view code\)](<./Cmplx.hx#L144>)


## function sin


```haxe
function sin(x:stdgo.GoComplex128):stdgo.GoComplex128
```



Sin returns the sine of x.  

[\(view code\)](<./Cmplx.hx#L148>)


## function sinh


```haxe
function sinh(x:stdgo.GoComplex128):stdgo.GoComplex128
```



Sinh returns the hyperbolic sine of x.  

[\(view code\)](<./Cmplx.hx#L152>)


## function sqrt


```haxe
function sqrt(x:stdgo.GoComplex128):stdgo.GoComplex128
```



Sqrt returns the square root of x.
The result r is chosen so that real\(r\) ≥ 0 and imag\(r\) has the same sign as imag\(x\).  

[\(view code\)](<./Cmplx.hx#L165>)


## function tan


```haxe
function tan(x:stdgo.GoComplex128):stdgo.GoComplex128
```



Tan returns the tangent of x.  

[\(view code\)](<./Cmplx.hx#L169>)


## function tanh


```haxe
function tanh(x:stdgo.GoComplex128):stdgo.GoComplex128
```



Tanh returns the hyperbolic tangent of x.  

[\(view code\)](<./Cmplx.hx#L173>)


## function testAbs


```haxe
function testAbs(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Cmplx.hx#L40>)


## function testAcos


```haxe
function testAcos(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Cmplx.hx#L41>)


## function testAcosh


```haxe
function testAcosh(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Cmplx.hx#L42>)


## function testAsin


```haxe
function testAsin(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Cmplx.hx#L43>)


## function testAsinh


```haxe
function testAsinh(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Cmplx.hx#L44>)


## function testAtan


```haxe
function testAtan(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Cmplx.hx#L45>)


## function testAtanh


```haxe
function testAtanh(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Cmplx.hx#L46>)


## function testConj


```haxe
function testConj(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Cmplx.hx#L47>)


## function testCos


```haxe
function testCos(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Cmplx.hx#L48>)


## function testCosh


```haxe
function testCosh(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Cmplx.hx#L49>)


## function testExp


```haxe
function testExp(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Cmplx.hx#L50>)


## function testInfiniteLoopIntanSeries


```haxe
function testInfiniteLoopIntanSeries(t:stdgo._internal.testing.T_):Void
```



See issue 17577  

[\(view code\)](<./Cmplx.hx#L65>)


## function testIsNaN


```haxe
function testIsNaN(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Cmplx.hx#L51>)


## function testLog


```haxe
function testLog(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Cmplx.hx#L52>)


## function testLog10


```haxe
function testLog10(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Cmplx.hx#L53>)


## function testPolar


```haxe
function testPolar(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Cmplx.hx#L54>)


## function testPow


```haxe
function testPow(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Cmplx.hx#L55>)


## function testRect


```haxe
function testRect(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Cmplx.hx#L56>)


## function testSin


```haxe
function testSin(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Cmplx.hx#L57>)


## function testSinh


```haxe
function testSinh(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Cmplx.hx#L58>)


## function testSqrt


```haxe
function testSqrt(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Cmplx.hx#L59>)


## function testTan


```haxe
function testTan(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Cmplx.hx#L60>)


## function testTanHuge


```haxe
function testTanHuge(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Cmplx.hx#L96>)


## function testTanh


```haxe
function testTanh(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Cmplx.hx#L61>)


# Typedefs


```haxe
import stdgo.math.cmplx.*
```


## typedef T\_\_struct\_0


```haxe
typedef T__struct_0 = stdgo._internal.math.cmplx.T__struct_0;
```


## typedef T\_\_struct\_0\_asInterface


```haxe
typedef T__struct_0_asInterface = Dynamic;
```


## typedef T\_\_struct\_0\_static\_extension


```haxe
typedef T__struct_0_static_extension = Dynamic;
```


## typedef T\_ff


```haxe
typedef T_ff = Dynamic;
```


