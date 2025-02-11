package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.Server_asInterface) class Server_static_extension {
    @:keep
    @:tdfield
    static public function listenAndServeTLS( _srv:stdgo.Ref<stdgo._internal.net.http.Http_server.Server>, _certFile:stdgo.GoString, _keyFile:stdgo.GoString):stdgo.Error {
        @:recv var _srv:stdgo.Ref<stdgo._internal.net.http.Http_server.Server> = _srv;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            if (@:check2r _srv._shuttingDown()) {
                return stdgo._internal.net.http.Http_errserverclosed.errServerClosed;
            };
            var _addr = ((@:checkr _srv ?? throw "null pointer dereference").addr?.__copy__() : stdgo.GoString);
            if (_addr == ((stdgo.Go.str() : stdgo.GoString))) {
                _addr = (":https" : stdgo.GoString);
            };
            var __tmp__ = stdgo._internal.net.http.Http__net._net.listen(("tcp" : stdgo.GoString), _addr?.__copy__()), _ln:stdgo._internal.net.Net_listener.Listener = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
            {
                final __f__ = _ln.close;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            {
                final __ret__:stdgo.Error = @:check2r _srv.serveTLS(_ln, _certFile?.__copy__(), _keyFile?.__copy__());
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
                return (null : stdgo.Error);
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
                return (null : stdgo.Error);
            };
        };
    }
    @:keep
    @:tdfield
    static public function setKeepAlivesEnabled( _srv:stdgo.Ref<stdgo._internal.net.http.Http_server.Server>, _v:Bool):Void {
        @:recv var _srv:stdgo.Ref<stdgo._internal.net.http.Http_server.Server> = _srv;
        if (_v) {
            @:check2 (@:checkr _srv ?? throw "null pointer dereference")._disableKeepAlives.store(false);
            return;
        };
        @:check2 (@:checkr _srv ?? throw "null pointer dereference")._disableKeepAlives.store(true);
        @:check2r _srv._closeIdleConns();
    }
    @:keep
    @:tdfield
    static public function serveTLS( _srv:stdgo.Ref<stdgo._internal.net.http.Http_server.Server>, _l:stdgo._internal.net.Net_listener.Listener, _certFile:stdgo.GoString, _keyFile:stdgo.GoString):stdgo.Error {
        @:recv var _srv:stdgo.Ref<stdgo._internal.net.http.Http_server.Server> = _srv;
        {
            var _err = (@:check2r _srv._setupHTTP2_ServeTLS() : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        var _config = stdgo._internal.net.http.Http__clonetlsconfig._cloneTLSConfig((@:checkr _srv ?? throw "null pointer dereference").tLSConfig);
        if (!stdgo._internal.net.http.Http__strslicecontains._strSliceContains((@:checkr _config ?? throw "null pointer dereference").nextProtos, ("http/1.1" : stdgo.GoString))) {
            (@:checkr _config ?? throw "null pointer dereference").nextProtos = ((@:checkr _config ?? throw "null pointer dereference").nextProtos.__append__((("http/1.1" : stdgo.GoString) : stdgo.GoString)));
        };
        var _configHasCert = ((((@:checkr _config ?? throw "null pointer dereference").certificates.length) > (0 : stdgo.GoInt) : Bool) || ((@:checkr _config ?? throw "null pointer dereference").getCertificate != null) : Bool);
        if (((!_configHasCert || _certFile != ((stdgo.Go.str() : stdgo.GoString)) : Bool) || (_keyFile != (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
            var _err:stdgo.Error = (null : stdgo.Error);
            (@:checkr _config ?? throw "null pointer dereference").certificates = (new stdgo.Slice<stdgo._internal.crypto.tls.Tls_certificate.Certificate>((1 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((1 : stdgo.GoInt).toBasic() > 0 ? (1 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.crypto.tls.Tls_certificate.Certificate)]) : stdgo.Slice<stdgo._internal.crypto.tls.Tls_certificate.Certificate>);
            {
                var __tmp__ = stdgo._internal.net.http.Http__tls._tls.loadX509KeyPair(_certFile?.__copy__(), _keyFile?.__copy__());
                (@:checkr _config ?? throw "null pointer dereference").certificates[(0 : stdgo.GoInt)] = @:tmpset0 __tmp__._0?.__copy__();
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                return _err;
            };
        };
        var _tlsListener = (stdgo._internal.net.http.Http__tls._tls.newListener(_l, _config) : stdgo._internal.net.Net_listener.Listener);
        return @:check2r _srv.serve(_tlsListener);
    }
    @:keep
    @:tdfield
    static public function serve( _srv:stdgo.Ref<stdgo._internal.net.http.Http_server.Server>, _l:stdgo._internal.net.Net_listener.Listener):stdgo.Error {
        @:recv var _srv:stdgo.Ref<stdgo._internal.net.http.Http_server.Server> = _srv;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            {
                var _fn = stdgo._internal.net.http.Http__testhookserverserve._testHookServerServe;
                if (_fn != null) {
                    _fn(_srv, _l);
                };
            };
            var _origListener = (_l : stdgo._internal.net.Net_listener.Listener);
            _l = stdgo.Go.asInterface((stdgo.Go.setRef(({ listener : _l } : stdgo._internal.net.http.Http_t_oncecloselistener.T_onceCloseListener)) : stdgo.Ref<stdgo._internal.net.http.Http_t_oncecloselistener.T_onceCloseListener>));
            {
                final __f__ = _l.close;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            {
                var _err = (@:check2r _srv._setupHTTP2_Serve() : stdgo.Error);
                if (_err != null) {
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return _err;
                    };
                };
            };
            if (!@:check2r _srv._trackListener((stdgo.Go.setRef(_l) : stdgo.Ref<stdgo._internal.net.Net_listener.Listener>), true)) {
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return stdgo._internal.net.http.Http_errserverclosed.errServerClosed;
                };
            };
            {
                var _a0 = (stdgo.Go.setRef(_l) : stdgo.Ref<stdgo._internal.net.Net_listener.Listener>);
                var _a1 = false;
                final __f__ = @:check2r _srv._trackListener;
                __deferstack__.unshift({ ran : false, f : () -> __f__(_a0, _a1) });
            };
            var _baseCtx = (stdgo._internal.net.http.Http__context._context.background() : stdgo._internal.context.Context_context.Context);
            if ((@:checkr _srv ?? throw "null pointer dereference").baseContext != null) {
                _baseCtx = (@:checkr _srv ?? throw "null pointer dereference").baseContext(_origListener);
                if (_baseCtx == null) {
                    throw stdgo.Go.toInterface(("BaseContext returned a nil context" : stdgo.GoString));
                };
            };
            var _tempDelay:stdgo._internal.time.Time_duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_duration.Duration);
            var _ctx = (stdgo._internal.net.http.Http__context._context.withValue(_baseCtx, stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.net.http.Http_servercontextkey.serverContextKey)), stdgo.Go.toInterface(stdgo.Go.asInterface(_srv))) : stdgo._internal.context.Context_context.Context);
            while (true) {
                var __tmp__ = _l.accept(), _rw:stdgo._internal.net.Net_conn.Conn = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    if (@:check2r _srv._shuttingDown()) {
                        {
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return stdgo._internal.net.http.Http_errserverclosed.errServerClosed;
                        };
                    };
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo._internal.net.Net_error.Error)) : stdgo._internal.net.Net_error.Error), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo._internal.net.Net_error.Error), _1 : false };
                        }, _ne = __tmp__._0, _ok = __tmp__._1;
                        if ((_ok && _ne.temporary() : Bool)) {
                            if (_tempDelay == ((0i64 : stdgo._internal.time.Time_duration.Duration))) {
                                _tempDelay = (5000000i64 : stdgo._internal.time.Time_duration.Duration);
                            } else {
                                _tempDelay = (_tempDelay * ((2i64 : stdgo._internal.time.Time_duration.Duration)) : stdgo._internal.time.Time_duration.Duration);
                            };
                            {
                                var _max = (1000000000i64 : stdgo._internal.time.Time_duration.Duration);
                                if ((_tempDelay > _max : Bool)) {
                                    _tempDelay = _max;
                                };
                            };
                            @:check2r _srv._logf(("http: Accept error: %v; retrying in %v" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(stdgo.Go.asInterface(_tempDelay)));
                            stdgo._internal.net.http.Http__time._time.sleep(_tempDelay);
                            continue;
                        };
                    };
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return _err;
                    };
                };
                var _connCtx = (_ctx : stdgo._internal.context.Context_context.Context);
                {
                    var _cc = ((@:checkr _srv ?? throw "null pointer dereference").connContext : (stdgo._internal.context.Context_context.Context, stdgo._internal.net.Net_conn.Conn) -> stdgo._internal.context.Context_context.Context);
                    if (_cc != null) {
                        _connCtx = _cc(_connCtx, _rw);
                        if (_connCtx == null) {
                            throw stdgo.Go.toInterface(("ConnContext returned nil" : stdgo.GoString));
                        };
                    };
                };
                _tempDelay = (0i64 : stdgo._internal.time.Time_duration.Duration);
                var _c = @:check2r _srv._newConn(_rw);
                @:check2r _c._setState((@:checkr _c ?? throw "null pointer dereference")._rwc, (0 : stdgo._internal.net.http.Http_connstate.ConnState), true);
                stdgo.Go.routine(() -> @:check2r _c._serve(_connCtx));
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
                return (null : stdgo.Error);
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
                return (null : stdgo.Error);
            };
        };
    }
    @:keep
    @:tdfield
    static public function listenAndServe( _srv:stdgo.Ref<stdgo._internal.net.http.Http_server.Server>):stdgo.Error {
        @:recv var _srv:stdgo.Ref<stdgo._internal.net.http.Http_server.Server> = _srv;
        if (@:check2r _srv._shuttingDown()) {
            return stdgo._internal.net.http.Http_errserverclosed.errServerClosed;
        };
        var _addr = ((@:checkr _srv ?? throw "null pointer dereference").addr?.__copy__() : stdgo.GoString);
        if (_addr == ((stdgo.Go.str() : stdgo.GoString))) {
            _addr = (":http" : stdgo.GoString);
        };
        var __tmp__ = stdgo._internal.net.http.Http__net._net.listen(("tcp" : stdgo.GoString), _addr?.__copy__()), _ln:stdgo._internal.net.Net_listener.Listener = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        return @:check2r _srv.serve(_ln);
    }
    @:keep
    @:tdfield
    static public function registerOnShutdown( _srv:stdgo.Ref<stdgo._internal.net.http.Http_server.Server>, _f:() -> Void):Void {
        @:recv var _srv:stdgo.Ref<stdgo._internal.net.http.Http_server.Server> = _srv;
        @:check2 (@:checkr _srv ?? throw "null pointer dereference")._mu.lock();
        (@:checkr _srv ?? throw "null pointer dereference")._onShutdown = ((@:checkr _srv ?? throw "null pointer dereference")._onShutdown.__append__(_f));
        @:check2 (@:checkr _srv ?? throw "null pointer dereference")._mu.unlock();
    }
    @:keep
    @:tdfield
    static public function shutdown( _srv:stdgo.Ref<stdgo._internal.net.http.Http_server.Server>, _ctx:stdgo._internal.context.Context_context.Context):stdgo.Error {
        @:recv var _srv:stdgo.Ref<stdgo._internal.net.http.Http_server.Server> = _srv;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            @:check2 (@:checkr _srv ?? throw "null pointer dereference")._inShutdown.store(true);
            @:check2 (@:checkr _srv ?? throw "null pointer dereference")._mu.lock();
            var _lnerr = (@:check2r _srv._closeListenersLocked() : stdgo.Error);
            for (__3532 => _f in (@:checkr _srv ?? throw "null pointer dereference")._onShutdown) {
                stdgo.Go.routine(() -> _f());
            };
            @:check2 (@:checkr _srv ?? throw "null pointer dereference")._mu.unlock();
            @:check2 (@:checkr _srv ?? throw "null pointer dereference")._listenerGroup.wait_();
            var _pollIntervalBase = (1000000i64 : stdgo._internal.time.Time_duration.Duration);
            var _nextPollInterval = (function():stdgo._internal.time.Time_duration.Duration {
                var _interval = (_pollIntervalBase + (stdgo._internal.net.http.Http__rand._rand.intn(((_pollIntervalBase / (10i64 : stdgo._internal.time.Time_duration.Duration) : stdgo._internal.time.Time_duration.Duration) : stdgo.GoInt)) : stdgo._internal.time.Time_duration.Duration) : stdgo._internal.time.Time_duration.Duration);
                _pollIntervalBase = (_pollIntervalBase * ((2i64 : stdgo._internal.time.Time_duration.Duration)) : stdgo._internal.time.Time_duration.Duration);
                if ((_pollIntervalBase > (500000000i64 : stdgo._internal.time.Time_duration.Duration) : Bool)) {
                    _pollIntervalBase = (500000000i64 : stdgo._internal.time.Time_duration.Duration);
                };
                return _interval;
            } : () -> stdgo._internal.time.Time_duration.Duration);
            var _timer = stdgo._internal.net.http.Http__time._time.newTimer(_nextPollInterval());
            {
                final __f__ = @:check2r _timer.stop;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            while (true) {
                if (@:check2r _srv._closeIdleConns()) {
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return _lnerr;
                    };
                };
                {
                    var __select__ = true;
                    while (__select__) {
                        if (_ctx.done() != null && _ctx.done().__isGet__()) {
                            __select__ = false;
                            {
                                _ctx.done().__get__();
                                {
                                    {
                                        final __ret__:stdgo.Error = _ctx.err();
                                        for (defer in __deferstack__) {
                                            if (defer.ran) continue;
                                            defer.ran = true;
                                            defer.f();
                                        };
                                        return __ret__;
                                    };
                                };
                            };
                        } else if ((@:checkr _timer ?? throw "null pointer dereference").c != null && (@:checkr _timer ?? throw "null pointer dereference").c.__isGet__()) {
                            __select__ = false;
                            {
                                (@:checkr _timer ?? throw "null pointer dereference").c.__get__();
                                {
                                    @:check2r _timer.reset(_nextPollInterval());
                                };
                            };
                        };
                        #if !js Sys.sleep(0.01) #else null #end;
                        stdgo._internal.internal.Async.tick();
                    };
                };
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
                return (null : stdgo.Error);
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
                return (null : stdgo.Error);
            };
        };
    }
    @:keep
    @:tdfield
    static public function close( _srv:stdgo.Ref<stdgo._internal.net.http.Http_server.Server>):stdgo.Error {
        @:recv var _srv:stdgo.Ref<stdgo._internal.net.http.Http_server.Server> = _srv;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            @:check2 (@:checkr _srv ?? throw "null pointer dereference")._inShutdown.store(true);
            @:check2 (@:checkr _srv ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = @:check2 (@:checkr _srv ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            var _err = (@:check2r _srv._closeListenersLocked() : stdgo.Error);
            @:check2 (@:checkr _srv ?? throw "null pointer dereference")._mu.unlock();
            @:check2 (@:checkr _srv ?? throw "null pointer dereference")._listenerGroup.wait_();
            @:check2 (@:checkr _srv ?? throw "null pointer dereference")._mu.lock();
            for (_c => _ in (@:checkr _srv ?? throw "null pointer dereference")._activeConn) {
                (@:checkr _c ?? throw "null pointer dereference")._rwc.close();
                if ((@:checkr _srv ?? throw "null pointer dereference")._activeConn != null) (@:checkr _srv ?? throw "null pointer dereference")._activeConn.__remove__(_c);
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return _err;
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
                return (null : stdgo.Error);
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
                return (null : stdgo.Error);
            };
        };
    }
}
