package stdgo._internal.crypto.x509;
function _isPrintable(_b:stdgo.GoUInt8):Bool {
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L35"
        return (((((((((((((97 : stdgo.GoUInt8) <= _b : Bool) && (_b <= (122 : stdgo.GoUInt8) : Bool) : Bool) || (((65 : stdgo.GoUInt8) <= _b : Bool) && (_b <= (90 : stdgo.GoUInt8) : Bool) : Bool) : Bool) || (((48 : stdgo.GoUInt8) <= _b : Bool) && (_b <= (57 : stdgo.GoUInt8) : Bool) : Bool) : Bool) || (((39 : stdgo.GoUInt8) <= _b : Bool) && (_b <= (41 : stdgo.GoUInt8) : Bool) : Bool) : Bool) || (((43 : stdgo.GoUInt8) <= _b : Bool) && (_b <= (47 : stdgo.GoUInt8) : Bool) : Bool) : Bool) || _b == ((32 : stdgo.GoUInt8)) : Bool) || _b == ((58 : stdgo.GoUInt8)) : Bool) || _b == ((61 : stdgo.GoUInt8)) : Bool) || _b == ((63 : stdgo.GoUInt8)) : Bool) || _b == ((42 : stdgo.GoUInt8)) : Bool) || (_b == (38 : stdgo.GoUInt8)) : Bool);
    }
