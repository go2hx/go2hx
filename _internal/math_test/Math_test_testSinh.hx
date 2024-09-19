package _internal.math_test;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
function testSinh(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_internal.math_test.Math_test__vf._vf.length) : Bool), _i++, {
                {
                    var _f = (stdgo._internal.math.Math_sinh.sinh(_internal.math_test.Math_test__vf._vf[(_i : stdgo.GoInt)]) : stdgo.GoFloat64);
                    if (!_internal.math_test.Math_test__close._close(_internal.math_test.Math_test__sinh._sinh[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Sinh(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_internal.math_test.Math_test__vf._vf[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_internal.math_test.Math_test__sinh._sinh[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_internal.math_test.Math_test__vfsinhSC._vfsinhSC.length) : Bool), _i++, {
                {
                    var _f = (stdgo._internal.math.Math_sinh.sinh(_internal.math_test.Math_test__vfsinhSC._vfsinhSC[(_i : stdgo.GoInt)]) : stdgo.GoFloat64);
                    if (!_internal.math_test.Math_test__alike._alike(_internal.math_test.Math_test__sinhSC._sinhSC[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Sinh(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_internal.math_test.Math_test__vfsinhSC._vfsinhSC[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_internal.math_test.Math_test__sinhSC._sinhSC[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
    }
