package stdgo._internal.encoding.asn1;
function _appendFourDigits(_dst:stdgo.Slice<stdgo.GoUInt8>, _v:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> {
        var _bytes:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(4, 4).__setNumber32__();
        for (_i => _ in _bytes) {
            _bytes[((3 : stdgo.GoInt) - _i : stdgo.GoInt)] = ((48 : stdgo.GoUInt8) + ((_v % (10 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8) : stdgo.GoUInt8);
            _v = (_v / ((10 : stdgo.GoInt)) : stdgo.GoInt);
        };
        return (_dst.__append__(...((_bytes.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
    }
