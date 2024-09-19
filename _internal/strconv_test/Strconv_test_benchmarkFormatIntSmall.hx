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
function benchmarkFormatIntSmall(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _smallInts = (new stdgo.Slice<stdgo.GoInt64>(2, 2, ...[(7i64 : stdgo.GoInt64), (42i64 : stdgo.GoInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoInt64>);
        for (__0 => _smallInt in _smallInts) {
            _b.run(stdgo._internal.strconv.Strconv_itoa.itoa((_smallInt : stdgo.GoInt))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                        var _s = (stdgo._internal.strconv.Strconv_formatInt.formatInt(_smallInt, (10 : stdgo.GoInt))?.__copy__() : stdgo.GoString);
                        _internal.strconv_test.Strconv_test_benchSink.benchSink = (_internal.strconv_test.Strconv_test_benchSink.benchSink + ((_s.length)) : stdgo.GoInt);
                    });
                };
            });
        };
    }
