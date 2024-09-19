package _internal.math_test;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
function benchmarkAbs(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _x = (0 : stdgo.GoFloat64);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _x = stdgo._internal.math.Math_abs.abs(_internal.math_test.Math_test__absPos._absPos);
            });
        };
        _internal.math_test.Math_test_globalF.globalF = _x;
    }
