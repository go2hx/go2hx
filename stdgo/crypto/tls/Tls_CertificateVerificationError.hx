package stdgo.crypto.tls;
@:structInit @:using(stdgo.crypto.tls.Tls.CertificateVerificationError_static_extension) abstract CertificateVerificationError(stdgo._internal.crypto.tls.Tls_CertificateVerificationError.CertificateVerificationError) from stdgo._internal.crypto.tls.Tls_CertificateVerificationError.CertificateVerificationError to stdgo._internal.crypto.tls.Tls_CertificateVerificationError.CertificateVerificationError {
    public var unverifiedCertificates(get, set) : Array<stdgo._internal.crypto.x509.X509_Certificate.Certificate>;
    function get_unverifiedCertificates():Array<stdgo._internal.crypto.x509.X509_Certificate.Certificate> return [for (i in this.unverifiedCertificates) i];
    function set_unverifiedCertificates(v:Array<stdgo._internal.crypto.x509.X509_Certificate.Certificate>):Array<stdgo._internal.crypto.x509.X509_Certificate.Certificate> {
        this.unverifiedCertificates = ([for (i in v) (i : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>);
        return v;
    }
    public var err(get, set) : stdgo.Error;
    function get_err():stdgo.Error return this.err;
    function set_err(v:stdgo.Error):stdgo.Error {
        this.err = (v : stdgo.Error);
        return v;
    }
    public function new(?unverifiedCertificates:Array<stdgo._internal.crypto.x509.X509_Certificate.Certificate>, ?err:stdgo.Error) this = new stdgo._internal.crypto.tls.Tls_CertificateVerificationError.CertificateVerificationError(([for (i in unverifiedCertificates) (i : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>), (err : stdgo.Error));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
