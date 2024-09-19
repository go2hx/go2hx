package _internal.math_test;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
function testAcosh(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_internal.math_test.Math_test__vf._vf.length) : Bool), _i++, {
                var _a = ((1 : stdgo.GoFloat64) + stdgo._internal.math.Math_abs.abs(_internal.math_test.Math_test__vf._vf[(_i : stdgo.GoInt)]) : stdgo.GoFloat64);
                {
                    var _f = (stdgo._internal.math.Math_acosh.acosh(_a) : stdgo.GoFloat64);
                    if (!_internal.math_test.Math_test__veryclose._veryclose(_internal.math_test.Math_test__acosh._acosh[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Acosh(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_internal.math_test.Math_test__acosh._acosh[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_internal.math_test.Math_test__vfacoshSC._vfacoshSC.length) : Bool), _i++, {
                {
                    var _f = (stdgo._internal.math.Math_acosh.acosh(_internal.math_test.Math_test__vfacoshSC._vfacoshSC[(_i : stdgo.GoInt)]) : stdgo.GoFloat64);
                    if (!_internal.math_test.Math_test__alike._alike(_internal.math_test.Math_test__acoshSC._acoshSC[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Acosh(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_internal.math_test.Math_test__vfacoshSC._vfacoshSC[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_internal.math_test.Math_test__acoshSC._acoshSC[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
    }
