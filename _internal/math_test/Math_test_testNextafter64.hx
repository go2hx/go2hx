package _internal.math_test;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
function testNextafter64(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_internal.math_test.Math_test__vf._vf.length) : Bool), _i++, {
                {
                    var _f = (stdgo._internal.math.Math_nextafter.nextafter(_internal.math_test.Math_test__vf._vf[(_i : stdgo.GoInt)], (10 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_internal.math_test.Math_test__nextafter64._nextafter64[(_i : stdgo.GoInt)] != (_f)) {
                        _t.errorf(("Nextafter64(%g, %g) = %g want %g" : stdgo.GoString), stdgo.Go.toInterface(_internal.math_test.Math_test__vf._vf[(_i : stdgo.GoInt)]), stdgo.Go.toInterface((10 : stdgo.GoFloat64)), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_internal.math_test.Math_test__nextafter64._nextafter64[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_internal.math_test.Math_test__vfnextafter64SC._vfnextafter64SC.length) : Bool), _i++, {
                {
                    var _f = (stdgo._internal.math.Math_nextafter.nextafter(_internal.math_test.Math_test__vfnextafter64SC._vfnextafter64SC[(_i : stdgo.GoInt)][(0 : stdgo.GoInt)], _internal.math_test.Math_test__vfnextafter64SC._vfnextafter64SC[(_i : stdgo.GoInt)][(1 : stdgo.GoInt)]) : stdgo.GoFloat64);
                    if (!_internal.math_test.Math_test__alike._alike(_internal.math_test.Math_test__nextafter64SC._nextafter64SC[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Nextafter64(%g, %g) = %g want %g" : stdgo.GoString), stdgo.Go.toInterface(_internal.math_test.Math_test__vfnextafter64SC._vfnextafter64SC[(_i : stdgo.GoInt)][(0 : stdgo.GoInt)]), stdgo.Go.toInterface(_internal.math_test.Math_test__vfnextafter64SC._vfnextafter64SC[(_i : stdgo.GoInt)][(1 : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_internal.math_test.Math_test__nextafter64SC._nextafter64SC[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
    }
