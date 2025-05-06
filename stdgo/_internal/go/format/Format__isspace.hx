package stdgo._internal.go.format;
function _isSpace(_b:stdgo.GoUInt8):Bool {
        //"file:///home/runner/.go/go1.21.3/src/go/format/internal.go#L175"
        return (((_b == ((32 : stdgo.GoUInt8)) || _b == ((9 : stdgo.GoUInt8)) : Bool) || _b == ((10 : stdgo.GoUInt8)) : Bool) || (_b == (13 : stdgo.GoUInt8)) : Bool);
    }
