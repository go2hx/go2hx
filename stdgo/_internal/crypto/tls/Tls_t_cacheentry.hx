package stdgo._internal.crypto.tls;
@:structInit @:using(stdgo._internal.crypto.tls.Tls_t_cacheentry_static_extension.T_cacheEntry_static_extension) class T_cacheEntry {
    public var _refs : stdgo._internal.sync.atomic_.Atomic__int64_.Int64_ = ({} : stdgo._internal.sync.atomic_.Atomic__int64_.Int64_);
    public var _cert : stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate> = (null : stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>);
    public function new(?_refs:stdgo._internal.sync.atomic_.Atomic__int64_.Int64_, ?_cert:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>) {
        if (_refs != null) this._refs = _refs;
        if (_cert != null) this._cert = _cert;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_cacheEntry(_refs, _cert);
    }
}
