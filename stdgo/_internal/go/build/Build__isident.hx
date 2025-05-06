package stdgo._internal.go.build;
function _isIdent(_c:stdgo.GoUInt8):Bool {
        //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L55"
        return (((((((65 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (90 : stdgo.GoUInt8) : Bool) : Bool) || (((97 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (122 : stdgo.GoUInt8) : Bool) : Bool) : Bool) || (((48 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (57 : stdgo.GoUInt8) : Bool) : Bool) : Bool) || _c == ((95 : stdgo.GoUInt8)) : Bool) || (_c >= (128 : stdgo.GoUInt8) : Bool) : Bool);
    }
