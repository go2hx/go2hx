package _internal.math.rand_test;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
function _testReadUniformity(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _n:stdgo.GoInt, _seed:stdgo.GoInt64):Void {
        var _r = stdgo._internal.math.rand.Rand_new_.new_(stdgo._internal.math.rand.Rand_newSource.newSource(_seed));
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var __tmp__ = _r.read(_buf), _nRead:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.errorf(("Read err %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        if (_nRead != (_n)) {
            _t.errorf(("Read returned unexpected n; %d != %d" : stdgo.GoString), stdgo.Go.toInterface(_nRead), stdgo.Go.toInterface(_n));
        };
        var __0:stdgo.GoFloat64 = (127.5 : stdgo.GoFloat64), __1:stdgo.GoFloat64 = ((256 : stdgo.GoFloat64) / stdgo._internal.math.Math_sqrt.sqrt((12 : stdgo.GoFloat64)) : stdgo.GoFloat64), __2:stdgo.GoFloat64 = (_stddev / stdgo._internal.math.Math_sqrt.sqrt((_n : stdgo.GoFloat64)) : stdgo.GoFloat64);
var _errorScale = __2, _stddev = __1, _mean = __0;
        var _expected = (stdgo.Go.setRef((new _internal.math.rand_test.Rand_test_T_statsResults.T_statsResults(_mean, _stddev, ((0.1 : stdgo.GoFloat64) * _errorScale : stdgo.GoFloat64), ((0.08 : stdgo.GoFloat64) * _errorScale : stdgo.GoFloat64)) : _internal.math.rand_test.Rand_test_T_statsResults.T_statsResults)) : stdgo.Ref<_internal.math.rand_test.Rand_test_T_statsResults.T_statsResults>);
        var _samples = (new stdgo.Slice<stdgo.GoFloat64>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
        for (_i => _val in _buf) {
            _samples[(_i : stdgo.GoInt)] = (_val : stdgo.GoFloat64);
        };
        _internal.math.rand_test.Rand_test__checkSampleDistribution._checkSampleDistribution(_t, _samples, _expected);
    }
