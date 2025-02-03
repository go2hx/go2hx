package stdgo.crypto.x509;
@:structInit @:using(stdgo.crypto.x509.X509.HostnameError_static_extension) abstract HostnameError(stdgo._internal.crypto.x509.X509_HostnameError.HostnameError) from stdgo._internal.crypto.x509.X509_HostnameError.HostnameError to stdgo._internal.crypto.x509.X509_HostnameError.HostnameError {
    public var certificate(get, set) : Certificate;
    function get_certificate():Certificate return this.certificate;
    function set_certificate(v:Certificate):Certificate {
        this.certificate = (v : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>);
        return v;
    }
    public var host(get, set) : String;
    function get_host():String return this.host;
    function set_host(v:String):String {
        this.host = (v : stdgo.GoString);
        return v;
    }
    public function new(?certificate:Certificate, ?host:String) this = new stdgo._internal.crypto.x509.X509_HostnameError.HostnameError((certificate : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>), (host : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
