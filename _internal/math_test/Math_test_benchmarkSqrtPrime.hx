package _internal.math_test;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
function benchmarkSqrtPrime(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _x = (false : Bool);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _x = _internal.math_test.Math_test__isPrime._isPrime((100003 : stdgo.GoInt));
            });
        };
        _internal.math_test.Math_test_globalB.globalB = _x;
    }
