package _internal.math.bits_test;
import stdgo._internal.math.bits.Bits;
function testRem32(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __0 = ((510510u32 : stdgo.GoUInt32) : stdgo.GoUInt32), __1 = ((9699690u32 : stdgo.GoUInt32) : stdgo.GoUInt32), __2 = ((510511u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
var _y = __2, _lo = __1, _hi = __0;
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (1000 : stdgo.GoInt) : Bool), _i++, {
                var _r = (stdgo._internal.math.bits.Bits_rem32.rem32(_hi, _lo, _y) : stdgo.GoUInt32);
                var __tmp__ = stdgo._internal.math.bits.Bits_div32.div32(_hi, _lo, _y), __0:stdgo.GoUInt32 = __tmp__._0, _r2:stdgo.GoUInt32 = __tmp__._1;
                if (_r != (_r2)) {
                    _t.errorf(("Rem32(%v, %v, %v) returned %v, but Div32 returned rem %v" : stdgo.GoString), stdgo.Go.toInterface(_hi), stdgo.Go.toInterface(_lo), stdgo.Go.toInterface(_y), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_r2));
                };
                _y = (_y + ((13u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
            });
        };
    }
