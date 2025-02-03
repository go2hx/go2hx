package stdgo.crypto.tls;
class T_certCache_static_extension {
    static public function _newCert(_cc:T_certCache, _der:Array<std.UInt>):stdgo.Tuple<T_activeCert, stdgo.Error> {
        final _cc = (_cc : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_certCache.T_certCache>);
        final _der = ([for (i in _der) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.tls.Tls_T_certCache_static_extension.T_certCache_static_extension._newCert(_cc, _der);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _evict(_cc:T_certCache, _e:T_cacheEntry):Void {
        final _cc = (_cc : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_certCache.T_certCache>);
        final _e = (_e : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_cacheEntry.T_cacheEntry>);
        stdgo._internal.crypto.tls.Tls_T_certCache_static_extension.T_certCache_static_extension._evict(_cc, _e);
    }
    static public function _active(_cc:T_certCache, _e:T_cacheEntry):T_activeCert {
        final _cc = (_cc : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_certCache.T_certCache>);
        final _e = (_e : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_cacheEntry.T_cacheEntry>);
        return stdgo._internal.crypto.tls.Tls_T_certCache_static_extension.T_certCache_static_extension._active(_cc, _e);
    }
    public static function _missLocked(__self__:stdgo._internal.crypto.tls.Tls_T_certCache.T_certCache):Void {
        stdgo._internal.crypto.tls.Tls_T_certCache_static_extension.T_certCache_static_extension._missLocked(__self__);
    }
    public static function _loadReadOnly(__self__:stdgo._internal.crypto.tls.Tls_T_certCache.T_certCache):stdgo._internal.sync.Sync_T_readOnly.T_readOnly {
        return stdgo._internal.crypto.tls.Tls_T_certCache_static_extension.T_certCache_static_extension._loadReadOnly(__self__);
    }
    public static function _dirtyLocked(__self__:stdgo._internal.crypto.tls.Tls_T_certCache.T_certCache):Void {
        stdgo._internal.crypto.tls.Tls_T_certCache_static_extension.T_certCache_static_extension._dirtyLocked(__self__);
    }
    public static function swap(__self__:stdgo._internal.crypto.tls.Tls_T_certCache.T_certCache, _0:stdgo.AnyInterface, _1:stdgo.AnyInterface):stdgo.Tuple<stdgo.AnyInterface, Bool> {
        final _0 = (_0 : stdgo.AnyInterface);
        final _1 = (_1 : stdgo.AnyInterface);
        return {
            final obj = stdgo._internal.crypto.tls.Tls_T_certCache_static_extension.T_certCache_static_extension.swap(__self__, _0, _1);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function store(__self__:stdgo._internal.crypto.tls.Tls_T_certCache.T_certCache, _0:stdgo.AnyInterface, _1:stdgo.AnyInterface):Void {
        final _0 = (_0 : stdgo.AnyInterface);
        final _1 = (_1 : stdgo.AnyInterface);
        stdgo._internal.crypto.tls.Tls_T_certCache_static_extension.T_certCache_static_extension.store(__self__, _0, _1);
    }
    public static function range(__self__:stdgo._internal.crypto.tls.Tls_T_certCache.T_certCache, _0:(stdgo.AnyInterface, stdgo.AnyInterface) -> Bool):Void {
        final _0 = _0;
        stdgo._internal.crypto.tls.Tls_T_certCache_static_extension.T_certCache_static_extension.range(__self__, _0);
    }
    public static function loadOrStore(__self__:stdgo._internal.crypto.tls.Tls_T_certCache.T_certCache, _0:stdgo.AnyInterface, _1:stdgo.AnyInterface):stdgo.Tuple<stdgo.AnyInterface, Bool> {
        final _0 = (_0 : stdgo.AnyInterface);
        final _1 = (_1 : stdgo.AnyInterface);
        return {
            final obj = stdgo._internal.crypto.tls.Tls_T_certCache_static_extension.T_certCache_static_extension.loadOrStore(__self__, _0, _1);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function loadAndDelete(__self__:stdgo._internal.crypto.tls.Tls_T_certCache.T_certCache, _0:stdgo.AnyInterface):stdgo.Tuple<stdgo.AnyInterface, Bool> {
        final _0 = (_0 : stdgo.AnyInterface);
        return {
            final obj = stdgo._internal.crypto.tls.Tls_T_certCache_static_extension.T_certCache_static_extension.loadAndDelete(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function load(__self__:stdgo._internal.crypto.tls.Tls_T_certCache.T_certCache, _0:stdgo.AnyInterface):stdgo.Tuple<stdgo.AnyInterface, Bool> {
        final _0 = (_0 : stdgo.AnyInterface);
        return {
            final obj = stdgo._internal.crypto.tls.Tls_T_certCache_static_extension.T_certCache_static_extension.load(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function delete(__self__:stdgo._internal.crypto.tls.Tls_T_certCache.T_certCache, _0:stdgo.AnyInterface):Void {
        final _0 = (_0 : stdgo.AnyInterface);
        stdgo._internal.crypto.tls.Tls_T_certCache_static_extension.T_certCache_static_extension.delete(__self__, _0);
    }
    public static function compareAndSwap(__self__:stdgo._internal.crypto.tls.Tls_T_certCache.T_certCache, _0:stdgo.AnyInterface, _1:stdgo.AnyInterface, _2:stdgo.AnyInterface):Bool {
        final _0 = (_0 : stdgo.AnyInterface);
        final _1 = (_1 : stdgo.AnyInterface);
        final _2 = (_2 : stdgo.AnyInterface);
        return stdgo._internal.crypto.tls.Tls_T_certCache_static_extension.T_certCache_static_extension.compareAndSwap(__self__, _0, _1, _2);
    }
    public static function compareAndDelete(__self__:stdgo._internal.crypto.tls.Tls_T_certCache.T_certCache, _0:stdgo.AnyInterface, _1:stdgo.AnyInterface):Bool {
        final _0 = (_0 : stdgo.AnyInterface);
        final _1 = (_1 : stdgo.AnyInterface);
        return stdgo._internal.crypto.tls.Tls_T_certCache_static_extension.T_certCache_static_extension.compareAndDelete(__self__, _0, _1);
    }
}
