package stdgo._internal.crypto.x509;
@:keep @:allow(stdgo._internal.crypto.x509.X509.UnknownAuthorityError_asInterface) class UnknownAuthorityError_static_extension {
    @:keep
    static public function error( _e:stdgo._internal.crypto.x509.X509_UnknownAuthorityError.UnknownAuthorityError):stdgo.GoString {
        @:recv var _e:stdgo._internal.crypto.x509.X509_UnknownAuthorityError.UnknownAuthorityError = _e?.__copy__();
        var _s = ("x509: certificate signed by unknown authority" : stdgo.GoString);
        if (_e._hintErr != null) {
            var _certName = (_e._hintCert.subject.commonName?.__copy__() : stdgo.GoString);
            if ((_certName.length) == ((0 : stdgo.GoInt))) {
                if (((_e._hintCert.subject.organization.length) > (0 : stdgo.GoInt) : Bool)) {
                    _certName = _e._hintCert.subject.organization[(0 : stdgo.GoInt)]?.__copy__();
                } else {
                    _certName = (("serial:" : stdgo.GoString) + (_e._hintCert.serialNumber.string() : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                };
            };
            _s = (_s + (stdgo._internal.fmt.Fmt_sprintf.sprintf((" (possibly because of %q while trying to verify candidate authority certificate %q)" : stdgo.GoString), stdgo.Go.toInterface(_e._hintErr), stdgo.Go.toInterface(_certName)))?.__copy__() : stdgo.GoString);
        };
        return _s?.__copy__();
    }
}
