package stdgo.math.cmplx;
@:invalid var __go2hxdoc__package : Dynamic;
@:invalid var _vc26 : Dynamic;
@:invalid var _vc : Dynamic;
@:invalid var _abs : Dynamic;
@:invalid var _acos : Dynamic;
@:invalid var _acosh : Dynamic;
@:invalid var _asin : Dynamic;
@:invalid var _asinh : Dynamic;
@:invalid var _atan : Dynamic;
@:invalid var _atanh : Dynamic;
@:invalid var _conj : Dynamic;
@:invalid var _cos : Dynamic;
@:invalid var _cosh : Dynamic;
@:invalid var _exp : Dynamic;
@:invalid var _log : Dynamic;
@:invalid var _log10 : Dynamic;
@:invalid var _polar : Dynamic;
@:invalid var _pow : Dynamic;
@:invalid var _sin : Dynamic;
@:invalid var _sinh : Dynamic;
@:invalid var _sqrt : Dynamic;
@:invalid var _tan : Dynamic;
@:invalid var _tanh : Dynamic;
@:invalid var _hugeIn : Dynamic;
@:invalid var _tanHuge : Dynamic;
@:invalid var _inf : Dynamic;
@:invalid var _nan : Dynamic;
@:invalid var _vcAbsSC : Dynamic;
@:invalid var _absSC : Dynamic;
@:invalid var _vcConjSC : Dynamic;
@:invalid var _conjSC : Dynamic;
@:invalid var _vcIsNaNSC : Dynamic;
@:invalid var _isNaNSC : Dynamic;
@:invalid var _vcPolarSC : Dynamic;
@:invalid var _polarSC : Dynamic;
@:invalid var _vcPowSC : Dynamic;
@:invalid var _powSC : Dynamic;
@:invalid var _zero : Dynamic;
@:invalid var _acosSC : Dynamic;
@:invalid var _acoshSC : Dynamic;
@:invalid var _asinSC : Dynamic;
@:invalid var _asinhSC : Dynamic;
@:invalid var _atanSC : Dynamic;
@:invalid var _atanhSC : Dynamic;
@:invalid var _cosSC : Dynamic;
@:invalid var _coshSC : Dynamic;
@:invalid var _expSC : Dynamic;
@:invalid var _logSC : Dynamic;
@:invalid var _log10SC : Dynamic;
@:invalid var _sinSC : Dynamic;
@:invalid var _sinhSC : Dynamic;
@:invalid var _sqrtSC : Dynamic;
@:invalid var _tanSC : Dynamic;
@:invalid var _tanhSC : Dynamic;
@:invalid var _eps : Dynamic;
@:invalid var _branchPoints : Dynamic;
@:invalid typedef T_ff = Dynamic;
@:invalid typedef T__struct_0_asInterface = Dynamic;
@:invalid typedef T__struct_0_static_extension = Dynamic;
typedef T__struct_0 = stdgo._internal.math.cmplx.Cmplx.T__struct_0;
function abs(_x:stdgo.GoComplex128):Void {}
function asin(_x:stdgo.GoComplex128):Void {}
function asinh(_x:stdgo.GoComplex128):Void {}
function acos(_x:stdgo.GoComplex128):Void {}
function acosh(_x:stdgo.GoComplex128):Void {}
function atan(_x:stdgo.GoComplex128):Void {}
function atanh(_x:stdgo.GoComplex128):Void {}
function _tolerance(_a:stdgo.GoFloat64, _b:stdgo.GoFloat64, _e:stdgo.GoFloat64):Void {}
function _veryclose(_a:stdgo.GoFloat64, _b:stdgo.GoFloat64):Void {}
function _alike(_a:stdgo.GoFloat64, _b:stdgo.GoFloat64):Void {}
function _cTolerance(_a:stdgo.GoComplex128, _b:stdgo.GoComplex128, _e:stdgo.GoFloat64):Void {}
function _cSoclose(_a:stdgo.GoComplex128, _b:stdgo.GoComplex128, _e:stdgo.GoFloat64):Void {}
function _cVeryclose(_a:stdgo.GoComplex128, _b:stdgo.GoComplex128):Void {}
function _cAlike(_a:stdgo.GoComplex128, _b:stdgo.GoComplex128):Void {}
function _isExact(_x:stdgo.GoFloat64):Void {}
function testAbs(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testAcos(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testAcosh(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testAsin(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testAsinh(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testAtan(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testAtanh(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testConj(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testCos(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testCosh(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testExp(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testIsNaN(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testLog(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testLog10(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testPolar(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testPow(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testRect(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testSin(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testSinh(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testSqrt(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testTan(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testTanh(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testInfiniteLoopIntanSeries(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function benchmarkAbs(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkAcos(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkAcosh(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkAsin(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkAsinh(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkAtan(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkAtanh(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkConj(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkCos(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkCosh(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkExp(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkLog(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkLog10(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkPhase(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkPolar(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkPow(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkRect(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkSin(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkSinh(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkSqrt(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkTan(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkTanh(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function conj(_x:stdgo.GoComplex128):Void {}
function exp(_x:stdgo.GoComplex128):Void {}
function testTanHuge(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function isInf(_x:stdgo.GoComplex128):Void {}
function inf():Void {}
function isNaN(_x:stdgo.GoComplex128):Void {}
function naN():Void {}
function log(_x:stdgo.GoComplex128):Void {}
function log10(_x:stdgo.GoComplex128):Void {}
function phase(_x:stdgo.GoComplex128):Void {}
function polar(_x:stdgo.GoComplex128):Void {}
function pow(_x:stdgo.GoComplex128, _y:stdgo.GoComplex128):Void {}
function rect(_r:stdgo.GoFloat64, __952:stdgo.GoFloat64):Void {}
function sin(_x:stdgo.GoComplex128):Void {}
function sinh(_x:stdgo.GoComplex128):Void {}
function cos(_x:stdgo.GoComplex128):Void {}
function cosh(_x:stdgo.GoComplex128):Void {}
function _sinhcosh(_x:stdgo.GoFloat64):Void {}
function sqrt(_x:stdgo.GoComplex128):Void {}
function tan(_x:stdgo.GoComplex128):Void {}
function tanh(_x:stdgo.GoComplex128):Void {}
function _reducePi(_x:stdgo.GoFloat64):Void {}
function _tanSeries(_z:stdgo.GoComplex128):Void {}
function cot(_x:stdgo.GoComplex128):Void {}
