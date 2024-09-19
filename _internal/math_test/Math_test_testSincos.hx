package _internal.math_test;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
function testSincos(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_internal.math_test.Math_test__vf._vf.length) : Bool), _i++, {
                {
                    var __tmp__ = stdgo._internal.math.Math_sincos.sincos(_internal.math_test.Math_test__vf._vf[(_i : stdgo.GoInt)]), _s:stdgo.GoFloat64 = __tmp__._0, _c:stdgo.GoFloat64 = __tmp__._1;
                    if ((!_internal.math_test.Math_test__veryclose._veryclose(_internal.math_test.Math_test__sin._sin[(_i : stdgo.GoInt)], _s) || !_internal.math_test.Math_test__veryclose._veryclose(_internal.math_test.Math_test__cos._cos[(_i : stdgo.GoInt)], _c) : Bool)) {
                        _t.errorf(("Sincos(%g) = %g, %g want %g, %g" : stdgo.GoString), stdgo.Go.toInterface(_internal.math_test.Math_test__vf._vf[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_c), stdgo.Go.toInterface(_internal.math_test.Math_test__sin._sin[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_internal.math_test.Math_test__cos._cos[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
    }
