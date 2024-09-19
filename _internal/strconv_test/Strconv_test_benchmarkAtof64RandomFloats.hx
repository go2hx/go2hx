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
function benchmarkAtof64RandomFloats(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        _internal.strconv_test.Strconv_test__initAtof._initAtof();
        _b.resetTimer();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                stdgo._internal.strconv.Strconv_parseFloat.parseFloat(_internal.strconv_test.Strconv_test__benchmarksRandomNormal._benchmarksRandomNormal[(_i % (1024 : stdgo.GoInt) : stdgo.GoInt)]?.__copy__(), (64 : stdgo.GoInt));
            });
        };
    }
