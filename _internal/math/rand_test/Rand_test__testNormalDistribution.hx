package _internal.math.rand_test;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
function _testNormalDistribution(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _nsamples:stdgo.GoInt, _mean:stdgo.GoFloat64, _stddev:stdgo.GoFloat64, _seed:stdgo.GoInt64):Void {
        var _samples = _internal.math.rand_test.Rand_test__generateNormalSamples._generateNormalSamples(_nsamples, _mean, _stddev, _seed);
        var _errorScale = (_internal.math.rand_test.Rand_test__max._max((1 : stdgo.GoFloat64), _stddev) : stdgo.GoFloat64);
        var _expected = (stdgo.Go.setRef((new _internal.math.rand_test.Rand_test_T_statsResults.T_statsResults(_mean, _stddev, ((0.1 : stdgo.GoFloat64) * _errorScale : stdgo.GoFloat64), ((0.08 : stdgo.GoFloat64) * _errorScale : stdgo.GoFloat64)) : _internal.math.rand_test.Rand_test_T_statsResults.T_statsResults)) : stdgo.Ref<_internal.math.rand_test.Rand_test_T_statsResults.T_statsResults>);
        _internal.math.rand_test.Rand_test__checkSampleDistribution._checkSampleDistribution(_t, _samples, _expected);
        _internal.math.rand_test.Rand_test__checkSampleSliceDistributions._checkSampleSliceDistributions(_t, _samples, (2 : stdgo.GoInt), _expected);
        _internal.math.rand_test.Rand_test__checkSampleSliceDistributions._checkSampleSliceDistributions(_t, _samples, (7 : stdgo.GoInt), _expected);
    }
