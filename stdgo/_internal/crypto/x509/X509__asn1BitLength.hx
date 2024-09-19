package stdgo._internal.crypto.x509;
import stdgo._internal.crypto.sha1.Sha1;
import stdgo._internal.crypto.sha256.Sha256;
import stdgo._internal.crypto.sha512.Sha512;
function _asn1BitLength(_bitString:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt {
        var _bitLen = ((_bitString.length) * (8 : stdgo.GoInt) : stdgo.GoInt);
        for (_i => _ in _bitString) {
            var _b = (_bitString[(((_bitString.length) - _i : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt8);
            {
                var _bit = ((0u32 : stdgo.GoUInt) : stdgo.GoUInt);
                stdgo.Go.cfor((_bit < (8u32 : stdgo.GoUInt) : Bool), _bit++, {
                    if ((((_b >> _bit : stdgo.GoUInt8)) & (1 : stdgo.GoUInt8) : stdgo.GoUInt8) == ((1 : stdgo.GoUInt8))) {
                        return _bitLen;
                    };
                    _bitLen--;
                });
            };
        };
        return (0 : stdgo.GoInt);
    }