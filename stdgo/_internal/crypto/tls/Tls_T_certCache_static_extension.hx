package stdgo._internal.crypto.tls;
@:keep @:allow(stdgo._internal.crypto.tls.Tls.T_certCache_asInterface) class T_certCache_static_extension {
    @:keep
    static public function _newCert( _cc:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_certCache.T_certCache>, _der:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_activeCert.T_activeCert>; var _1 : stdgo.Error; } {
        @:recv var _cc:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_certCache.T_certCache> = _cc;
        {
            var __tmp__ = _cc.load(stdgo.Go.toInterface((_der : stdgo.GoString))), _entry:stdgo.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                return { _0 : _cc._active((stdgo.Go.typeAssert((_entry : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_cacheEntry.T_cacheEntry>)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_cacheEntry.T_cacheEntry>)), _1 : (null : stdgo.Error) };
            };
        };
        var __tmp__ = stdgo._internal.crypto.x509.X509_parseCertificate.parseCertificate(_der), _cert:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        var _entry = (stdgo.Go.setRef(({ _cert : _cert } : stdgo._internal.crypto.tls.Tls_T_cacheEntry.T_cacheEntry)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_cacheEntry.T_cacheEntry>);
        {
            var __tmp__ = _cc.loadOrStore(stdgo.Go.toInterface((_der : stdgo.GoString)), stdgo.Go.toInterface(_entry)), _entry:stdgo.AnyInterface = __tmp__._0, _loaded:Bool = __tmp__._1;
            if (_loaded) {
                return { _0 : _cc._active((stdgo.Go.typeAssert((_entry : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_cacheEntry.T_cacheEntry>)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_cacheEntry.T_cacheEntry>)), _1 : (null : stdgo.Error) };
            };
        };
        return { _0 : _cc._active(_entry), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function _evict( _cc:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_certCache.T_certCache>, _e:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_cacheEntry.T_cacheEntry>):Void {
        @:recv var _cc:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_certCache.T_certCache> = _cc;
        _cc.delete(stdgo.Go.toInterface((_e._cert.raw : stdgo.GoString)));
    }
    @:keep
    static public function _active( _cc:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_certCache.T_certCache>, _e:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_cacheEntry.T_cacheEntry>):stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_activeCert.T_activeCert> {
        @:recv var _cc:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_certCache.T_certCache> = _cc;
        _e._refs.add((1i64 : stdgo.GoInt64));
        var _a = (stdgo.Go.setRef((new stdgo._internal.crypto.tls.Tls_T_activeCert.T_activeCert(_e._cert) : stdgo._internal.crypto.tls.Tls_T_activeCert.T_activeCert)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_activeCert.T_activeCert>);
        stdgo._internal.runtime.Runtime_setFinalizer.setFinalizer(stdgo.Go.toInterface(_a), stdgo.Go.toInterface(function(__79:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_activeCert.T_activeCert>):Void {
            if (_e._refs.add((-1i64 : stdgo.GoInt64)) == ((0i64 : stdgo.GoInt64))) {
                _cc._evict(_e);
            };
        }));
        return _a;
    }
    @:embedded
    public static function _missLocked( __self__:stdgo._internal.crypto.tls.Tls_T_certCache.T_certCache) __self__._missLocked();
    @:embedded
    public static function _loadReadOnly( __self__:stdgo._internal.crypto.tls.Tls_T_certCache.T_certCache):stdgo._internal.sync.Sync_T_readOnly.T_readOnly return __self__._loadReadOnly();
    @:embedded
    public static function _dirtyLocked( __self__:stdgo._internal.crypto.tls.Tls_T_certCache.T_certCache) __self__._dirtyLocked();
    @:embedded
    public static function swap( __self__:stdgo._internal.crypto.tls.Tls_T_certCache.T_certCache, _parsedName:stdgo.AnyInterface, _constraint:stdgo.AnyInterface):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } return __self__.swap(_parsedName, _constraint);
    @:embedded
    public static function store( __self__:stdgo._internal.crypto.tls.Tls_T_certCache.T_certCache, _parsedName:stdgo.AnyInterface, _constraint:stdgo.AnyInterface) __self__.store(_parsedName, _constraint);
    @:embedded
    public static function range( __self__:stdgo._internal.crypto.tls.Tls_T_certCache.T_certCache, _f:(stdgo.AnyInterface, stdgo.AnyInterface) -> Bool) __self__.range(_f);
    @:embedded
    public static function loadOrStore( __self__:stdgo._internal.crypto.tls.Tls_T_certCache.T_certCache, _parsedName:stdgo.AnyInterface, _constraint:stdgo.AnyInterface):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } return __self__.loadOrStore(_parsedName, _constraint);
    @:embedded
    public static function loadAndDelete( __self__:stdgo._internal.crypto.tls.Tls_T_certCache.T_certCache, _key:stdgo.AnyInterface):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } return __self__.loadAndDelete(_key);
    @:embedded
    public static function load( __self__:stdgo._internal.crypto.tls.Tls_T_certCache.T_certCache, _key:stdgo.AnyInterface):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } return __self__.load(_key);
    @:embedded
    public static function delete( __self__:stdgo._internal.crypto.tls.Tls_T_certCache.T_certCache, _key:stdgo.AnyInterface) __self__.delete(_key);
    @:embedded
    public static function compareAndSwap( __self__:stdgo._internal.crypto.tls.Tls_T_certCache.T_certCache, _key:stdgo.AnyInterface, _old:stdgo.AnyInterface, _new:stdgo.AnyInterface):Bool return __self__.compareAndSwap(_key, _old, _new);
    @:embedded
    public static function compareAndDelete( __self__:stdgo._internal.crypto.tls.Tls_T_certCache.T_certCache, _parsedName:stdgo.AnyInterface, _constraint:stdgo.AnyInterface):Bool return __self__.compareAndDelete(_parsedName, _constraint);
}
