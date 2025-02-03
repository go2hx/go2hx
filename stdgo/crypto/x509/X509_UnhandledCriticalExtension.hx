package stdgo.crypto.x509;
@:structInit @:using(stdgo.crypto.x509.X509.UnhandledCriticalExtension_static_extension) abstract UnhandledCriticalExtension(stdgo._internal.crypto.x509.X509_UnhandledCriticalExtension.UnhandledCriticalExtension) from stdgo._internal.crypto.x509.X509_UnhandledCriticalExtension.UnhandledCriticalExtension to stdgo._internal.crypto.x509.X509_UnhandledCriticalExtension.UnhandledCriticalExtension {
    public function new() this = new stdgo._internal.crypto.x509.X509_UnhandledCriticalExtension.UnhandledCriticalExtension();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
