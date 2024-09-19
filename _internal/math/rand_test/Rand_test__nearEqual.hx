package _internal.math.rand_test;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
function _nearEqual(_a:stdgo.GoFloat64, _b:stdgo.GoFloat64, _closeEnough:stdgo.GoFloat64, _maxError:stdgo.GoFloat64):Bool {
        var _absDiff = (stdgo._internal.math.Math_abs.abs((_a - _b : stdgo.GoFloat64)) : stdgo.GoFloat64);
        if ((_absDiff < _closeEnough : Bool)) {
            return true;
        };
        return ((_absDiff / _internal.math.rand_test.Rand_test__max._max(stdgo._internal.math.Math_abs.abs(_a), stdgo._internal.math.Math_abs.abs(_b)) : stdgo.GoFloat64) < _maxError : Bool);
    }
