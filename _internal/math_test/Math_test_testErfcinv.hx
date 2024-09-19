package _internal.math_test;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
function testErfcinv(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_internal.math_test.Math_test__vf._vf.length) : Bool), _i++, {
                var _a = ((1 : stdgo.GoFloat64) - ((_internal.math_test.Math_test__vf._vf[(_i : stdgo.GoInt)] / (10 : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64);
                {
                    var _f = (stdgo._internal.math.Math_erfcinv.erfcinv(_a) : stdgo.GoFloat64);
                    if (!_internal.math_test.Math_test__veryclose._veryclose(_internal.math_test.Math_test__erfinv._erfinv[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Erfcinv(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_internal.math_test.Math_test__erfinv._erfinv[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_internal.math_test.Math_test__vferfcinvSC._vferfcinvSC.length) : Bool), _i++, {
                {
                    var _f = (stdgo._internal.math.Math_erfcinv.erfcinv(_internal.math_test.Math_test__vferfcinvSC._vferfcinvSC[(_i : stdgo.GoInt)]) : stdgo.GoFloat64);
                    if (!_internal.math_test.Math_test__alike._alike(_internal.math_test.Math_test__erfcinvSC._erfcinvSC[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Erfcinv(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_internal.math_test.Math_test__vferfcinvSC._vferfcinvSC[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_internal.math_test.Math_test__erfcinvSC._erfcinvSC[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        {
            var _x = (0.1 : stdgo.GoFloat64);
            stdgo.Go.cfor((_x <= (1.9 : stdgo.GoFloat64) : Bool), _x = (_x + (0.01 : stdgo.GoFloat64) : stdgo.GoFloat64), {
                {
                    var _f = (stdgo._internal.math.Math_erfc.erfc(stdgo._internal.math.Math_erfcinv.erfcinv(_x)) : stdgo.GoFloat64);
                    if (!_internal.math_test.Math_test__close._close(_x, _f)) {
                        _t.errorf(("Erfc(Erfcinv(%g)) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_x));
                    };
                };
            });
        };
        {
            var _x = (0.1 : stdgo.GoFloat64);
            stdgo.Go.cfor((_x <= (1.9 : stdgo.GoFloat64) : Bool), _x = (_x + (0.01 : stdgo.GoFloat64) : stdgo.GoFloat64), {
                {
                    var _f = (stdgo._internal.math.Math_erfcinv.erfcinv(stdgo._internal.math.Math_erfc.erfc(_x)) : stdgo.GoFloat64);
                    if (!_internal.math_test.Math_test__close._close(_x, _f)) {
                        _t.errorf(("Erfcinv(Erfc(%g)) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_x));
                    };
                };
            });
        };
    }
