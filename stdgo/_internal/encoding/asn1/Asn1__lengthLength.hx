package stdgo._internal.encoding.asn1;
function _lengthLength(_i:stdgo.GoInt):stdgo.GoInt {
        var _numBytes = (0 : stdgo.GoInt);
        _numBytes = (1 : stdgo.GoInt);
        while ((_i > (255 : stdgo.GoInt) : Bool)) {
            _numBytes++;
            _i = (_i >> ((8i64 : stdgo.GoUInt64)) : stdgo.GoInt);
        };
        return _numBytes;
    }
