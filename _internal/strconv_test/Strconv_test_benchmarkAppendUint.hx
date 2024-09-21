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
function benchmarkAppendUint(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _dst = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (30 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                for (__8 => _test in _internal.strconv_test.Strconv_test__uitob64tests._uitob64tests) {
                    _dst = stdgo._internal.strconv.Strconv_appendUint.appendUint((_dst.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _test._in, _test._base);
                    _internal.strconv_test.Strconv_test_benchSink.benchSink = (_internal.strconv_test.Strconv_test_benchSink.benchSink + ((_dst.length)) : stdgo.GoInt);
                };
            });
        };
    }
