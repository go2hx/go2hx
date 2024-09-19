package _internal.math.rand_test;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
function _getStatsResults(_samples:stdgo.Slice<stdgo.GoFloat64>):stdgo.Ref<_internal.math.rand_test.Rand_test_T_statsResults.T_statsResults> {
        var _res = (stdgo.Go.setRef(({} : _internal.math.rand_test.Rand_test_T_statsResults.T_statsResults)) : stdgo.Ref<_internal.math.rand_test.Rand_test_T_statsResults.T_statsResults>);
        var __0:stdgo.GoFloat64 = (0 : stdgo.GoFloat64), __1:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
var _squaresum = __1, _sum = __0;
        for (__4 => _s in _samples) {
            _sum = (_sum + (_s) : stdgo.GoFloat64);
            _squaresum = (_squaresum + ((_s * _s : stdgo.GoFloat64)) : stdgo.GoFloat64);
        };
        _res._mean = (_sum / (_samples.length : stdgo.GoFloat64) : stdgo.GoFloat64);
        _res._stddev = stdgo._internal.math.Math_sqrt.sqrt(((_squaresum / (_samples.length : stdgo.GoFloat64) : stdgo.GoFloat64) - (_res._mean * _res._mean : stdgo.GoFloat64) : stdgo.GoFloat64));
        return _res;
    }
