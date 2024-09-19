package _internal.math_test;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
function testTrunc(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_internal.math_test.Math_test__vf._vf.length) : Bool), _i++, {
                {
                    var _f = (stdgo._internal.math.Math_trunc.trunc(_internal.math_test.Math_test__vf._vf[(_i : stdgo.GoInt)]) : stdgo.GoFloat64);
                    if (!_internal.math_test.Math_test__alike._alike(_internal.math_test.Math_test__trunc._trunc[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Trunc(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_internal.math_test.Math_test__vf._vf[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_internal.math_test.Math_test__trunc._trunc[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_internal.math_test.Math_test__vfceilSC._vfceilSC.length) : Bool), _i++, {
                {
                    var _f = (stdgo._internal.math.Math_trunc.trunc(_internal.math_test.Math_test__vfceilSC._vfceilSC[(_i : stdgo.GoInt)]) : stdgo.GoFloat64);
                    if (!_internal.math_test.Math_test__alike._alike(_internal.math_test.Math_test__ceilSC._ceilSC[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Trunc(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_internal.math_test.Math_test__vfceilSC._vfceilSC[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_internal.math_test.Math_test__ceilSC._ceilSC[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
    }
