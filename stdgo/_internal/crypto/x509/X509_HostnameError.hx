package stdgo._internal.crypto.x509;
import stdgo._internal.crypto.sha1.Sha1;
import stdgo._internal.crypto.sha256.Sha256;
import stdgo._internal.crypto.sha512.Sha512;
@:structInit @:using(stdgo._internal.crypto.x509.X509_HostnameError_static_extension.HostnameError_static_extension) class HostnameError {
    public var certificate : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate> = (null : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>);
    public var host : stdgo.GoString = "";
    public function new(?certificate:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>, ?host:stdgo.GoString) {
        if (certificate != null) this.certificate = certificate;
        if (host != null) this.host = host;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new HostnameError(certificate, host);
    }
}
