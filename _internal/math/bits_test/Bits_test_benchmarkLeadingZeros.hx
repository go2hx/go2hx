package _internal.math.bits_test;
import stdgo._internal.math.bits.Bits;
function benchmarkLeadingZeros(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _s:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _s = (_s + (stdgo._internal.math.bits.Bits_leadingZeros.leadingZeros(((_internal.math.bits_test.Bits_test_input.input : stdgo.GoUInt) >> (((_i : stdgo.GoUInt) % (32u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt))) : stdgo.GoInt);
            });
        };
        _internal.math.bits_test.Bits_test_output.output = _s;
    }
