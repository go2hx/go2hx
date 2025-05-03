package stdgo._internal.crypto.x509;
@:keep @:allow(stdgo._internal.crypto.x509.X509.UnknownAuthorityError_asInterface) class UnknownAuthorityError_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo._internal.crypto.x509.X509_unknownauthorityerror.UnknownAuthorityError):stdgo.GoString {
        @:recv var _e:stdgo._internal.crypto.x509.X509_unknownauthorityerror.UnknownAuthorityError = _e?.__copy__();
        var _s = (("x509: certificate signed by unknown authority" : stdgo.GoString) : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L142"
        if (_e._hintErr != null) {
            var _certName = ((@:checkr _e._hintCert ?? throw "null pointer dereference").subject.commonName?.__copy__() : stdgo.GoString);
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L144"
            if ((_certName.length) == ((0 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L145"
                if ((((@:checkr _e._hintCert ?? throw "null pointer dereference").subject.organization.length) > (0 : stdgo.GoInt) : Bool)) {
                    _certName = (@:checkr _e._hintCert ?? throw "null pointer dereference").subject.organization[(0 : stdgo.GoInt)]?.__copy__();
                } else {
                    _certName = (("serial:" : stdgo.GoString) + ((@:checkr _e._hintCert ?? throw "null pointer dereference").serialNumber.string() : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                };
            };
            _s = (_s + (stdgo._internal.fmt.Fmt_sprintf.sprintf(((" (possibly because of %q while trying to verify candidate authority certificate %q)" : stdgo.GoString) : stdgo.GoString), stdgo.Go.toInterface(_e._hintErr), stdgo.Go.toInterface(_certName)))?.__copy__() : stdgo.GoString);
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L153"
        return _s?.__copy__();
    }
}
