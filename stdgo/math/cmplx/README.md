# Module: `stdgo.math.cmplx`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [Variables](<#variables>)

- [`function _alike(_a:stdgo.GoFloat64, _b:stdgo.GoFloat64):Void`](<#function-_alike>)

- [`function _cAlike(_a:stdgo.GoComplex128, _b:stdgo.GoComplex128):Void`](<#function-_calike>)

- [`function _cSoclose(_a:stdgo.GoComplex128, _b:stdgo.GoComplex128, _e:stdgo.GoFloat64):Void`](<#function-_csoclose>)

- [`function _cTolerance(_a:stdgo.GoComplex128, _b:stdgo.GoComplex128, _e:stdgo.GoFloat64):Void`](<#function-_ctolerance>)

- [`function _cVeryclose(_a:stdgo.GoComplex128, _b:stdgo.GoComplex128):Void`](<#function-_cveryclose>)

- [`function _isExact(_x:stdgo.GoFloat64):Void`](<#function-_isexact>)

- [`function _reducePi(_x:stdgo.GoFloat64):Void`](<#function-_reducepi>)

- [`function _sinhcosh(_x:stdgo.GoFloat64):Void`](<#function-_sinhcosh>)

- [`function _tanSeries(_z:stdgo.GoComplex128):Void`](<#function-_tanseries>)

- [`function _tolerance(_a:stdgo.GoFloat64, _b:stdgo.GoFloat64, _e:stdgo.GoFloat64):Void`](<#function-_tolerance>)

- [`function _veryclose(_a:stdgo.GoFloat64, _b:stdgo.GoFloat64):Void`](<#function-_veryclose>)

- [`function abs(_x:stdgo.GoComplex128):Void`](<#function-abs>)

- [`function acos(_x:stdgo.GoComplex128):Void`](<#function-acos>)

- [`function acosh(_x:stdgo.GoComplex128):Void`](<#function-acosh>)

- [`function asin(_x:stdgo.GoComplex128):Void`](<#function-asin>)

- [`function asinh(_x:stdgo.GoComplex128):Void`](<#function-asinh>)

- [`function atan(_x:stdgo.GoComplex128):Void`](<#function-atan>)

- [`function atanh(_x:stdgo.GoComplex128):Void`](<#function-atanh>)

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

- [`function conj(_x:stdgo.GoComplex128):Void`](<#function-conj>)

- [`function cos(_x:stdgo.GoComplex128):Void`](<#function-cos>)

- [`function cosh(_x:stdgo.GoComplex128):Void`](<#function-cosh>)

- [`function cot(_x:stdgo.GoComplex128):Void`](<#function-cot>)

- [`function exp(_x:stdgo.GoComplex128):Void`](<#function-exp>)

- [`function inf():Void`](<#function-inf>)

- [`function isInf(_x:stdgo.GoComplex128):Void`](<#function-isinf>)

- [`function isNaN(_x:stdgo.GoComplex128):Void`](<#function-isnan>)

- [`function log(_x:stdgo.GoComplex128):Void`](<#function-log>)

- [`function log10(_x:stdgo.GoComplex128):Void`](<#function-log10>)

- [`function naN():Void`](<#function-nan>)

- [`function phase(_x:stdgo.GoComplex128):Void`](<#function-phase>)

- [`function polar(_x:stdgo.GoComplex128):Void`](<#function-polar>)

- [`function pow(_x:stdgo.GoComplex128, _y:stdgo.GoComplex128):Void`](<#function-pow>)

- [`function rect(_r:stdgo.GoFloat64, __952:stdgo.GoFloat64):Void`](<#function-rect>)

- [`function sin(_x:stdgo.GoComplex128):Void`](<#function-sin>)

- [`function sinh(_x:stdgo.GoComplex128):Void`](<#function-sinh>)

- [`function sqrt(_x:stdgo.GoComplex128):Void`](<#function-sqrt>)

- [`function tan(_x:stdgo.GoComplex128):Void`](<#function-tan>)

- [`function tanh(_x:stdgo.GoComplex128):Void`](<#function-tanh>)

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

- [typedef T\_\_struct\_0\_asInterface](<#typedef-t__struct_0_asinterface>)

- [typedef T\_\_struct\_0\_static\_extension](<#typedef-t__struct_0_static_extension>)

- [typedef T\_ff](<#typedef-t_ff>)

# Variables


```haxe
import stdgo.math.cmplx.Cmplx
```


```haxe
var __go2hxdoc__package:Dynamic
```


```haxe
var _abs:Dynamic
```


```haxe
var _absSC:Dynamic
```


```haxe
var _acos:Dynamic
```


```haxe
var _acosSC:Dynamic
```


```haxe
var _acosh:Dynamic
```


```haxe
var _acoshSC:Dynamic
```


```haxe
var _asin:Dynamic
```


```haxe
var _asinSC:Dynamic
```


```haxe
var _asinh:Dynamic
```


```haxe
var _asinhSC:Dynamic
```


```haxe
var _atan:Dynamic
```


```haxe
var _atanSC:Dynamic
```


```haxe
var _atanh:Dynamic
```


```haxe
var _atanhSC:Dynamic
```


```haxe
var _branchPoints:Dynamic
```


```haxe
var _conj:Dynamic
```


```haxe
var _conjSC:Dynamic
```


```haxe
var _cos:Dynamic
```


```haxe
var _cosSC:Dynamic
```


```haxe
var _cosh:Dynamic
```


```haxe
var _coshSC:Dynamic
```


```haxe
var _eps:Dynamic
```


```haxe
var _exp:Dynamic
```


```haxe
var _expSC:Dynamic
```


```haxe
var _hugeIn:Dynamic
```


```haxe
var _inf:Dynamic
```


```haxe
var _isNaNSC:Dynamic
```


```haxe
var _log:Dynamic
```


```haxe
var _log10:Dynamic
```


```haxe
var _log10SC:Dynamic
```


```haxe
var _logSC:Dynamic
```


```haxe
var _nan:Dynamic
```


```haxe
var _polar:Dynamic
```


```haxe
var _polarSC:Dynamic
```


```haxe
var _pow:Dynamic
```


```haxe
var _powSC:Dynamic
```


```haxe
var _sin:Dynamic
```


```haxe
var _sinSC:Dynamic
```


```haxe
var _sinh:Dynamic
```


```haxe
var _sinhSC:Dynamic
```


```haxe
var _sqrt:Dynamic
```


```haxe
var _sqrtSC:Dynamic
```


```haxe
var _tan:Dynamic
```


```haxe
var _tanHuge:Dynamic
```


```haxe
var _tanSC:Dynamic
```


```haxe
var _tanh:Dynamic
```


```haxe
var _tanhSC:Dynamic
```


```haxe
var _vc:Dynamic
```


```haxe
var _vc26:Dynamic
```


```haxe
var _vcAbsSC:Dynamic
```


```haxe
var _vcConjSC:Dynamic
```


```haxe
var _vcIsNaNSC:Dynamic
```


```haxe
var _vcPolarSC:Dynamic
```


```haxe
var _vcPowSC:Dynamic
```


```haxe
var _zero:Dynamic
```


# Functions


```haxe
import stdgo.math.cmplx.Cmplx
```


## function \_alike


```haxe
function _alike(_a:stdgo.GoFloat64, _b:stdgo.GoFloat64):Void
```


[\(view code\)](<./Cmplx.hx#L71>)


## function \_cAlike


```haxe
function _cAlike(_a:stdgo.GoComplex128, _b:stdgo.GoComplex128):Void
```


[\(view code\)](<./Cmplx.hx#L75>)


## function \_cSoclose


```haxe
function _cSoclose(_a:stdgo.GoComplex128, _b:stdgo.GoComplex128, _e:stdgo.GoFloat64):Void
```


[\(view code\)](<./Cmplx.hx#L73>)


## function \_cTolerance


```haxe
function _cTolerance(_a:stdgo.GoComplex128, _b:stdgo.GoComplex128, _e:stdgo.GoFloat64):Void
```


[\(view code\)](<./Cmplx.hx#L72>)


## function \_cVeryclose


```haxe
function _cVeryclose(_a:stdgo.GoComplex128, _b:stdgo.GoComplex128):Void
```


[\(view code\)](<./Cmplx.hx#L74>)


## function \_isExact


```haxe
function _isExact(_x:stdgo.GoFloat64):Void
```


[\(view code\)](<./Cmplx.hx#L76>)


## function \_reducePi


```haxe
function _reducePi(_x:stdgo.GoFloat64):Void
```


[\(view code\)](<./Cmplx.hx#L143>)


## function \_sinhcosh


```haxe
function _sinhcosh(_x:stdgo.GoFloat64):Void
```


[\(view code\)](<./Cmplx.hx#L139>)


## function \_tanSeries


```haxe
function _tanSeries(_z:stdgo.GoComplex128):Void
```


[\(view code\)](<./Cmplx.hx#L144>)


## function \_tolerance


```haxe
function _tolerance(_a:stdgo.GoFloat64, _b:stdgo.GoFloat64, _e:stdgo.GoFloat64):Void
```


[\(view code\)](<./Cmplx.hx#L69>)


## function \_veryclose


```haxe
function _veryclose(_a:stdgo.GoFloat64, _b:stdgo.GoFloat64):Void
```


[\(view code\)](<./Cmplx.hx#L70>)


## function abs


```haxe
function abs(_x:stdgo.GoComplex128):Void
```


[\(view code\)](<./Cmplx.hx#L62>)


## function acos


```haxe
function acos(_x:stdgo.GoComplex128):Void
```


[\(view code\)](<./Cmplx.hx#L65>)


## function acosh


```haxe
function acosh(_x:stdgo.GoComplex128):Void
```


[\(view code\)](<./Cmplx.hx#L66>)


## function asin


```haxe
function asin(_x:stdgo.GoComplex128):Void
```


[\(view code\)](<./Cmplx.hx#L63>)


## function asinh


```haxe
function asinh(_x:stdgo.GoComplex128):Void
```


[\(view code\)](<./Cmplx.hx#L64>)


## function atan


```haxe
function atan(_x:stdgo.GoComplex128):Void
```


[\(view code\)](<./Cmplx.hx#L67>)


## function atanh


```haxe
function atanh(_x:stdgo.GoComplex128):Void
```


[\(view code\)](<./Cmplx.hx#L68>)


## function benchmarkAbs


```haxe
function benchmarkAbs(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Cmplx.hx#L100>)


## function benchmarkAcos


```haxe
function benchmarkAcos(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Cmplx.hx#L101>)


## function benchmarkAcosh


```haxe
function benchmarkAcosh(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Cmplx.hx#L102>)


## function benchmarkAsin


```haxe
function benchmarkAsin(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Cmplx.hx#L103>)


## function benchmarkAsinh


```haxe
function benchmarkAsinh(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Cmplx.hx#L104>)


## function benchmarkAtan


```haxe
function benchmarkAtan(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Cmplx.hx#L105>)


## function benchmarkAtanh


```haxe
function benchmarkAtanh(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Cmplx.hx#L106>)


## function benchmarkConj


```haxe
function benchmarkConj(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Cmplx.hx#L107>)


## function benchmarkCos


```haxe
function benchmarkCos(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Cmplx.hx#L108>)


## function benchmarkCosh


```haxe
function benchmarkCosh(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Cmplx.hx#L109>)


## function benchmarkExp


```haxe
function benchmarkExp(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Cmplx.hx#L110>)


## function benchmarkLog


```haxe
function benchmarkLog(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Cmplx.hx#L111>)


## function benchmarkLog10


```haxe
function benchmarkLog10(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Cmplx.hx#L112>)


## function benchmarkPhase


```haxe
function benchmarkPhase(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Cmplx.hx#L113>)


## function benchmarkPolar


```haxe
function benchmarkPolar(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Cmplx.hx#L114>)


## function benchmarkPow


```haxe
function benchmarkPow(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Cmplx.hx#L115>)


## function benchmarkRect


```haxe
function benchmarkRect(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Cmplx.hx#L116>)


## function benchmarkSin


```haxe
function benchmarkSin(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Cmplx.hx#L117>)


## function benchmarkSinh


```haxe
function benchmarkSinh(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Cmplx.hx#L118>)


## function benchmarkSqrt


```haxe
function benchmarkSqrt(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Cmplx.hx#L119>)


## function benchmarkTan


```haxe
function benchmarkTan(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Cmplx.hx#L120>)


## function benchmarkTanh


```haxe
function benchmarkTanh(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Cmplx.hx#L121>)


## function conj


```haxe
function conj(_x:stdgo.GoComplex128):Void
```


[\(view code\)](<./Cmplx.hx#L122>)


## function cos


```haxe
function cos(_x:stdgo.GoComplex128):Void
```


[\(view code\)](<./Cmplx.hx#L137>)


## function cosh


```haxe
function cosh(_x:stdgo.GoComplex128):Void
```


[\(view code\)](<./Cmplx.hx#L138>)


## function cot


```haxe
function cot(_x:stdgo.GoComplex128):Void
```


[\(view code\)](<./Cmplx.hx#L145>)


## function exp


```haxe
function exp(_x:stdgo.GoComplex128):Void
```


[\(view code\)](<./Cmplx.hx#L123>)


## function inf


```haxe
function inf():Void
```


[\(view code\)](<./Cmplx.hx#L126>)


## function isInf


```haxe
function isInf(_x:stdgo.GoComplex128):Void
```


[\(view code\)](<./Cmplx.hx#L125>)


## function isNaN


```haxe
function isNaN(_x:stdgo.GoComplex128):Void
```


[\(view code\)](<./Cmplx.hx#L127>)


## function log


```haxe
function log(_x:stdgo.GoComplex128):Void
```


[\(view code\)](<./Cmplx.hx#L129>)


## function log10


```haxe
function log10(_x:stdgo.GoComplex128):Void
```


[\(view code\)](<./Cmplx.hx#L130>)


## function naN


```haxe
function naN():Void
```


[\(view code\)](<./Cmplx.hx#L128>)


## function phase


```haxe
function phase(_x:stdgo.GoComplex128):Void
```


[\(view code\)](<./Cmplx.hx#L131>)


## function polar


```haxe
function polar(_x:stdgo.GoComplex128):Void
```


[\(view code\)](<./Cmplx.hx#L132>)


## function pow


```haxe
function pow(_x:stdgo.GoComplex128, _y:stdgo.GoComplex128):Void
```


[\(view code\)](<./Cmplx.hx#L133>)


## function rect


```haxe
function rect(_r:stdgo.GoFloat64, __952:stdgo.GoFloat64):Void
```


[\(view code\)](<./Cmplx.hx#L134>)


## function sin


```haxe
function sin(_x:stdgo.GoComplex128):Void
```


[\(view code\)](<./Cmplx.hx#L135>)


## function sinh


```haxe
function sinh(_x:stdgo.GoComplex128):Void
```


[\(view code\)](<./Cmplx.hx#L136>)


## function sqrt


```haxe
function sqrt(_x:stdgo.GoComplex128):Void
```


[\(view code\)](<./Cmplx.hx#L140>)


## function tan


```haxe
function tan(_x:stdgo.GoComplex128):Void
```


[\(view code\)](<./Cmplx.hx#L141>)


## function tanh


```haxe
function tanh(_x:stdgo.GoComplex128):Void
```


[\(view code\)](<./Cmplx.hx#L142>)


## function testAbs


```haxe
function testAbs(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Cmplx.hx#L77>)


## function testAcos


```haxe
function testAcos(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Cmplx.hx#L78>)


## function testAcosh


```haxe
function testAcosh(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Cmplx.hx#L79>)


## function testAsin


```haxe
function testAsin(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Cmplx.hx#L80>)


## function testAsinh


```haxe
function testAsinh(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Cmplx.hx#L81>)


## function testAtan


```haxe
function testAtan(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Cmplx.hx#L82>)


## function testAtanh


```haxe
function testAtanh(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Cmplx.hx#L83>)


## function testConj


```haxe
function testConj(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Cmplx.hx#L84>)


## function testCos


```haxe
function testCos(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Cmplx.hx#L85>)


## function testCosh


```haxe
function testCosh(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Cmplx.hx#L86>)


## function testExp


```haxe
function testExp(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Cmplx.hx#L87>)


## function testInfiniteLoopIntanSeries


```haxe
function testInfiniteLoopIntanSeries(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Cmplx.hx#L99>)


## function testIsNaN


```haxe
function testIsNaN(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Cmplx.hx#L88>)


## function testLog


```haxe
function testLog(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Cmplx.hx#L89>)


## function testLog10


```haxe
function testLog10(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Cmplx.hx#L90>)


## function testPolar


```haxe
function testPolar(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Cmplx.hx#L91>)


## function testPow


```haxe
function testPow(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Cmplx.hx#L92>)


## function testRect


```haxe
function testRect(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Cmplx.hx#L93>)


## function testSin


```haxe
function testSin(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Cmplx.hx#L94>)


## function testSinh


```haxe
function testSinh(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Cmplx.hx#L95>)


## function testSqrt


```haxe
function testSqrt(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Cmplx.hx#L96>)


## function testTan


```haxe
function testTan(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Cmplx.hx#L97>)


## function testTanHuge


```haxe
function testTanHuge(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Cmplx.hx#L124>)


## function testTanh


```haxe
function testTanh(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Cmplx.hx#L98>)


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


