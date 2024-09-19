package _internal.math_test;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
function _testExp2(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, exp2:stdgo.GoFloat64 -> stdgo.GoFloat64, _name:stdgo.GoString):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_internal.math_test.Math_test__vf._vf.length) : Bool), _i++, {
                {
                    var _f = (exp2(_internal.math_test.Math_test__vf._vf[(_i : stdgo.GoInt)]) : stdgo.GoFloat64);
                    if (!_internal.math_test.Math_test__close._close(_internal.math_test.Math_test__exp2._exp2[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("%s(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_internal.math_test.Math_test__vf._vf[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_internal.math_test.Math_test__exp2._exp2[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_internal.math_test.Math_test__vfexp2SC._vfexp2SC.length) : Bool), _i++, {
                {
                    var _f = (exp2(_internal.math_test.Math_test__vfexp2SC._vfexp2SC[(_i : stdgo.GoInt)]) : stdgo.GoFloat64);
                    if (!_internal.math_test.Math_test__alike._alike(_internal.math_test.Math_test__exp2SC._exp2SC[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("%s(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_internal.math_test.Math_test__vfexp2SC._vfexp2SC[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_internal.math_test.Math_test__exp2SC._exp2SC[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        {
            var _n = (-1074 : stdgo.GoInt);
            stdgo.Go.cfor((_n < (1024 : stdgo.GoInt) : Bool), _n++, {
                var _f = (exp2((_n : stdgo.GoFloat64)) : stdgo.GoFloat64);
                var _vf = (stdgo._internal.math.Math_ldexp.ldexp((1 : stdgo.GoFloat64), _n) : stdgo.GoFloat64);
                if (_f != (_vf)) {
                    _t.errorf(("%s(%d) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_vf));
                };
            });
        };
    }
