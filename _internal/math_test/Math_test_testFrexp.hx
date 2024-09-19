package _internal.math_test;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
function testFrexp(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_internal.math_test.Math_test__vf._vf.length) : Bool), _i++, {
                {
                    var __tmp__ = stdgo._internal.math.Math_frexp.frexp(_internal.math_test.Math_test__vf._vf[(_i : stdgo.GoInt)]), _f:stdgo.GoFloat64 = __tmp__._0, _j:stdgo.GoInt = __tmp__._1;
                    if ((!_internal.math_test.Math_test__veryclose._veryclose(_internal.math_test.Math_test__frexp._frexp[(_i : stdgo.GoInt)]._f, _f) || (_internal.math_test.Math_test__frexp._frexp[(_i : stdgo.GoInt)]._i != _j) : Bool)) {
                        _t.errorf(("Frexp(%g) = %g, %d, want %g, %d" : stdgo.GoString), stdgo.Go.toInterface(_internal.math_test.Math_test__vf._vf[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_internal.math_test.Math_test__frexp._frexp[(_i : stdgo.GoInt)]._f), stdgo.Go.toInterface(_internal.math_test.Math_test__frexp._frexp[(_i : stdgo.GoInt)]._i));
                    };
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_internal.math_test.Math_test__vffrexpSC._vffrexpSC.length) : Bool), _i++, {
                {
                    var __tmp__ = stdgo._internal.math.Math_frexp.frexp(_internal.math_test.Math_test__vffrexpSC._vffrexpSC[(_i : stdgo.GoInt)]), _f:stdgo.GoFloat64 = __tmp__._0, _j:stdgo.GoInt = __tmp__._1;
                    if ((!_internal.math_test.Math_test__alike._alike(_internal.math_test.Math_test__frexpSC._frexpSC[(_i : stdgo.GoInt)]._f, _f) || (_internal.math_test.Math_test__frexpSC._frexpSC[(_i : stdgo.GoInt)]._i != _j) : Bool)) {
                        _t.errorf(("Frexp(%g) = %g, %d, want %g, %d" : stdgo.GoString), stdgo.Go.toInterface(_internal.math_test.Math_test__vffrexpSC._vffrexpSC[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_internal.math_test.Math_test__frexpSC._frexpSC[(_i : stdgo.GoInt)]._f), stdgo.Go.toInterface(_internal.math_test.Math_test__frexpSC._frexpSC[(_i : stdgo.GoInt)]._i));
                    };
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_internal.math_test.Math_test__vffrexpBC._vffrexpBC.length) : Bool), _i++, {
                {
                    var __tmp__ = stdgo._internal.math.Math_frexp.frexp(_internal.math_test.Math_test__vffrexpBC._vffrexpBC[(_i : stdgo.GoInt)]), _f:stdgo.GoFloat64 = __tmp__._0, _j:stdgo.GoInt = __tmp__._1;
                    if ((!_internal.math_test.Math_test__alike._alike(_internal.math_test.Math_test__frexpBC._frexpBC[(_i : stdgo.GoInt)]._f, _f) || (_internal.math_test.Math_test__frexpBC._frexpBC[(_i : stdgo.GoInt)]._i != _j) : Bool)) {
                        _t.errorf(("Frexp(%g) = %g, %d, want %g, %d" : stdgo.GoString), stdgo.Go.toInterface(_internal.math_test.Math_test__vffrexpBC._vffrexpBC[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_internal.math_test.Math_test__frexpBC._frexpBC[(_i : stdgo.GoInt)]._f), stdgo.Go.toInterface(_internal.math_test.Math_test__frexpBC._frexpBC[(_i : stdgo.GoInt)]._i));
                    };
                };
            });
        };
    }
