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
function benchmarkAppendUintVarlen(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        for (__0 => _test in _internal.strconv_test.Strconv_test__varlenUints._varlenUints) {
            _b.run(_test._out?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                var _dst = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (30 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                {
                    var _j = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_j < _b.n : Bool), _j++, {
                        _dst = stdgo._internal.strconv.Strconv_appendUint.appendUint((_dst.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _test._in, (10 : stdgo.GoInt));
                        _internal.strconv_test.Strconv_test_benchSink.benchSink = (_internal.strconv_test.Strconv_test_benchSink.benchSink + ((_dst.length)) : stdgo.GoInt);
                    });
                };
            });
        };
    }
