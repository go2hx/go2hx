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
function benchmarkFormatInt(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                for (__8 => _test in _internal.strconv_test.Strconv_test__itob64tests._itob64tests) {
                    var _s = (stdgo._internal.strconv.Strconv_formatInt.formatInt(_test._in, _test._base)?.__copy__() : stdgo.GoString);
                    _internal.strconv_test.Strconv_test_benchSink.benchSink = (_internal.strconv_test.Strconv_test_benchSink.benchSink + ((_s.length)) : stdgo.GoInt);
                };
            });
        };
    }