package _internal.math_test;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
function testY1(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_internal.math_test.Math_test__vf._vf.length) : Bool), _i++, {
                var _a = (stdgo._internal.math.Math_abs.abs(_internal.math_test.Math_test__vf._vf[(_i : stdgo.GoInt)]) : stdgo.GoFloat64);
                {
                    var _f = (stdgo._internal.math.Math_y1.y1(_a) : stdgo.GoFloat64);
                    if (!_internal.math_test.Math_test__soclose._soclose(_internal.math_test.Math_test__y1._y1[(_i : stdgo.GoInt)], _f, (2e-14 : stdgo.GoFloat64))) {
                        _t.errorf(("Y1(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_internal.math_test.Math_test__y1._y1[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_internal.math_test.Math_test__vfy0SC._vfy0SC.length) : Bool), _i++, {
                {
                    var _f = (stdgo._internal.math.Math_y1.y1(_internal.math_test.Math_test__vfy0SC._vfy0SC[(_i : stdgo.GoInt)]) : stdgo.GoFloat64);
                    if (!_internal.math_test.Math_test__alike._alike(_internal.math_test.Math_test__y1SC._y1SC[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Y1(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_internal.math_test.Math_test__vfy0SC._vfy0SC[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_internal.math_test.Math_test__y1SC._y1SC[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
    }
