package _internal.math_test;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
function testRound(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_internal.math_test.Math_test__vf._vf.length) : Bool), _i++, {
                {
                    var _f = (stdgo._internal.math.Math_round.round(_internal.math_test.Math_test__vf._vf[(_i : stdgo.GoInt)]) : stdgo.GoFloat64);
                    if (!_internal.math_test.Math_test__alike._alike(_internal.math_test.Math_test__round._round[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Round(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_internal.math_test.Math_test__vf._vf[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_internal.math_test.Math_test__round._round[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_internal.math_test.Math_test__vfroundSC._vfroundSC.length) : Bool), _i++, {
                {
                    var _f = (stdgo._internal.math.Math_round.round(_internal.math_test.Math_test__vfroundSC._vfroundSC[(_i : stdgo.GoInt)][(0 : stdgo.GoInt)]) : stdgo.GoFloat64);
                    if (!_internal.math_test.Math_test__alike._alike(_internal.math_test.Math_test__vfroundSC._vfroundSC[(_i : stdgo.GoInt)][(1 : stdgo.GoInt)], _f)) {
                        _t.errorf(("Round(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_internal.math_test.Math_test__vfroundSC._vfroundSC[(_i : stdgo.GoInt)][(0 : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_internal.math_test.Math_test__vfroundSC._vfroundSC[(_i : stdgo.GoInt)][(1 : stdgo.GoInt)]));
                    };
                };
            });
        };
    }
