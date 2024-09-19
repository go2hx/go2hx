package _internal.math_test;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
function testNextafter32(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        #if (interp || js) {
            trace("testNextafter32" + " skip targets: " + "interp, js");
            return;
        } #else null #end;
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_internal.math_test.Math_test__vf._vf.length) : Bool), _i++, {
                var _vfi = (_internal.math_test.Math_test__vf._vf[(_i : stdgo.GoInt)] : stdgo.GoFloat32);
                {
                    var _f = (stdgo._internal.math.Math_nextafter32.nextafter32(_vfi, (10 : stdgo.GoFloat64)) : stdgo.GoFloat32);
                    if (_internal.math_test.Math_test__nextafter32._nextafter32[(_i : stdgo.GoInt)] != (_f)) {
                        _t.errorf(("Nextafter32(%g, %g) = %g want %g" : stdgo.GoString), stdgo.Go.toInterface(_vfi), stdgo.Go.toInterface((10 : stdgo.GoFloat64)), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_internal.math_test.Math_test__nextafter32._nextafter32[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_internal.math_test.Math_test__vfnextafter32SC._vfnextafter32SC.length) : Bool), _i++, {
                {
                    var _f = (stdgo._internal.math.Math_nextafter32.nextafter32(_internal.math_test.Math_test__vfnextafter32SC._vfnextafter32SC[(_i : stdgo.GoInt)][(0 : stdgo.GoInt)], _internal.math_test.Math_test__vfnextafter32SC._vfnextafter32SC[(_i : stdgo.GoInt)][(1 : stdgo.GoInt)]) : stdgo.GoFloat32);
                    if (!_internal.math_test.Math_test__alike._alike((_internal.math_test.Math_test__nextafter32SC._nextafter32SC[(_i : stdgo.GoInt)] : stdgo.GoFloat64), (_f : stdgo.GoFloat64))) {
                        _t.errorf(("Nextafter32(%g, %g) = %g want %g" : stdgo.GoString), stdgo.Go.toInterface(_internal.math_test.Math_test__vfnextafter32SC._vfnextafter32SC[(_i : stdgo.GoInt)][(0 : stdgo.GoInt)]), stdgo.Go.toInterface(_internal.math_test.Math_test__vfnextafter32SC._vfnextafter32SC[(_i : stdgo.GoInt)][(1 : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_internal.math_test.Math_test__nextafter32SC._nextafter32SC[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
    }
