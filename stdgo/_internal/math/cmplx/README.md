# Module: `stdgo._internal.math.cmplx`

[(view library index)](../../../stdgo.md)


# Overview



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

- [`function benchmarkAbs(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkabs>)

- [`function benchmarkAcos(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkacos>)

- [`function benchmarkAcosh(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkacosh>)

- [`function benchmarkAsin(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkasin>)

- [`function benchmarkAsinh(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkasinh>)

- [`function benchmarkAtan(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkatan>)

- [`function benchmarkAtanh(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkatanh>)

- [`function benchmarkConj(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkconj>)

- [`function benchmarkCos(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkcos>)

- [`function benchmarkCosh(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkcosh>)

- [`function benchmarkExp(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkexp>)

- [`function benchmarkLog(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarklog>)

- [`function benchmarkLog10(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarklog10>)

- [`function benchmarkPhase(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkphase>)

- [`function benchmarkPolar(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkpolar>)

- [`function benchmarkPow(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkpow>)

- [`function benchmarkRect(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkrect>)

- [`function benchmarkSin(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarksin>)

- [`function benchmarkSinh(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarksinh>)

- [`function benchmarkSqrt(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarksqrt>)

- [`function benchmarkTan(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarktan>)

- [`function benchmarkTanh(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarktanh>)

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

- [`function testAbs(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testabs>)

- [`function testAcos(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testacos>)

- [`function testAcosh(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testacosh>)

- [`function testAsin(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testasin>)

- [`function testAsinh(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testasinh>)

- [`function testAtan(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testatan>)

- [`function testAtanh(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testatanh>)

- [`function testConj(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testconj>)

- [`function testCos(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testcos>)

- [`function testCosh(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testcosh>)

- [`function testExp(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testexp>)

- [`function testInfiniteLoopIntanSeries(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testinfiniteloopintanseries>)

- [`function testIsNaN(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testisnan>)

- [`function testLog(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testlog>)

- [`function testLog10(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testlog10>)

- [`function testPolar(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testpolar>)

- [`function testPow(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testpow>)

- [`function testRect(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testrect>)

- [`function testSin(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testsin>)

- [`function testSinh(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testsinh>)

- [`function testSqrt(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testsqrt>)

- [`function testTan(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testtan>)

- [`function testTanHuge(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testtanhuge>)

- [`function testTanh(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testtanh>)

- [typedef T\_\_struct\_0](<#typedef-t__struct_0>)

# Examples


- [`exampleAbs`](<#exampleabs>)

- [`exampleExp`](<#exampleexp>)

- [`examplePolar`](<#examplepolar>)

# Variables


```haxe
import stdgo._internal.math.cmplx.Cmplx
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
var _acosSC:stdgo.Slice<stdgo._internal.math.cmplx.T__struct_0>
```


```haxe
var _acosh:stdgo.Slice<stdgo.GoComplex128>
```


```haxe
var _acoshSC:stdgo.Slice<stdgo._internal.math.cmplx.T__struct_0>
```


```haxe
var _asin:stdgo.Slice<stdgo.GoComplex128>
```


```haxe
var _asinSC:stdgo.Slice<stdgo._internal.math.cmplx.T__struct_0>
```


```haxe
var _asinh:stdgo.Slice<stdgo.GoComplex128>
```


```haxe
var _asinhSC:stdgo.Slice<stdgo._internal.math.cmplx.T__struct_0>
```


```haxe
var _atan:stdgo.Slice<stdgo.GoComplex128>
```


```haxe
var _atanSC:stdgo.Slice<stdgo._internal.math.cmplx.T__struct_0>
```


```haxe
var _atanh:stdgo.Slice<stdgo.GoComplex128>
```


```haxe
var _atanhSC:stdgo.Slice<stdgo._internal.math.cmplx.T__struct_0>
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
var _cosSC:stdgo.Slice<stdgo._internal.math.cmplx.T__struct_0>
```


```haxe
var _cosh:stdgo.Slice<stdgo.GoComplex128>
```


```haxe
var _coshSC:stdgo.Slice<stdgo._internal.math.cmplx.T__struct_0>
```


```haxe
var _eps:stdgo.GoFloat64
```


```haxe
var _exp:stdgo.Slice<stdgo.GoComplex128>
```


```haxe
var _expSC:stdgo.Slice<stdgo._internal.math.cmplx.T__struct_0>
```


```haxe
var _hugeIn:stdgo.Slice<stdgo.GoComplex128>
```


```haxe
var _inf:stdgo.GoFloat64
```


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
var _log10SC:stdgo.Slice<stdgo._internal.math.cmplx.T__struct_0>
```


```haxe
var _logSC:stdgo.Slice<stdgo._internal.math.cmplx.T__struct_0>
```


```haxe
var _nan:stdgo.GoFloat64
```


```haxe
var _polar:stdgo.Slice<stdgo._internal.math.cmplx.T_ff>
```


```haxe
var _polarSC:stdgo.Slice<stdgo._internal.math.cmplx.T_ff>
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
var _sinSC:stdgo.Slice<stdgo._internal.math.cmplx.T__struct_0>
```


```haxe
var _sinh:stdgo.Slice<stdgo.GoComplex128>
```


```haxe
var _sinhSC:stdgo.Slice<stdgo._internal.math.cmplx.T__struct_0>
```


```haxe
var _sqrt:stdgo.Slice<stdgo.GoComplex128>
```


```haxe
var _sqrtSC:stdgo.Slice<stdgo._internal.math.cmplx.T__struct_0>
```


```haxe
var _tan:stdgo.Slice<stdgo.GoComplex128>
```


```haxe
var _tanHuge:stdgo.Slice<stdgo.GoComplex128>
```


```haxe
var _tanSC:stdgo.Slice<stdgo._internal.math.cmplx.T__struct_0>
```


```haxe
var _tanh:stdgo.Slice<stdgo.GoComplex128>
```


```haxe
var _tanhSC:stdgo.Slice<stdgo._internal.math.cmplx.T__struct_0>
```


```haxe
var _vc:stdgo.Slice<stdgo.GoComplex128>
```


```haxe
var _vc26:stdgo.Slice<stdgo.GoComplex128>
```


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
import stdgo._internal.math.cmplx.Cmplx
```


## function \_alike


```haxe
function _alike(_a:stdgo.GoFloat64, _b:stdgo.GoFloat64):Bool
```


[\(view code\)](<./Cmplx.hx#L389>)


## function \_cAlike


```haxe
function _cAlike(_a:stdgo.GoComplex128, _b:stdgo.GoComplex128):Bool
```


[\(view code\)](<./Cmplx.hx#L413>)


## function \_cSoclose


```haxe
function _cSoclose(_a:stdgo.GoComplex128, _b:stdgo.GoComplex128, _e:stdgo.GoFloat64):Bool
```


[\(view code\)](<./Cmplx.hx#L407>)


## function \_cTolerance


```haxe
function _cTolerance(_a:stdgo.GoComplex128, _b:stdgo.GoComplex128, _e:stdgo.GoFloat64):Bool
```


[\(view code\)](<./Cmplx.hx#L397>)


## function \_cVeryclose


```haxe
function _cVeryclose(_a:stdgo.GoComplex128, _b:stdgo.GoComplex128):Bool
```


[\(view code\)](<./Cmplx.hx#L410>)


## function \_isExact


```haxe
function _isExact(_x:stdgo.GoFloat64):Bool
```


[\(view code\)](<./Cmplx.hx#L428>)


## function \_reducePi


```haxe
function _reducePi(_x:stdgo.GoFloat64):stdgo.GoFloat64
```


[\(view code\)](<./Cmplx.hx#L1700>)


## function \_sinhcosh


```haxe
function _sinhcosh(_x:stdgo.GoFloat64):{
	_1:stdgo.GoFloat64;
	_0:stdgo.GoFloat64;
}
```


[\(view code\)](<./Cmplx.hx#L1601>)


## function \_tanSeries


```haxe
function _tanSeries(_z:stdgo.GoComplex128):stdgo.GoFloat64
```


[\(view code\)](<./Cmplx.hx#L1756>)


## function \_tolerance


```haxe
function _tolerance(_a:stdgo.GoFloat64, _b:stdgo.GoFloat64, _e:stdgo.GoFloat64):Bool
```


[\(view code\)](<./Cmplx.hx#L373>)


## function \_veryclose


```haxe
function _veryclose(_a:stdgo.GoFloat64, _b:stdgo.GoFloat64):Bool
```


[\(view code\)](<./Cmplx.hx#L386>)


## function abs


```haxe
function abs(_x:stdgo.GoComplex128):stdgo.GoFloat64
```


### exampleAbs


<details><summary></summary>
<p>


```haxe
function exampleAbs():Void {
        stdgo._internal.fmt.Fmt.printf(("%.1f" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.cmplx.Cmplx.abs(((3f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 4f64)))));
    }
```


</p>
</details>


[\(view code\)](<./Cmplx.hx#L251>)


## function acos


```haxe
function acos(_x:stdgo.GoComplex128):stdgo.GoComplex128
```


[\(view code\)](<./Cmplx.hx#L321>)


## function acosh


```haxe
function acosh(_x:stdgo.GoComplex128):stdgo.GoComplex128
```


[\(view code\)](<./Cmplx.hx#L325>)


## function asin


```haxe
function asin(_x:stdgo.GoComplex128):stdgo.GoComplex128
```


[\(view code\)](<./Cmplx.hx#L254>)


## function asinh


```haxe
function asinh(_x:stdgo.GoComplex128):stdgo.GoComplex128
```


[\(view code\)](<./Cmplx.hx#L289>)


## function atan


```haxe
function atan(_x:stdgo.GoComplex128):stdgo.GoComplex128
```


[\(view code\)](<./Cmplx.hx#L335>)


## function atanh


```haxe
function atanh(_x:stdgo.GoComplex128):stdgo.GoComplex128
```


[\(view code\)](<./Cmplx.hx#L368>)


## function benchmarkAbs


```haxe
function benchmarkAbs(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Cmplx.hx#L1235>)


## function benchmarkAcos


```haxe
function benchmarkAcos(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Cmplx.hx#L1243>)


## function benchmarkAcosh


```haxe
function benchmarkAcosh(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Cmplx.hx#L1251>)


## function benchmarkAsin


```haxe
function benchmarkAsin(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Cmplx.hx#L1259>)


## function benchmarkAsinh


```haxe
function benchmarkAsinh(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Cmplx.hx#L1267>)


## function benchmarkAtan


```haxe
function benchmarkAtan(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Cmplx.hx#L1275>)


## function benchmarkAtanh


```haxe
function benchmarkAtanh(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Cmplx.hx#L1283>)


## function benchmarkConj


```haxe
function benchmarkConj(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Cmplx.hx#L1291>)


## function benchmarkCos


```haxe
function benchmarkCos(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Cmplx.hx#L1299>)


## function benchmarkCosh


```haxe
function benchmarkCosh(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Cmplx.hx#L1307>)


## function benchmarkExp


```haxe
function benchmarkExp(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Cmplx.hx#L1315>)


## function benchmarkLog


```haxe
function benchmarkLog(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Cmplx.hx#L1323>)


## function benchmarkLog10


```haxe
function benchmarkLog10(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Cmplx.hx#L1331>)


## function benchmarkPhase


```haxe
function benchmarkPhase(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Cmplx.hx#L1339>)


## function benchmarkPolar


```haxe
function benchmarkPolar(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Cmplx.hx#L1347>)


## function benchmarkPow


```haxe
function benchmarkPow(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Cmplx.hx#L1355>)


## function benchmarkRect


```haxe
function benchmarkRect(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Cmplx.hx#L1363>)


## function benchmarkSin


```haxe
function benchmarkSin(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Cmplx.hx#L1371>)


## function benchmarkSinh


```haxe
function benchmarkSinh(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Cmplx.hx#L1379>)


## function benchmarkSqrt


```haxe
function benchmarkSqrt(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Cmplx.hx#L1387>)


## function benchmarkTan


```haxe
function benchmarkTan(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Cmplx.hx#L1395>)


## function benchmarkTanh


```haxe
function benchmarkTanh(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Cmplx.hx#L1403>)


## function conj


```haxe
function conj(_x:stdgo.GoComplex128):stdgo.GoComplex128
```


[\(view code\)](<./Cmplx.hx#L1411>)


## function cos


```haxe
function cos(_x:stdgo.GoComplex128):stdgo.GoComplex128
```


[\(view code\)](<./Cmplx.hx#L1561>)


## function cosh


```haxe
function cosh(_x:stdgo.GoComplex128):stdgo.GoComplex128
```


[\(view code\)](<./Cmplx.hx#L1581>)


## function cot


```haxe
function cot(_x:stdgo.GoComplex128):stdgo.GoComplex128
```


[\(view code\)](<./Cmplx.hx#L1793>)


## function exp


```haxe
function exp(_x:stdgo.GoComplex128):stdgo.GoComplex128
```


### exampleExp


<details><summary></summary>
<p>


```haxe
function exampleExp():Void {
        stdgo._internal.fmt.Fmt.printf(("%.1f" : stdgo.GoString), stdgo.Go.toInterface((stdgo._internal.math.cmplx.Cmplx.exp(((0f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 3.141592653589793f64))) + ((1f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 0f64)) : stdgo.GoComplex128)));
    }
```


</p>
</details>


[\(view code\)](<./Cmplx.hx#L1414>)


## function inf


```haxe
function inf():stdgo.GoComplex128
```


[\(view code\)](<./Cmplx.hx#L1454>)


## function isInf


```haxe
function isInf(_x:stdgo.GoComplex128):Bool
```


[\(view code\)](<./Cmplx.hx#L1448>)


## function isNaN


```haxe
function isNaN(_x:stdgo.GoComplex128):Bool
```


[\(view code\)](<./Cmplx.hx#L1458>)


## function log


```haxe
function log(_x:stdgo.GoComplex128):stdgo.GoComplex128
```


[\(view code\)](<./Cmplx.hx#L1470>)


## function log10


```haxe
function log10(_x:stdgo.GoComplex128):stdgo.GoComplex128
```


[\(view code\)](<./Cmplx.hx#L1473>)


## function naN


```haxe
function naN():stdgo.GoComplex128
```


[\(view code\)](<./Cmplx.hx#L1466>)


## function phase


```haxe
function phase(_x:stdgo.GoComplex128):stdgo.GoFloat64
```


[\(view code\)](<./Cmplx.hx#L1477>)


## function polar


```haxe
function polar(_x:stdgo.GoComplex128):{
	_1:stdgo.GoFloat64;
	_0:stdgo.GoFloat64;
}
```


### examplePolar


<details><summary></summary>
<p>


```haxe
function examplePolar():Void {
        var __tmp__ = stdgo._internal.math.cmplx.Cmplx.polar(((0f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 2f64))), _r:stdgo.GoFloat64 = __tmp__._0, _theta:stdgo.GoFloat64 = __tmp__._1;
        stdgo._internal.fmt.Fmt.printf(("r: %.1f, θ: %.1f*π" : stdgo.GoString), stdgo.Go.toInterface(_r), stdgo.Go.toInterface((_theta / (3.141592653589793 : stdgo.GoFloat64) : stdgo.GoFloat64)));
    }
```


</p>
</details>


[\(view code\)](<./Cmplx.hx#L1480>)


## function pow


```haxe
function pow(_x:stdgo.GoComplex128, _y:stdgo.GoComplex128):stdgo.GoComplex128
```


[\(view code\)](<./Cmplx.hx#L1484>)


## function rect


```haxe
function rect(_r:stdgo.GoFloat64, __952:stdgo.GoFloat64):stdgo.GoComplex128
```


[\(view code\)](<./Cmplx.hx#L1517>)


## function sin


```haxe
function sin(_x:stdgo.GoComplex128):stdgo.GoComplex128
```


[\(view code\)](<./Cmplx.hx#L1521>)


## function sinh


```haxe
function sinh(_x:stdgo.GoComplex128):stdgo.GoComplex128
```


[\(view code\)](<./Cmplx.hx#L1541>)


## function sqrt


```haxe
function sqrt(_x:stdgo.GoComplex128):stdgo.GoComplex128
```


[\(view code\)](<./Cmplx.hx#L1611>)


## function tan


```haxe
function tan(_x:stdgo.GoComplex128):stdgo.GoComplex128
```


[\(view code\)](<./Cmplx.hx#L1659>)


## function tanh


```haxe
function tanh(_x:stdgo.GoComplex128):stdgo.GoComplex128
```


[\(view code\)](<./Cmplx.hx#L1681>)


## function testAbs


```haxe
function testAbs(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Cmplx.hx#L431>)


## function testAcos


```haxe
function testAcos(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Cmplx.hx#L455>)


## function testAcosh


```haxe
function testAcosh(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Cmplx.hx#L494>)


## function testAsin


```haxe
function testAsin(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Cmplx.hx#L533>)


## function testAsinh


```haxe
function testAsinh(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Cmplx.hx#L581>)


## function testAtan


```haxe
function testAtan(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Cmplx.hx#L629>)


## function testAtanh


```haxe
function testAtanh(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Cmplx.hx#L677>)


## function testConj


```haxe
function testConj(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Cmplx.hx#L725>)


## function testCos


```haxe
function testCos(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Cmplx.hx#L749>)


## function testCosh


```haxe
function testCosh(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Cmplx.hx#L788>)


## function testExp


```haxe
function testExp(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Cmplx.hx#L827>)


## function testInfiniteLoopIntanSeries


```haxe
function testInfiniteLoopIntanSeries(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Cmplx.hx#L1226>)


## function testIsNaN


```haxe
function testIsNaN(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Cmplx.hx#L857>)


## function testLog


```haxe
function testLog(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Cmplx.hx#L870>)


## function testLog10


```haxe
function testLog10(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Cmplx.hx#L909>)


## function testPolar


```haxe
function testPolar(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Cmplx.hx#L939>)


## function testPow


```haxe
function testPow(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Cmplx.hx#L963>)


## function testRect


```haxe
function testRect(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Cmplx.hx#L1007>)


## function testSin


```haxe
function testSin(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Cmplx.hx#L1031>)


## function testSinh


```haxe
function testSinh(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Cmplx.hx#L1070>)


## function testSqrt


```haxe
function testSqrt(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Cmplx.hx#L1109>)


## function testTan


```haxe
function testTan(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Cmplx.hx#L1148>)


## function testTanHuge


```haxe
function testTanHuge(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Cmplx.hx#L1438>)


## function testTanh


```haxe
function testTanh(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Cmplx.hx#L1187>)


# Typedefs


```haxe
import stdgo._internal.math.cmplx.*
```


## typedef T\_\_struct\_0


```haxe
typedef T__struct_0 = {
	_want:stdgo.GoComplex128;
	_in:stdgo.GoComplex128;
};
```


