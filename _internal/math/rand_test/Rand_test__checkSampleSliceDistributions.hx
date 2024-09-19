package _internal.math.rand_test;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
function _checkSampleSliceDistributions(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _samples:stdgo.Slice<stdgo.GoFloat64>, _nslices:stdgo.GoInt, _expected:stdgo.Ref<_internal.math.rand_test.Rand_test_T_statsResults.T_statsResults>):Void {
        _t.helper();
        var _chunk = ((_samples.length) / _nslices : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _nslices : Bool), _i++, {
                var _low = (_i * _chunk : stdgo.GoInt);
                var _high:stdgo.GoInt = (0 : stdgo.GoInt);
                if (_i == ((_nslices - (1 : stdgo.GoInt) : stdgo.GoInt))) {
                    _high = ((_samples.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                } else {
                    _high = (((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) * _chunk : stdgo.GoInt);
                };
                _internal.math.rand_test.Rand_test__checkSampleDistribution._checkSampleDistribution(_t, (_samples.__slice__(_low, _high) : stdgo.Slice<stdgo.GoFloat64>), _expected);
            });
        };
    }
