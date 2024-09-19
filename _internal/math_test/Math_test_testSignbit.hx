package _internal.math_test;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
function testSignbit(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_internal.math_test.Math_test__vf._vf.length) : Bool), _i++, {
                {
                    var _f = (stdgo._internal.math.Math_signbit.signbit(_internal.math_test.Math_test__vf._vf[(_i : stdgo.GoInt)]) : Bool);
                    if (_internal.math_test.Math_test__signbit._signbit[(_i : stdgo.GoInt)] != (_f)) {
                        _t.errorf(("Signbit(%g) = %t, want %t" : stdgo.GoString), stdgo.Go.toInterface(_internal.math_test.Math_test__vf._vf[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_internal.math_test.Math_test__signbit._signbit[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_internal.math_test.Math_test__vfsignbitSC._vfsignbitSC.length) : Bool), _i++, {
                {
                    var _f = (stdgo._internal.math.Math_signbit.signbit(_internal.math_test.Math_test__vfsignbitSC._vfsignbitSC[(_i : stdgo.GoInt)]) : Bool);
                    if (_internal.math_test.Math_test__signbitSC._signbitSC[(_i : stdgo.GoInt)] != (_f)) {
                        _t.errorf(("Signbit(%g) = %t, want %t" : stdgo.GoString), stdgo.Go.toInterface(_internal.math_test.Math_test__vfsignbitSC._vfsignbitSC[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_internal.math_test.Math_test__signbitSC._signbitSC[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
    }
