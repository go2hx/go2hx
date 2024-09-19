package _internal.math_test;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
function testLog(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_internal.math_test.Math_test__vf._vf.length) : Bool), _i++, {
                var _a = (stdgo._internal.math.Math_abs.abs(_internal.math_test.Math_test__vf._vf[(_i : stdgo.GoInt)]) : stdgo.GoFloat64);
                {
                    var _f = (stdgo._internal.math.Math_log.log(_a) : stdgo.GoFloat64);
                    if (_internal.math_test.Math_test__log._log[(_i : stdgo.GoInt)] != (_f)) {
                        _t.errorf(("Log(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_internal.math_test.Math_test__log._log[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        {
            var _f = (stdgo._internal.math.Math_log.log((10 : stdgo.GoFloat64)) : stdgo.GoFloat64);
            if (_f != (2.302585092994046 : stdgo.GoFloat64)) {
                _t.errorf(("Log(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface((10 : stdgo.GoFloat64)), stdgo.Go.toInterface(_f), stdgo.Go.toInterface((2.302585092994046 : stdgo.GoFloat64)));
            };
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_internal.math_test.Math_test__vflogSC._vflogSC.length) : Bool), _i++, {
                {
                    var _f = (stdgo._internal.math.Math_log.log(_internal.math_test.Math_test__vflogSC._vflogSC[(_i : stdgo.GoInt)]) : stdgo.GoFloat64);
                    if (!_internal.math_test.Math_test__alike._alike(_internal.math_test.Math_test__logSC._logSC[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Log(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_internal.math_test.Math_test__vflogSC._vflogSC[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_internal.math_test.Math_test__logSC._logSC[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
    }
