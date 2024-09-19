package _internal.math.bits_test;
import stdgo._internal.math.bits.Bits;
function benchmarkReverseBytes(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _s:stdgo.GoUInt = (0 : stdgo.GoUInt);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _s = (_s + (stdgo._internal.math.bits.Bits_reverseBytes.reverseBytes((_i : stdgo.GoUInt))) : stdgo.GoUInt);
            });
        };
        _internal.math.bits_test.Bits_test_output.output = (_s : stdgo.GoInt);
    }
