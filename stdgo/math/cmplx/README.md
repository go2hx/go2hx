# Module: `stdgo.math.cmplx`

[(view library index)](../../stdgo.md)


# Overview



Package cmplx provides basic constants and mathematical functions for
complex numbers. Special case handling conforms to the C99 standard
Annex G IEC 60559\-compatible complex arithmetic.  

stdgo/internal/Macro.macro.hx:43: non hxb types:,363

# Index


- [Variables](<#variables>)

- [`function _alike(_a:stdgo.GoFloat64, _b:stdgo.GoFloat64):Bool`](<#function-_alike>)

- [`function _cAlike(_a:stdgo.GoComplex128, _b:stdgo.GoComplex128):Bool`](<#function-_calike>)

- [`function _cSoclose(_a:stdgo.GoComplex128, _b:stdgo.GoComplex128, _e:stdgo.GoFloat64):Bool`](<#function-_csoclose>)

- [`function _cTolerance(_a:stdgo.GoComplex128, _b:stdgo.GoComplex128, _e:stdgo.GoFloat64):Bool`](<#function-_ctolerance>)

- [`function _cVeryclose(_a:stdgo.GoComplex128, _b:stdgo.GoComplex128):Bool`](<#function-_cveryclose>)

- [`function _isExact(_x:stdgo.GoFloat64):Bool`](<#function-_isexact>)

- [`function _reducePi(_x:stdgo.GoFloat64):stdgo.GoFloat64`](<#function-_reducepi>)

- [`function _sinhcosh(_x:stdgo.GoFloat64):{
	_1:stdgo.GoFloat64;
	_0:stdgo.GoFloat64;
}`](<#function-_sinhcosh>)

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

- [`function polar(_x:stdgo.GoComplex128):{
	_1:stdgo.GoFloat64;
	_0:stdgo.GoFloat64;
}`](<#function-polar>)

- [`function pow(_x:stdgo.GoComplex128, _y:stdgo.GoComplex128):stdgo.GoComplex128`](<#function-pow>)

- [`function rect(_r:stdgo.GoFloat64, __952:stdgo.GoFloat64):stdgo.GoComplex128`](<#function-rect>)

- [`function sin(_x:stdgo.GoComplex128):stdgo.GoComplex128`](<#function-sin>)

- [`function sinh(_x:stdgo.GoComplex128):stdgo.GoComplex128`](<#function-sinh>)

- [`function sqrt(_x:stdgo.GoComplex128):stdgo.GoComplex128`](<#function-sqrt>)

- [`function tan(_x:stdgo.GoComplex128):stdgo.GoComplex128`](<#function-tan>)

- [`function tanh(_x:stdgo.GoComplex128):stdgo.GoComplex128`](<#function-tanh>)

- [`function testAbs(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testabs>)

- [`function testAcos(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testacos>)

- [`function testAcosh(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testacosh>)

- [`function testAsin(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testasin>)

- [`function testAsinh(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testasinh>)

- [`function testAtan(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testatan>)

- [`function testAtanh(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testatanh>)

- [`function testConj(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testconj>)

- [`function testCos(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testcos>)

- [`function testCosh(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testcosh>)

- [`function testExp(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testexp>)

- [`function testInfiniteLoopIntanSeries(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testinfiniteloopintanseries>)

- [`function testIsNaN(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testisnan>)

- [`function testLog(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testlog>)

- [`function testLog10(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testlog10>)

- [`function testPolar(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testpolar>)

- [`function testPow(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testpow>)

- [`function testRect(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testrect>)

- [`function testSin(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testsin>)

- [`function testSinh(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testsinh>)

- [`function testSqrt(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testsqrt>)

- [`function testTan(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testtan>)

- [`function testTanHuge(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testtanhuge>)

- [`function testTanh(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testtanh>)

- [typedef T\_\_struct\_0](<#typedef-t__struct_0>)

# Examples


- [`exampleAbs`](<#exampleabs>)

- [`exampleExp`](<#exampleexp>)

- [`examplePolar`](<#examplepolar>)

# Variables


```haxe
import stdgo.math.cmplx.Cmplx
```


```haxe
var _abs:stdgo.Slice<stdgo.GoFloat64>
```


```haxe
var _absSC:stdgo.Slice<stdgo.GoFloat64>
```


```haxe
var _acos:stdgo.Slice<stdgo.GoComplex128>
```


```haxe
var _acosSC:stdgo.Slice<stdgo.math.cmplx.T__struct_0>
```


```haxe
var _acosh:stdgo.Slice<stdgo.GoComplex128>
```


```haxe
var _acoshSC:stdgo.Slice<stdgo.math.cmplx.T__struct_0>
```


```haxe
var _asin:stdgo.Slice<stdgo.GoComplex128>
```


```haxe
var _asinSC:stdgo.Slice<stdgo.math.cmplx.T__struct_0>
```


```haxe
var _asinh:stdgo.Slice<stdgo.GoComplex128>
```


```haxe
var _asinhSC:stdgo.Slice<stdgo.math.cmplx.T__struct_0>
```


```haxe
var _atan:stdgo.Slice<stdgo.GoComplex128>
```


```haxe
var _atanSC:stdgo.Slice<stdgo.math.cmplx.T__struct_0>
```


```haxe
var _atanh:stdgo.Slice<stdgo.GoComplex128>
```


```haxe
var _atanhSC:stdgo.Slice<stdgo.math.cmplx.T__struct_0>
```


```haxe
var _branchPoints:stdgo.Slice<stdgo.GoArray<stdgo.GoComplex128>>
```


```haxe
var _conj:stdgo.Slice<stdgo.GoComplex128>
```


```haxe
var _conjSC:stdgo.Slice<stdgo.GoComplex128>
```


```haxe
var _cos:stdgo.Slice<stdgo.GoComplex128>
```


```haxe
var _cosSC:stdgo.Slice<stdgo.math.cmplx.T__struct_0>
```


```haxe
var _cosh:stdgo.Slice<stdgo.GoComplex128>
```


```haxe
var _coshSC:stdgo.Slice<stdgo.math.cmplx.T__struct_0>
```


```haxe
var _eps:stdgo.GoFloat64
```


```haxe
var _exp:stdgo.Slice<stdgo.GoComplex128>
```


```haxe
var _expSC:stdgo.Slice<stdgo.math.cmplx.T__struct_0>
```


```haxe
var _hugeIn:stdgo.Slice<stdgo.GoComplex128>
```



huge values along the real axis for testing reducePi in Tan  

```haxe
var _inf:stdgo.GoFloat64
```



special cases conform to C99 standard appendix G.6 Complex arithmetic  

```haxe
var _isNaNSC:stdgo.Slice<Bool>
```


```haxe
var _log:stdgo.Slice<stdgo.GoComplex128>
```


```haxe
var _log10:stdgo.Slice<stdgo.GoComplex128>
```


```haxe
var _log10SC:stdgo.Slice<stdgo.math.cmplx.T__struct_0>
```


```haxe
var _logSC:stdgo.Slice<stdgo.math.cmplx.T__struct_0>
```


```haxe
var _nan:stdgo.GoFloat64
```



special cases conform to C99 standard appendix G.6 Complex arithmetic  

```haxe
var _polar:stdgo.Slice<stdgo.math.cmplx.T_ff>
```


```haxe
var _polarSC:stdgo.Slice<stdgo.math.cmplx.T_ff>
```


```haxe
var _pow:stdgo.Slice<stdgo.GoComplex128>
```


```haxe
var _powSC:stdgo.Slice<stdgo.GoComplex128>
```


```haxe
var _sin:stdgo.Slice<stdgo.GoComplex128>
```


```haxe
var _sinSC:stdgo.Slice<stdgo.math.cmplx.T__struct_0>
```


```haxe
var _sinh:stdgo.Slice<stdgo.GoComplex128>
```


```haxe
var _sinhSC:stdgo.Slice<stdgo.math.cmplx.T__struct_0>
```


```haxe
var _sqrt:stdgo.Slice<stdgo.GoComplex128>
```


```haxe
var _sqrtSC:stdgo.Slice<stdgo.math.cmplx.T__struct_0>
```


```haxe
var _tan:stdgo.Slice<stdgo.GoComplex128>
```


```haxe
var _tanHuge:stdgo.Slice<stdgo.GoComplex128>
```



Results for tanHuge\[i\] calculated with https://github.com/robpike/ivy
using 4096 bits of working precision.  

```haxe
var _tanSC:stdgo.Slice<stdgo.math.cmplx.T__struct_0>
```


```haxe
var _tanh:stdgo.Slice<stdgo.GoComplex128>
```


```haxe
var _tanhSC:stdgo.Slice<stdgo.math.cmplx.T__struct_0>
```


```haxe
var _vc:stdgo.Slice<stdgo.GoComplex128>
```


```haxe
var _vc26:stdgo.Slice<stdgo.GoComplex128>
```



The higher\-precision values in vc26 were used to derive the
input arguments vc \(see also comment below\). For reference
only \(do not delete\).  

```haxe
var _vcAbsSC:stdgo.Slice<stdgo.GoComplex128>
```


```haxe
var _vcConjSC:stdgo.Slice<stdgo.GoComplex128>
```


```haxe
var _vcIsNaNSC:stdgo.Slice<stdgo.GoComplex128>
```


```haxe
var _vcPolarSC:stdgo.Slice<stdgo.GoComplex128>
```


```haxe
var _vcPowSC:stdgo.Slice<stdgo.GoArray<stdgo.GoComplex128>>
```


```haxe
var _zero:stdgo.GoFloat64
```


# Functions


```haxe
import stdgo.math.cmplx.Cmplx
```


## function \_alike


```haxe
function _alike(_a:stdgo.GoFloat64, _b:stdgo.GoFloat64):Bool
```


[\(view code\)](<./Cmplx.hx#L1070>)


## function \_cAlike


```haxe
function _cAlike(_a:stdgo.GoComplex128, _b:stdgo.GoComplex128):Bool
```


[\(view code\)](<./Cmplx.hx#L1094>)


## function \_cSoclose


```haxe
function _cSoclose(_a:stdgo.GoComplex128, _b:stdgo.GoComplex128, _e:stdgo.GoFloat64):Bool
```


[\(view code\)](<./Cmplx.hx#L1088>)


## function \_cTolerance


```haxe
function _cTolerance(_a:stdgo.GoComplex128, _b:stdgo.GoComplex128, _e:stdgo.GoFloat64):Bool
```


[\(view code\)](<./Cmplx.hx#L1078>)


## function \_cVeryclose


```haxe
function _cVeryclose(_a:stdgo.GoComplex128, _b:stdgo.GoComplex128):Bool
```


[\(view code\)](<./Cmplx.hx#L1091>)


## function \_isExact


```haxe
function _isExact(_x:stdgo.GoFloat64):Bool
```


[\(view code\)](<./Cmplx.hx#L1108>)


## function \_reducePi


```haxe
function _reducePi(_x:stdgo.GoFloat64):stdgo.GoFloat64
```



reducePi reduces the input argument x to the range \(\-Pi/2, Pi/2\].
x must be greater than or equal to 0. For small arguments it
uses Cody\-Waite reduction in 3 float64 parts based on:
"Elementary Function Evaluation:  Algorithms and Implementation"
Jean\-Michel Muller, 1997.
For very large arguments it uses Payne\-Hanek range reduction based on:
"ARGUMENT REDUCTION FOR HUGE ARGUMENTS: Good to the Last Bit"
K. C. Ng et al, March 24, 1992.  

[\(view code\)](<./Cmplx.hx#L2445>)


## function \_sinhcosh


```haxe
function _sinhcosh(_x:stdgo.GoFloat64):{
	_1:stdgo.GoFloat64;
	_0:stdgo.GoFloat64;
}
```



calculate sinh and cosh.  

[\(view code\)](<./Cmplx.hx#L2328>)


## function \_tanSeries


```haxe
function _tanSeries(_z:stdgo.GoComplex128):stdgo.GoFloat64
```



Taylor series expansion for cosh\(2y\) \- cos\(2x\)  

[\(view code\)](<./Cmplx.hx#L2503>)


## function \_tolerance


```haxe
function _tolerance(_a:stdgo.GoFloat64, _b:stdgo.GoFloat64, _e:stdgo.GoFloat64):Bool
```



functions borrowed from pkg/math/all\_test.go  

[\(view code\)](<./Cmplx.hx#L1054>)


## function \_veryclose


```haxe
function _veryclose(_a:stdgo.GoFloat64, _b:stdgo.GoFloat64):Bool
```


[\(view code\)](<./Cmplx.hx#L1067>)


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
        stdgo.fmt.Fmt.printf(("%.1f" : stdgo.GoString), stdgo.Go.toInterface(stdgo.math.cmplx.Cmplx.abs(((3f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 4f64)))));
    }
```


</p>
</details>


[\(view code\)](<./Cmplx.hx#L914>)


## function acos


```haxe
function acos(_x:stdgo.GoComplex128):stdgo.GoComplex128
```



Acos returns the inverse cosine of x.  

[\(view code\)](<./Cmplx.hx#L991>)


## function acosh


```haxe
function acosh(_x:stdgo.GoComplex128):stdgo.GoComplex128
```



Acosh returns the inverse hyperbolic cosine of x.  

[\(view code\)](<./Cmplx.hx#L998>)


## function asin


```haxe
function asin(_x:stdgo.GoComplex128):stdgo.GoComplex128
```



Asin returns the inverse sine of x.  

[\(view code\)](<./Cmplx.hx#L920>)


## function asinh


```haxe
function asinh(_x:stdgo.GoComplex128):stdgo.GoComplex128
```



Asinh returns the inverse hyperbolic sine of x.  

[\(view code\)](<./Cmplx.hx#L957>)


## function atan


```haxe
function atan(_x:stdgo.GoComplex128):stdgo.GoComplex128
```



Atan returns the inverse tangent of x.  

[\(view code\)](<./Cmplx.hx#L1011>)


## function atanh


```haxe
function atanh(_x:stdgo.GoComplex128):stdgo.GoComplex128
```



Atanh returns the inverse hyperbolic tangent of x.  

[\(view code\)](<./Cmplx.hx#L1046>)


## function benchmarkAbs


```haxe
function benchmarkAbs(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Cmplx.hx#L1909>)


## function benchmarkAcos


```haxe
function benchmarkAcos(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Cmplx.hx#L1917>)


## function benchmarkAcosh


```haxe
function benchmarkAcosh(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Cmplx.hx#L1925>)


## function benchmarkAsin


```haxe
function benchmarkAsin(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Cmplx.hx#L1933>)


## function benchmarkAsinh


```haxe
function benchmarkAsinh(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Cmplx.hx#L1941>)


## function benchmarkAtan


```haxe
function benchmarkAtan(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Cmplx.hx#L1949>)


## function benchmarkAtanh


```haxe
function benchmarkAtanh(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Cmplx.hx#L1957>)


## function benchmarkConj


```haxe
function benchmarkConj(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Cmplx.hx#L1965>)


## function benchmarkCos


```haxe
function benchmarkCos(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Cmplx.hx#L1973>)


## function benchmarkCosh


```haxe
function benchmarkCosh(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Cmplx.hx#L1981>)


## function benchmarkExp


```haxe
function benchmarkExp(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Cmplx.hx#L1989>)


## function benchmarkLog


```haxe
function benchmarkLog(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Cmplx.hx#L1997>)


## function benchmarkLog10


```haxe
function benchmarkLog10(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Cmplx.hx#L2005>)


## function benchmarkPhase


```haxe
function benchmarkPhase(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Cmplx.hx#L2013>)


## function benchmarkPolar


```haxe
function benchmarkPolar(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Cmplx.hx#L2021>)


## function benchmarkPow


```haxe
function benchmarkPow(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Cmplx.hx#L2029>)


## function benchmarkRect


```haxe
function benchmarkRect(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Cmplx.hx#L2037>)


## function benchmarkSin


```haxe
function benchmarkSin(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Cmplx.hx#L2045>)


## function benchmarkSinh


```haxe
function benchmarkSinh(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Cmplx.hx#L2053>)


## function benchmarkSqrt


```haxe
function benchmarkSqrt(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Cmplx.hx#L2061>)


## function benchmarkTan


```haxe
function benchmarkTan(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Cmplx.hx#L2069>)


## function benchmarkTanh


```haxe
function benchmarkTanh(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Cmplx.hx#L2077>)


## function conj


```haxe
function conj(_x:stdgo.GoComplex128):stdgo.GoComplex128
```



Conj returns the complex conjugate of x.  

[\(view code\)](<./Cmplx.hx#L2088>)


## function cos


```haxe
function cos(_x:stdgo.GoComplex128):stdgo.GoComplex128
```



Cos returns the cosine of x.  

[\(view code\)](<./Cmplx.hx#L2284>)


## function cosh


```haxe
function cosh(_x:stdgo.GoComplex128):stdgo.GoComplex128
```



Cosh returns the hyperbolic cosine of x.  

[\(view code\)](<./Cmplx.hx#L2306>)


## function cot


```haxe
function cot(_x:stdgo.GoComplex128):stdgo.GoComplex128
```



Cot returns the cotangent of x.  

[\(view code\)](<./Cmplx.hx#L2543>)


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
        stdgo.fmt.Fmt.printf(("%.1f" : stdgo.GoString), stdgo.Go.toInterface(stdgo.math.cmplx.Cmplx.exp(((0f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 3.141592653589793f64))) + ((1f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 0f64))));
    }
```


</p>
</details>


[\(view code\)](<./Cmplx.hx#L2094>)


## function inf


```haxe
function inf():stdgo.GoComplex128
```



Inf returns a complex infinity, complex\(\+Inf, \+Inf\).  

[\(view code\)](<./Cmplx.hx#L2139>)


## function isInf


```haxe
function isInf(_x:stdgo.GoComplex128):Bool
```



IsInf reports whether either real\(x\) or imag\(x\) is an infinity.  

[\(view code\)](<./Cmplx.hx#L2130>)


## function isNaN


```haxe
function isNaN(_x:stdgo.GoComplex128):Bool
```



IsNaN reports whether either real\(x\) or imag\(x\) is NaN
and neither is an infinity.  

[\(view code\)](<./Cmplx.hx#L2147>)


## function log


```haxe
function log(_x:stdgo.GoComplex128):stdgo.GoComplex128
```



Log returns the natural logarithm of x.  

[\(view code\)](<./Cmplx.hx#L2165>)


## function log10


```haxe
function log10(_x:stdgo.GoComplex128):stdgo.GoComplex128
```



Log10 returns the decimal logarithm of x.  

[\(view code\)](<./Cmplx.hx#L2171>)


## function naN


```haxe
function naN():stdgo.GoComplex128
```



NaN returns a complex “not\-a\-number” value.  

[\(view code\)](<./Cmplx.hx#L2158>)


## function phase


```haxe
function phase(_x:stdgo.GoComplex128):stdgo.GoFloat64
```



Phase returns the phase \(also called the argument\) of x.
The returned value is in the range \[\-Pi, Pi\].  

[\(view code\)](<./Cmplx.hx#L2179>)


## function polar


```haxe
function polar(_x:stdgo.GoComplex128):{
	_1:stdgo.GoFloat64;
	_0:stdgo.GoFloat64;
}
```



Polar returns the absolute value r and phase θ of x,
such that x = r \* e\*\*θi.
The phase is in the range \[\-Pi, Pi\].  

### examplePolar


<details><summary></summary>
<p>


```haxe
function examplePolar():Void {
        var __tmp__ = stdgo.math.cmplx.Cmplx.polar(((0f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 2f64))), _r:stdgo.GoFloat64 = __tmp__._0, _theta:stdgo.GoFloat64 = __tmp__._1;
        stdgo.fmt.Fmt.printf(("r: %.1f, θ: %.1f*π" : stdgo.GoString), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_theta / (3.141592653589793 : stdgo.GoFloat64)));
    }
```


</p>
</details>


[\(view code\)](<./Cmplx.hx#L2187>)


## function pow


```haxe
function pow(_x:stdgo.GoComplex128, _y:stdgo.GoComplex128):stdgo.GoComplex128
```



Pow returns x\*\*y, the base\-x exponential of y.
For generalized compatibility with math.Pow:  

```
	Pow(0, ±0) returns 1+0i
	Pow(0, c) for real(c)<0 returns Inf+0i if imag(c) is zero, otherwise Inf+Inf i.
```
[\(view code\)](<./Cmplx.hx#L2198>)


## function rect


```haxe
function rect(_r:stdgo.GoFloat64, __952:stdgo.GoFloat64):stdgo.GoComplex128
```



Rect returns the complex number x with polar coordinates r, θ.  

[\(view code\)](<./Cmplx.hx#L2233>)


## function sin


```haxe
function sin(_x:stdgo.GoComplex128):stdgo.GoComplex128
```



Sin returns the sine of x.  

[\(view code\)](<./Cmplx.hx#L2240>)


## function sinh


```haxe
function sinh(_x:stdgo.GoComplex128):stdgo.GoComplex128
```



Sinh returns the hyperbolic sine of x.  

[\(view code\)](<./Cmplx.hx#L2262>)


## function sqrt


```haxe
function sqrt(_x:stdgo.GoComplex128):stdgo.GoComplex128
```



Sqrt returns the square root of x.
The result r is chosen so that real\(r\) ≥ 0 and imag\(r\) has the same sign as imag\(x\).  

[\(view code\)](<./Cmplx.hx#L2342>)


## function tan


```haxe
function tan(_x:stdgo.GoComplex128):stdgo.GoComplex128
```



Tan returns the tangent of x.  

[\(view code\)](<./Cmplx.hx#L2393>)


## function tanh


```haxe
function tanh(_x:stdgo.GoComplex128):stdgo.GoComplex128
```



Tanh returns the hyperbolic tangent of x.  

[\(view code\)](<./Cmplx.hx#L2417>)


## function testAbs


```haxe
function testAbs(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Cmplx.hx#L1111>)


## function testAcos


```haxe
function testAcos(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Cmplx.hx#L1135>)


## function testAcosh


```haxe
function testAcosh(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Cmplx.hx#L1173>)


## function testAsin


```haxe
function testAsin(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Cmplx.hx#L1211>)


## function testAsinh


```haxe
function testAsinh(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Cmplx.hx#L1258>)


## function testAtan


```haxe
function testAtan(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Cmplx.hx#L1305>)


## function testAtanh


```haxe
function testAtanh(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Cmplx.hx#L1352>)


## function testConj


```haxe
function testConj(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Cmplx.hx#L1399>)


## function testCos


```haxe
function testCos(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Cmplx.hx#L1423>)


## function testCosh


```haxe
function testCosh(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Cmplx.hx#L1462>)


## function testExp


```haxe
function testExp(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Cmplx.hx#L1501>)


## function testInfiniteLoopIntanSeries


```haxe
function testInfiniteLoopIntanSeries(_t:stdgo.Ref<stdgo.testing.T_>):Void
```



See issue 17577  

[\(view code\)](<./Cmplx.hx#L1900>)


## function testIsNaN


```haxe
function testIsNaN(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Cmplx.hx#L1531>)


## function testLog


```haxe
function testLog(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Cmplx.hx#L1544>)


## function testLog10


```haxe
function testLog10(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Cmplx.hx#L1582>)


## function testPolar


```haxe
function testPolar(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Cmplx.hx#L1612>)


## function testPow


```haxe
function testPow(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Cmplx.hx#L1636>)


## function testRect


```haxe
function testRect(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Cmplx.hx#L1679>)


## function testSin


```haxe
function testSin(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Cmplx.hx#L1703>)


## function testSinh


```haxe
function testSinh(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Cmplx.hx#L1742>)


## function testSqrt


```haxe
function testSqrt(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Cmplx.hx#L1781>)


## function testTan


```haxe
function testTan(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Cmplx.hx#L1819>)


## function testTanHuge


```haxe
function testTanHuge(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Cmplx.hx#L2117>)


## function testTanh


```haxe
function testTanh(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Cmplx.hx#L1858>)


# Typedefs


```haxe
import stdgo.math.cmplx.*
```


## typedef T\_\_struct\_0


```haxe
typedef T__struct_0 = {
	_want:stdgo.GoComplex128;
	_in:stdgo.GoComplex128;
};
```


