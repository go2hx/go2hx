package stdgo.crypto.tls;
@:structInit @:using(stdgo.crypto.tls.Tls.T_cacheEntry_static_extension) abstract T_cacheEntry(stdgo._internal.crypto.tls.Tls_T_cacheEntry.T_cacheEntry) from stdgo._internal.crypto.tls.Tls_T_cacheEntry.T_cacheEntry to stdgo._internal.crypto.tls.Tls_T_cacheEntry.T_cacheEntry {
    public var _refs(get, set) : stdgo._internal.sync.atomic_.Atomic__Int64_.Int64_;
    function get__refs():stdgo._internal.sync.atomic_.Atomic__Int64_.Int64_ return this._refs;
    function set__refs(v:stdgo._internal.sync.atomic_.Atomic__Int64_.Int64_):stdgo._internal.sync.atomic_.Atomic__Int64_.Int64_ {
        this._refs = v;
        return v;
    }
    public var _cert(get, set) : stdgo._internal.crypto.x509.X509_Certificate.Certificate;
    function get__cert():stdgo._internal.crypto.x509.X509_Certificate.Certificate return this._cert;
    function set__cert(v:stdgo._internal.crypto.x509.X509_Certificate.Certificate):stdgo._internal.crypto.x509.X509_Certificate.Certificate {
        this._cert = (v : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>);
        return v;
    }
    public function new(?_refs:stdgo._internal.sync.atomic_.Atomic__Int64_.Int64_, ?_cert:stdgo._internal.crypto.x509.X509_Certificate.Certificate) this = new stdgo._internal.crypto.tls.Tls_T_cacheEntry.T_cacheEntry(_refs, (_cert : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
