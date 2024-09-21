package _internal.math.bits_test;
import stdgo._internal.math.bits.Bits;
function benchmarkRotateLeft16(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _s:stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _s = (_s + (stdgo._internal.math.bits.Bits_rotateLeft16.rotateLeft16((_internal.math.bits_test.Bits_test_input.input : stdgo.GoUInt16), _i)) : stdgo.GoUInt16);
            });
        };
        _internal.math.bits_test.Bits_test_output.output = (_s : stdgo.GoInt);
    }
