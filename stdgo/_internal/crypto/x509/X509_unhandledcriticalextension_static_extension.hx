package stdgo._internal.crypto.x509;
@:keep @:allow(stdgo._internal.crypto.x509.X509.UnhandledCriticalExtension_asInterface) class UnhandledCriticalExtension_static_extension {
    @:keep
    @:tdfield
    static public function error( _h:stdgo._internal.crypto.x509.X509_unhandledcriticalextension.UnhandledCriticalExtension):stdgo.GoString {
        @:recv var _h:stdgo._internal.crypto.x509.X509_unhandledcriticalextension.UnhandledCriticalExtension = _h?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L953"
        return ("x509: unhandled critical extension" : stdgo.GoString);
    }
}
