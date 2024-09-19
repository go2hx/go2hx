package stdgo._internal.math.bits;
import stdgo._internal.unsafe.Unsafe;
function add(_x:stdgo.GoUInt, _y:stdgo.GoUInt, _carry:stdgo.GoUInt):{ var _0 : stdgo.GoUInt; var _1 : stdgo.GoUInt; } {
        var _sum = (0 : stdgo.GoUInt), _carryOut = (0 : stdgo.GoUInt);
        if (true) {
            var __tmp__ = stdgo._internal.math.bits.Bits_add32.add32((_x : stdgo.GoUInt32), (_y : stdgo.GoUInt32), (_carry : stdgo.GoUInt32)), _s32:stdgo.GoUInt32 = __tmp__._0, _c32:stdgo.GoUInt32 = __tmp__._1;
            return { _0 : (_s32 : stdgo.GoUInt), _1 : (_c32 : stdgo.GoUInt) };
        };
        var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64((_x : stdgo.GoUInt64), (_y : stdgo.GoUInt64), (_carry : stdgo.GoUInt64)), _s64:stdgo.GoUInt64 = __tmp__._0, _c64:stdgo.GoUInt64 = __tmp__._1;
        return { _0 : (_s64 : stdgo.GoUInt), _1 : (_c64 : stdgo.GoUInt) };
    }
