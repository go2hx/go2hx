package _internal.math.rand_test;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
@:keep @:allow(_internal.math.rand_test.Rand_test.T_statsResults_asInterface) class T_statsResults_static_extension {
    @:keep
    static public function _checkSimilarDistribution( _this:stdgo.Ref<_internal.math.rand_test.Rand_test_T_statsResults.T_statsResults>, _expected:stdgo.Ref<_internal.math.rand_test.Rand_test_T_statsResults.T_statsResults>):stdgo.Error {
        @:recv var _this:stdgo.Ref<_internal.math.rand_test.Rand_test_T_statsResults.T_statsResults> = _this;
        if (!_internal.math.rand_test.Rand_test__nearEqual._nearEqual(_this._mean, _expected._mean, _expected._closeEnough, _expected._maxError)) {
            var _s = (stdgo._internal.fmt.Fmt_sprintf.sprintf(("mean %v != %v (allowed error %v, %v)" : stdgo.GoString), stdgo.Go.toInterface(_this._mean), stdgo.Go.toInterface(_expected._mean), stdgo.Go.toInterface(_expected._closeEnough), stdgo.Go.toInterface(_expected._maxError))?.__copy__() : stdgo.GoString);
            stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_s));
            return stdgo._internal.errors.Errors_new_.new_(_s?.__copy__());
        };
        if (!_internal.math.rand_test.Rand_test__nearEqual._nearEqual(_this._stddev, _expected._stddev, _expected._closeEnough, _expected._maxError)) {
            var _s = (stdgo._internal.fmt.Fmt_sprintf.sprintf(("stddev %v != %v (allowed error %v, %v)" : stdgo.GoString), stdgo.Go.toInterface(_this._stddev), stdgo.Go.toInterface(_expected._stddev), stdgo.Go.toInterface(_expected._closeEnough), stdgo.Go.toInterface(_expected._maxError))?.__copy__() : stdgo.GoString);
            stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_s));
            return stdgo._internal.errors.Errors_new_.new_(_s?.__copy__());
        };
        return (null : stdgo.Error);
    }
}
