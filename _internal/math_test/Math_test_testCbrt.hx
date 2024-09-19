package _internal.math_test;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
function testCbrt(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_internal.math_test.Math_test__vf._vf.length) : Bool), _i++, {
                {
                    var _f = (stdgo._internal.math.Math_cbrt.cbrt(_internal.math_test.Math_test__vf._vf[(_i : stdgo.GoInt)]) : stdgo.GoFloat64);
                    if (!_internal.math_test.Math_test__veryclose._veryclose(_internal.math_test.Math_test__cbrt._cbrt[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Cbrt(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_internal.math_test.Math_test__vf._vf[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_internal.math_test.Math_test__cbrt._cbrt[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_internal.math_test.Math_test__vfcbrtSC._vfcbrtSC.length) : Bool), _i++, {
                {
                    var _f = (stdgo._internal.math.Math_cbrt.cbrt(_internal.math_test.Math_test__vfcbrtSC._vfcbrtSC[(_i : stdgo.GoInt)]) : stdgo.GoFloat64);
                    if (!_internal.math_test.Math_test__alike._alike(_internal.math_test.Math_test__cbrtSC._cbrtSC[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Cbrt(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_internal.math_test.Math_test__vfcbrtSC._vfcbrtSC[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_internal.math_test.Math_test__cbrtSC._cbrtSC[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
    }
