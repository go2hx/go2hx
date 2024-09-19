package stdgo._internal.crypto.tls;
@:structInit class T_cacheEntry {
    public var _refs : stdgo._internal.sync.atomic_.Atomic__Int64_.Int64_ = ({} : stdgo._internal.sync.atomic_.Atomic__Int64_.Int64_);
    public var _cert : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate> = (null : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>);
    public function new(?_refs:stdgo._internal.sync.atomic_.Atomic__Int64_.Int64_, ?_cert:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>) {
        if (_refs != null) this._refs = _refs;
        if (_cert != null) this._cert = _cert;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_cacheEntry(_refs, _cert);
    }
}
