package _internal.math_test;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
function testRemainder(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_internal.math_test.Math_test__vf._vf.length) : Bool), _i++, {
                {
                    var _f = (stdgo._internal.math.Math_remainder.remainder((10 : stdgo.GoFloat64), _internal.math_test.Math_test__vf._vf[(_i : stdgo.GoInt)]) : stdgo.GoFloat64);
                    if (_internal.math_test.Math_test__remainder._remainder[(_i : stdgo.GoInt)] != (_f)) {
                        _t.errorf(("Remainder(10, %g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_internal.math_test.Math_test__vf._vf[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_internal.math_test.Math_test__remainder._remainder[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_internal.math_test.Math_test__vffmodSC._vffmodSC.length) : Bool), _i++, {
                {
                    var _f = (stdgo._internal.math.Math_remainder.remainder(_internal.math_test.Math_test__vffmodSC._vffmodSC[(_i : stdgo.GoInt)][(0 : stdgo.GoInt)], _internal.math_test.Math_test__vffmodSC._vffmodSC[(_i : stdgo.GoInt)][(1 : stdgo.GoInt)]) : stdgo.GoFloat64);
                    if (!_internal.math_test.Math_test__alike._alike(_internal.math_test.Math_test__fmodSC._fmodSC[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Remainder(%g, %g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_internal.math_test.Math_test__vffmodSC._vffmodSC[(_i : stdgo.GoInt)][(0 : stdgo.GoInt)]), stdgo.Go.toInterface(_internal.math_test.Math_test__vffmodSC._vffmodSC[(_i : stdgo.GoInt)][(1 : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_internal.math_test.Math_test__fmodSC._fmodSC[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        {
            var _f = (stdgo._internal.math.Math_remainder.remainder((5.9790119248836734e+200 : stdgo.GoFloat64), (1.1258465975523544 : stdgo.GoFloat64)) : stdgo.GoFloat64);
            if ((-0.4810497673014966 : stdgo.GoFloat64) != (_f)) {
                _t.errorf(("Remainder(5.9790119248836734e+200, 1.1258465975523544) = %g, want -0.4810497673014966" : stdgo.GoString), stdgo.Go.toInterface(_f));
            };
        };
        var _test = (function(_x:stdgo.GoFloat64, _y:stdgo.GoFloat64):Void {
            {
                var _r = (stdgo._internal.math.Math_remainder.remainder(_x, _y) : stdgo.GoFloat64);
                if (((_r == (0 : stdgo.GoFloat64)) && (stdgo._internal.math.Math_signbit.signbit(_r) != stdgo._internal.math.Math_signbit.signbit(_x)) : Bool)) {
                    _t.errorf(("Remainder(x=%f, y=%f) = %f, sign of (zero) result should agree with sign of x" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_y), stdgo.Go.toInterface(_r));
                };
            };
        } : (stdgo.GoFloat64, stdgo.GoFloat64) -> Void);
        {
            var _x = (0 : stdgo.GoFloat64);
            stdgo.Go.cfor((_x <= (3 : stdgo.GoFloat64) : Bool), _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64), {
                {
                    var _y = (1 : stdgo.GoFloat64);
                    stdgo.Go.cfor((_y <= (3 : stdgo.GoFloat64) : Bool), _y = (_y + (1 : stdgo.GoFloat64) : stdgo.GoFloat64), {
                        _test(_x, _y);
                        _test(_x, -_y);
                        _test(-_x, _y);
                        _test(-_x, -_y);
                    });
                };
            });
        };
    }
