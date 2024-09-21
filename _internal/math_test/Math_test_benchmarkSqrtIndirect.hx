package _internal.math_test;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
function benchmarkSqrtIndirect(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var __0 = (0 : stdgo.GoFloat64), __1 = (10 : stdgo.GoFloat64);
var _y = __1, _x = __0;
        var _f = (stdgo._internal.math.Math_sqrt.sqrt : stdgo.GoFloat64 -> stdgo.GoFloat64);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _x = (_x + (_f(_y)) : stdgo.GoFloat64);
            });
        };
        _internal.math_test.Math_test_globalF.globalF = _x;
    }
