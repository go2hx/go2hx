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
function _benchmarkAtoi(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>, _neg:stdgo.GoInt):Void {
        var _cases = (new stdgo.Slice<_internal.strconv_test.Strconv_test_T_benchCase.T_benchCase>(3, 3, ...[(new _internal.strconv_test.Strconv_test_T_benchCase.T_benchCase(("7bit" : stdgo.GoString), (127i64 : stdgo.GoInt64)) : _internal.strconv_test.Strconv_test_T_benchCase.T_benchCase), (new _internal.strconv_test.Strconv_test_T_benchCase.T_benchCase(("26bit" : stdgo.GoString), (67108863i64 : stdgo.GoInt64)) : _internal.strconv_test.Strconv_test_T_benchCase.T_benchCase), (new _internal.strconv_test.Strconv_test_T_benchCase.T_benchCase(("31bit" : stdgo.GoString), (2147483647i64 : stdgo.GoInt64)) : _internal.strconv_test.Strconv_test_T_benchCase.T_benchCase)].concat([for (i in 3 ... (3 > 3 ? 3 : 3 : stdgo.GoInt).toBasic()) ({} : _internal.strconv_test.Strconv_test_T_benchCase.T_benchCase)])) : stdgo.Slice<_internal.strconv_test.Strconv_test_T_benchCase.T_benchCase>);
        if (false) {
            _cases = (_cases.__append__(...((new stdgo.Slice<_internal.strconv_test.Strconv_test_T_benchCase.T_benchCase>(2, 2, ...[(new _internal.strconv_test.Strconv_test_T_benchCase.T_benchCase(("56bit" : stdgo.GoString), (72057594037927935i64 : stdgo.GoInt64)) : _internal.strconv_test.Strconv_test_T_benchCase.T_benchCase), (new _internal.strconv_test.Strconv_test_T_benchCase.T_benchCase(("63bit" : stdgo.GoString), (9223372036854775807i64 : stdgo.GoInt64)) : _internal.strconv_test.Strconv_test_T_benchCase.T_benchCase)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({} : _internal.strconv_test.Strconv_test_T_benchCase.T_benchCase)])) : stdgo.Slice<_internal.strconv_test.Strconv_test_T_benchCase.T_benchCase>) : Array<_internal.strconv_test.Strconv_test_T_benchCase.T_benchCase>)));
        };
        for (__0 => _cs in _cases) {
            _b.run(_cs._name?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                var _s = (stdgo._internal.fmt.Fmt_sprintf.sprintf(("%d" : stdgo.GoString), stdgo.Go.toInterface((_cs._num * (_neg : stdgo.GoInt64) : stdgo.GoInt64)))?.__copy__() : stdgo.GoString);
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                        var __tmp__ = stdgo._internal.strconv.Strconv_atoi.atoi(_s?.__copy__()), _out:stdgo.GoInt = __tmp__._0, __17:stdgo.Error = __tmp__._1;
                        _internal.strconv_test.Strconv_test_benchSink.benchSink = (_internal.strconv_test.Strconv_test_benchSink.benchSink + (_out) : stdgo.GoInt);
                    });
                };
            });
        };
    }
