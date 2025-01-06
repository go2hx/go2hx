package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.Server_asInterface) class Server_static_extension {
    @:keep
    @:tdfield
    static public function _onceSetNextProtoDefaults( _srv:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>):Void {
        @:recv var _srv:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server> = _srv;
        if (stdgo._internal.net.http.Http__omitBundledHTTP2._omitBundledHTTP2) {
            return;
        };
        if (@:check2r stdgo._internal.net.http.Http__http2server._http2server.value() == (("0" : stdgo.GoString))) {
            @:check2r stdgo._internal.net.http.Http__http2server._http2server.incNonDefault();
            return;
        };
        if ((@:checkr _srv ?? throw "null pointer dereference").tLSNextProto == null) {
            var _conf = (stdgo.Go.setRef(({ newWriteScheduler : function():stdgo._internal.net.http.Http_T_http2WriteScheduler.T_http2WriteScheduler {
                return stdgo._internal.net.http.Http__http2NewPriorityWriteScheduler._http2NewPriorityWriteScheduler(null);
            } } : stdgo._internal.net.http.Http_T_http2Server.T_http2Server)) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2Server.T_http2Server>);
            (@:checkr _srv ?? throw "null pointer dereference")._nextProtoErr = stdgo._internal.net.http.Http__http2ConfigureServer._http2ConfigureServer(_srv, _conf);
        };
    }
    @:keep
    @:tdfield
    static public function _onceSetNextProtoDefaults_Serve( _srv:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>):Void {
        @:recv var _srv:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server> = _srv;
        if (@:check2r _srv._shouldConfigureHTTP2ForServe()) {
            @:check2r _srv._onceSetNextProtoDefaults();
        };
    }
    @:keep
    @:tdfield
    static public function _setupHTTP2_Serve( _srv:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>):stdgo.Error {
        @:recv var _srv:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server> = _srv;
        @:check2 (@:checkr _srv ?? throw "null pointer dereference")._nextProtoOnce.do_(@:check2r _srv._onceSetNextProtoDefaults_Serve);
        return (@:checkr _srv ?? throw "null pointer dereference")._nextProtoErr;
    }
    @:keep
    @:tdfield
    static public function _setupHTTP2_ServeTLS( _srv:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>):stdgo.Error {
        @:recv var _srv:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server> = _srv;
        @:check2 (@:checkr _srv ?? throw "null pointer dereference")._nextProtoOnce.do_(@:check2r _srv._onceSetNextProtoDefaults);
        return (@:checkr _srv ?? throw "null pointer dereference")._nextProtoErr;
    }
    @:keep
    @:tdfield
    static public function listenAndServeTLS( _srv:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>, _certFile:stdgo.GoString, _keyFile:stdgo.GoString):stdgo.Error {
        @:recv var _srv:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server> = _srv;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            if (@:check2r _srv._shuttingDown()) {
                return stdgo._internal.net.http.Http_errServerClosed.errServerClosed;
            };
            var _addr = ((@:checkr _srv ?? throw "null pointer dereference").addr?.__copy__() : stdgo.GoString);
            if (_addr == (stdgo.Go.str())) {
                _addr = (":https" : stdgo.GoString);
            };
            var __tmp__ = stdgo._internal.net.Net_listen.listen(("tcp" : stdgo.GoString), _addr?.__copy__()), _ln:stdgo._internal.net.Net_Listener.Listener = __tmp__._0, _err:stdgo.Error = __tmp__._1;
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
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return (null : stdgo.Error);
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
                if (defer.ran) continue;
                defer.ran = true;
                defer.f();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return (null : stdgo.Error);
        };
    }
    @:keep
    @:tdfield
    static public function _logf( _s:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server> = _s;
        if (((@:checkr _s ?? throw "null pointer dereference").errorLog != null && (((@:checkr _s ?? throw "null pointer dereference").errorLog : Dynamic).__nil__ == null || !((@:checkr _s ?? throw "null pointer dereference").errorLog : Dynamic).__nil__))) {
            @:check2r (@:checkr _s ?? throw "null pointer dereference").errorLog.printf(_format?.__copy__(), ...(_args : Array<stdgo.AnyInterface>));
        } else {
            stdgo._internal.log.Log_printf.printf(_format?.__copy__(), ...(_args : Array<stdgo.AnyInterface>));
        };
    }
    @:keep
    @:tdfield
    static public function setKeepAlivesEnabled( _srv:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>, _v:Bool):Void {
        @:recv var _srv:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server> = _srv;
        if (_v) {
            @:check2 (@:checkr _srv ?? throw "null pointer dereference")._disableKeepAlives.store(false);
            return;
        };
        @:check2 (@:checkr _srv ?? throw "null pointer dereference")._disableKeepAlives.store(true);
        @:check2r _srv._closeIdleConns();
    }
    @:keep
    @:tdfield
    static public function _shuttingDown( _s:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>):Bool {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server> = _s;
        return @:check2 (@:checkr _s ?? throw "null pointer dereference")._inShutdown.load();
    }
    @:keep
    @:tdfield
    static public function _doKeepAlives( _s:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>):Bool {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server> = _s;
        return (!@:check2 (@:checkr _s ?? throw "null pointer dereference")._disableKeepAlives.load() && !@:check2r _s._shuttingDown() : Bool);
    }
    @:keep
    @:tdfield
    static public function _readHeaderTimeout( _s:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>):stdgo._internal.time.Time_Duration.Duration {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server> = _s;
        if ((@:checkr _s ?? throw "null pointer dereference").readHeaderTimeout != ((0i64 : stdgo._internal.time.Time_Duration.Duration))) {
            return (@:checkr _s ?? throw "null pointer dereference").readHeaderTimeout;
        };
        return (@:checkr _s ?? throw "null pointer dereference").readTimeout;
    }
    @:keep
    @:tdfield
    static public function _idleTimeout( _s:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>):stdgo._internal.time.Time_Duration.Duration {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server> = _s;
        if ((@:checkr _s ?? throw "null pointer dereference").idleTimeout != ((0i64 : stdgo._internal.time.Time_Duration.Duration))) {
            return (@:checkr _s ?? throw "null pointer dereference").idleTimeout;
        };
        return (@:checkr _s ?? throw "null pointer dereference").readTimeout;
    }
    @:keep
    @:tdfield
    static public function _trackConn( _s:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>, _c:stdgo.Ref<stdgo._internal.net.http.Http_T_conn.T_conn>, _add:Bool):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server> = _s;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            @:check2 (@:checkr _s ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = @:check2 (@:checkr _s ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            if ((@:checkr _s ?? throw "null pointer dereference")._activeConn == null) {
                (@:checkr _s ?? throw "null pointer dereference")._activeConn = ({
                    final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo._internal.net.http.Http_T_conn.T_conn>, stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>();
                    {};
                    cast x;
                } : stdgo.GoMap<stdgo.Ref<stdgo._internal.net.http.Http_T_conn.T_conn>, stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>);
            };
            if (_add) {
                (@:checkr _s ?? throw "null pointer dereference")._activeConn[_c] = (new stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError() : stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError);
            } else {
                if ((@:checkr _s ?? throw "null pointer dereference")._activeConn != null) (@:checkr _s ?? throw "null pointer dereference")._activeConn.remove(_c);
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
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
                if (defer.ran) continue;
                defer.ran = true;
                defer.f();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
    @:keep
    @:tdfield
    static public function _trackListener( _s:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>, _ln:stdgo.Ref<stdgo._internal.net.Net_Listener.Listener>, _add:Bool):Bool {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server> = _s;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            @:check2 (@:checkr _s ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = @:check2 (@:checkr _s ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            if ((@:checkr _s ?? throw "null pointer dereference")._listeners == null) {
                (@:checkr _s ?? throw "null pointer dereference")._listeners = ({
                    final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo._internal.net.Net_Listener.Listener>, stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>();
                    {};
                    cast x;
                } : stdgo.GoMap<stdgo.Ref<stdgo._internal.net.Net_Listener.Listener>, stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>);
            };
            if (_add) {
                if (@:check2r _s._shuttingDown()) {
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return false;
                    };
                };
                (@:checkr _s ?? throw "null pointer dereference")._listeners[_ln] = (new stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError() : stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError);
                @:check2 (@:checkr _s ?? throw "null pointer dereference")._listenerGroup.add((1 : stdgo.GoInt));
            } else {
                if ((@:checkr _s ?? throw "null pointer dereference")._listeners != null) (@:checkr _s ?? throw "null pointer dereference")._listeners.remove(_ln);
                @:check2 (@:checkr _s ?? throw "null pointer dereference")._listenerGroup.done();
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return true;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return false;
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
                if (defer.ran) continue;
                defer.ran = true;
                defer.f();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return false;
        };
    }
    @:keep
    @:tdfield
    static public function serveTLS( _srv:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>, _l:stdgo._internal.net.Net_Listener.Listener, _certFile:stdgo.GoString, _keyFile:stdgo.GoString):stdgo.Error {
        @:recv var _srv:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server> = _srv;
        {
            var _err = (@:check2r _srv._setupHTTP2_ServeTLS() : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        var _config = stdgo._internal.net.http.Http__cloneTLSConfig._cloneTLSConfig((@:checkr _srv ?? throw "null pointer dereference").tLSConfig);
        if (!stdgo._internal.net.http.Http__strSliceContains._strSliceContains((@:checkr _config ?? throw "null pointer dereference").nextProtos, ("http/1.1" : stdgo.GoString))) {
            (@:checkr _config ?? throw "null pointer dereference").nextProtos = ((@:checkr _config ?? throw "null pointer dereference").nextProtos.__append__(("http/1.1" : stdgo.GoString)));
        };
        var _configHasCert = ((((@:checkr _config ?? throw "null pointer dereference").certificates.length) > (0 : stdgo.GoInt) : Bool) || ((@:checkr _config ?? throw "null pointer dereference").getCertificate != null) : Bool);
        if (((!_configHasCert || _certFile != (stdgo.Go.str()) : Bool) || (_keyFile != stdgo.Go.str()) : Bool)) {
            var _err:stdgo.Error = (null : stdgo.Error);
            (@:checkr _config ?? throw "null pointer dereference").certificates = (new stdgo.Slice<stdgo._internal.crypto.tls.Tls_Certificate.Certificate>((1 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((1 : stdgo.GoInt).toBasic() > 0 ? (1 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.crypto.tls.Tls_Certificate.Certificate)]) : stdgo.Slice<stdgo._internal.crypto.tls.Tls_Certificate.Certificate>);
            {
                var __tmp__ = stdgo._internal.crypto.tls.Tls_loadX509KeyPair.loadX509KeyPair(_certFile?.__copy__(), _keyFile?.__copy__());
                (@:checkr _config ?? throw "null pointer dereference").certificates[(0 : stdgo.GoInt)] = __tmp__._0?.__copy__();
                _err = __tmp__._1;
            };
            if (_err != null) {
                return _err;
            };
        };
        var _tlsListener = (stdgo._internal.crypto.tls.Tls_newListener.newListener(_l, _config) : stdgo._internal.net.Net_Listener.Listener);
        return @:check2r _srv.serve(_tlsListener);
    }
    @:keep
    @:tdfield
    static public function serve( _srv:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>, _l:stdgo._internal.net.Net_Listener.Listener):stdgo.Error {
        @:recv var _srv:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server> = _srv;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            {
                var _fn = stdgo._internal.net.http.Http__testHookServerServe._testHookServerServe;
                if (_fn != null) {
                    _fn(_srv, _l);
                };
            };
            var _origListener = (_l : stdgo._internal.net.Net_Listener.Listener);
            _l = stdgo.Go.asInterface((stdgo.Go.setRef(({ listener : _l } : stdgo._internal.net.http.Http_T_onceCloseListener.T_onceCloseListener)) : stdgo.Ref<stdgo._internal.net.http.Http_T_onceCloseListener.T_onceCloseListener>));
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
            if (!@:check2r _srv._trackListener((stdgo.Go.setRef(_l) : stdgo.Ref<stdgo._internal.net.Net_Listener.Listener>), true)) {
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return stdgo._internal.net.http.Http_errServerClosed.errServerClosed;
                };
            };
            {
                var _a0 = (stdgo.Go.setRef(_l) : stdgo.Ref<stdgo._internal.net.Net_Listener.Listener>);
                var _a1 = false;
                final __f__ = @:check2r _srv._trackListener;
                __deferstack__.unshift({ ran : false, f : () -> __f__(_a0, _a1) });
            };
            var _baseCtx = (stdgo._internal.context.Context_background.background() : stdgo._internal.context.Context_Context.Context);
            if ((@:checkr _srv ?? throw "null pointer dereference").baseContext != null) {
                _baseCtx = (@:checkr _srv ?? throw "null pointer dereference").baseContext(_origListener);
                if (_baseCtx == null) {
                    throw stdgo.Go.toInterface(("BaseContext returned a nil context" : stdgo.GoString));
                };
            };
            var _tempDelay:stdgo._internal.time.Time_Duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_Duration.Duration);
            var _ctx = (stdgo._internal.context.Context_withValue.withValue(_baseCtx, stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.net.http.Http_serverContextKey.serverContextKey)), stdgo.Go.toInterface(stdgo.Go.asInterface(_srv))) : stdgo._internal.context.Context_Context.Context);
            while (true) {
                var __tmp__ = _l.accept(), _rw:stdgo._internal.net.Net_Conn.Conn = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    if (@:check2r _srv._shuttingDown()) {
                        {
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return stdgo._internal.net.http.Http_errServerClosed.errServerClosed;
                        };
                    };
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo._internal.net.Net_Error.Error)) : stdgo._internal.net.Net_Error.Error), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo._internal.net.Net_Error.Error), _1 : false };
                        }, _ne = __tmp__._0, _ok = __tmp__._1;
                        if ((_ok && _ne.temporary() : Bool)) {
                            if (_tempDelay == ((0i64 : stdgo._internal.time.Time_Duration.Duration))) {
                                _tempDelay = (5000000i64 : stdgo._internal.time.Time_Duration.Duration);
                            } else {
                                _tempDelay = (_tempDelay * ((2i64 : stdgo._internal.time.Time_Duration.Duration)) : stdgo._internal.time.Time_Duration.Duration);
                            };
                            {
                                var _max = (1000000000i64 : stdgo._internal.time.Time_Duration.Duration);
                                if ((_tempDelay > _max : Bool)) {
                                    _tempDelay = _max;
                                };
                            };
                            @:check2r _srv._logf(("http: Accept error: %v; retrying in %v" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(stdgo.Go.asInterface(_tempDelay)));
                            stdgo._internal.time.Time_sleep.sleep(_tempDelay);
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
                var _connCtx = (_ctx : stdgo._internal.context.Context_Context.Context);
                {
                    var _cc = ((@:checkr _srv ?? throw "null pointer dereference").connContext : (stdgo._internal.context.Context_Context.Context, stdgo._internal.net.Net_Conn.Conn) -> stdgo._internal.context.Context_Context.Context);
                    if (_cc != null) {
                        _connCtx = _cc(_connCtx, _rw);
                        if (_connCtx == null) {
                            throw stdgo.Go.toInterface(("ConnContext returned nil" : stdgo.GoString));
                        };
                    };
                };
                _tempDelay = (0i64 : stdgo._internal.time.Time_Duration.Duration);
                var _c = @:check2r _srv._newConn(_rw);
                @:check2r _c._setState((@:checkr _c ?? throw "null pointer dereference")._rwc, (0 : stdgo._internal.net.http.Http_ConnState.ConnState), true);
                stdgo.Go.routine(() -> @:check2r _c._serve(_connCtx));
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return (null : stdgo.Error);
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
                if (defer.ran) continue;
                defer.ran = true;
                defer.f();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return (null : stdgo.Error);
        };
    }
    @:keep
    @:tdfield
    static public function _shouldConfigureHTTP2ForServe( _srv:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>):Bool {
        @:recv var _srv:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server> = _srv;
        if (((@:checkr _srv ?? throw "null pointer dereference").tLSConfig == null || ((@:checkr _srv ?? throw "null pointer dereference").tLSConfig : Dynamic).__nil__)) {
            return true;
        };
        return stdgo._internal.net.http.Http__strSliceContains._strSliceContains((@:checkr (@:checkr _srv ?? throw "null pointer dereference").tLSConfig ?? throw "null pointer dereference").nextProtos, ("h2" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function listenAndServe( _srv:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>):stdgo.Error {
        @:recv var _srv:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server> = _srv;
        if (@:check2r _srv._shuttingDown()) {
            return stdgo._internal.net.http.Http_errServerClosed.errServerClosed;
        };
        var _addr = ((@:checkr _srv ?? throw "null pointer dereference").addr?.__copy__() : stdgo.GoString);
        if (_addr == (stdgo.Go.str())) {
            _addr = (":http" : stdgo.GoString);
        };
        var __tmp__ = stdgo._internal.net.Net_listen.listen(("tcp" : stdgo.GoString), _addr?.__copy__()), _ln:stdgo._internal.net.Net_Listener.Listener = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        return @:check2r _srv.serve(_ln);
    }
    @:keep
    @:tdfield
    static public function _closeListenersLocked( _s:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>):stdgo.Error {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server> = _s;
        var _err:stdgo.Error = (null : stdgo.Error);
        for (_ln => _ in (@:checkr _s ?? throw "null pointer dereference")._listeners) {
            {
                var _cerr = ((_ln : stdgo._internal.net.Net_Listener.Listener).close() : stdgo.Error);
                if (((_cerr != null) && (_err == null) : Bool)) {
                    _err = _cerr;
                };
            };
        };
        return _err;
    }
    @:keep
    @:tdfield
    static public function _closeIdleConns( _s:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>):Bool {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server> = _s;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            @:check2 (@:checkr _s ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = @:check2 (@:checkr _s ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            var _quiescent = (true : Bool);
            for (_c => _ in (@:checkr _s ?? throw "null pointer dereference")._activeConn) {
                var __tmp__ = @:check2r _c._getState(), _st:stdgo._internal.net.http.Http_ConnState.ConnState = __tmp__._0, _unixSec:stdgo.GoInt64 = __tmp__._1;
                if (((_st == (0 : stdgo._internal.net.http.Http_ConnState.ConnState)) && (_unixSec < (stdgo._internal.time.Time_now.now().unix() - (5i64 : stdgo.GoInt64) : stdgo.GoInt64) : Bool) : Bool)) {
                    _st = (2 : stdgo._internal.net.http.Http_ConnState.ConnState);
                };
                if (((_st != (2 : stdgo._internal.net.http.Http_ConnState.ConnState)) || (_unixSec == (0i64 : stdgo.GoInt64)) : Bool)) {
                    _quiescent = false;
                    continue;
                };
                (@:checkr _c ?? throw "null pointer dereference")._rwc.close();
                if ((@:checkr _s ?? throw "null pointer dereference")._activeConn != null) (@:checkr _s ?? throw "null pointer dereference")._activeConn.remove(_c);
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return _quiescent;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return false;
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
                if (defer.ran) continue;
                defer.ran = true;
                defer.f();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return false;
        };
    }
    @:keep
    @:tdfield
    static public function registerOnShutdown( _srv:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>, _f:() -> Void):Void {
        @:recv var _srv:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server> = _srv;
        @:check2 (@:checkr _srv ?? throw "null pointer dereference")._mu.lock();
        (@:checkr _srv ?? throw "null pointer dereference")._onShutdown = ((@:checkr _srv ?? throw "null pointer dereference")._onShutdown.__append__(_f));
        @:check2 (@:checkr _srv ?? throw "null pointer dereference")._mu.unlock();
    }
    @:keep
    @:tdfield
    static public function shutdown( _srv:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>, _ctx:stdgo._internal.context.Context_Context.Context):stdgo.Error {
        @:recv var _srv:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server> = _srv;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            @:check2 (@:checkr _srv ?? throw "null pointer dereference")._inShutdown.store(true);
            @:check2 (@:checkr _srv ?? throw "null pointer dereference")._mu.lock();
            var _lnerr = (@:check2r _srv._closeListenersLocked() : stdgo.Error);
            for (__34660 => _f in (@:checkr _srv ?? throw "null pointer dereference")._onShutdown) {
                stdgo.Go.routine(() -> _f());
            };
            @:check2 (@:checkr _srv ?? throw "null pointer dereference")._mu.unlock();
            @:check2 (@:checkr _srv ?? throw "null pointer dereference")._listenerGroup.wait_();
            var _pollIntervalBase = (1000000i64 : stdgo._internal.time.Time_Duration.Duration);
            var _nextPollInterval = (function():stdgo._internal.time.Time_Duration.Duration {
                var _interval = (_pollIntervalBase + (stdgo._internal.math.rand.Rand_intn.intn(((_pollIntervalBase / (10i64 : stdgo._internal.time.Time_Duration.Duration) : stdgo._internal.time.Time_Duration.Duration) : stdgo.GoInt)) : stdgo._internal.time.Time_Duration.Duration) : stdgo._internal.time.Time_Duration.Duration);
                _pollIntervalBase = (_pollIntervalBase * ((2i64 : stdgo._internal.time.Time_Duration.Duration)) : stdgo._internal.time.Time_Duration.Duration);
                if ((_pollIntervalBase > (500000000i64 : stdgo._internal.time.Time_Duration.Duration) : Bool)) {
                    _pollIntervalBase = (500000000i64 : stdgo._internal.time.Time_Duration.Duration);
                };
                return _interval;
            } : () -> stdgo._internal.time.Time_Duration.Duration);
            var _timer = stdgo._internal.time.Time_newTimer.newTimer(_nextPollInterval());
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
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return (null : stdgo.Error);
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
                if (defer.ran) continue;
                defer.ran = true;
                defer.f();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return (null : stdgo.Error);
        };
    }
    @:keep
    @:tdfield
    static public function close( _srv:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>):stdgo.Error {
        @:recv var _srv:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server> = _srv;
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
                if ((@:checkr _srv ?? throw "null pointer dereference")._activeConn != null) (@:checkr _srv ?? throw "null pointer dereference")._activeConn.remove(_c);
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
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return (null : stdgo.Error);
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
                if (defer.ran) continue;
                defer.ran = true;
                defer.f();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return (null : stdgo.Error);
        };
    }
    @:keep
    @:tdfield
    static public function _tlsHandshakeTimeout( _srv:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>):stdgo._internal.time.Time_Duration.Duration {
        @:recv var _srv:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server> = _srv;
        var _ret:stdgo._internal.time.Time_Duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_Duration.Duration);
        for (__34637 => _v in (new stdgo.GoArray<stdgo._internal.time.Time_Duration.Duration>(3, 3, ...[(@:checkr _srv ?? throw "null pointer dereference").readHeaderTimeout, (@:checkr _srv ?? throw "null pointer dereference").readTimeout, (@:checkr _srv ?? throw "null pointer dereference").writeTimeout]).__setNumber64__() : stdgo.GoArray<stdgo._internal.time.Time_Duration.Duration>)) {
            if ((_v <= (0i64 : stdgo._internal.time.Time_Duration.Duration) : Bool)) {
                continue;
            };
            if (((_ret == (0i64 : stdgo._internal.time.Time_Duration.Duration)) || (_v < _ret : Bool) : Bool)) {
                _ret = _v;
            };
        };
        return _ret;
    }
    @:keep
    @:tdfield
    static public function _initialReadLimitSize( _srv:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>):stdgo.GoInt64 {
        @:recv var _srv:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server> = _srv;
        return ((@:check2r _srv._maxHeaderBytes() : stdgo.GoInt64) + (4096i64 : stdgo.GoInt64) : stdgo.GoInt64);
    }
    @:keep
    @:tdfield
    static public function _maxHeaderBytes( _srv:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>):stdgo.GoInt {
        @:recv var _srv:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server> = _srv;
        if (((@:checkr _srv ?? throw "null pointer dereference").maxHeaderBytes > (0 : stdgo.GoInt) : Bool)) {
            return (@:checkr _srv ?? throw "null pointer dereference").maxHeaderBytes;
        };
        return (1048576 : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _newConn( _srv:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>, _rwc:stdgo._internal.net.Net_Conn.Conn):stdgo.Ref<stdgo._internal.net.http.Http_T_conn.T_conn> {
        @:recv var _srv:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server> = _srv;
        var _c = (stdgo.Go.setRef(({ _server : _srv, _rwc : _rwc } : stdgo._internal.net.http.Http_T_conn.T_conn)) : stdgo.Ref<stdgo._internal.net.http.Http_T_conn.T_conn>);
        if (false) {
            (@:checkr _c ?? throw "null pointer dereference")._rwc = stdgo._internal.net.http.Http__newLoggingConn._newLoggingConn(("server" : stdgo.GoString), (@:checkr _c ?? throw "null pointer dereference")._rwc);
        };
        return _c;
    }
}
