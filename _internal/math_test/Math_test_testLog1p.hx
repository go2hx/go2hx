package _internal.math_test;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
function testLog1p(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_internal.math_test.Math_test__vf._vf.length) : Bool), _i++, {
                var _a = (_internal.math_test.Math_test__vf._vf[(_i : stdgo.GoInt)] / (100 : stdgo.GoFloat64) : stdgo.GoFloat64);
                {
                    var _f = (stdgo._internal.math.Math_log1p.log1p(_a) : stdgo.GoFloat64);
                    if (!_internal.math_test.Math_test__veryclose._veryclose(_internal.math_test.Math_test__log1p._log1p[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Log1p(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_internal.math_test.Math_test__log1p._log1p[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        var _a = (9 : stdgo.GoFloat64);
        {
            var _f = (stdgo._internal.math.Math_log1p.log1p(_a) : stdgo.GoFloat64);
            if (_f != (2.302585092994046 : stdgo.GoFloat64)) {
                _t.errorf(("Log1p(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_f), stdgo.Go.toInterface((2.302585092994046 : stdgo.GoFloat64)));
            };
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_internal.math_test.Math_test__vflogSC._vflogSC.length) : Bool), _i++, {
                {
                    var _f = (stdgo._internal.math.Math_log1p.log1p(_internal.math_test.Math_test__vflog1pSC._vflog1pSC[(_i : stdgo.GoInt)]) : stdgo.GoFloat64);
                    if (!_internal.math_test.Math_test__alike._alike(_internal.math_test.Math_test__log1pSC._log1pSC[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Log1p(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_internal.math_test.Math_test__vflog1pSC._vflog1pSC[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_internal.math_test.Math_test__log1pSC._log1pSC[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
    }
