package stdgo._internal.crypto.x509;
@:keep @:allow(stdgo._internal.crypto.x509.X509.UnhandledCriticalExtension_asInterface) class UnhandledCriticalExtension_static_extension {
    @:keep
    static public function error( _h:stdgo._internal.crypto.x509.X509_UnhandledCriticalExtension.UnhandledCriticalExtension):stdgo.GoString {
        @:recv var _h:stdgo._internal.crypto.x509.X509_UnhandledCriticalExtension.UnhandledCriticalExtension = _h?.__copy__();
        return ("x509: unhandled critical extension" : stdgo.GoString);
    }
}
