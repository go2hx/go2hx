package stdgo._internal.net.http;
function _http2validPseudoPath(_v:stdgo.GoString):Bool {
        return (((((_v.length) > (0 : stdgo.GoInt) : Bool) && (_v[(0 : stdgo.GoInt)] == (47 : stdgo.GoUInt8)) : Bool)) || (_v == ("*" : stdgo.GoString)) : Bool);
    }
