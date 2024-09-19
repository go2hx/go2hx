package stdgo._internal.crypto.tls;
@:keep @:allow(stdgo._internal.crypto.tls.Tls.Certificate_asInterface) class Certificate_static_extension {
    @:keep
    static public function _leaf( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Certificate.Certificate>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Certificate.Certificate> = _c;
        if (_c.leaf != null && ((_c.leaf : Dynamic).__nil__ == null || !(_c.leaf : Dynamic).__nil__)) {
            return { _0 : _c.leaf, _1 : (null : stdgo.Error) };
        };
        return stdgo._internal.crypto.x509.X509_parseCertificate.parseCertificate(_c.certificate[(0 : stdgo.GoInt)]);
    }
}
