package stdgo._internal.crypto.x509;
function parsePKIXPublicKey(_derBytes:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.AnyInterface; var _1 : stdgo.Error; } {
        var _pub = (null : stdgo.AnyInterface), _err = (null : stdgo.Error);
        var _pki:stdgo._internal.crypto.x509.X509_T_publicKeyInfo.T_publicKeyInfo = ({} : stdgo._internal.crypto.x509.X509_T_publicKeyInfo.T_publicKeyInfo);
        var _pki__pointer__ = (stdgo.Go.setRef(_pki) : stdgo.Ref<stdgo._internal.crypto.x509.X509_T_publicKeyInfo.T_publicKeyInfo>);
        {
            var __tmp__ = stdgo._internal.encoding.asn1.Asn1_unmarshal.unmarshal(_derBytes, stdgo.Go.toInterface(_pki__pointer__)), _rest:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                {
                    var __tmp__ = stdgo._internal.encoding.asn1.Asn1_unmarshal.unmarshal(_derBytes, stdgo.Go.toInterface((stdgo.Go.setRef((new stdgo._internal.crypto.x509.X509_T_pkcs1PublicKey.T_pkcs1PublicKey() : stdgo._internal.crypto.x509.X509_T_pkcs1PublicKey.T_pkcs1PublicKey)) : stdgo.Ref<stdgo._internal.crypto.x509.X509_T_pkcs1PublicKey.T_pkcs1PublicKey>))), __1:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err == null) {
                        return {
                            final __tmp__:{ var _0 : stdgo.AnyInterface; var _1 : stdgo.Error; } = { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: failed to parse public key (use ParsePKCS1PublicKey instead for this key format)" : stdgo.GoString)) };
                            _pub = __tmp__._0;
                            _err = __tmp__._1;
                            __tmp__;
                        };
                    };
                };
                return {
                    final __tmp__:{ var _0 : stdgo.AnyInterface; var _1 : stdgo.Error; } = { _0 : (null : stdgo.AnyInterface), _1 : _err };
                    _pub = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            } else if ((_rest.length) != ((0 : stdgo.GoInt))) {
                return {
                    final __tmp__:{ var _0 : stdgo.AnyInterface; var _1 : stdgo.Error; } = { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: trailing data after ASN.1 of public-key" : stdgo.GoString)) };
                    _pub = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo.AnyInterface; var _1 : stdgo.Error; } = stdgo._internal.crypto.x509.X509__parsePublicKey._parsePublicKey(_pki__pointer__);
            _pub = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
