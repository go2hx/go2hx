package _internal.math.bits_test;
import stdgo._internal.math.bits.Bits;
function benchmarkAdd32(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var __0:stdgo.GoUInt32 = (0 : stdgo.GoUInt32), __1:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
var _c = __1, _z = __0;
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                {
                    var __tmp__ = stdgo._internal.math.bits.Bits_add32.add32((_internal.math.bits_test.Bits_test_input.input : stdgo.GoUInt32), (_i : stdgo.GoUInt32), _c);
                    _z = __tmp__._0;
                    _c = __tmp__._1;
                };
            });
        };
        _internal.math.bits_test.Bits_test_output.output = ((_z + _c : stdgo.GoUInt32) : stdgo.GoInt);
    }
