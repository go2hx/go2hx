package _internal.math.rand_test;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
@:structInit @:using(_internal.math.rand_test.Rand_test_T_statsResults_static_extension.T_statsResults_static_extension) class T_statsResults {
    public var _mean : stdgo.GoFloat64 = 0;
    public var _stddev : stdgo.GoFloat64 = 0;
    public var _closeEnough : stdgo.GoFloat64 = 0;
    public var _maxError : stdgo.GoFloat64 = 0;
    public function new(?_mean:stdgo.GoFloat64, ?_stddev:stdgo.GoFloat64, ?_closeEnough:stdgo.GoFloat64, ?_maxError:stdgo.GoFloat64) {
        if (_mean != null) this._mean = _mean;
        if (_stddev != null) this._stddev = _stddev;
        if (_closeEnough != null) this._closeEnough = _closeEnough;
        if (_maxError != null) this._maxError = _maxError;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_statsResults(_mean, _stddev, _closeEnough, _maxError);
    }
}
