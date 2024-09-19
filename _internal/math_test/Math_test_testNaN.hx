package _internal.math_test;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
function testNaN(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _f64 = (stdgo._internal.math.Math_naN.naN() : stdgo.GoFloat64);
        if (_f64 == (_f64)) {
            _t.fatalf(("NaN() returns %g, expected NaN" : stdgo.GoString), stdgo.Go.toInterface(_f64));
        };
        var _f32 = (_f64 : stdgo.GoFloat32);
        if (_f32 == (_f32)) {
            _t.fatalf(("float32(NaN()) is %g, expected NaN" : stdgo.GoString), stdgo.Go.toInterface(_f32));
        };
    }
