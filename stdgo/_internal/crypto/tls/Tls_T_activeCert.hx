package stdgo._internal.crypto.tls;
@:structInit class T_activeCert {
    public var _cert : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate> = (null : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>);
    public function new(?_cert:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>) {
        if (_cert != null) this._cert = _cert;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_activeCert(_cert);
    }
}