package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.Server_asInterface) class Server_static_extension {
    @:keep
    static public function _onceSetNextProtoDefaults( _srv:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>):Void {
        @:recv var _srv:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server> = _srv;
        if (stdgo._internal.net.http.Http__omitBundledHTTP2._omitBundledHTTP2) {
            return;
        };
        if (stdgo._internal.net.http.Http__http2server._http2server.value() == (("0" : stdgo.GoString))) {
            stdgo._internal.net.http.Http__http2server._http2server.incNonDefault();
            return;
        };
        if (_srv.tlsnextProto == null) {
            var _conf = (stdgo.Go.setRef(({ newWriteScheduler : function():stdgo._internal.net.http.Http_T_http2WriteScheduler.T_http2WriteScheduler {
                return stdgo._internal.net.http.Http__http2NewPriorityWriteScheduler._http2NewPriorityWriteScheduler(null);
            } } : stdgo._internal.net.http.Http_T_http2Server.T_http2Server)) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2Server.T_http2Server>);
            _srv._nextProtoErr = stdgo._internal.net.http.Http__http2ConfigureServer._http2ConfigureServer(_srv, _conf);
        };
    }
    @:keep
    static public function _onceSetNextProtoDefaults_Serve( _srv:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>):Void {
        @:recv var _srv:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server> = _srv;
        if (_srv._shouldConfigureHTTP2ForServe()) {
            _srv._onceSetNextProtoDefaults();
        };
    }
    @:keep
    static public function _setupHTTP2_Serve( _srv:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>):stdgo.Error {
        @:recv var _srv:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server> = _srv;
        _srv._nextProtoOnce.do_(_srv._onceSetNextProtoDefaults_Serve);
        return _srv._nextProtoErr;
    }
    @:keep
    static public function _setupHTTP2_ServeTLS( _srv:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>):stdgo.Error {
        @:recv var _srv:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server> = _srv;
        _srv._nextProtoOnce.do_(_srv._onceSetNextProtoDefaults);
        return _srv._nextProtoErr;
    }
    @:keep
    static public function listenAndServeTLS( _srv:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>, _certFile:stdgo.GoString, _keyFile:stdgo.GoString):stdgo.Error {
        @:recv var _srv:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server> = _srv;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if (_srv._shuttingDown()) {
                return stdgo._internal.net.http.Http_errServerClosed.errServerClosed;
            };
            var _addr = (_srv.addr?.__copy__() : stdgo.GoString);
            if (_addr == (stdgo.Go.str())) {
                _addr = (":https" : stdgo.GoString);
            };
            var __tmp__ = stdgo._internal.net.Net_listen.listen(("tcp" : stdgo.GoString), _addr?.__copy__()), _ln:stdgo._internal.net.Net_Listener.Listener = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
            __deferstack__.unshift(() -> _ln.close());
            {
                final __ret__:stdgo.Error = _srv.serveTLS(_ln, _certFile?.__copy__(), _keyFile?.__copy__());
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:stdgo.Error = (null : stdgo.Error);
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
            final __ret__:stdgo.Error = (null : stdgo.Error);
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
    @:keep
    static public function _logf( _s:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server> = _s;
        if (_s.errorLog != null && ((_s.errorLog : Dynamic).__nil__ == null || !(_s.errorLog : Dynamic).__nil__)) {
            _s.errorLog.printf(_format?.__copy__(), ...(_args : Array<stdgo.AnyInterface>));
        } else {
            stdgo._internal.log.Log_printf.printf(_format?.__copy__(), ...(_args : Array<stdgo.AnyInterface>));
        };
    }
    @:keep
    static public function setKeepAlivesEnabled( _srv:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>, _v:Bool):Void {
        @:recv var _srv:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server> = _srv;
        if (_v) {
            _srv._disableKeepAlives.store(false);
            return;
        };
        _srv._disableKeepAlives.store(true);
        _srv._closeIdleConns();
    }
    @:keep
    static public function _shuttingDown( _s:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>):Bool {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server> = _s;
        return _s._inShutdown.load();
    }
    @:keep
    static public function _doKeepAlives( _s:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>):Bool {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server> = _s;
        return (!_s._disableKeepAlives.load() && !_s._shuttingDown() : Bool);
    }
    @:keep
    static public function _readHeaderTimeout( _s:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>):stdgo._internal.time.Time_Duration.Duration {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server> = _s;
        if (_s.readHeaderTimeout != ((0i64 : stdgo._internal.time.Time_Duration.Duration))) {
            return _s.readHeaderTimeout;
        };
        return _s.readTimeout;
    }
    @:keep
    static public function _idleTimeout( _s:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>):stdgo._internal.time.Time_Duration.Duration {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server> = _s;
        if (_s.idleTimeout != ((0i64 : stdgo._internal.time.Time_Duration.Duration))) {
            return _s.idleTimeout;
        };
        return _s.readTimeout;
    }
    @:keep
    static public function _trackConn( _s:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>, _c:stdgo.Ref<stdgo._internal.net.http.Http_T_conn.T_conn>, _add:Bool):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server> = _s;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _s._mu.lock();
            __deferstack__.unshift(() -> _s._mu.unlock());
            if (_s._activeConn == null) {
                _s._activeConn = ({
                    final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo._internal.net.http.Http_T_conn.T_conn>, stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>();
                    {};
                    cast x;
                } : stdgo.GoMap<stdgo.Ref<stdgo._internal.net.http.Http_T_conn.T_conn>, stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>);
            };
            if (_add) {
                _s._activeConn[_c] = (new stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError() : stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError);
            } else {
                if (_s._activeConn != null) _s._activeConn.remove(_c);
            };
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
    @:keep
    static public function _trackListener( _s:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>, _ln:stdgo.Ref<stdgo._internal.net.Net_Listener.Listener>, _add:Bool):Bool {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server> = _s;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _s._mu.lock();
            __deferstack__.unshift(() -> _s._mu.unlock());
            if (_s._listeners == null) {
                _s._listeners = ({
                    final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo._internal.net.Net_Listener.Listener>, stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>();
                    {};
                    cast x;
                } : stdgo.GoMap<stdgo.Ref<stdgo._internal.net.Net_Listener.Listener>, stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>);
            };
            if (_add) {
                if (_s._shuttingDown()) {
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return false;
                    };
                };
                _s._listeners[_ln] = (new stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError() : stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError);
                _s._listenerGroup.add((1 : stdgo.GoInt));
            } else {
                if (_s._listeners != null) _s._listeners.remove(_ln);
                _s._listenerGroup.done();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return true;
            };
            {
                for (defer in __deferstack__) {
                    defer();
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
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return false;
        };
    }
    @:keep
    static public function serveTLS( _srv:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>, _l:stdgo._internal.net.Net_Listener.Listener, _certFile:stdgo.GoString, _keyFile:stdgo.GoString):stdgo.Error {
        @:recv var _srv:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server> = _srv;
        {
            var _err = (_srv._setupHTTP2_ServeTLS() : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        var _config = stdgo._internal.net.http.Http__cloneTLSConfig._cloneTLSConfig(_srv.tlsconfig);
        if (!stdgo._internal.net.http.Http__strSliceContains._strSliceContains(_config.nextProtos, ("http/1.1" : stdgo.GoString))) {
            _config.nextProtos = (_config.nextProtos.__append__(("http/1.1" : stdgo.GoString)));
        };
        var _configHasCert = (((_config.certificates.length) > (0 : stdgo.GoInt) : Bool) || (_config.getCertificate != null) : Bool);
        if (((!_configHasCert || _certFile != (stdgo.Go.str()) : Bool) || (_keyFile != stdgo.Go.str()) : Bool)) {
            var _err:stdgo.Error = (null : stdgo.Error);
            _config.certificates = (new stdgo.Slice<stdgo._internal.crypto.tls.Tls_Certificate.Certificate>((1 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((1 : stdgo.GoInt).toBasic() > 0 ? (1 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.crypto.tls.Tls_Certificate.Certificate)]) : stdgo.Slice<stdgo._internal.crypto.tls.Tls_Certificate.Certificate>);
            {
                var __tmp__ = stdgo._internal.crypto.tls.Tls_loadX509KeyPair.loadX509KeyPair(_certFile?.__copy__(), _keyFile?.__copy__());
                _config.certificates[(0 : stdgo.GoInt)] = __tmp__._0?.__copy__();
                _err = __tmp__._1;
            };
            if (_err != null) {
                return _err;
            };
        };
        var _tlsListener = (stdgo._internal.crypto.tls.Tls_newListener.newListener(_l, _config) : stdgo._internal.net.Net_Listener.Listener);
        return _srv.serve(_tlsListener);
    }
    @:keep
    static public function serve( _srv:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>, _l:stdgo._internal.net.Net_Listener.Listener):stdgo.Error {
        @:recv var _srv:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server> = _srv;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {
                var _fn = stdgo._internal.net.http.Http__testHookServerServe._testHookServerServe;
                if (_fn != null) {
                    _fn(_srv, _l);
                };
            };
            var _origListener = (_l : stdgo._internal.net.Net_Listener.Listener);
            _l = stdgo.Go.asInterface((stdgo.Go.setRef(({ listener : _l } : stdgo._internal.net.http.Http_T_onceCloseListener.T_onceCloseListener)) : stdgo.Ref<stdgo._internal.net.http.Http_T_onceCloseListener.T_onceCloseListener>));
            __deferstack__.unshift(() -> _l.close());
            {
                var _err = (_srv._setupHTTP2_Serve() : stdgo.Error);
                if (_err != null) {
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return _err;
                    };
                };
            };
            if (!_srv._trackListener((stdgo.Go.setRef(_l) : stdgo.Ref<stdgo._internal.net.Net_Listener.Listener>), true)) {
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return stdgo._internal.net.http.Http_errServerClosed.errServerClosed;
                };
            };
            {
                var _a0 = (stdgo.Go.setRef(_l) : stdgo.Ref<stdgo._internal.net.Net_Listener.Listener>);
                var _a1 = false;
                __deferstack__.unshift(() -> _srv._trackListener(_a0, _a1));
            };
            var _baseCtx = (stdgo._internal.context.Context_background.background() : stdgo._internal.context.Context_Context.Context);
            if (_srv.baseContext != null) {
                _baseCtx = _srv.baseContext(_origListener);
                if (_baseCtx == null) {
                    throw stdgo.Go.toInterface(("BaseContext returned a nil context" : stdgo.GoString));
                };
            };
            var _tempDelay:stdgo._internal.time.Time_Duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_Duration.Duration);
            var _ctx = (stdgo._internal.context.Context_withValue.withValue(_baseCtx, stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.net.http.Http_serverContextKey.serverContextKey)), stdgo.Go.toInterface(stdgo.Go.asInterface(_srv))) : stdgo._internal.context.Context_Context.Context);
            while (true) {
                var __tmp__ = _l.accept(), _rw:stdgo._internal.net.Net_Conn.Conn = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    if (_srv._shuttingDown()) {
                        {
                            for (defer in __deferstack__) {
                                defer();
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
                            _srv._logf(("http: Accept error: %v; retrying in %v" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(stdgo.Go.asInterface(_tempDelay)));
                            stdgo._internal.time.Time_sleep.sleep(_tempDelay);
                            continue;
                        };
                    };
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return _err;
                    };
                };
                var _connCtx = (_ctx : stdgo._internal.context.Context_Context.Context);
                {
                    var _cc = (_srv.connContext : (stdgo._internal.context.Context_Context.Context, stdgo._internal.net.Net_Conn.Conn) -> stdgo._internal.context.Context_Context.Context);
                    if (_cc != null) {
                        _connCtx = _cc(_connCtx, _rw);
                        if (_connCtx == null) {
                            throw stdgo.Go.toInterface(("ConnContext returned nil" : stdgo.GoString));
                        };
                    };
                };
                _tempDelay = (0i64 : stdgo._internal.time.Time_Duration.Duration);
                var _c = _srv._newConn(_rw);
                _c._setState(_c._rwc, (0 : stdgo._internal.net.http.Http_ConnState.ConnState), true);
                stdgo.Go.routine(() -> _c._serve(_connCtx));
            };
            {
                final __ret__:stdgo.Error = (null : stdgo.Error);
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
            final __ret__:stdgo.Error = (null : stdgo.Error);
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
    @:keep
    static public function _shouldConfigureHTTP2ForServe( _srv:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>):Bool {
        @:recv var _srv:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server> = _srv;
        if (_srv.tlsconfig == null || (_srv.tlsconfig : Dynamic).__nil__) {
            return true;
        };
        return stdgo._internal.net.http.Http__strSliceContains._strSliceContains(_srv.tlsconfig.nextProtos, ("h2" : stdgo.GoString));
    }
    @:keep
    static public function listenAndServe( _srv:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>):stdgo.Error {
        @:recv var _srv:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server> = _srv;
        if (_srv._shuttingDown()) {
            return stdgo._internal.net.http.Http_errServerClosed.errServerClosed;
        };
        var _addr = (_srv.addr?.__copy__() : stdgo.GoString);
        if (_addr == (stdgo.Go.str())) {
            _addr = (":http" : stdgo.GoString);
        };
        var __tmp__ = stdgo._internal.net.Net_listen.listen(("tcp" : stdgo.GoString), _addr?.__copy__()), _ln:stdgo._internal.net.Net_Listener.Listener = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        return _srv.serve(_ln);
    }
    @:keep
    static public function _closeListenersLocked( _s:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>):stdgo.Error {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server> = _s;
        var _err:stdgo.Error = (null : stdgo.Error);
        for (_ln => _ in _s._listeners) {
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
    static public function _closeIdleConns( _s:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>):Bool {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server> = _s;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _s._mu.lock();
            __deferstack__.unshift(() -> _s._mu.unlock());
            var _quiescent = (true : Bool);
            for (_c => _ in _s._activeConn) {
                var __tmp__ = _c._getState(), _st:stdgo._internal.net.http.Http_ConnState.ConnState = __tmp__._0, _unixSec:stdgo.GoInt64 = __tmp__._1;
                if (((_st == (0 : stdgo._internal.net.http.Http_ConnState.ConnState)) && (_unixSec < (stdgo._internal.time.Time_now.now().unix() - (5i64 : stdgo.GoInt64) : stdgo.GoInt64) : Bool) : Bool)) {
                    _st = (2 : stdgo._internal.net.http.Http_ConnState.ConnState);
                };
                if (((_st != (2 : stdgo._internal.net.http.Http_ConnState.ConnState)) || (_unixSec == (0i64 : stdgo.GoInt64)) : Bool)) {
                    _quiescent = false;
                    continue;
                };
                _c._rwc.close();
                if (_s._activeConn != null) _s._activeConn.remove(_c);
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return _quiescent;
            };
            {
                for (defer in __deferstack__) {
                    defer();
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
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return false;
        };
    }
    @:keep
    static public function registerOnShutdown( _srv:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>, _f:() -> Void):Void {
        @:recv var _srv:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server> = _srv;
        _srv._mu.lock();
        _srv._onShutdown = (_srv._onShutdown.__append__(_f));
        _srv._mu.unlock();
    }
    @:keep
    static public function shutdown( _srv:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>, _ctx:stdgo._internal.context.Context_Context.Context):stdgo.Error {
        @:recv var _srv:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server> = _srv;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _srv._inShutdown.store(true);
            _srv._mu.lock();
            var _lnerr = (_srv._closeListenersLocked() : stdgo.Error);
            for (__34666 => _f in _srv._onShutdown) {
                stdgo.Go.routine(() -> _f());
            };
            _srv._mu.unlock();
            _srv._listenerGroup.wait_();
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
            __deferstack__.unshift(() -> _timer.stop());
            while (true) {
                if (_srv._closeIdleConns()) {
                    {
                        for (defer in __deferstack__) {
                            defer();
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
                                            defer();
                                        };
                                        return __ret__;
                                    };
                                };
                            };
                        } else if (_timer.c != null && _timer.c.__isGet__()) {
                            __select__ = false;
                            {
                                _timer.c.__get__();
                                {
                                    _timer.reset(_nextPollInterval());
                                };
                            };
                        };
                        #if !js Sys.sleep(0.01) #else null #end;
                        stdgo._internal.internal.Async.tick();
                    };
                };
            };
            {
                final __ret__:stdgo.Error = (null : stdgo.Error);
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
            final __ret__:stdgo.Error = (null : stdgo.Error);
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
    @:keep
    static public function close( _srv:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>):stdgo.Error {
        @:recv var _srv:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server> = _srv;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _srv._inShutdown.store(true);
            _srv._mu.lock();
            __deferstack__.unshift(() -> _srv._mu.unlock());
            var _err = (_srv._closeListenersLocked() : stdgo.Error);
            _srv._mu.unlock();
            _srv._listenerGroup.wait_();
            _srv._mu.lock();
            for (_c => _ in _srv._activeConn) {
                _c._rwc.close();
                if (_srv._activeConn != null) _srv._activeConn.remove(_c);
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return _err;
            };
            {
                final __ret__:stdgo.Error = (null : stdgo.Error);
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
            final __ret__:stdgo.Error = (null : stdgo.Error);
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
    @:keep
    static public function _tlsHandshakeTimeout( _srv:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>):stdgo._internal.time.Time_Duration.Duration {
        @:recv var _srv:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server> = _srv;
        var _ret:stdgo._internal.time.Time_Duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_Duration.Duration);
        for (__34643 => _v in (new stdgo.GoArray<stdgo._internal.time.Time_Duration.Duration>(3, 3, ...[_srv.readHeaderTimeout, _srv.readTimeout, _srv.writeTimeout]).__setNumber64__() : stdgo.GoArray<stdgo._internal.time.Time_Duration.Duration>)) {
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
    static public function _initialReadLimitSize( _srv:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>):stdgo.GoInt64 {
        @:recv var _srv:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server> = _srv;
        return ((_srv._maxHeaderBytes() : stdgo.GoInt64) + (4096i64 : stdgo.GoInt64) : stdgo.GoInt64);
    }
    @:keep
    static public function _maxHeaderBytes( _srv:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>):stdgo.GoInt {
        @:recv var _srv:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server> = _srv;
        if ((_srv.maxHeaderBytes > (0 : stdgo.GoInt) : Bool)) {
            return _srv.maxHeaderBytes;
        };
        return (1048576 : stdgo.GoInt);
    }
    @:keep
    static public function _newConn( _srv:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>, _rwc:stdgo._internal.net.Net_Conn.Conn):stdgo.Ref<stdgo._internal.net.http.Http_T_conn.T_conn> {
        @:recv var _srv:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server> = _srv;
        var _c = (stdgo.Go.setRef(({ _server : _srv, _rwc : _rwc } : stdgo._internal.net.http.Http_T_conn.T_conn)) : stdgo.Ref<stdgo._internal.net.http.Http_T_conn.T_conn>);
        if (false) {
            _c._rwc = stdgo._internal.net.http.Http__newLoggingConn._newLoggingConn(("server" : stdgo.GoString), _c._rwc);
        };
        return _c;
    }
}
