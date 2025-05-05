package stdgo._internal.crypto.x509;
function _toLowerCaseASCII(_in:stdgo.GoString):stdgo.GoString {
        var _isAlreadyLowerCase = (true : Bool);
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L1049"
        for (__1 => _c in _in) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L1050"
            if (_c == ((65533 : stdgo.GoInt32))) {
                _isAlreadyLowerCase = false;
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L1054"
                break;
            };
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L1056"
            if ((((65 : stdgo.GoInt32) <= _c : Bool) && (_c <= (90 : stdgo.GoInt32) : Bool) : Bool)) {
                _isAlreadyLowerCase = false;
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L1058"
                break;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L1062"
        if (_isAlreadyLowerCase) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L1063"
            return _in?.__copy__();
        };
        var _out = (_in : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L1067"
        for (_i => _c in _out) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L1068"
            if ((((65 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                _out[(_i : stdgo.GoInt)] = (_out[(_i : stdgo.GoInt)] + ((32 : stdgo.GoUInt8)) : stdgo.GoUInt8);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L1072"
        return (_out : stdgo.GoString)?.__copy__();
    }
