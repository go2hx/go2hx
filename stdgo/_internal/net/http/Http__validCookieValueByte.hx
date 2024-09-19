package stdgo._internal.net.http;
function _validCookieValueByte(_b:stdgo.GoUInt8):Bool {
        return ((((((32 : stdgo.GoUInt8) <= _b : Bool) && (_b < (127 : stdgo.GoUInt8) : Bool) : Bool) && _b != ((34 : stdgo.GoUInt8)) : Bool) && _b != ((59 : stdgo.GoUInt8)) : Bool) && (_b != (92 : stdgo.GoUInt8)) : Bool);
    }
