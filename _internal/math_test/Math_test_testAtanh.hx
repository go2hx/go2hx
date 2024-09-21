package _internal.math_test;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
function testAtanh(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_internal.math_test.Math_test__vf._vf.length) : Bool), _i++, {
                var _a = (_internal.math_test.Math_test__vf._vf[(_i : stdgo.GoInt)] / (10 : stdgo.GoFloat64) : stdgo.GoFloat64);
                {
                    var _f = (stdgo._internal.math.Math_atanh.atanh(_a) : stdgo.GoFloat64);
                    if (!_internal.math_test.Math_test__veryclose._veryclose(_internal.math_test.Math_test__atanh._atanh[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Atanh(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_internal.math_test.Math_test__atanh._atanh[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_internal.math_test.Math_test__vfatanhSC._vfatanhSC.length) : Bool), _i++, {
                {
                    var _f = (stdgo._internal.math.Math_atanh.atanh(_internal.math_test.Math_test__vfatanhSC._vfatanhSC[(_i : stdgo.GoInt)]) : stdgo.GoFloat64);
                    if (!_internal.math_test.Math_test__alike._alike(_internal.math_test.Math_test__atanhSC._atanhSC[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Atanh(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_internal.math_test.Math_test__vfatanhSC._vfatanhSC[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_internal.math_test.Math_test__atanhSC._atanhSC[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
    }
