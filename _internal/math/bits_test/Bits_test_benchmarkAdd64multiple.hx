package _internal.math.bits_test;
import stdgo._internal.math.bits.Bits;
function benchmarkAdd64multiple(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _z0:stdgo.GoUInt64 = (_internal.math.bits_test.Bits_test_input.input : stdgo.GoUInt64);
        var _z1:stdgo.GoUInt64 = (_internal.math.bits_test.Bits_test_input.input : stdgo.GoUInt64);
        var _z2:stdgo.GoUInt64 = (_internal.math.bits_test.Bits_test_input.input : stdgo.GoUInt64);
        var _z3:stdgo.GoUInt64 = (_internal.math.bits_test.Bits_test_input.input : stdgo.GoUInt64);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                var _c:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
                {
                    var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_z0, (_i : stdgo.GoUInt64), _c);
                    _z0 = __tmp__._0;
                    _c = __tmp__._1;
                };
                {
                    var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_z1, (_i : stdgo.GoUInt64), _c);
                    _z1 = __tmp__._0;
                    _c = __tmp__._1;
                };
                {
                    var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_z2, (_i : stdgo.GoUInt64), _c);
                    _z2 = __tmp__._0;
                    _c = __tmp__._1;
                };
                {
                    var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_z3, (_i : stdgo.GoUInt64), _c);
                    _z3 = __tmp__._0;
                };
            });
        };
        _internal.math.bits_test.Bits_test_output.output = ((((_z0 + _z1 : stdgo.GoUInt64) + _z2 : stdgo.GoUInt64) + _z3 : stdgo.GoUInt64) : stdgo.GoInt);
    }
