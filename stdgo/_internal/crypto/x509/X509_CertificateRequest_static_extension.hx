package stdgo._internal.crypto.x509;
@:keep @:allow(stdgo._internal.crypto.x509.X509.CertificateRequest_asInterface) class CertificateRequest_static_extension {
    @:keep
    @:tdfield
    static public function checkSignature( _c:stdgo.Ref<stdgo._internal.crypto.x509.X509_CertificateRequest.CertificateRequest>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.x509.X509_CertificateRequest.CertificateRequest> = _c;
        return stdgo._internal.crypto.x509.X509__checkSignature._checkSignature((@:checkr _c ?? throw "null pointer dereference").signatureAlgorithm, (@:checkr _c ?? throw "null pointer dereference").rawTBSCertificateRequest, (@:checkr _c ?? throw "null pointer dereference").signature, stdgo.Go.toInterface((@:checkr _c ?? throw "null pointer dereference").publicKey), true);
    }
}
