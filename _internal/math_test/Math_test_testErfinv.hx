package _internal.math_test;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
function testErfinv(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_internal.math_test.Math_test__vf._vf.length) : Bool), _i++, {
                var _a = (_internal.math_test.Math_test__vf._vf[(_i : stdgo.GoInt)] / (10 : stdgo.GoFloat64) : stdgo.GoFloat64);
                {
                    var _f = (stdgo._internal.math.Math_erfinv.erfinv(_a) : stdgo.GoFloat64);
                    if (!_internal.math_test.Math_test__veryclose._veryclose(_internal.math_test.Math_test__erfinv._erfinv[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Erfinv(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_internal.math_test.Math_test__erfinv._erfinv[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_internal.math_test.Math_test__vferfinvSC._vferfinvSC.length) : Bool), _i++, {
                {
                    var _f = (stdgo._internal.math.Math_erfinv.erfinv(_internal.math_test.Math_test__vferfinvSC._vferfinvSC[(_i : stdgo.GoInt)]) : stdgo.GoFloat64);
                    if (!_internal.math_test.Math_test__alike._alike(_internal.math_test.Math_test__erfinvSC._erfinvSC[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Erfinv(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_internal.math_test.Math_test__vferfinvSC._vferfinvSC[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_internal.math_test.Math_test__erfinvSC._erfinvSC[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        {
            var _x = (-0.9 : stdgo.GoFloat64);
            stdgo.Go.cfor((_x <= (0.9 : stdgo.GoFloat64) : Bool), _x = (_x + (0.01 : stdgo.GoFloat64) : stdgo.GoFloat64), {
                {
                    var _f = (stdgo._internal.math.Math_erf.erf(stdgo._internal.math.Math_erfinv.erfinv(_x)) : stdgo.GoFloat64);
                    if (!_internal.math_test.Math_test__close._close(_x, _f)) {
                        _t.errorf(("Erf(Erfinv(%g)) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_x));
                    };
                };
            });
        };
        {
            var _x = (-0.9 : stdgo.GoFloat64);
            stdgo.Go.cfor((_x <= (0.9 : stdgo.GoFloat64) : Bool), _x = (_x + (0.01 : stdgo.GoFloat64) : stdgo.GoFloat64), {
                {
                    var _f = (stdgo._internal.math.Math_erfinv.erfinv(stdgo._internal.math.Math_erf.erf(_x)) : stdgo.GoFloat64);
                    if (!_internal.math_test.Math_test__close._close(_x, _f)) {
                        _t.errorf(("Erfinv(Erf(%g)) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_x));
                    };
                };
            });
        };
    }
