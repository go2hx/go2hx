package _internal.math.rand_test;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
function _checkSampleDistribution(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _samples:stdgo.Slice<stdgo.GoFloat64>, _expected:stdgo.Ref<_internal.math.rand_test.Rand_test_T_statsResults.T_statsResults>):Void {
        _t.helper();
        var _actual = _internal.math.rand_test.Rand_test__getStatsResults._getStatsResults(_samples);
        var _err = (_actual._checkSimilarDistribution(_expected) : stdgo.Error);
        if (_err != null) {
            _t.errorf(_err.error()?.__copy__());
        };
    }
