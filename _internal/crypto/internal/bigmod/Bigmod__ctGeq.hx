package _internal.crypto.internal.bigmod;
function _ctGeq(_x:stdgo.GoUInt, _y:stdgo.GoUInt):_internal.crypto.internal.bigmod.Bigmod_T_choice.T_choice {
        var __tmp__ = stdgo._internal.math.bits.Bits_sub.sub(_x, _y, (0u32 : stdgo.GoUInt)), __0:stdgo.GoUInt = __tmp__._0, _carry:stdgo.GoUInt = __tmp__._1;
        return _internal.crypto.internal.bigmod.Bigmod__not._not((_carry : _internal.crypto.internal.bigmod.Bigmod_T_choice.T_choice));
    }