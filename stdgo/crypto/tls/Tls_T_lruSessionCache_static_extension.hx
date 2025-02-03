package stdgo.crypto.tls;
class T_lruSessionCache_static_extension {
    static public function get(_c:T_lruSessionCache, _sessionKey:String):stdgo.Tuple<ClientSessionState, Bool> {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_lruSessionCache.T_lruSessionCache>);
        final _sessionKey = (_sessionKey : stdgo.GoString);
        return {
            final obj = stdgo._internal.crypto.tls.Tls_T_lruSessionCache_static_extension.T_lruSessionCache_static_extension.get(_c, _sessionKey);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function put(_c:T_lruSessionCache, _sessionKey:String, _cs:ClientSessionState):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_lruSessionCache.T_lruSessionCache>);
        final _sessionKey = (_sessionKey : stdgo.GoString);
        final _cs = (_cs : stdgo.Ref<stdgo._internal.crypto.tls.Tls_ClientSessionState.ClientSessionState>);
        stdgo._internal.crypto.tls.Tls_T_lruSessionCache_static_extension.T_lruSessionCache_static_extension.put(_c, _sessionKey, _cs);
    }
    public static function _unlockSlow(__self__:stdgo._internal.crypto.tls.Tls_T_lruSessionCache.T_lruSessionCache, _0:StdTypes.Int):Void {
        final _0 = (_0 : stdgo.GoInt32);
        stdgo._internal.crypto.tls.Tls_T_lruSessionCache_static_extension.T_lruSessionCache_static_extension._unlockSlow(__self__, _0);
    }
    public static function _lockSlow(__self__:stdgo._internal.crypto.tls.Tls_T_lruSessionCache.T_lruSessionCache):Void {
        stdgo._internal.crypto.tls.Tls_T_lruSessionCache_static_extension.T_lruSessionCache_static_extension._lockSlow(__self__);
    }
    public static function unlock(__self__:stdgo._internal.crypto.tls.Tls_T_lruSessionCache.T_lruSessionCache):Void {
        stdgo._internal.crypto.tls.Tls_T_lruSessionCache_static_extension.T_lruSessionCache_static_extension.unlock(__self__);
    }
    public static function tryLock(__self__:stdgo._internal.crypto.tls.Tls_T_lruSessionCache.T_lruSessionCache):Bool {
        return stdgo._internal.crypto.tls.Tls_T_lruSessionCache_static_extension.T_lruSessionCache_static_extension.tryLock(__self__);
    }
    public static function lock(__self__:stdgo._internal.crypto.tls.Tls_T_lruSessionCache.T_lruSessionCache):Void {
        stdgo._internal.crypto.tls.Tls_T_lruSessionCache_static_extension.T_lruSessionCache_static_extension.lock(__self__);
    }
}
