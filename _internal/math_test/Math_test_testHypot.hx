package _internal.math_test;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
function testHypot(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_internal.math_test.Math_test__vf._vf.length) : Bool), _i++, {
                var _a = (stdgo._internal.math.Math_abs.abs((((1e+200 : stdgo.GoFloat64) * _internal.math_test.Math_test__tanh._tanh[(_i : stdgo.GoInt)] : stdgo.GoFloat64) * stdgo._internal.math.Math_sqrt.sqrt((2 : stdgo.GoFloat64)) : stdgo.GoFloat64)) : stdgo.GoFloat64);
                {
                    var _f = (stdgo._internal.math.Math_hypot.hypot(((1e+200 : stdgo.GoFloat64) * _internal.math_test.Math_test__tanh._tanh[(_i : stdgo.GoInt)] : stdgo.GoFloat64), ((1e+200 : stdgo.GoFloat64) * _internal.math_test.Math_test__tanh._tanh[(_i : stdgo.GoInt)] : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (!_internal.math_test.Math_test__veryclose._veryclose(_a, _f)) {
                        _t.errorf(("Hypot(%g, %g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(((1e+200 : stdgo.GoFloat64) * _internal.math_test.Math_test__tanh._tanh[(_i : stdgo.GoInt)] : stdgo.GoFloat64)), stdgo.Go.toInterface(((1e+200 : stdgo.GoFloat64) * _internal.math_test.Math_test__tanh._tanh[(_i : stdgo.GoInt)] : stdgo.GoFloat64)), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_a));
                    };
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_internal.math_test.Math_test__vfhypotSC._vfhypotSC.length) : Bool), _i++, {
                {
                    var _f = (stdgo._internal.math.Math_hypot.hypot(_internal.math_test.Math_test__vfhypotSC._vfhypotSC[(_i : stdgo.GoInt)][(0 : stdgo.GoInt)], _internal.math_test.Math_test__vfhypotSC._vfhypotSC[(_i : stdgo.GoInt)][(1 : stdgo.GoInt)]) : stdgo.GoFloat64);
                    if (!_internal.math_test.Math_test__alike._alike(_internal.math_test.Math_test__hypotSC._hypotSC[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Hypot(%g, %g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_internal.math_test.Math_test__vfhypotSC._vfhypotSC[(_i : stdgo.GoInt)][(0 : stdgo.GoInt)]), stdgo.Go.toInterface(_internal.math_test.Math_test__vfhypotSC._vfhypotSC[(_i : stdgo.GoInt)][(1 : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_internal.math_test.Math_test__hypotSC._hypotSC[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
    }
