package _internal.math_test;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
function testFloat32Sqrt(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _v in _internal.math_test.Math_test__sqrt32._sqrt32) {
            var _want = (_internal.math_test.Math_test__indirectSqrt._indirectSqrt((_v : stdgo.GoFloat64)) : stdgo.GoFloat32);
            var _got = (stdgo._internal.math.Math_sqrt.sqrt((_v : stdgo.GoFloat64)) : stdgo.GoFloat32);
            if (stdgo._internal.math.Math_isNaN.isNaN((_want : stdgo.GoFloat64))) {
                if (!stdgo._internal.math.Math_isNaN.isNaN((_got : stdgo.GoFloat64))) {
                    _t.errorf(("got=%#v want=NaN, v=%#v" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_v));
                };
                continue;
            };
            if (_got != (_want)) {
                _t.errorf(("got=%#v want=%#v, v=%#v" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_v));
            };
        };
    }
