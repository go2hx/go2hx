package _internal.math_test;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
function testSqrt(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_internal.math_test.Math_test__vf._vf.length) : Bool), _i++, {
                var _a = (stdgo._internal.math.Math_abs.abs(_internal.math_test.Math_test__vf._vf[(_i : stdgo.GoInt)]) : stdgo.GoFloat64);
                {
                    var _f = (stdgo._internal.math.Math_sqrtGo.sqrtGo(_a) : stdgo.GoFloat64);
                    if (_internal.math_test.Math_test__sqrt._sqrt[(_i : stdgo.GoInt)] != (_f)) {
                        _t.errorf(("SqrtGo(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_internal.math_test.Math_test__sqrt._sqrt[(_i : stdgo.GoInt)]));
                    };
                };
                _a = stdgo._internal.math.Math_abs.abs(_internal.math_test.Math_test__vf._vf[(_i : stdgo.GoInt)]);
                {
                    var _f = (stdgo._internal.math.Math_sqrt.sqrt(_a) : stdgo.GoFloat64);
                    if (_internal.math_test.Math_test__sqrt._sqrt[(_i : stdgo.GoInt)] != (_f)) {
                        _t.errorf(("Sqrt(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_internal.math_test.Math_test__sqrt._sqrt[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_internal.math_test.Math_test__vfsqrtSC._vfsqrtSC.length) : Bool), _i++, {
                {
                    var _f = (stdgo._internal.math.Math_sqrtGo.sqrtGo(_internal.math_test.Math_test__vfsqrtSC._vfsqrtSC[(_i : stdgo.GoInt)]) : stdgo.GoFloat64);
                    if (!_internal.math_test.Math_test__alike._alike(_internal.math_test.Math_test__sqrtSC._sqrtSC[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("SqrtGo(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_internal.math_test.Math_test__vfsqrtSC._vfsqrtSC[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_internal.math_test.Math_test__sqrtSC._sqrtSC[(_i : stdgo.GoInt)]));
                    };
                };
                {
                    var _f = (stdgo._internal.math.Math_sqrt.sqrt(_internal.math_test.Math_test__vfsqrtSC._vfsqrtSC[(_i : stdgo.GoInt)]) : stdgo.GoFloat64);
                    if (!_internal.math_test.Math_test__alike._alike(_internal.math_test.Math_test__sqrtSC._sqrtSC[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Sqrt(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_internal.math_test.Math_test__vfsqrtSC._vfsqrtSC[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_internal.math_test.Math_test__sqrtSC._sqrtSC[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
    }
