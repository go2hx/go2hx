package _internal.math.bits_test;
import stdgo._internal.math.bits.Bits;
function benchmarkTrailingZeros64(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _s:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _s = (_s + (stdgo._internal.math.bits.Bits_trailingZeros64.trailingZeros64(((_internal.math.bits_test.Bits_test_input.input : stdgo.GoUInt64) << (((_i : stdgo.GoUInt) % (64u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt64))) : stdgo.GoInt);
            });
        };
        _internal.math.bits_test.Bits_test_output.output = _s;
    }
