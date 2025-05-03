package stdgo._internal.encoding.asn1;
function _lengthLength(_i:stdgo.GoInt):stdgo.GoInt {
        var _numBytes = (0 : stdgo.GoInt);
        _numBytes = (1 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/marshal.go#L243"
        while ((_i > (255 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/marshal.go#L244"
            _numBytes++;
            _i = (_i >> ((8i64 : stdgo.GoUInt64)) : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/marshal.go#L247"
        return _numBytes;
    }
