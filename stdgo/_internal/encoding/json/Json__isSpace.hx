package stdgo._internal.encoding.json;
function _isSpace(_c:stdgo.GoUInt8):Bool {
        return ((_c <= (32 : stdgo.GoUInt8) : Bool) && ((((_c == ((32 : stdgo.GoUInt8)) || _c == ((9 : stdgo.GoUInt8)) : Bool) || _c == ((13 : stdgo.GoUInt8)) : Bool) || (_c == (10 : stdgo.GoUInt8)) : Bool)) : Bool);
    }
