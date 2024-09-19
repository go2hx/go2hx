package stdgo._internal.crypto.tls;
@:keep @:allow(stdgo._internal.crypto.tls.Tls.T_lruSessionCache_asInterface) class T_lruSessionCache_static_extension {
    @:keep
    static public function get( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_lruSessionCache.T_lruSessionCache>, _sessionKey:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_ClientSessionState.ClientSessionState>; var _1 : Bool; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_lruSessionCache.T_lruSessionCache> = _c;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _c.lock();
            __deferstack__.unshift(() -> _c.unlock());
            {
                var __tmp__ = (_c._m != null && _c._m.exists(_sessionKey?.__copy__()) ? { _0 : _c._m[_sessionKey?.__copy__()], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.container.list.List_Element.Element>), _1 : false }), _elem:stdgo.Ref<stdgo._internal.container.list.List_Element.Element> = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    _c._q.moveToFront(_elem);
                    {
                        final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_ClientSessionState.ClientSessionState>; var _1 : Bool; } = { _0 : (stdgo.Go.typeAssert((_elem.value : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_lruSessionCacheEntry.T_lruSessionCacheEntry>)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_lruSessionCacheEntry.T_lruSessionCacheEntry>)._state, _1 : true };
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return __ret__;
                    };
                };
            };
            {
                final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_ClientSessionState.ClientSessionState>; var _1 : Bool; } = { _0 : null, _1 : false };
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_ClientSessionState.ClientSessionState>; var _1 : Bool; } = { _0 : (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_ClientSessionState.ClientSessionState>), _1 : false };
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return __ret__;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_ClientSessionState.ClientSessionState>; var _1 : Bool; } = { _0 : (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_ClientSessionState.ClientSessionState>), _1 : false };
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
    @:keep
    static public function put( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_lruSessionCache.T_lruSessionCache>, _sessionKey:stdgo.GoString, _cs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_ClientSessionState.ClientSessionState>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_lruSessionCache.T_lruSessionCache> = _c;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _c.lock();
            __deferstack__.unshift(() -> _c.unlock());
            {
                var __tmp__ = (_c._m != null && _c._m.exists(_sessionKey?.__copy__()) ? { _0 : _c._m[_sessionKey?.__copy__()], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.container.list.List_Element.Element>), _1 : false }), _elem:stdgo.Ref<stdgo._internal.container.list.List_Element.Element> = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    if (_cs == null || (_cs : Dynamic).__nil__) {
                        _c._q.remove(_elem);
                        if (_c._m != null) _c._m.remove(_sessionKey);
                    } else {
                        var _entry = (stdgo.Go.typeAssert((_elem.value : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_lruSessionCacheEntry.T_lruSessionCacheEntry>)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_lruSessionCacheEntry.T_lruSessionCacheEntry>);
                        _entry._state = _cs;
                        _c._q.moveToFront(_elem);
                    };
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return;
                    };
                };
            };
            if ((_c._q.len() < _c._capacity : Bool)) {
                var _entry = (stdgo.Go.setRef((new stdgo._internal.crypto.tls.Tls_T_lruSessionCacheEntry.T_lruSessionCacheEntry(_sessionKey?.__copy__(), _cs) : stdgo._internal.crypto.tls.Tls_T_lruSessionCacheEntry.T_lruSessionCacheEntry)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_lruSessionCacheEntry.T_lruSessionCacheEntry>);
                _c._m[_sessionKey] = _c._q.pushFront(stdgo.Go.toInterface(_entry));
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return;
                };
            };
            var _elem = _c._q.back();
            var _entry = (stdgo.Go.typeAssert((_elem.value : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_lruSessionCacheEntry.T_lruSessionCacheEntry>)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_lruSessionCacheEntry.T_lruSessionCacheEntry>);
            if (_c._m != null) _c._m.remove(_entry._sessionKey);
            _entry._sessionKey = _sessionKey?.__copy__();
            _entry._state = _cs;
            _c._q.moveToFront(_elem);
            _c._m[_sessionKey] = _elem;
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
    @:embedded
    public static function _unlockSlow( __self__:stdgo._internal.crypto.tls.Tls_T_lruSessionCache.T_lruSessionCache, __0:stdgo.GoInt32) __self__._unlockSlow(__0);
    @:embedded
    public static function _lockSlow( __self__:stdgo._internal.crypto.tls.Tls_T_lruSessionCache.T_lruSessionCache) __self__._lockSlow();
    @:embedded
    public static function unlock( __self__:stdgo._internal.crypto.tls.Tls_T_lruSessionCache.T_lruSessionCache) __self__.unlock();
    @:embedded
    public static function tryLock( __self__:stdgo._internal.crypto.tls.Tls_T_lruSessionCache.T_lruSessionCache):Bool return __self__.tryLock();
    @:embedded
    public static function lock( __self__:stdgo._internal.crypto.tls.Tls_T_lruSessionCache.T_lruSessionCache) __self__.lock();
}
