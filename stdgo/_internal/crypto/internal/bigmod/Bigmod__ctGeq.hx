package stdgo._internal.crypto.internal.bigmod;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.errors.Errors;
import stdgo._internal.unsafe.Unsafe;
function _ctGeq(_x:stdgo.GoUInt, _y:stdgo.GoUInt):stdgo._internal.crypto.internal.bigmod.Bigmod_T_choice.T_choice {
        var __tmp__ = stdgo._internal.math.bits.Bits_sub.sub(_x, _y, (0u32 : stdgo.GoUInt)), __0:stdgo.GoUInt = __tmp__._0, _carry:stdgo.GoUInt = __tmp__._1;
        return stdgo._internal.crypto.internal.bigmod.Bigmod__not._not((_carry : stdgo._internal.crypto.internal.bigmod.Bigmod_T_choice.T_choice));
    }
