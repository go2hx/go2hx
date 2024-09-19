package stdgo._internal.crypto.x509;
import stdgo._internal.crypto.sha1.Sha1;
import stdgo._internal.crypto.sha256.Sha256;
import stdgo._internal.crypto.sha512.Sha512;
@:structInit @:using(stdgo._internal.crypto.x509.X509_UnhandledCriticalExtension_static_extension.UnhandledCriticalExtension_static_extension) class UnhandledCriticalExtension {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new UnhandledCriticalExtension();
    }
}
