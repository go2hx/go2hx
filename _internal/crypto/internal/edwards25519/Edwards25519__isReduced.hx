package _internal.crypto.internal.edwards25519;
function _isReduced(_s:stdgo.Slice<stdgo.GoUInt8>):Bool {
        if ((_s.length) != ((32 : stdgo.GoInt))) {
            return false;
        };
        {
            var _i = ((_s.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            stdgo.Go.cfor((_i >= (0 : stdgo.GoInt) : Bool), _i--, {
                if ((_s[(_i : stdgo.GoInt)] > _internal.crypto.internal.edwards25519.Edwards25519__scalarMinusOneBytes._scalarMinusOneBytes[(_i : stdgo.GoInt)] : Bool)) {
                    return false;
                } else if ((_s[(_i : stdgo.GoInt)] < _internal.crypto.internal.edwards25519.Edwards25519__scalarMinusOneBytes._scalarMinusOneBytes[(_i : stdgo.GoInt)] : Bool)) {
                    return true;
                };
            });
        };
        return true;
    }
