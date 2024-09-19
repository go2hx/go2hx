package _internal.math_test;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
function testRoundToEven(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_internal.math_test.Math_test__vf._vf.length) : Bool), _i++, {
                {
                    var _f = (stdgo._internal.math.Math_roundToEven.roundToEven(_internal.math_test.Math_test__vf._vf[(_i : stdgo.GoInt)]) : stdgo.GoFloat64);
                    if (!_internal.math_test.Math_test__alike._alike(_internal.math_test.Math_test__round._round[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("RoundToEven(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_internal.math_test.Math_test__vf._vf[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_internal.math_test.Math_test__round._round[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_internal.math_test.Math_test__vfroundEvenSC._vfroundEvenSC.length) : Bool), _i++, {
                {
                    var _f = (stdgo._internal.math.Math_roundToEven.roundToEven(_internal.math_test.Math_test__vfroundEvenSC._vfroundEvenSC[(_i : stdgo.GoInt)][(0 : stdgo.GoInt)]) : stdgo.GoFloat64);
                    if (!_internal.math_test.Math_test__alike._alike(_internal.math_test.Math_test__vfroundEvenSC._vfroundEvenSC[(_i : stdgo.GoInt)][(1 : stdgo.GoInt)], _f)) {
                        _t.errorf(("RoundToEven(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_internal.math_test.Math_test__vfroundEvenSC._vfroundEvenSC[(_i : stdgo.GoInt)][(0 : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_internal.math_test.Math_test__vfroundEvenSC._vfroundEvenSC[(_i : stdgo.GoInt)][(1 : stdgo.GoInt)]));
                    };
                };
            });
        };
    }
