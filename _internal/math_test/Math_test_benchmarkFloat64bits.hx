package _internal.math_test;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
function benchmarkFloat64bits(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _y = ((0i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _y = stdgo._internal.math.Math_float64bits.float64bits(_internal.math_test.Math_test__roundNeg._roundNeg);
            });
        };
        _internal.math_test.Math_test_globalI.globalI = (_y : stdgo.GoInt);
    }
