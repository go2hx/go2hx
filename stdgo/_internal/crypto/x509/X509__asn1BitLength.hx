package stdgo._internal.crypto.x509;
function _asn1BitLength(_bitString:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt {
        var _bitLen = ((_bitString.length) * (8 : stdgo.GoInt) : stdgo.GoInt);
        for (_i => _ in _bitString) {
            var _b = (_bitString[(((_bitString.length) - _i : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt8);
            {
                var _bit = ((0u32 : stdgo.GoUInt) : stdgo.GoUInt);
                while ((_bit < (8u32 : stdgo.GoUInt) : Bool)) {
                    if ((((_b >> _bit : stdgo.GoUInt8)) & (1 : stdgo.GoUInt8) : stdgo.GoUInt8) == ((1 : stdgo.GoUInt8))) {
                        return _bitLen;
                    };
_bitLen--;
                    _bit++;
                };
            };
        };
        return (0 : stdgo.GoInt);
    }
