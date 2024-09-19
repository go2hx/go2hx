package _internal.math_test;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
function testTrigReduce(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _inputs = (new stdgo.Slice<stdgo.GoFloat64>((_internal.math_test.Math_test__vf._vf.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
        stdgo.Go.copySlice(_inputs, _internal.math_test.Math_test__vf._vf);
        var _large = (314159.26535897935 : stdgo.GoFloat64);
        for (__0 => _v in _internal.math_test.Math_test__vf._vf) {
            _inputs = (_inputs.__append__((_v + _large : stdgo.GoFloat64)));
        };
        _inputs = (_inputs.__append__((3.141592653589793 : stdgo.GoFloat64), stdgo._internal.math.Math_nextafter.nextafter((5.36870912e+08 : stdgo.GoFloat64), (0 : stdgo.GoFloat64))));
        for (__1 => _x in _inputs) {
            var __tmp__ = stdgo._internal.math.Math_trigReduce.trigReduce(_x), _j:stdgo.GoUInt64 = __tmp__._0, _z:stdgo.GoFloat64 = __tmp__._1;
            var _xred = (((_j : stdgo.GoFloat64) * (0.7853981633974483 : stdgo.GoFloat64) : stdgo.GoFloat64) + _z : stdgo.GoFloat64);
            {
                var __0 = (stdgo._internal.math.Math_sin.sin(_x) : stdgo.GoFloat64), __1 = (stdgo._internal.math.Math_sin.sin(_xred) : stdgo.GoFloat64);
var _fred = __1, _f = __0;
                if (!_internal.math_test.Math_test__close._close(_f, _fred)) {
                    _t.errorf(("Sin(trigReduce(%g)) != Sin(%g), got %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_fred), stdgo.Go.toInterface(_f));
                };
            };
            {
                var __0 = (stdgo._internal.math.Math_cos.cos(_x) : stdgo.GoFloat64), __1 = (stdgo._internal.math.Math_cos.cos(_xred) : stdgo.GoFloat64);
var _fred = __1, _f = __0;
                if (!_internal.math_test.Math_test__close._close(_f, _fred)) {
                    _t.errorf(("Cos(trigReduce(%g)) != Cos(%g), got %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_fred), stdgo.Go.toInterface(_f));
                };
            };
            {
                var __0 = (stdgo._internal.math.Math_tan.tan(_x) : stdgo.GoFloat64), __1 = (stdgo._internal.math.Math_tan.tan(_xred) : stdgo.GoFloat64);
var _fred = __1, _f = __0;
                if (!_internal.math_test.Math_test__close._close(_f, _fred)) {
                    _t.errorf((" Tan(trigReduce(%g)) != Tan(%g), got %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_fred), stdgo.Go.toInterface(_f));
                };
            };
            var __tmp__ = stdgo._internal.math.Math_sincos.sincos(_x), _f:stdgo.GoFloat64 = __tmp__._0, _g:stdgo.GoFloat64 = __tmp__._1;
            var __tmp__ = stdgo._internal.math.Math_sincos.sincos(_xred), _fred:stdgo.GoFloat64 = __tmp__._0, _gred:stdgo.GoFloat64 = __tmp__._1;
            if ((!_internal.math_test.Math_test__close._close(_f, _fred) || !_internal.math_test.Math_test__close._close(_g, _gred) : Bool)) {
                _t.errorf((" Sincos(trigReduce(%g)) != Sincos(%g), got %g, %g, want %g, %g" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_fred), stdgo.Go.toInterface(_gred), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_g));
            };
        };
    }
