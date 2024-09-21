package _internal.math_test;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
function testLargeSin(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _large = (314159.26535897935 : stdgo.GoFloat64);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_internal.math_test.Math_test__vf._vf.length) : Bool), _i++, {
                var _f1 = (_internal.math_test.Math_test__sinLarge._sinLarge[(_i : stdgo.GoInt)] : stdgo.GoFloat64);
                var _f2 = (stdgo._internal.math.Math_sin.sin((_internal.math_test.Math_test__vf._vf[(_i : stdgo.GoInt)] + _large : stdgo.GoFloat64)) : stdgo.GoFloat64);
                if (!_internal.math_test.Math_test__close._close(_f1, _f2)) {
                    _t.errorf(("Sin(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface((_internal.math_test.Math_test__vf._vf[(_i : stdgo.GoInt)] + _large : stdgo.GoFloat64)), stdgo.Go.toInterface(_f2), stdgo.Go.toInterface(_f1));
                };
            });
        };
    }
