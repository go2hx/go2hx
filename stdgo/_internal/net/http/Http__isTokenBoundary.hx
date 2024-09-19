package stdgo._internal.net.http;
function _isTokenBoundary(_b:stdgo.GoUInt8):Bool {
        return ((_b == ((32 : stdgo.GoUInt8)) || _b == ((44 : stdgo.GoUInt8)) : Bool) || (_b == (9 : stdgo.GoUInt8)) : Bool);
    }
