package _internal.math.bits_test;
import stdgo._internal.math.bits.Bits;
function benchmarkMul64(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var __0:stdgo.GoUInt64 = (0 : stdgo.GoUInt64), __1:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var _lo = __1, _hi = __0;
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                {
                    var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64((_internal.math.bits_test.Bits_test_input.input : stdgo.GoUInt64), (_i : stdgo.GoUInt64));
                    _hi = __tmp__._0;
                    _lo = __tmp__._1;
                };
            });
        };
        _internal.math.bits_test.Bits_test_output.output = ((_hi + _lo : stdgo.GoUInt64) : stdgo.GoInt);
    }