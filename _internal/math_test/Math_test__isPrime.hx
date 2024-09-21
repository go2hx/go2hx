package _internal.math_test;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
function _isPrime(_i:stdgo.GoInt):Bool {
        {
            var _j = (2 : stdgo.GoInt);
            stdgo.Go.cfor(((_j : stdgo.GoFloat64) <= stdgo._internal.math.Math_sqrt.sqrt((_i : stdgo.GoFloat64)) : Bool), _j++, {
                if ((_i % _j : stdgo.GoInt) == ((0 : stdgo.GoInt))) {
                    return false;
                };
            });
        };
        return true;
    }
