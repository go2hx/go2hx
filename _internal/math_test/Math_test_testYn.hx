package _internal.math_test;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
function testYn(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_internal.math_test.Math_test__vf._vf.length) : Bool), _i++, {
                var _a = (stdgo._internal.math.Math_abs.abs(_internal.math_test.Math_test__vf._vf[(_i : stdgo.GoInt)]) : stdgo.GoFloat64);
                {
                    var _f = (stdgo._internal.math.Math_yn.yn((2 : stdgo.GoInt), _a) : stdgo.GoFloat64);
                    if (!_internal.math_test.Math_test__close._close(_internal.math_test.Math_test__y2._y2[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Yn(2, %g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_internal.math_test.Math_test__y2._y2[(_i : stdgo.GoInt)]));
                    };
                };
                {
                    var _f = (stdgo._internal.math.Math_yn.yn((-3 : stdgo.GoInt), _a) : stdgo.GoFloat64);
                    if (!_internal.math_test.Math_test__close._close(_internal.math_test.Math_test__yM3._yM3[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Yn(-3, %g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_internal.math_test.Math_test__yM3._yM3[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_internal.math_test.Math_test__vfy0SC._vfy0SC.length) : Bool), _i++, {
                {
                    var _f = (stdgo._internal.math.Math_yn.yn((2 : stdgo.GoInt), _internal.math_test.Math_test__vfy0SC._vfy0SC[(_i : stdgo.GoInt)]) : stdgo.GoFloat64);
                    if (!_internal.math_test.Math_test__alike._alike(_internal.math_test.Math_test__y2SC._y2SC[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Yn(2, %g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_internal.math_test.Math_test__vfy0SC._vfy0SC[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_internal.math_test.Math_test__y2SC._y2SC[(_i : stdgo.GoInt)]));
                    };
                };
                {
                    var _f = (stdgo._internal.math.Math_yn.yn((-3 : stdgo.GoInt), _internal.math_test.Math_test__vfy0SC._vfy0SC[(_i : stdgo.GoInt)]) : stdgo.GoFloat64);
                    if (!_internal.math_test.Math_test__alike._alike(_internal.math_test.Math_test__yM3SC._yM3SC[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Yn(-3, %g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_internal.math_test.Math_test__vfy0SC._vfy0SC[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_internal.math_test.Math_test__yM3SC._yM3SC[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        {
            var _f = (stdgo._internal.math.Math_yn.yn((0 : stdgo.GoInt), (0 : stdgo.GoFloat64)) : stdgo.GoFloat64);
            if (!_internal.math_test.Math_test__alike._alike(stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt)), _f)) {
                _t.errorf(("Yn(0, 0) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt))));
            };
        };
    }
