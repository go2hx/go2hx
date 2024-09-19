package stdgo._internal.crypto.x509;
import stdgo._internal.crypto.sha1.Sha1;
import stdgo._internal.crypto.sha256.Sha256;
import stdgo._internal.crypto.sha512.Sha512;
@:structInit @:using(stdgo._internal.crypto.x509.X509_CertificateInvalidError_static_extension.CertificateInvalidError_static_extension) class CertificateInvalidError {
    public var cert : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate> = (null : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>);
    public var reason : stdgo._internal.crypto.x509.X509_InvalidReason.InvalidReason = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_InvalidReason.InvalidReason);
    public var detail : stdgo.GoString = "";
    public function new(?cert:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>, ?reason:stdgo._internal.crypto.x509.X509_InvalidReason.InvalidReason, ?detail:stdgo.GoString) {
        if (cert != null) this.cert = cert;
        if (reason != null) this.reason = reason;
        if (detail != null) this.detail = detail;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new CertificateInvalidError(cert, reason, detail);
    }
}
