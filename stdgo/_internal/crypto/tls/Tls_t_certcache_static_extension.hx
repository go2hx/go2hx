package stdgo._internal.crypto.tls;
@:keep @:allow(stdgo._internal.crypto.tls.Tls.T_certCache_asInterface) class T_certCache_static_extension {
    @:keep
    @:tdfield
    static public function _newCert( _cc:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certcache.T_certCache>, _der:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_activecert.T_activeCert>; var _1 : stdgo.Error; } {
        @:recv var _cc:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certcache.T_certCache> = _cc;
        {
            var __tmp__ = @:check2r _cc.load(stdgo.Go.toInterface((_der : stdgo.GoString))), _entry:stdgo.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                return { _0 : @:check2r _cc._active((stdgo.Go.typeAssert((_entry : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_cacheentry.T_cacheEntry>)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_cacheentry.T_cacheEntry>)), _1 : (null : stdgo.Error) };
            };
        };
        var __tmp__ = stdgo._internal.crypto.x509.X509_parsecertificate.parseCertificate(_der), _cert:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        var _entry = (stdgo.Go.setRef(({ _cert : _cert } : stdgo._internal.crypto.tls.Tls_t_cacheentry.T_cacheEntry)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_cacheentry.T_cacheEntry>);
        {
            var __tmp__ = @:check2r _cc.loadOrStore(stdgo.Go.toInterface((_der : stdgo.GoString)), stdgo.Go.toInterface(stdgo.Go.asInterface(_entry))), _entry:stdgo.AnyInterface = __tmp__._0, _loaded:Bool = __tmp__._1;
            if (_loaded) {
                return { _0 : @:check2r _cc._active((stdgo.Go.typeAssert((_entry : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_cacheentry.T_cacheEntry>)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_cacheentry.T_cacheEntry>)), _1 : (null : stdgo.Error) };
            };
        };
        return { _0 : @:check2r _cc._active(_entry), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _evict( _cc:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certcache.T_certCache>, _e:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_cacheentry.T_cacheEntry>):Void {
        @:recv var _cc:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certcache.T_certCache> = _cc;
        @:check2r _cc.delete(stdgo.Go.toInterface(((@:checkr (@:checkr _e ?? throw "null pointer dereference")._cert ?? throw "null pointer dereference").raw : stdgo.GoString)));
    }
    @:keep
    @:tdfield
    static public function _active( _cc:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certcache.T_certCache>, _e:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_cacheentry.T_cacheEntry>):stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_activecert.T_activeCert> {
        @:recv var _cc:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certcache.T_certCache> = _cc;
        @:check2 (@:checkr _e ?? throw "null pointer dereference")._refs.add((1i64 : stdgo.GoInt64));
        var _a = (stdgo.Go.setRef((new stdgo._internal.crypto.tls.Tls_t_activecert.T_activeCert((@:checkr _e ?? throw "null pointer dereference")._cert) : stdgo._internal.crypto.tls.Tls_t_activecert.T_activeCert)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_activecert.T_activeCert>);
        stdgo._internal.runtime.Runtime_setfinalizer.setFinalizer(stdgo.Go.toInterface(stdgo.Go.asInterface(_a)), stdgo.Go.toInterface(function(__79:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_activecert.T_activeCert>):Void {
            if (@:check2 (@:checkr _e ?? throw "null pointer dereference")._refs.add((-1i64 : stdgo.GoInt64)) == ((0i64 : stdgo.GoInt64))) {
                @:check2r _cc._evict(_e);
            };
        }));
        return _a;
    }
    @:embedded
    @:embeddededffieldsffun
    public static function _missLocked( __self__:stdgo._internal.crypto.tls.Tls_t_certcache.T_certCache):Void return @:_5 __self__._missLocked();
    @:embedded
    @:embeddededffieldsffun
    public static function _loadReadOnly( __self__:stdgo._internal.crypto.tls.Tls_t_certcache.T_certCache):stdgo._internal.sync.Sync_t_readonly.T_readOnly return @:_5 __self__._loadReadOnly();
    @:embedded
    @:embeddededffieldsffun
    public static function _dirtyLocked( __self__:stdgo._internal.crypto.tls.Tls_t_certcache.T_certCache):Void return @:_5 __self__._dirtyLocked();
    @:embedded
    @:embeddededffieldsffun
    public static function swap( __self__:stdgo._internal.crypto.tls.Tls_t_certcache.T_certCache, _0:stdgo.AnyInterface, _1:stdgo.AnyInterface):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } return @:_5 __self__.swap(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function store( __self__:stdgo._internal.crypto.tls.Tls_t_certcache.T_certCache, _0:stdgo.AnyInterface, _1:stdgo.AnyInterface):Void return @:_5 __self__.store(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function range( __self__:stdgo._internal.crypto.tls.Tls_t_certcache.T_certCache, _0:(stdgo.AnyInterface, stdgo.AnyInterface) -> Bool):Void return @:_5 __self__.range(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function loadOrStore( __self__:stdgo._internal.crypto.tls.Tls_t_certcache.T_certCache, _0:stdgo.AnyInterface, _1:stdgo.AnyInterface):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } return @:_5 __self__.loadOrStore(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function loadAndDelete( __self__:stdgo._internal.crypto.tls.Tls_t_certcache.T_certCache, _0:stdgo.AnyInterface):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } return @:_5 __self__.loadAndDelete(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function load( __self__:stdgo._internal.crypto.tls.Tls_t_certcache.T_certCache, _0:stdgo.AnyInterface):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } return @:_5 __self__.load(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function delete( __self__:stdgo._internal.crypto.tls.Tls_t_certcache.T_certCache, _0:stdgo.AnyInterface):Void return @:_5 __self__.delete(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function compareAndSwap( __self__:stdgo._internal.crypto.tls.Tls_t_certcache.T_certCache, _0:stdgo.AnyInterface, _1:stdgo.AnyInterface, _2:stdgo.AnyInterface):Bool return @:_5 __self__.compareAndSwap(_0, _1, _2);
    @:embedded
    @:embeddededffieldsffun
    public static function compareAndDelete( __self__:stdgo._internal.crypto.tls.Tls_t_certcache.T_certCache, _0:stdgo.AnyInterface, _1:stdgo.AnyInterface):Bool return @:_5 __self__.compareAndDelete(_0, _1);
}
