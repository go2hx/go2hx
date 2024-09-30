package stdgo._internal.crypto.x509;
function _toLowerCaseASCII(_in:stdgo.GoString):stdgo.GoString {
        var _isAlreadyLowerCase = (true : Bool);
        for (__1 => _c in _in) {
            if (_c == ((65533 : stdgo.GoInt32))) {
                _isAlreadyLowerCase = false;
                break;
            };
            if ((((65 : stdgo.GoInt32) <= _c : Bool) && (_c <= (90 : stdgo.GoInt32) : Bool) : Bool)) {
                _isAlreadyLowerCase = false;
                break;
            };
        };
        if (_isAlreadyLowerCase) {
            return _in?.__copy__();
        };
        var _out = (_in : stdgo.Slice<stdgo.GoUInt8>);
        for (_i => _c in _out) {
            if ((((65 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                _out[(_i : stdgo.GoInt)] = (_out[(_i : stdgo.GoInt)] + ((32 : stdgo.GoUInt8)) : stdgo.GoUInt8);
            };
        };
        return (_out : stdgo.GoString)?.__copy__();
    }
