package stdgo._internal.crypto.internal.nistec.fiat;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.errors.Errors;
function _p256CmovznzU64(_out1:stdgo.Pointer<stdgo.GoUInt64>, _arg1:stdgo._internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1, _arg2:stdgo.GoUInt64, _arg3:stdgo.GoUInt64):Void {
        var _x1 = (((_arg1 : stdgo.GoUInt64) * (-1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _x2 = ((((_x1 & _arg3 : stdgo.GoUInt64)) | ((((-1 ^ _x1)) & _arg2 : stdgo.GoUInt64)) : stdgo.GoUInt64) : stdgo.GoUInt64);
        _out1.value = _x2;
    }
