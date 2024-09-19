package _internal.math.bits_test;
import stdgo._internal.math.bits.Bits;
function benchmarkReverse8(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _s:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _s = (_s + (stdgo._internal.math.bits.Bits_reverse8.reverse8((_i : stdgo.GoUInt8))) : stdgo.GoUInt8);
            });
        };
        _internal.math.bits_test.Bits_test_output.output = (_s : stdgo.GoInt);
    }
