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
function benchmarkAppendQuoteRune(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _internal.strconv_test.Strconv_test__benchQuoteRuneBuf._benchQuoteRuneBuf = stdgo._internal.strconv.Strconv_appendQuoteRune.appendQuoteRune((_internal.strconv_test.Strconv_test__benchQuoteRuneBuf._benchQuoteRuneBuf.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (7 : stdgo.GoInt32));
            });
        };
    }
