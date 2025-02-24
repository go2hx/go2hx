package stdgo._internal.crypto.tls;
@:keep @:allow(stdgo._internal.crypto.tls.Tls.T_lruSessionCache_asInterface) class T_lruSessionCache_static_extension {
    @:keep
    @:tdfield
    static public function get( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_lrusessioncache.T_lruSessionCache>, _sessionKey:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_clientsessionstate.ClientSessionState>; var _1 : Bool; } throw "T_lruSessionCache:crypto.tls.get is not yet implemented";
    @:keep
    @:tdfield
    static public function put( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_lrusessioncache.T_lruSessionCache>, _sessionKey:stdgo.GoString, _cs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_clientsessionstate.ClientSessionState>):Void throw "T_lruSessionCache:crypto.tls.put is not yet implemented";
    @:embedded
    @:embeddededffieldsffun
    public static function _unlockSlow( __self__:stdgo._internal.crypto.tls.Tls_t_lrusessioncache.T_lruSessionCache, _0:stdgo.GoInt32):Void return @:_5 __self__._unlockSlow(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _lockSlow( __self__:stdgo._internal.crypto.tls.Tls_t_lrusessioncache.T_lruSessionCache):Void return @:_5 __self__._lockSlow();
    @:embedded
    @:embeddededffieldsffun
    public static function unlock( __self__:stdgo._internal.crypto.tls.Tls_t_lrusessioncache.T_lruSessionCache):Void return @:_5 __self__.unlock();
    @:embedded
    @:embeddededffieldsffun
    public static function tryLock( __self__:stdgo._internal.crypto.tls.Tls_t_lrusessioncache.T_lruSessionCache):Bool return @:_5 __self__.tryLock();
    @:embedded
    @:embeddededffieldsffun
    public static function lock( __self__:stdgo._internal.crypto.tls.Tls_t_lrusessioncache.T_lruSessionCache):Void return @:_5 __self__.lock();
}
