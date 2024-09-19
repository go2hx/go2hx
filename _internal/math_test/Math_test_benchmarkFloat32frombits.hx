package _internal.math_test;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
function benchmarkFloat32frombits(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _x = ((0 : stdgo.GoFloat64) : stdgo.GoFloat32);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _x = stdgo._internal.math.Math_float32frombits.float32frombits(_internal.math_test.Math_test__roundUint32._roundUint32);
            });
        };
        _internal.math_test.Math_test_globalF.globalF = (_x : stdgo.GoFloat64);
    }
