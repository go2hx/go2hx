package _internal.math_test;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
function benchmarkFMA(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _x = (0 : stdgo.GoFloat64);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _x = stdgo._internal.math.Math_fma.fma((2.718281828459045 : stdgo.GoFloat64), (3.141592653589793 : stdgo.GoFloat64), _x);
            });
        };
        _internal.math_test.Math_test_globalF.globalF = _x;
    }
