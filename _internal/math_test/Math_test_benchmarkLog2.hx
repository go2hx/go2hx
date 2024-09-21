package _internal.math_test;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
function benchmarkLog2(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _x = (0 : stdgo.GoFloat64);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _x = stdgo._internal.math.Math_log2.log2((0.5 : stdgo.GoFloat64));
            });
        };
        _internal.math_test.Math_test_globalF.globalF = (_internal.math_test.Math_test_globalF.globalF + (_x) : stdgo.GoFloat64);
    }
