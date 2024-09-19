package _internal.math_test;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
function testLdexp(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_internal.math_test.Math_test__vf._vf.length) : Bool), _i++, {
                {
                    var _f = (stdgo._internal.math.Math_ldexp.ldexp(_internal.math_test.Math_test__frexp._frexp[(_i : stdgo.GoInt)]._f, _internal.math_test.Math_test__frexp._frexp[(_i : stdgo.GoInt)]._i) : stdgo.GoFloat64);
                    if (!_internal.math_test.Math_test__veryclose._veryclose(_internal.math_test.Math_test__vf._vf[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Ldexp(%g, %d) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_internal.math_test.Math_test__frexp._frexp[(_i : stdgo.GoInt)]._f), stdgo.Go.toInterface(_internal.math_test.Math_test__frexp._frexp[(_i : stdgo.GoInt)]._i), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_internal.math_test.Math_test__vf._vf[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_internal.math_test.Math_test__vffrexpSC._vffrexpSC.length) : Bool), _i++, {
                {
                    var _f = (stdgo._internal.math.Math_ldexp.ldexp(_internal.math_test.Math_test__frexpSC._frexpSC[(_i : stdgo.GoInt)]._f, _internal.math_test.Math_test__frexpSC._frexpSC[(_i : stdgo.GoInt)]._i) : stdgo.GoFloat64);
                    if (!_internal.math_test.Math_test__alike._alike(_internal.math_test.Math_test__vffrexpSC._vffrexpSC[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Ldexp(%g, %d) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_internal.math_test.Math_test__frexpSC._frexpSC[(_i : stdgo.GoInt)]._f), stdgo.Go.toInterface(_internal.math_test.Math_test__frexpSC._frexpSC[(_i : stdgo.GoInt)]._i), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_internal.math_test.Math_test__vffrexpSC._vffrexpSC[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_internal.math_test.Math_test__vfldexpSC._vfldexpSC.length) : Bool), _i++, {
                {
                    var _f = (stdgo._internal.math.Math_ldexp.ldexp(_internal.math_test.Math_test__vfldexpSC._vfldexpSC[(_i : stdgo.GoInt)]._f, _internal.math_test.Math_test__vfldexpSC._vfldexpSC[(_i : stdgo.GoInt)]._i) : stdgo.GoFloat64);
                    if (!_internal.math_test.Math_test__alike._alike(_internal.math_test.Math_test__ldexpSC._ldexpSC[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Ldexp(%g, %d) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_internal.math_test.Math_test__vfldexpSC._vfldexpSC[(_i : stdgo.GoInt)]._f), stdgo.Go.toInterface(_internal.math_test.Math_test__vfldexpSC._vfldexpSC[(_i : stdgo.GoInt)]._i), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_internal.math_test.Math_test__ldexpSC._ldexpSC[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_internal.math_test.Math_test__vffrexpBC._vffrexpBC.length) : Bool), _i++, {
                {
                    var _f = (stdgo._internal.math.Math_ldexp.ldexp(_internal.math_test.Math_test__frexpBC._frexpBC[(_i : stdgo.GoInt)]._f, _internal.math_test.Math_test__frexpBC._frexpBC[(_i : stdgo.GoInt)]._i) : stdgo.GoFloat64);
                    if (!_internal.math_test.Math_test__alike._alike(_internal.math_test.Math_test__vffrexpBC._vffrexpBC[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Ldexp(%g, %d) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_internal.math_test.Math_test__frexpBC._frexpBC[(_i : stdgo.GoInt)]._f), stdgo.Go.toInterface(_internal.math_test.Math_test__frexpBC._frexpBC[(_i : stdgo.GoInt)]._i), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_internal.math_test.Math_test__vffrexpBC._vffrexpBC[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_internal.math_test.Math_test__vfldexpBC._vfldexpBC.length) : Bool), _i++, {
                {
                    var _f = (stdgo._internal.math.Math_ldexp.ldexp(_internal.math_test.Math_test__vfldexpBC._vfldexpBC[(_i : stdgo.GoInt)]._f, _internal.math_test.Math_test__vfldexpBC._vfldexpBC[(_i : stdgo.GoInt)]._i) : stdgo.GoFloat64);
                    if (!_internal.math_test.Math_test__alike._alike(_internal.math_test.Math_test__ldexpBC._ldexpBC[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Ldexp(%g, %d) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_internal.math_test.Math_test__vfldexpBC._vfldexpBC[(_i : stdgo.GoInt)]._f), stdgo.Go.toInterface(_internal.math_test.Math_test__vfldexpBC._vfldexpBC[(_i : stdgo.GoInt)]._i), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_internal.math_test.Math_test__ldexpBC._ldexpBC[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
    }
