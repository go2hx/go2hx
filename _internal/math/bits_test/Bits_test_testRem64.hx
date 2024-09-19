package _internal.math.bits_test;
import stdgo._internal.math.bits.Bits;
function testRem64(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __0 = ((510510i64 : stdgo.GoUInt64) : stdgo.GoUInt64), __1 = ((9699690i64 : stdgo.GoUInt64) : stdgo.GoUInt64), __2 = ((510511i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
var _y = __2, _lo = __1, _hi = __0;
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (1000 : stdgo.GoInt) : Bool), _i++, {
                var _r = (stdgo._internal.math.bits.Bits_rem64.rem64(_hi, _lo, _y) : stdgo.GoUInt64);
                var __tmp__ = stdgo._internal.math.bits.Bits_div64.div64(_hi, _lo, _y), __0:stdgo.GoUInt64 = __tmp__._0, _r2:stdgo.GoUInt64 = __tmp__._1;
                if (_r != (_r2)) {
                    _t.errorf(("Rem64(%v, %v, %v) returned %v, but Div64 returned rem %v" : stdgo.GoString), stdgo.Go.toInterface(_hi), stdgo.Go.toInterface(_lo), stdgo.Go.toInterface(_y), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_r2));
                };
                _y = (_y + ((13i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
            });
        };
    }
