package stdgo._internal.crypto.tls;
@:keep @:allow(stdgo._internal.crypto.tls.Tls.CertificateRequestInfo_asInterface) class CertificateRequestInfo_static_extension {
    @:keep
    @:tdfield
    static public function supportsCertificate( _cri:stdgo.Ref<stdgo._internal.crypto.tls.Tls_CertificateRequestInfo.CertificateRequestInfo>, _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Certificate.Certificate>):stdgo.Error {
        @:recv var _cri:stdgo.Ref<stdgo._internal.crypto.tls.Tls_CertificateRequestInfo.CertificateRequestInfo> = _cri;
        {
            var __tmp__ = stdgo._internal.crypto.tls.Tls__selectSignatureScheme._selectSignatureScheme((@:checkr _cri ?? throw "null pointer dereference").version, _c, (@:checkr _cri ?? throw "null pointer dereference").signatureSchemes), __65:stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        if (((@:checkr _cri ?? throw "null pointer dereference").acceptableCAs.length) == ((0 : stdgo.GoInt))) {
            return (null : stdgo.Error);
        };
        for (_j => _cert in (@:checkr _c ?? throw "null pointer dereference").certificate) {
            var _x509Cert = (@:checkr _c ?? throw "null pointer dereference").leaf;
            if (((_j != (0 : stdgo.GoInt)) || (_x509Cert == null || (_x509Cert : Dynamic).__nil__) : Bool)) {
                var _err:stdgo.Error = (null : stdgo.Error);
                {
                    {
                        var __tmp__ = stdgo._internal.crypto.x509.X509_parseCertificate.parseCertificate(_cert);
                        _x509Cert = __tmp__._0;
                        _err = __tmp__._1;
                    };
                    if (_err != null) {
                        return stdgo._internal.fmt.Fmt_errorf.errorf(("failed to parse certificate #%d in the chain: %w" : stdgo.GoString), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_err));
                    };
                };
            };
            for (__66 => _ca in (@:checkr _cri ?? throw "null pointer dereference").acceptableCAs) {
                if (stdgo._internal.bytes.Bytes_equal.equal((@:checkr _x509Cert ?? throw "null pointer dereference").rawIssuer, _ca)) {
                    return (null : stdgo.Error);
                };
            };
        };
        return stdgo._internal.errors.Errors_new_.new_(("chain is not signed by an acceptable CA" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function context( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_CertificateRequestInfo.CertificateRequestInfo>):stdgo._internal.context.Context_Context.Context {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_CertificateRequestInfo.CertificateRequestInfo> = _c;
        return (@:checkr _c ?? throw "null pointer dereference")._ctx;
    }
}
