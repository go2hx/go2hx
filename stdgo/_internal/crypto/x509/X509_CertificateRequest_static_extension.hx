package stdgo._internal.crypto.x509;
import stdgo._internal.crypto.sha1.Sha1;
import stdgo._internal.crypto.sha256.Sha256;
import stdgo._internal.crypto.sha512.Sha512;
@:keep @:allow(stdgo._internal.crypto.x509.X509.CertificateRequest_asInterface) class CertificateRequest_static_extension {
    @:keep
    static public function checkSignature( _c:stdgo.Ref<stdgo._internal.crypto.x509.X509_CertificateRequest.CertificateRequest>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.x509.X509_CertificateRequest.CertificateRequest> = _c;
        return stdgo._internal.crypto.x509.X509__checkSignature._checkSignature(_c.signatureAlgorithm, _c.rawTBSCertificateRequest, _c.signature, stdgo.Go.toInterface(_c.publicKey), true);
    }
}