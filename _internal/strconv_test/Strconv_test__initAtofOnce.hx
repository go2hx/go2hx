package _internal.strconv_test;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
function _initAtofOnce():Void {
        for (_i => _ in _internal.strconv_test.Strconv_test__atoftests._atoftests) {
            var _test = (stdgo.Go.setRef(_internal.strconv_test.Strconv_test__atoftests._atoftests[(_i : stdgo.GoInt)]) : stdgo.Ref<_internal.strconv_test.Strconv_test_T_atofTest.T_atofTest>);
            if (_test._err != null) {
                _test._err = stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.strconv.Strconv_NumError.NumError(("ParseFloat" : stdgo.GoString), _test._in?.__copy__(), _test._err) : stdgo._internal.strconv.Strconv_NumError.NumError)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>));
            };
        };
        for (_i => _ in _internal.strconv_test.Strconv_test__atof32tests._atof32tests) {
            var _test = (stdgo.Go.setRef(_internal.strconv_test.Strconv_test__atof32tests._atof32tests[(_i : stdgo.GoInt)]) : stdgo.Ref<_internal.strconv_test.Strconv_test_T_atofTest.T_atofTest>);
            if (_test._err != null) {
                _test._err = stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.strconv.Strconv_NumError.NumError(("ParseFloat" : stdgo.GoString), _test._in?.__copy__(), _test._err) : stdgo._internal.strconv.Strconv_NumError.NumError)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>));
            };
        };
        if (stdgo._internal.testing.Testing_short.short()) {
            _internal.strconv_test.Strconv_test__atofRandomTests._atofRandomTests = (new stdgo.Slice<_internal.strconv_test.Strconv_test_T_atofSimpleTest.T_atofSimpleTest>((100 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((100 : stdgo.GoInt).toBasic() > 0 ? (100 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : _internal.strconv_test.Strconv_test_T_atofSimpleTest.T_atofSimpleTest)]) : stdgo.Slice<_internal.strconv_test.Strconv_test_T_atofSimpleTest.T_atofSimpleTest>);
        } else {
            _internal.strconv_test.Strconv_test__atofRandomTests._atofRandomTests = (new stdgo.Slice<_internal.strconv_test.Strconv_test_T_atofSimpleTest.T_atofSimpleTest>((10000 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((10000 : stdgo.GoInt).toBasic() > 0 ? (10000 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : _internal.strconv_test.Strconv_test_T_atofSimpleTest.T_atofSimpleTest)]) : stdgo.Slice<_internal.strconv_test.Strconv_test_T_atofSimpleTest.T_atofSimpleTest>);
        };
        for (_i => _ in _internal.strconv_test.Strconv_test__atofRandomTests._atofRandomTests) {
            var _n = (((stdgo._internal.math.rand.Rand_uint32.uint32() : stdgo.GoUInt64) << (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) | (stdgo._internal.math.rand.Rand_uint32.uint32() : stdgo.GoUInt64) : stdgo.GoUInt64);
            var _x = (stdgo._internal.math.Math_float64frombits.float64frombits(_n) : stdgo.GoFloat64);
            var _s = (stdgo._internal.strconv.Strconv_formatFloat.formatFloat(_x, (103 : stdgo.GoUInt8), (-1 : stdgo.GoInt), (64 : stdgo.GoInt))?.__copy__() : stdgo.GoString);
            _internal.strconv_test.Strconv_test__atofRandomTests._atofRandomTests[(_i : stdgo.GoInt)] = (new _internal.strconv_test.Strconv_test_T_atofSimpleTest.T_atofSimpleTest(_x, _s?.__copy__()) : _internal.strconv_test.Strconv_test_T_atofSimpleTest.T_atofSimpleTest);
        };
        for (_i => _ in _internal.strconv_test.Strconv_test__benchmarksRandomBits._benchmarksRandomBits) {
            var _bits = (((stdgo._internal.math.rand.Rand_uint32.uint32() : stdgo.GoUInt64) << (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) | (stdgo._internal.math.rand.Rand_uint32.uint32() : stdgo.GoUInt64) : stdgo.GoUInt64);
            var _x = (stdgo._internal.math.Math_float64frombits.float64frombits(_bits) : stdgo.GoFloat64);
            _internal.strconv_test.Strconv_test__benchmarksRandomBits._benchmarksRandomBits[(_i : stdgo.GoInt)] = stdgo._internal.strconv.Strconv_formatFloat.formatFloat(_x, (103 : stdgo.GoUInt8), (-1 : stdgo.GoInt), (64 : stdgo.GoInt))?.__copy__();
        };
        for (_i => _ in _internal.strconv_test.Strconv_test__benchmarksRandomNormal._benchmarksRandomNormal) {
            var _x = (stdgo._internal.math.rand.Rand_normFloat64.normFloat64() : stdgo.GoFloat64);
            _internal.strconv_test.Strconv_test__benchmarksRandomNormal._benchmarksRandomNormal[(_i : stdgo.GoInt)] = stdgo._internal.strconv.Strconv_formatFloat.formatFloat(_x, (103 : stdgo.GoUInt8), (-1 : stdgo.GoInt), (64 : stdgo.GoInt))?.__copy__();
        };
    }
