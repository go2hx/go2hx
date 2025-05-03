package stdgo._internal.crypto.x509;
function _parseKeyUsageExtension(_der:_internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_):{ var _0 : stdgo._internal.crypto.x509.X509_keyusage.KeyUsage; var _1 : stdgo.Error; } {
        var _usageBits:stdgo._internal.encoding.asn1.Asn1_bitstring.BitString = ({} : stdgo._internal.encoding.asn1.Asn1_bitstring.BitString);
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L321"
        if (!_der.readASN1BitString((stdgo.Go.setRef(_usageBits) : stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_bitstring.BitString>))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L322"
            return { _0 : (0 : stdgo._internal.crypto.x509.X509_keyusage.KeyUsage), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: invalid key usage" : stdgo.GoString)) };
        };
        var _usage:stdgo.GoInt = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L326"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (9 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L327"
                if (_usageBits.at(_i) != ((0 : stdgo.GoInt))) {
                    _usage = (_usage | (((1 : stdgo.GoInt) << (_i : stdgo.GoUInt) : stdgo.GoInt)) : stdgo.GoInt);
                };
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L331"
        return { _0 : (_usage : stdgo._internal.crypto.x509.X509_keyusage.KeyUsage), _1 : (null : stdgo.Error) };
    }
