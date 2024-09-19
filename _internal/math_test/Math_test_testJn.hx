package _internal.math_test;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
function testJn(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_internal.math_test.Math_test__vf._vf.length) : Bool), _i++, {
                {
                    var _f = (stdgo._internal.math.Math_jn.jn((2 : stdgo.GoInt), _internal.math_test.Math_test__vf._vf[(_i : stdgo.GoInt)]) : stdgo.GoFloat64);
                    if (!_internal.math_test.Math_test__close._close(_internal.math_test.Math_test__j2._j2[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Jn(2, %g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_internal.math_test.Math_test__vf._vf[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_internal.math_test.Math_test__j2._j2[(_i : stdgo.GoInt)]));
                    };
                };
                {
                    var _f = (stdgo._internal.math.Math_jn.jn((-3 : stdgo.GoInt), _internal.math_test.Math_test__vf._vf[(_i : stdgo.GoInt)]) : stdgo.GoFloat64);
                    if (!_internal.math_test.Math_test__close._close(_internal.math_test.Math_test__jM3._jM3[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Jn(-3, %g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_internal.math_test.Math_test__vf._vf[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_internal.math_test.Math_test__jM3._jM3[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_internal.math_test.Math_test__vfj0SC._vfj0SC.length) : Bool), _i++, {
                {
                    var _f = (stdgo._internal.math.Math_jn.jn((2 : stdgo.GoInt), _internal.math_test.Math_test__vfj0SC._vfj0SC[(_i : stdgo.GoInt)]) : stdgo.GoFloat64);
                    if (!_internal.math_test.Math_test__alike._alike(_internal.math_test.Math_test__j2SC._j2SC[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Jn(2, %g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_internal.math_test.Math_test__vfj0SC._vfj0SC[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_internal.math_test.Math_test__j2SC._j2SC[(_i : stdgo.GoInt)]));
                    };
                };
                {
                    var _f = (stdgo._internal.math.Math_jn.jn((-3 : stdgo.GoInt), _internal.math_test.Math_test__vfj0SC._vfj0SC[(_i : stdgo.GoInt)]) : stdgo.GoFloat64);
                    if (!_internal.math_test.Math_test__alike._alike(_internal.math_test.Math_test__jM3SC._jM3SC[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Jn(-3, %g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_internal.math_test.Math_test__vfj0SC._vfj0SC[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_internal.math_test.Math_test__jM3SC._jM3SC[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
    }
