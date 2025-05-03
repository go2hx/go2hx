package stdgo._internal.encoding.asn1;
function _appendLength(_dst:stdgo.Slice<stdgo.GoUInt8>, _i:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> {
        var _n = (stdgo._internal.encoding.asn1.Asn1__lengthlength._lengthLength(_i) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/marshal.go#L234"
        while ((_n > (0 : stdgo.GoInt) : Bool)) {
            _dst = (_dst.__append__(((_i >> ((((_n - (1 : stdgo.GoInt) : stdgo.GoInt)) * (8 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt) : stdgo.GoInt) : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
            _n--;
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/marshal.go#L238"
        return _dst;
    }
