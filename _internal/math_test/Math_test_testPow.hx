package _internal.math_test;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
function testPow(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_internal.math_test.Math_test__vf._vf.length) : Bool), _i++, {
                {
                    var _f = (stdgo._internal.math.Math_pow.pow((10 : stdgo.GoFloat64), _internal.math_test.Math_test__vf._vf[(_i : stdgo.GoInt)]) : stdgo.GoFloat64);
                    if (!_internal.math_test.Math_test__close._close(_internal.math_test.Math_test__pow._pow[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Pow(10, %g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_internal.math_test.Math_test__vf._vf[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_internal.math_test.Math_test__pow._pow[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_internal.math_test.Math_test__vfpowSC._vfpowSC.length) : Bool), _i++, {
                {
                    var _f = (stdgo._internal.math.Math_pow.pow(_internal.math_test.Math_test__vfpowSC._vfpowSC[(_i : stdgo.GoInt)][(0 : stdgo.GoInt)], _internal.math_test.Math_test__vfpowSC._vfpowSC[(_i : stdgo.GoInt)][(1 : stdgo.GoInt)]) : stdgo.GoFloat64);
                    if (!_internal.math_test.Math_test__alike._alike(_internal.math_test.Math_test__powSC._powSC[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Pow(%g, %g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_internal.math_test.Math_test__vfpowSC._vfpowSC[(_i : stdgo.GoInt)][(0 : stdgo.GoInt)]), stdgo.Go.toInterface(_internal.math_test.Math_test__vfpowSC._vfpowSC[(_i : stdgo.GoInt)][(1 : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_internal.math_test.Math_test__powSC._powSC[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
    }
