package stdgo.crypto.tls;
class CertificateRequestInfo_static_extension {
    static public function supportsCertificate(_cri:CertificateRequestInfo, _c:Certificate):stdgo.Error {
        final _cri = (_cri : stdgo.Ref<stdgo._internal.crypto.tls.Tls_CertificateRequestInfo.CertificateRequestInfo>);
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Certificate.Certificate>);
        return stdgo._internal.crypto.tls.Tls_CertificateRequestInfo_static_extension.CertificateRequestInfo_static_extension.supportsCertificate(_cri, _c);
    }
    static public function context(_c:CertificateRequestInfo):stdgo._internal.context.Context_Context.Context {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_CertificateRequestInfo.CertificateRequestInfo>);
        return stdgo._internal.crypto.tls.Tls_CertificateRequestInfo_static_extension.CertificateRequestInfo_static_extension.context(_c);
    }
}
