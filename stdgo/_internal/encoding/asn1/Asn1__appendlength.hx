package stdgo._internal.encoding.asn1;
function _appendLength(_dst:stdgo.Slice<stdgo.GoUInt8>, _i:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> {
        var _n = (stdgo._internal.encoding.asn1.Asn1__lengthlength._lengthLength(_i) : stdgo.GoInt);
        while ((_n > (0 : stdgo.GoInt) : Bool)) {
            _dst = (_dst.__append__(((_i >> ((((_n - (1 : stdgo.GoInt) : stdgo.GoInt)) * (8 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt) : stdgo.GoInt) : stdgo.GoUInt8)));
            _n--;
        };
        return _dst;
    }
