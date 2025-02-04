package stdgo._internal.crypto.internal.edwards25519;
function _isReduced(_s:stdgo.Slice<stdgo.GoUInt8>):Bool {
        if ((_s.length) != ((32 : stdgo.GoInt))) {
            return false;
        };
        {
            var _i = ((_s.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                if ((_s[(_i : stdgo.GoInt)] > stdgo._internal.crypto.internal.edwards25519.Edwards25519__scalarminusonebytes._scalarMinusOneBytes[(_i : stdgo.GoInt)] : Bool)) {
                    return false;
                } else if ((_s[(_i : stdgo.GoInt)] < stdgo._internal.crypto.internal.edwards25519.Edwards25519__scalarminusonebytes._scalarMinusOneBytes[(_i : stdgo.GoInt)] : Bool)) {
                    return true;
                };
                _i--;
            };
        };
        return true;
    }
