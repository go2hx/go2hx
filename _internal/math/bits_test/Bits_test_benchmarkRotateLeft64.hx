package _internal.math.bits_test;
import stdgo._internal.math.bits.Bits;
function benchmarkRotateLeft64(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _s:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _s = (_s + (stdgo._internal.math.bits.Bits_rotateLeft64.rotateLeft64((_internal.math.bits_test.Bits_test_input.input : stdgo.GoUInt64), _i)) : stdgo.GoUInt64);
            });
        };
        _internal.math.bits_test.Bits_test_output.output = (_s : stdgo.GoInt);
    }
