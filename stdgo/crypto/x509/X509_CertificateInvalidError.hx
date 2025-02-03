package stdgo.crypto.x509;
@:structInit @:using(stdgo.crypto.x509.X509.CertificateInvalidError_static_extension) abstract CertificateInvalidError(stdgo._internal.crypto.x509.X509_CertificateInvalidError.CertificateInvalidError) from stdgo._internal.crypto.x509.X509_CertificateInvalidError.CertificateInvalidError to stdgo._internal.crypto.x509.X509_CertificateInvalidError.CertificateInvalidError {
    public var cert(get, set) : Certificate;
    function get_cert():Certificate return this.cert;
    function set_cert(v:Certificate):Certificate {
        this.cert = (v : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>);
        return v;
    }
    public var reason(get, set) : InvalidReason;
    function get_reason():InvalidReason return this.reason;
    function set_reason(v:InvalidReason):InvalidReason {
        this.reason = v;
        return v;
    }
    public var detail(get, set) : String;
    function get_detail():String return this.detail;
    function set_detail(v:String):String {
        this.detail = (v : stdgo.GoString);
        return v;
    }
    public function new(?cert:Certificate, ?reason:InvalidReason, ?detail:String) this = new stdgo._internal.crypto.x509.X509_CertificateInvalidError.CertificateInvalidError((cert : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>), reason, (detail : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
