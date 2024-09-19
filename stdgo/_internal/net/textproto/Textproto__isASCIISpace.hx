package stdgo._internal.net.textproto;
function _isASCIISpace(_b:stdgo.GoUInt8):Bool {
        return (((_b == ((32 : stdgo.GoUInt8)) || _b == ((9 : stdgo.GoUInt8)) : Bool) || _b == ((10 : stdgo.GoUInt8)) : Bool) || (_b == (13 : stdgo.GoUInt8)) : Bool);
    }
