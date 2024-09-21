package _internal.math_test;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
function testLgamma(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_internal.math_test.Math_test__vf._vf.length) : Bool), _i++, {
                {
                    var __tmp__ = stdgo._internal.math.Math_lgamma.lgamma(_internal.math_test.Math_test__vf._vf[(_i : stdgo.GoInt)]), _f:stdgo.GoFloat64 = __tmp__._0, _s:stdgo.GoInt = __tmp__._1;
                    if ((!_internal.math_test.Math_test__close._close(_internal.math_test.Math_test__lgamma._lgamma[(_i : stdgo.GoInt)]._f, _f) || (_internal.math_test.Math_test__lgamma._lgamma[(_i : stdgo.GoInt)]._i != _s) : Bool)) {
                        _t.errorf(("Lgamma(%g) = %g, %d, want %g, %d" : stdgo.GoString), stdgo.Go.toInterface(_internal.math_test.Math_test__vf._vf[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_internal.math_test.Math_test__lgamma._lgamma[(_i : stdgo.GoInt)]._f), stdgo.Go.toInterface(_internal.math_test.Math_test__lgamma._lgamma[(_i : stdgo.GoInt)]._i));
                    };
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_internal.math_test.Math_test__vflgammaSC._vflgammaSC.length) : Bool), _i++, {
                {
                    var __tmp__ = stdgo._internal.math.Math_lgamma.lgamma(_internal.math_test.Math_test__vflgammaSC._vflgammaSC[(_i : stdgo.GoInt)]), _f:stdgo.GoFloat64 = __tmp__._0, _s:stdgo.GoInt = __tmp__._1;
                    if ((!_internal.math_test.Math_test__alike._alike(_internal.math_test.Math_test__lgammaSC._lgammaSC[(_i : stdgo.GoInt)]._f, _f) || (_internal.math_test.Math_test__lgammaSC._lgammaSC[(_i : stdgo.GoInt)]._i != _s) : Bool)) {
                        _t.errorf(("Lgamma(%g) = %g, %d, want %g, %d" : stdgo.GoString), stdgo.Go.toInterface(_internal.math_test.Math_test__vflgammaSC._vflgammaSC[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_internal.math_test.Math_test__lgammaSC._lgammaSC[(_i : stdgo.GoInt)]._f), stdgo.Go.toInterface(_internal.math_test.Math_test__lgammaSC._lgammaSC[(_i : stdgo.GoInt)]._i));
                    };
                };
            });
        };
    }
