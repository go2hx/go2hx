package _internal.math_test;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
function benchmarkLgamma(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _x = (0 : stdgo.GoFloat64);
        var _y = (0 : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                {
                    var __tmp__ = stdgo._internal.math.Math_lgamma.lgamma((2.5 : stdgo.GoFloat64));
                    _x = __tmp__._0;
                    _y = __tmp__._1;
                };
            });
        };
        _internal.math_test.Math_test_globalF.globalF = _x;
        _internal.math_test.Math_test_globalI.globalI = _y;
    }
