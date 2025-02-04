package stdgo._internal.crypto.x509;
@:keep @:allow(stdgo._internal.crypto.x509.X509.InsecureAlgorithmError_asInterface) class InsecureAlgorithmError_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo._internal.crypto.x509.X509_insecurealgorithmerror.InsecureAlgorithmError):stdgo.GoString {
        @:recv var _e:stdgo._internal.crypto.x509.X509_insecurealgorithmerror.InsecureAlgorithmError = _e;
        var _override:stdgo.GoString = ("" : stdgo.GoString);
        if ((((_e : stdgo._internal.crypto.x509.X509_signaturealgorithm.SignatureAlgorithm) == (3 : stdgo._internal.crypto.x509.X509_signaturealgorithm.SignatureAlgorithm)) || ((_e : stdgo._internal.crypto.x509.X509_signaturealgorithm.SignatureAlgorithm) == (9 : stdgo._internal.crypto.x509.X509_signaturealgorithm.SignatureAlgorithm)) : Bool)) {
            _override = (" (temporarily override with GODEBUG=x509sha1=1)" : stdgo.GoString);
        };
        return (stdgo._internal.fmt.Fmt_sprintf.sprintf(("x509: cannot verify signature: insecure algorithm %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((_e : stdgo._internal.crypto.x509.X509_signaturealgorithm.SignatureAlgorithm)))) + _override?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
