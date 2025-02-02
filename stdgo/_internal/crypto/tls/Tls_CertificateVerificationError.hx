package stdgo._internal.crypto.tls;
@:structInit @:using(stdgo._internal.crypto.tls.Tls_CertificateVerificationError_static_extension.CertificateVerificationError_static_extension) class CertificateVerificationError {
    public var unverifiedCertificates : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>);
    public var err : stdgo.Error = (null : stdgo.Error);
    public function new(?unverifiedCertificates:stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>, ?err:stdgo.Error) {
        if (unverifiedCertificates != null) this.unverifiedCertificates = unverifiedCertificates;
        if (err != null) this.err = err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new CertificateVerificationError(unverifiedCertificates, err);
    }
}
