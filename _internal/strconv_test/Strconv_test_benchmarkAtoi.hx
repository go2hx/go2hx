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
function benchmarkAtoi(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        _b.run(("Pos" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
            _internal.strconv_test.Strconv_test__benchmarkAtoi._benchmarkAtoi(_b, (1 : stdgo.GoInt));
        });
        _b.run(("Neg" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
            _internal.strconv_test.Strconv_test__benchmarkAtoi._benchmarkAtoi(_b, (-1 : stdgo.GoInt));
        });
    }
