package stdgo._internal.encoding.hex;
function _toChar(_b:stdgo.GoUInt8):stdgo.GoUInt8 {
        //"file:///home/runner/.go/go1.21.3/src/encoding/hex/hex.go#L238"
        if (((_b < (32 : stdgo.GoUInt8) : Bool) || (_b > (126 : stdgo.GoUInt8) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/hex/hex.go#L239"
            return (46 : stdgo.GoUInt8);
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/hex/hex.go#L241"
        return _b;
    }
