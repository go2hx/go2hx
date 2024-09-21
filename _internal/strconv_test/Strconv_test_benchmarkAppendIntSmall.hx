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
function benchmarkAppendIntSmall(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _dst = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (30 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        {};
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _dst = stdgo._internal.strconv.Strconv_appendInt.appendInt((_dst.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (42i64 : stdgo.GoInt64), (10 : stdgo.GoInt));
                _internal.strconv_test.Strconv_test_benchSink.benchSink = (_internal.strconv_test.Strconv_test_benchSink.benchSink + ((_dst.length)) : stdgo.GoInt);
            });
        };
    }
