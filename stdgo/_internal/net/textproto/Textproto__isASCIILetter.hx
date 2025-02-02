package stdgo._internal.net.textproto;
function _isASCIILetter(_b:stdgo.GoUInt8):Bool {
        _b = (_b | ((32 : stdgo.GoUInt8)) : stdgo.GoUInt8);
        return (((97 : stdgo.GoUInt8) <= _b : Bool) && (_b <= (122 : stdgo.GoUInt8) : Bool) : Bool);
    }
