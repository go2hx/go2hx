package stdgo._internal.encoding.asn1;
function _isNumeric(_b:stdgo.GoUInt8):Bool {
        //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L400"
        return ((((48 : stdgo.GoUInt8) <= _b : Bool) && (_b <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_b == (32 : stdgo.GoUInt8)) : Bool);
    }
