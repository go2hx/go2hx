package _internal.math_test;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
function testPow10(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_internal.math_test.Math_test__vfpow10SC._vfpow10SC.length) : Bool), _i++, {
                {
                    var _f = (stdgo._internal.math.Math_pow10.pow10(_internal.math_test.Math_test__vfpow10SC._vfpow10SC[(_i : stdgo.GoInt)]) : stdgo.GoFloat64);
                    if (!_internal.math_test.Math_test__alike._alike(_internal.math_test.Math_test__pow10SC._pow10SC[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Pow10(%d) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_internal.math_test.Math_test__vfpow10SC._vfpow10SC[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_internal.math_test.Math_test__pow10SC._pow10SC[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
    }
