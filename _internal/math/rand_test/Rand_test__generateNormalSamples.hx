package _internal.math.rand_test;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
function _generateNormalSamples(_nsamples:stdgo.GoInt, _mean:stdgo.GoFloat64, _stddev:stdgo.GoFloat64, _seed:stdgo.GoInt64):stdgo.Slice<stdgo.GoFloat64> {
        var _r = stdgo._internal.math.rand.Rand_new_.new_(stdgo._internal.math.rand.Rand_newSource.newSource(_seed));
        var _samples = (new stdgo.Slice<stdgo.GoFloat64>((_nsamples : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
        for (_i => _ in _samples) {
            _samples[(_i : stdgo.GoInt)] = ((_r.normFloat64() * _stddev : stdgo.GoFloat64) + _mean : stdgo.GoFloat64);
        };
        return _samples;
    }
