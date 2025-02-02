package stdgo._internal.net.url;
function _validOptionalPort(_port:stdgo.GoString):Bool {
        if (_port == ((stdgo.Go.str() : stdgo.GoString))) {
            return true;
        };
        if (_port[(0 : stdgo.GoInt)] != ((58 : stdgo.GoUInt8))) {
            return false;
        };
        for (__0 => _b in (_port.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)) {
            if (((_b < (48 : stdgo.GoInt32) : Bool) || (_b > (57 : stdgo.GoInt32) : Bool) : Bool)) {
                return false;
            };
        };
        return true;
    }
