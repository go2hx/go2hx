package stdgo._internal.crypto.x509;
function parsePKCS1PublicKey(_der:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>; var _1 : stdgo.Error; } {
        var _pub:stdgo._internal.crypto.x509.X509_t_pkcs1publickey.T_pkcs1PublicKey = ({} : stdgo._internal.crypto.x509.X509_t_pkcs1publickey.T_pkcs1PublicKey);
        var __tmp__ = stdgo._internal.encoding.asn1.Asn1_unmarshal.unmarshal(_der, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_pub) : stdgo.Ref<stdgo._internal.crypto.x509.X509_t_pkcs1publickey.T_pkcs1PublicKey>)))), _rest:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/pkcs1.go#L141"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/pkcs1.go#L142"
            {
                var __tmp__ = stdgo._internal.encoding.asn1.Asn1_unmarshal.unmarshal(_der, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.crypto.x509.X509_t_publickeyinfo.T_publicKeyInfo() : stdgo._internal.crypto.x509.X509_t_publickeyinfo.T_publicKeyInfo)) : stdgo.Ref<stdgo._internal.crypto.x509.X509_t_publickeyinfo.T_publicKeyInfo>)))), __1:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err == null) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/pkcs1.go#L143"
                    return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: failed to parse public key (use ParsePKIXPublicKey instead for this key format)" : stdgo.GoString)) };
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/pkcs1.go#L145"
            return { _0 : null, _1 : _err };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/pkcs1.go#L147"
        if (((_rest.length) > (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/pkcs1.go#L148"
            return { _0 : null, _1 : stdgo.Go.asInterface(({ msg : ("trailing data" : stdgo.GoString) } : stdgo._internal.encoding.asn1.Asn1_syntaxerror.SyntaxError)) };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/pkcs1.go#L151"
        if (((_pub.n.sign() <= (0 : stdgo.GoInt) : Bool) || (_pub.e <= (0 : stdgo.GoInt) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/pkcs1.go#L152"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: public key contains zero or negative value" : stdgo.GoString)) };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/pkcs1.go#L154"
        if ((_pub.e > (2147483647 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/pkcs1.go#L155"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: public key contains large public exponent" : stdgo.GoString)) };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/pkcs1.go#L158"
        return { _0 : (stdgo.Go.setRef(({ e : _pub.e, n : _pub.n } : stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey)) : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>), _1 : (null : stdgo.Error) };
    }
