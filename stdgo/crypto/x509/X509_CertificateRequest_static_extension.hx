package stdgo.crypto.x509;
class CertificateRequest_static_extension {
    static public function checkSignature(_c:CertificateRequest):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.x509.X509_CertificateRequest.CertificateRequest>);
        return stdgo._internal.crypto.x509.X509_CertificateRequest_static_extension.CertificateRequest_static_extension.checkSignature(_c);
    }
}
