package stdgo._internal.crypto.x509;
function _asn1BitLength(_bitString:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt {
        var _bitLen = ((_bitString.length) * (8 : stdgo.GoInt) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1005"
        for (_i => _ in _bitString) {
            var _b = (_bitString[(((_bitString.length) - _i : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt8);
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1008"
            {
                var _bit = ((0u32 : stdgo.GoUInt) : stdgo.GoUInt);
                while ((_bit < (8u32 : stdgo.GoUInt) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1009"
                    if ((((_b >> _bit : stdgo.GoUInt8)) & (1 : stdgo.GoUInt8) : stdgo.GoUInt8) == ((1 : stdgo.GoUInt8))) {
                        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1010"
                        return _bitLen;
                    };
//"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1012"
                    _bitLen--;
                    _bit++;
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1016"
        return (0 : stdgo.GoInt);
    }
