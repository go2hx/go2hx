package stdgo._internal.crypto.internal.edwards25519;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.errors.Errors;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.crypto.subtle.Subtle;
function _isReduced(_s:stdgo.Slice<stdgo.GoUInt8>):Bool {
        if ((_s.length) != ((32 : stdgo.GoInt))) {
            return false;
        };
        {
            var _i = ((_s.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                if ((_s[(_i : stdgo.GoInt)] > stdgo._internal.crypto.internal.edwards25519.Edwards25519__scalarMinusOneBytes._scalarMinusOneBytes[(_i : stdgo.GoInt)] : Bool)) {
                    return false;
                } else if ((_s[(_i : stdgo.GoInt)] < stdgo._internal.crypto.internal.edwards25519.Edwards25519__scalarMinusOneBytes._scalarMinusOneBytes[(_i : stdgo.GoInt)] : Bool)) {
                    return true;
                };
                _i--;
            };
        };
        return true;
    }
