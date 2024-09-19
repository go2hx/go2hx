package stdgo._internal.image;
function _match(_magic:stdgo.GoString, _b:stdgo.Slice<stdgo.GoUInt8>):Bool {
        if ((_magic.length) != ((_b.length))) {
            return false;
        };
        for (_i => _c in _b) {
            if (((_magic[(_i : stdgo.GoInt)] != _c) && (_magic[(_i : stdgo.GoInt)] != (63 : stdgo.GoUInt8)) : Bool)) {
                return false;
            };
        };
        return true;
    }
