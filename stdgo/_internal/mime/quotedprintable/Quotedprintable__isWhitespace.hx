package stdgo._internal.mime.quotedprintable;
function _isWhitespace(_b:stdgo.GoUInt8):Bool {
        return ((_b == (32 : stdgo.GoUInt8)) || (_b == (9 : stdgo.GoUInt8)) : Bool);
    }
