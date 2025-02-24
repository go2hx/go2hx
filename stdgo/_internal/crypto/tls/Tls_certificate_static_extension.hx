package stdgo._internal.crypto.tls;
@:keep @:allow(stdgo._internal.crypto.tls.Tls.Certificate_asInterface) class Certificate_static_extension {
    @:keep
    @:tdfield
    static public function _leaf( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_certificate.Certificate>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_certificate.Certificate> = _c;
        if (((@:checkr _c ?? throw "null pointer dereference").leaf != null && (((@:checkr _c ?? throw "null pointer dereference").leaf : Dynamic).__nil__ == null || !((@:checkr _c ?? throw "null pointer dereference").leaf : Dynamic).__nil__))) {
            return { _0 : (@:checkr _c ?? throw "null pointer dereference").leaf, _1 : (null : stdgo.Error) };
        };
        return stdgo._internal.crypto.x509.X509_parsecertificate.parseCertificate((@:checkr _c ?? throw "null pointer dereference").certificate[(0 : stdgo.GoInt)]);
    }
}
