package _internal.math_test;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
function testCopysign(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_internal.math_test.Math_test__vf._vf.length) : Bool), _i++, {
                {
                    var _f = (stdgo._internal.math.Math_copysign.copysign(_internal.math_test.Math_test__vf._vf[(_i : stdgo.GoInt)], (-1 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_internal.math_test.Math_test__copysign._copysign[(_i : stdgo.GoInt)] != (_f)) {
                        _t.errorf(("Copysign(%g, -1) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_internal.math_test.Math_test__vf._vf[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_internal.math_test.Math_test__copysign._copysign[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_internal.math_test.Math_test__vf._vf.length) : Bool), _i++, {
                {
                    var _f = (stdgo._internal.math.Math_copysign.copysign(_internal.math_test.Math_test__vf._vf[(_i : stdgo.GoInt)], (1 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (-_internal.math_test.Math_test__copysign._copysign[(_i : stdgo.GoInt)] != (_f)) {
                        _t.errorf(("Copysign(%g, 1) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_internal.math_test.Math_test__vf._vf[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(-_internal.math_test.Math_test__copysign._copysign[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_internal.math_test.Math_test__vfcopysignSC._vfcopysignSC.length) : Bool), _i++, {
                {
                    var _f = (stdgo._internal.math.Math_copysign.copysign(_internal.math_test.Math_test__vfcopysignSC._vfcopysignSC[(_i : stdgo.GoInt)], (-1 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (!_internal.math_test.Math_test__alike._alike(_internal.math_test.Math_test__copysignSC._copysignSC[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Copysign(%g, -1) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_internal.math_test.Math_test__vfcopysignSC._vfcopysignSC[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_internal.math_test.Math_test__copysignSC._copysignSC[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
    }
