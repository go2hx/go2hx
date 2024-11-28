package stdgo._internal.net.http.httptest;
@:keep @:allow(stdgo._internal.net.http.httptest.Httptest.Server_asInterface) class Server_static_extension {
    @:keep
    static public function _closeConnChan( _s:stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_Server.Server>, _c:stdgo._internal.net.Net_Conn.Conn, _done:stdgo.Chan<stdgo._internal.net.http.httptest.Httptest_T__struct_0.T__struct_0>):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_Server.Server> = _s;
        _c.close();
        if (_done != null) {
            _done.__send__(({  } : stdgo._internal.net.http.httptest.Httptest_T__struct_0.T__struct_0));
        };
    }
    @:keep
    static public function _closeConn( _s:stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_Server.Server>, _c:stdgo._internal.net.Net_Conn.Conn):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_Server.Server> = _s;
        _s._closeConnChan(_c, (null : stdgo.Chan<stdgo._internal.net.http.httptest.Httptest_T__struct_0.T__struct_0>));
    }
    @:keep
    static public function _wrap( _s:stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_Server.Server>):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_Server.Server> = _s;
        var _oldHook = (_s.config.connState : (stdgo._internal.net.Net_Conn.Conn, stdgo._internal.net.http.Http_ConnState.ConnState) -> Void);
        _s.config.connState = function(_c:stdgo._internal.net.Net_Conn.Conn, _cs:stdgo._internal.net.http.Http_ConnState.ConnState):Void {
            var __deferstack__:Array<Void -> Void> = [];
            try {
                _s._mu.lock();
                __deferstack__.unshift(() -> _s._mu.unlock());
                {
                    final __value__ = _cs;
                    if (__value__ == ((0 : stdgo._internal.net.http.Http_ConnState.ConnState))) {
                        {
                            var __tmp__ = (_s._conns != null && _s._conns.exists(_c) ? { _0 : _s._conns[_c], _1 : true } : { _0 : ((0 : stdgo.GoInt) : stdgo._internal.net.http.Http_ConnState.ConnState), _1 : false }), __208:stdgo._internal.net.http.Http_ConnState.ConnState = __tmp__._0, _exists:Bool = __tmp__._1;
                            if (_exists) {
                                throw stdgo.Go.toInterface(("invalid state transition" : stdgo.GoString));
                            };
                        };
                        if (_s._conns == null) {
                            _s._conns = ({
                                final x = new stdgo.GoMap.GoObjectMap<stdgo._internal.net.Net_Conn.Conn, stdgo._internal.net.http.Http_ConnState.ConnState>();
                                x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.net.Net_Conn.Conn", [], stdgo._internal.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }));
                                x.__defaultValue__ = () -> ((0 : stdgo.GoInt) : stdgo._internal.net.http.Http_ConnState.ConnState);
                                {};
                                cast x;
                            } : stdgo.GoMap<stdgo._internal.net.Net_Conn.Conn, stdgo._internal.net.http.Http_ConnState.ConnState>);
                        };
                        _s._wg.add((1 : stdgo.GoInt));
                        _s._conns[_c] = _cs;
                        if (_s._closed) {
                            _s._closeConn(_c);
                        };
                    } else if (__value__ == ((1 : stdgo._internal.net.http.Http_ConnState.ConnState))) {
                        {
                            var __tmp__ = (_s._conns != null && _s._conns.exists(_c) ? { _0 : _s._conns[_c], _1 : true } : { _0 : ((0 : stdgo.GoInt) : stdgo._internal.net.http.Http_ConnState.ConnState), _1 : false }), _oldState:stdgo._internal.net.http.Http_ConnState.ConnState = __tmp__._0, _ok:Bool = __tmp__._1;
                            if (_ok) {
                                if (((_oldState != (0 : stdgo._internal.net.http.Http_ConnState.ConnState)) && (_oldState != (2 : stdgo._internal.net.http.Http_ConnState.ConnState)) : Bool)) {
                                    throw stdgo.Go.toInterface(("invalid state transition" : stdgo.GoString));
                                };
                                _s._conns[_c] = _cs;
                            };
                        };
                    } else if (__value__ == ((2 : stdgo._internal.net.http.Http_ConnState.ConnState))) {
                        {
                            var __tmp__ = (_s._conns != null && _s._conns.exists(_c) ? { _0 : _s._conns[_c], _1 : true } : { _0 : ((0 : stdgo.GoInt) : stdgo._internal.net.http.Http_ConnState.ConnState), _1 : false }), _oldState:stdgo._internal.net.http.Http_ConnState.ConnState = __tmp__._0, _ok:Bool = __tmp__._1;
                            if (_ok) {
                                if (_oldState != ((1 : stdgo._internal.net.http.Http_ConnState.ConnState))) {
                                    throw stdgo.Go.toInterface(("invalid state transition" : stdgo.GoString));
                                };
                                _s._conns[_c] = _cs;
                            };
                        };
                        if (_s._closed) {
                            _s._closeConn(_c);
                        };
                    } else if (__value__ == ((3 : stdgo._internal.net.http.Http_ConnState.ConnState)) || __value__ == ((4 : stdgo._internal.net.http.Http_ConnState.ConnState))) {
                        {
                            var __tmp__ = (_s._conns != null && _s._conns.exists(_c) ? { _0 : _s._conns[_c], _1 : true } : { _0 : ((0 : stdgo.GoInt) : stdgo._internal.net.http.Http_ConnState.ConnState), _1 : false }), __208:stdgo._internal.net.http.Http_ConnState.ConnState = __tmp__._0, _ok:Bool = __tmp__._1;
                            if (_ok) {
                                if (_s._conns != null) _s._conns.remove(_c);
                                __deferstack__.unshift(() -> _s._wg.done());
                            };
                        };
                    };
                };
                if (_oldHook != null) {
                    _oldHook(_c, _cs);
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
        };
    }
    @:keep
    static public function _goServe( _s:stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_Server.Server>):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_Server.Server> = _s;
        _s._wg.add((1 : stdgo.GoInt));
        stdgo.Go.routine(() -> ({
            var a = function():Void {
                var __deferstack__:Array<Void -> Void> = [];
                try {
                    __deferstack__.unshift(() -> _s._wg.done());
                    _s.config.serve(_s.listener);
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
            };
            a();
        }));
    }
    @:keep
    static public function client( _s:stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_Server.Server>):stdgo.Ref<stdgo._internal.net.http.Http_Client.Client> {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_Server.Server> = _s;
        return _s._client;
    }
    @:keep
    static public function certificate( _s:stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_Server.Server>):stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate> {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_Server.Server> = _s;
        return _s._certificate;
    }
    @:keep
    static public function closeClientConnections( _s:stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_Server.Server>):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_Server.Server> = _s;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _s._mu.lock();
            var _nconn = (_s._conns.length : stdgo.GoInt);
            var _ch = (new stdgo.Chan<stdgo._internal.net.http.httptest.Httptest_T__struct_0.T__struct_0>((_nconn : stdgo.GoInt).toBasic(), () -> ({  } : stdgo._internal.net.http.httptest.Httptest_T__struct_0.T__struct_0)) : stdgo.Chan<stdgo._internal.net.http.httptest.Httptest_T__struct_0.T__struct_0>);
            for (_c => _ in _s._conns) {
                stdgo.Go.routine(() -> _s._closeConnChan(_c, _ch));
            };
            _s._mu.unlock();
            var _timer = stdgo._internal.time.Time_newTimer.newTimer((5000000000i64 : stdgo._internal.time.Time_Duration.Duration));
            __deferstack__.unshift(() -> _timer.stop());
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < _nconn : Bool)) {
                    {
                        var __select__ = true;
                        while (__select__) {
                            if (_ch != null && _ch.__isGet__()) {
                                __select__ = false;
                                {
                                    _ch.__get__();
                                    {};
                                };
                            } else if (_timer.c != null && _timer.c.__isGet__()) {
                                __select__ = false;
                                {
                                    _timer.c.__get__();
                                    {
                                        {
                                            for (defer in __deferstack__) {
                                                defer();
                                            };
                                            return;
                                        };
                                    };
                                };
                            };
                            #if !js Sys.sleep(0.01) #else null #end;
                            stdgo._internal.internal.Async.tick();
                        };
                    };
                    _i++;
                };
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
    static public function _logCloseHangDebugInfo( _s:stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_Server.Server>):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_Server.Server> = _s;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _s._mu.lock();
            __deferstack__.unshift(() -> _s._mu.unlock());
            var _buf:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder);
            _buf.writeString(("httptest.Server blocked in Close after 5 seconds, waiting for connections:\n" : stdgo.GoString));
            for (_c => _st in _s._conns) {
                stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>)), ("  %T %p %v in state %v\n" : stdgo.GoString), stdgo.Go.toInterface(_c), stdgo.Go.toInterface(_c), stdgo.Go.toInterface(_c.remoteAddr()), stdgo.Go.toInterface(stdgo.Go.asInterface(_st)));
            };
            stdgo._internal.log.Log_print.print(stdgo.Go.toInterface((_buf.string() : stdgo.GoString)));
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
    static public function close( _s:stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_Server.Server>):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_Server.Server> = _s;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _s._mu.lock();
            if (!_s._closed) {
                _s._closed = true;
                _s.listener.close();
                _s.config.setKeepAlivesEnabled(false);
                for (_c => _st in _s._conns) {
                    if (((_st == (2 : stdgo._internal.net.http.Http_ConnState.ConnState)) || (_st == (0 : stdgo._internal.net.http.Http_ConnState.ConnState)) : Bool)) {
                        _s._closeConn(_c);
                    };
                };
                var _t = stdgo._internal.time.Time_afterFunc.afterFunc((5000000000i64 : stdgo._internal.time.Time_Duration.Duration), _s._logCloseHangDebugInfo);
                __deferstack__.unshift(() -> _t.stop());
            };
            _s._mu.unlock();
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(stdgo._internal.net.http.Http_defaultTransport.defaultTransport) : stdgo._internal.net.http.httptest.Httptest_T_closeIdleTransport.T_closeIdleTransport)) : stdgo._internal.net.http.httptest.Httptest_T_closeIdleTransport.T_closeIdleTransport), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo._internal.net.http.httptest.Httptest_T_closeIdleTransport.T_closeIdleTransport), _1 : false };
                }, _t = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    _t.closeIdleConnections();
                };
            };
            if ((_s._client != null && ((_s._client : Dynamic).__nil__ == null || !(_s._client : Dynamic).__nil__))) {
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_s._client.transport) : stdgo._internal.net.http.httptest.Httptest_T_closeIdleTransport.T_closeIdleTransport)) : stdgo._internal.net.http.httptest.Httptest_T_closeIdleTransport.T_closeIdleTransport), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo._internal.net.http.httptest.Httptest_T_closeIdleTransport.T_closeIdleTransport), _1 : false };
                    }, _t = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        _t.closeIdleConnections();
                    };
                };
            };
            _s._wg.wait_();
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
    static public function startTLS( _s:stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_Server.Server>):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_Server.Server> = _s;
        if (_s.url != (stdgo.Go.str())) {
            throw stdgo.Go.toInterface(("Server already started" : stdgo.GoString));
        };
        if ((_s._client == null || (_s._client : Dynamic).__nil__)) {
            _s._client = (stdgo.Go.setRef(({ transport : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.net.http.Http_Transport.Transport() : stdgo._internal.net.http.Http_Transport.Transport)) : stdgo.Ref<stdgo._internal.net.http.Http_Transport.Transport>)) } : stdgo._internal.net.http.Http_Client.Client)) : stdgo.Ref<stdgo._internal.net.http.Http_Client.Client>);
        };
        var __tmp__ = stdgo._internal.crypto.tls.Tls_x509keyPair.x509keyPair(stdgo._internal.net.http.internal.testcert.Testcert_localhostCert.localhostCert, stdgo._internal.net.http.internal.testcert.Testcert_localhostKey.localhostKey), _cert:stdgo._internal.crypto.tls.Tls_Certificate.Certificate = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("httptest: NewTLSServer: %v" : stdgo.GoString), stdgo.Go.toInterface(_err)));
        };
        var _existingConfig = _s.tls;
        if ((_existingConfig != null && ((_existingConfig : Dynamic).__nil__ == null || !(_existingConfig : Dynamic).__nil__))) {
            _s.tls = _existingConfig.clone();
        } else {
            _s.tls = (stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_Config.Config)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>);
        };
        if (_s.tls.nextProtos == null) {
            var _nextProtos = (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("http/1.1" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
            if (_s.enableHTTP2) {
                _nextProtos = (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("h2" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
            };
            _s.tls.nextProtos = _nextProtos;
        };
        if ((_s.tls.certificates.length) == ((0 : stdgo.GoInt))) {
            _s.tls.certificates = (new stdgo.Slice<stdgo._internal.crypto.tls.Tls_Certificate.Certificate>(1, 1, ...[_cert?.__copy__()].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.crypto.tls.Tls_Certificate.Certificate)])) : stdgo.Slice<stdgo._internal.crypto.tls.Tls_Certificate.Certificate>);
        };
        {
            var __tmp__ = stdgo._internal.crypto.x509.X509_parseCertificate.parseCertificate(_s.tls.certificates[(0 : stdgo.GoInt)].certificate[(0 : stdgo.GoInt)]);
            _s._certificate = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("httptest: NewTLSServer: %v" : stdgo.GoString), stdgo.Go.toInterface(_err)));
        };
        var _certpool = stdgo._internal.crypto.x509.X509_newCertPool.newCertPool();
        _certpool.addCert(_s._certificate);
        _s._client.transport = stdgo.Go.asInterface((stdgo.Go.setRef(({ tlsclientConfig : (stdgo.Go.setRef(({ rootCAs : _certpool } : stdgo._internal.crypto.tls.Tls_Config.Config)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>), forceAttemptHTTP2 : _s.enableHTTP2 } : stdgo._internal.net.http.Http_Transport.Transport)) : stdgo.Ref<stdgo._internal.net.http.Http_Transport.Transport>));
        _s.listener = stdgo._internal.crypto.tls.Tls_newListener.newListener(_s.listener, _s.tls);
        _s.url = (("https://" : stdgo.GoString) + (_s.listener.addr().string() : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
        _s._wrap();
        _s._goServe();
    }
    @:keep
    static public function start( _s:stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_Server.Server>):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_Server.Server> = _s;
        if (_s.url != (stdgo.Go.str())) {
            throw stdgo.Go.toInterface(("Server already started" : stdgo.GoString));
        };
        if ((_s._client == null || (_s._client : Dynamic).__nil__)) {
            _s._client = (stdgo.Go.setRef(({ transport : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.net.http.Http_Transport.Transport() : stdgo._internal.net.http.Http_Transport.Transport)) : stdgo.Ref<stdgo._internal.net.http.Http_Transport.Transport>)) } : stdgo._internal.net.http.Http_Client.Client)) : stdgo.Ref<stdgo._internal.net.http.Http_Client.Client>);
        };
        _s.url = (("http://" : stdgo.GoString) + (_s.listener.addr().string() : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
        _s._wrap();
        _s._goServe();
        if (stdgo._internal.net.http.httptest.Httptest__serveFlag._serveFlag != (stdgo.Go.str())) {
            stdgo._internal.fmt.Fmt_fprintln.fprintln(stdgo.Go.asInterface(stdgo._internal.os.Os_stderr.stderr), stdgo.Go.toInterface(("httptest: serving on" : stdgo.GoString)), stdgo.Go.toInterface(_s.url));
            @:null_select {};
        };
    }
}
