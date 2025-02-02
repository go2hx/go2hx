package stdgo._internal.encoding.asn1;
function _appendTwoDigits(_dst:stdgo.Slice<stdgo.GoUInt8>, _v:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> {
        return (_dst.__append__((((48 : stdgo.GoInt) + (((_v / (10 : stdgo.GoInt) : stdgo.GoInt)) % (10 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8), (((48 : stdgo.GoInt) + (_v % (10 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8)));
    }
