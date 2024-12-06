package stdgo._internal.crypto.x509;
function _parseKeyUsageExtension(_der:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_):{ var _0 : stdgo._internal.crypto.x509.X509_KeyUsage.KeyUsage; var _1 : stdgo.Error; } {
        var _usageBits:stdgo._internal.encoding.asn1.Asn1_BitString.BitString = ({} : stdgo._internal.encoding.asn1.Asn1_BitString.BitString);
        var _usageBits__pointer__ = (stdgo.Go.setRef(_usageBits) : stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_BitString.BitString>);
        if (!_der.readASN1BitString(_usageBits__pointer__)) {
            return { _0 : (0 : stdgo._internal.crypto.x509.X509_KeyUsage.KeyUsage), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: invalid key usage" : stdgo.GoString)) };
        };
        var _usage:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (9 : stdgo.GoInt) : Bool)) {
                if (_usageBits.at(_i) != ((0 : stdgo.GoInt))) {
                    _usage = (_usage | (((1 : stdgo.GoInt) << (_i : stdgo.GoUInt) : stdgo.GoInt)) : stdgo.GoInt);
                };
                _i++;
            };
        };
        return { _0 : (_usage : stdgo._internal.crypto.x509.X509_KeyUsage.KeyUsage), _1 : (null : stdgo.Error) };
    }
