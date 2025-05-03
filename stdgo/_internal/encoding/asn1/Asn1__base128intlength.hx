package stdgo._internal.encoding.asn1;
function _base128IntLength(_n:stdgo.GoInt64):stdgo.GoInt {
        //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/marshal.go#L169"
        if (_n == ((0i64 : stdgo.GoInt64))) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/marshal.go#L170"
            return (1 : stdgo.GoInt);
        };
        var _l = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/marshal.go#L174"
        {
            var _i = (_n : stdgo.GoInt64);
            while ((_i > (0i64 : stdgo.GoInt64) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/marshal.go#L175"
                _l++;
                _i = (_i >> ((7i64 : stdgo.GoUInt64)) : stdgo.GoInt64);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/marshal.go#L178"
        return _l;
    }
