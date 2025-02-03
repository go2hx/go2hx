package stdgo.crypto.tls;
@:structInit @:using(stdgo.crypto.tls.Tls.T_activeCert_static_extension) abstract T_activeCert(stdgo._internal.crypto.tls.Tls_T_activeCert.T_activeCert) from stdgo._internal.crypto.tls.Tls_T_activeCert.T_activeCert to stdgo._internal.crypto.tls.Tls_T_activeCert.T_activeCert {
    public var _cert(get, set) : stdgo._internal.crypto.x509.X509_Certificate.Certificate;
    function get__cert():stdgo._internal.crypto.x509.X509_Certificate.Certificate return this._cert;
    function set__cert(v:stdgo._internal.crypto.x509.X509_Certificate.Certificate):stdgo._internal.crypto.x509.X509_Certificate.Certificate {
        this._cert = (v : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>);
        return v;
    }
    public function new(?_cert:stdgo._internal.crypto.x509.X509_Certificate.Certificate) this = new stdgo._internal.crypto.tls.Tls_T_activeCert.T_activeCert((_cert : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
