package stdgo._internal.crypto.x509;
@:keep @:allow(stdgo._internal.crypto.x509.X509.InsecureAlgorithmError_asInterface) class InsecureAlgorithmError_static_extension {
    @:keep
    static public function error( _e:stdgo._internal.crypto.x509.X509_InsecureAlgorithmError.InsecureAlgorithmError):stdgo.GoString {
        @:recv var _e:stdgo._internal.crypto.x509.X509_InsecureAlgorithmError.InsecureAlgorithmError = _e;
        var _override:stdgo.GoString = ("" : stdgo.GoString);
        if ((((_e : stdgo._internal.crypto.x509.X509_SignatureAlgorithm.SignatureAlgorithm) == (3 : stdgo._internal.crypto.x509.X509_SignatureAlgorithm.SignatureAlgorithm)) || ((_e : stdgo._internal.crypto.x509.X509_SignatureAlgorithm.SignatureAlgorithm) == (9 : stdgo._internal.crypto.x509.X509_SignatureAlgorithm.SignatureAlgorithm)) : Bool)) {
            _override = (" (temporarily override with GODEBUG=x509sha1=1)" : stdgo.GoString);
        };
        return (stdgo._internal.fmt.Fmt_sprintf.sprintf(("x509: cannot verify signature: insecure algorithm %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((_e : stdgo._internal.crypto.x509.X509_SignatureAlgorithm.SignatureAlgorithm)))) + _override?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
