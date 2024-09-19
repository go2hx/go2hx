package _internal.math_test;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
function testLogb(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_internal.math_test.Math_test__vf._vf.length) : Bool), _i++, {
                {
                    var _f = (stdgo._internal.math.Math_logb.logb(_internal.math_test.Math_test__vf._vf[(_i : stdgo.GoInt)]) : stdgo.GoFloat64);
                    if (_internal.math_test.Math_test__logb._logb[(_i : stdgo.GoInt)] != (_f)) {
                        _t.errorf(("Logb(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_internal.math_test.Math_test__vf._vf[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_internal.math_test.Math_test__logb._logb[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_internal.math_test.Math_test__vflogbSC._vflogbSC.length) : Bool), _i++, {
                {
                    var _f = (stdgo._internal.math.Math_logb.logb(_internal.math_test.Math_test__vflogbSC._vflogbSC[(_i : stdgo.GoInt)]) : stdgo.GoFloat64);
                    if (!_internal.math_test.Math_test__alike._alike(_internal.math_test.Math_test__logbSC._logbSC[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Logb(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_internal.math_test.Math_test__vflogbSC._vflogbSC[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_internal.math_test.Math_test__logbSC._logbSC[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_internal.math_test.Math_test__vffrexpBC._vffrexpBC.length) : Bool), _i++, {
                {
                    var _f = (stdgo._internal.math.Math_logb.logb(_internal.math_test.Math_test__vffrexpBC._vffrexpBC[(_i : stdgo.GoInt)]) : stdgo.GoFloat64);
                    if (!_internal.math_test.Math_test__alike._alike(_internal.math_test.Math_test__logbBC._logbBC[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Logb(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_internal.math_test.Math_test__vffrexpBC._vffrexpBC[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_internal.math_test.Math_test__logbBC._logbBC[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
    }
