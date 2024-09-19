package _internal.math_test;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
function testModf(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_internal.math_test.Math_test__vf._vf.length) : Bool), _i++, {
                {
                    var __tmp__ = stdgo._internal.math.Math_modf.modf(_internal.math_test.Math_test__vf._vf[(_i : stdgo.GoInt)]), _f:stdgo.GoFloat64 = __tmp__._0, _g:stdgo.GoFloat64 = __tmp__._1;
                    if ((!_internal.math_test.Math_test__veryclose._veryclose(_internal.math_test.Math_test__modf._modf[(_i : stdgo.GoInt)][(0 : stdgo.GoInt)], _f) || !_internal.math_test.Math_test__veryclose._veryclose(_internal.math_test.Math_test__modf._modf[(_i : stdgo.GoInt)][(1 : stdgo.GoInt)], _g) : Bool)) {
                        _t.errorf(("Modf(%g) = %g, %g, want %g, %g" : stdgo.GoString), stdgo.Go.toInterface(_internal.math_test.Math_test__vf._vf[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_g), stdgo.Go.toInterface(_internal.math_test.Math_test__modf._modf[(_i : stdgo.GoInt)][(0 : stdgo.GoInt)]), stdgo.Go.toInterface(_internal.math_test.Math_test__modf._modf[(_i : stdgo.GoInt)][(1 : stdgo.GoInt)]));
                    };
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_internal.math_test.Math_test__vfmodfSC._vfmodfSC.length) : Bool), _i++, {
                {
                    var __tmp__ = stdgo._internal.math.Math_modf.modf(_internal.math_test.Math_test__vfmodfSC._vfmodfSC[(_i : stdgo.GoInt)]), _f:stdgo.GoFloat64 = __tmp__._0, _g:stdgo.GoFloat64 = __tmp__._1;
                    if ((!_internal.math_test.Math_test__alike._alike(_internal.math_test.Math_test__modfSC._modfSC[(_i : stdgo.GoInt)][(0 : stdgo.GoInt)], _f) || !_internal.math_test.Math_test__alike._alike(_internal.math_test.Math_test__modfSC._modfSC[(_i : stdgo.GoInt)][(1 : stdgo.GoInt)], _g) : Bool)) {
                        _t.errorf(("Modf(%g) = %g, %g, want %g, %g" : stdgo.GoString), stdgo.Go.toInterface(_internal.math_test.Math_test__vfmodfSC._vfmodfSC[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_g), stdgo.Go.toInterface(_internal.math_test.Math_test__modfSC._modfSC[(_i : stdgo.GoInt)][(0 : stdgo.GoInt)]), stdgo.Go.toInterface(_internal.math_test.Math_test__modfSC._modfSC[(_i : stdgo.GoInt)][(1 : stdgo.GoInt)]));
                    };
                };
            });
        };
    }
