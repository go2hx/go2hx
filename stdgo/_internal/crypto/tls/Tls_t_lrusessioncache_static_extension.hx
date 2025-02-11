package stdgo._internal.crypto.tls;
@:keep @:allow(stdgo._internal.crypto.tls.Tls.T_lruSessionCache_asInterface) class T_lruSessionCache_static_extension {
    @:keep
    @:tdfield
    static public function get( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_lrusessioncache.T_lruSessionCache>, _sessionKey:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_clientsessionstate.ClientSessionState>; var _1 : Bool; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_lrusessioncache.T_lruSessionCache> = _c;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            @:check2r _c.lock();
            {
                final __f__ = @:check2r _c.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            {
                var __tmp__ = ((@:checkr _c ?? throw "null pointer dereference")._m != null && (@:checkr _c ?? throw "null pointer dereference")._m.__exists__(_sessionKey?.__copy__()) ? { _0 : (@:checkr _c ?? throw "null pointer dereference")._m[_sessionKey?.__copy__()], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.container.list.List_element.Element>), _1 : false }), _elem:stdgo.Ref<stdgo._internal.container.list.List_element.Element> = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    @:check2r (@:checkr _c ?? throw "null pointer dereference")._q.moveToFront(_elem);
                    {
                        final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_clientsessionstate.ClientSessionState>; var _1 : Bool; } = { _0 : (@:checkr (stdgo.Go.typeAssert(((@:checkr _elem ?? throw "null pointer dereference").value : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_lrusessioncacheentry.T_lruSessionCacheEntry>)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_lrusessioncacheentry.T_lruSessionCacheEntry>) ?? throw "null pointer dereference")._state, _1 : true };
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
            };
            {
                final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_clientsessionstate.ClientSessionState>; var _1 : Bool; } = { _0 : null, _1 : false };
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return { _0 : (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_clientsessionstate.ClientSessionState>), _1 : false };
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return { _0 : (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_clientsessionstate.ClientSessionState>), _1 : false };
            };
        };
    }
    @:keep
    @:tdfield
    static public function put( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_lrusessioncache.T_lruSessionCache>, _sessionKey:stdgo.GoString, _cs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_clientsessionstate.ClientSessionState>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_lrusessioncache.T_lruSessionCache> = _c;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            @:check2r _c.lock();
            {
                final __f__ = @:check2r _c.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            {
                var __tmp__ = ((@:checkr _c ?? throw "null pointer dereference")._m != null && (@:checkr _c ?? throw "null pointer dereference")._m.__exists__(_sessionKey?.__copy__()) ? { _0 : (@:checkr _c ?? throw "null pointer dereference")._m[_sessionKey?.__copy__()], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.container.list.List_element.Element>), _1 : false }), _elem:stdgo.Ref<stdgo._internal.container.list.List_element.Element> = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    if ((_cs == null || (_cs : Dynamic).__nil__)) {
                        @:check2r (@:checkr _c ?? throw "null pointer dereference")._q.remove(_elem);
                        if ((@:checkr _c ?? throw "null pointer dereference")._m != null) (@:checkr _c ?? throw "null pointer dereference")._m.__remove__(_sessionKey);
                    } else {
                        var _entry = (stdgo.Go.typeAssert(((@:checkr _elem ?? throw "null pointer dereference").value : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_lrusessioncacheentry.T_lruSessionCacheEntry>)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_lrusessioncacheentry.T_lruSessionCacheEntry>);
                        (@:checkr _entry ?? throw "null pointer dereference")._state = _cs;
                        @:check2r (@:checkr _c ?? throw "null pointer dereference")._q.moveToFront(_elem);
                    };
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return;
                    };
                };
            };
            if ((@:check2r (@:checkr _c ?? throw "null pointer dereference")._q.len() < (@:checkr _c ?? throw "null pointer dereference")._capacity : Bool)) {
                var _entry = (stdgo.Go.setRef((new stdgo._internal.crypto.tls.Tls_t_lrusessioncacheentry.T_lruSessionCacheEntry(_sessionKey?.__copy__(), _cs) : stdgo._internal.crypto.tls.Tls_t_lrusessioncacheentry.T_lruSessionCacheEntry)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_lrusessioncacheentry.T_lruSessionCacheEntry>);
                (@:checkr _c ?? throw "null pointer dereference")._m[_sessionKey] = @:check2r (@:checkr _c ?? throw "null pointer dereference")._q.pushFront(stdgo.Go.toInterface(stdgo.Go.asInterface(_entry)));
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return;
                };
            };
            var _elem = @:check2r (@:checkr _c ?? throw "null pointer dereference")._q.back();
            var _entry = (stdgo.Go.typeAssert(((@:checkr _elem ?? throw "null pointer dereference").value : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_lrusessioncacheentry.T_lruSessionCacheEntry>)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_lrusessioncacheentry.T_lruSessionCacheEntry>);
            if ((@:checkr _c ?? throw "null pointer dereference")._m != null) (@:checkr _c ?? throw "null pointer dereference")._m.__remove__((@:checkr _entry ?? throw "null pointer dereference")._sessionKey);
            (@:checkr _entry ?? throw "null pointer dereference")._sessionKey = _sessionKey?.__copy__();
            (@:checkr _entry ?? throw "null pointer dereference")._state = _cs;
            @:check2r (@:checkr _c ?? throw "null pointer dereference")._q.moveToFront(_elem);
            (@:checkr _c ?? throw "null pointer dereference")._m[_sessionKey] = _elem;
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return;
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return;
            };
        };
    }
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
