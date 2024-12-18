package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.Transport_asInterface) class Transport_static_extension {
    @:keep
    static public function _dialConn( _t:stdgo.Ref<stdgo._internal.net.http.Http_Transport.Transport>, _ctx:stdgo._internal.context.Context_Context.Context, _cm:stdgo._internal.net.http.Http_T_connectMethod.T_connectMethod):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>; var _1 : stdgo.Error; } {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_Transport.Transport> = _t;
        var __deferstack__:Array<Void -> Void> = [];
        var _pconn = (null : stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>), _err = (null : stdgo.Error);
        try {
            _pconn = (stdgo.Go.setRef(({ _t : _t, _cacheKey : _cm._key()?.__copy__(), _reqch : (new stdgo.Chan<stdgo._internal.net.http.Http_T_requestAndChan.T_requestAndChan>((1 : stdgo.GoInt).toBasic(), () -> ({} : stdgo._internal.net.http.Http_T_requestAndChan.T_requestAndChan)) : stdgo.Chan<stdgo._internal.net.http.Http_T_requestAndChan.T_requestAndChan>), _writech : (new stdgo.Chan<stdgo._internal.net.http.Http_T_writeRequest.T_writeRequest>((1 : stdgo.GoInt).toBasic(), () -> ({} : stdgo._internal.net.http.Http_T_writeRequest.T_writeRequest)) : stdgo.Chan<stdgo._internal.net.http.Http_T_writeRequest.T_writeRequest>), _closech : (new stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>(0, () -> ({} : stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError)) : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>), _writeErrCh : (new stdgo.Chan<stdgo.Error>((1 : stdgo.GoInt).toBasic(), () -> (null : stdgo.Error)) : stdgo.Chan<stdgo.Error>), _writeLoopDone : (new stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>(0, () -> ({} : stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError)) : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>) } : stdgo._internal.net.http.Http_T_persistConn.T_persistConn)) : stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>);
            var _trace = stdgo._internal.net.http.httptrace.Httptrace_contextClientTrace.contextClientTrace(_ctx);
            var _wrapErr = (function(_err:stdgo.Error):stdgo.Error {
                if ((_cm._proxyURL != null && ((_cm._proxyURL : Dynamic).__nil__ == null || !(_cm._proxyURL : Dynamic).__nil__))) {
                    return stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("proxyconnect" : stdgo.GoString), net : ("tcp" : stdgo.GoString), err : _err } : stdgo._internal.net.Net_OpError.OpError)) : stdgo.Ref<stdgo._internal.net.Net_OpError.OpError>));
                };
                return _err;
            } : stdgo.Error -> stdgo.Error);
            if (((_cm._scheme() == ("https" : stdgo.GoString)) && _t._hasCustomTLSDialer() : Bool)) {
                var _err:stdgo.Error = (null : stdgo.Error);
                {
                    var __tmp__ = _t._customDialTLS(_ctx, ("tcp" : stdgo.GoString), _cm._addr()?.__copy__());
                    _pconn._conn = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    return {
                        final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>; var _1 : stdgo.Error; } = { _0 : null, _1 : _wrapErr(_err) };
                        _pconn = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_pconn._conn) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>), _1 : false };
                    }, _tc = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        if (((_trace != null && ((_trace : Dynamic).__nil__ == null || !(_trace : Dynamic).__nil__)) && (_trace.tlshandshakeStart != null) : Bool)) {
                            _trace.tlshandshakeStart();
                        };
                        {
                            var _err = (_tc.handshakeContext(_ctx) : stdgo.Error);
                            if (_err != null) {
                                stdgo.Go.routine(() -> _pconn._conn.close());
                                if (((_trace != null && ((_trace : Dynamic).__nil__ == null || !(_trace : Dynamic).__nil__)) && (_trace.tlshandshakeDone != null) : Bool)) {
                                    _trace.tlshandshakeDone((new stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState() : stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState), _err);
                                };
                                return {
                                    final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                    _pconn = __tmp__._0;
                                    _err = __tmp__._1;
                                    __tmp__;
                                };
                            };
                        };
                        var _cs = (_tc.connectionState()?.__copy__() : stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState);
                        if (((_trace != null && ((_trace : Dynamic).__nil__ == null || !(_trace : Dynamic).__nil__)) && (_trace.tlshandshakeDone != null) : Bool)) {
                            _trace.tlshandshakeDone(_cs?.__copy__(), (null : stdgo.Error));
                        };
                        _pconn._tlsState = (stdgo.Go.setRef(_cs) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState>);
                    };
                };
            } else {
                var __tmp__ = _t._dial(_ctx, ("tcp" : stdgo.GoString), _cm._addr()?.__copy__()), _conn:stdgo._internal.net.Net_Conn.Conn = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return {
                        final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>; var _1 : stdgo.Error; } = { _0 : null, _1 : _wrapErr(_err) };
                        _pconn = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
                _pconn._conn = _conn;
                if (_cm._scheme() == (("https" : stdgo.GoString))) {
                    var _firstTLSHost:stdgo.GoString = ("" : stdgo.GoString);
                    {
                        {
                            var __tmp__ = stdgo._internal.net.Net_splitHostPort.splitHostPort(_cm._addr()?.__copy__());
                            _firstTLSHost = __tmp__._0?.__copy__();
                            _err = __tmp__._2;
                        };
                        if (_err != null) {
                            return {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>; var _1 : stdgo.Error; } = { _0 : null, _1 : _wrapErr(_err) };
                                _pconn = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                        };
                    };
                    {
                        _err = _pconn._addTLS(_ctx, _firstTLSHost?.__copy__(), _trace);
                        if (_err != null) {
                            return {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>; var _1 : stdgo.Error; } = { _0 : null, _1 : _wrapErr(_err) };
                                _pconn = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                        };
                    };
                };
            };
            if ((_cm._proxyURL == null || (_cm._proxyURL : Dynamic).__nil__)) {} else if (_cm._proxyURL.scheme == (("socks5" : stdgo.GoString))) {
                var _conn = (_pconn._conn : stdgo._internal.net.Net_Conn.Conn);
                var _d = stdgo._internal.net.http.Http__socksNewDialer._socksNewDialer(("tcp" : stdgo.GoString), (_conn.remoteAddr().string() : stdgo.GoString)?.__copy__());
                {
                    var _u = _cm._proxyURL.user;
                    if ((_u != null && ((_u : Dynamic).__nil__ == null || !(_u : Dynamic).__nil__))) {
                        var _auth = (stdgo.Go.setRef(({ username : _u.username()?.__copy__() } : stdgo._internal.net.http.Http_T_socksUsernamePassword.T_socksUsernamePassword)) : stdgo.Ref<stdgo._internal.net.http.Http_T_socksUsernamePassword.T_socksUsernamePassword>);
                        {
                            var __tmp__ = _u.password();
                            _auth.password = __tmp__._0?.__copy__();
                        };
                        _d.authMethods = (new stdgo.Slice<stdgo._internal.net.http.Http_T_socksAuthMethod.T_socksAuthMethod>(2, 2, ...[(0 : stdgo._internal.net.http.Http_T_socksAuthMethod.T_socksAuthMethod), (2 : stdgo._internal.net.http.Http_T_socksAuthMethod.T_socksAuthMethod)]).__setNumber32__() : stdgo.Slice<stdgo._internal.net.http.Http_T_socksAuthMethod.T_socksAuthMethod>);
                        _d.authenticate = _auth.authenticate;
                    };
                };
                {
                    var __tmp__ = _d.dialWithConn(_ctx, _conn, ("tcp" : stdgo.GoString), _cm._targetAddr?.__copy__()), __35635:stdgo._internal.net.Net_Addr.Addr = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        _conn.close();
                        return {
                            final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            _pconn = __tmp__._0;
                            _err = __tmp__._1;
                            __tmp__;
                        };
                    };
                };
            } else if (_cm._targetScheme == (("http" : stdgo.GoString))) {
                _pconn._isProxy = true;
                {
                    var _pa = (_cm._proxyAuth()?.__copy__() : stdgo.GoString);
                    if (_pa != (stdgo.Go.str())) {
                        _pconn._mutateHeaderFunc = function(_h:stdgo._internal.net.http.Http_Header.Header):Void {
                            _h.set(("Proxy-Authorization" : stdgo.GoString), _pa?.__copy__());
                        };
                    };
                };
            } else if (_cm._targetScheme == (("https" : stdgo.GoString))) {
                var _conn = (_pconn._conn : stdgo._internal.net.Net_Conn.Conn);
                var _hdr:stdgo._internal.net.http.Http_Header.Header = (null : stdgo._internal.net.http.Http_Header.Header);
                if (_t.getProxyConnectHeader != null) {
                    var _err:stdgo.Error = (null : stdgo.Error);
                    {
                        var __tmp__ = _t.getProxyConnectHeader(_ctx, _cm._proxyURL, _cm._targetAddr?.__copy__());
                        _hdr = __tmp__._0;
                        _err = __tmp__._1;
                    };
                    if (_err != null) {
                        _conn.close();
                        return {
                            final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            _pconn = __tmp__._0;
                            _err = __tmp__._1;
                            __tmp__;
                        };
                    };
                } else {
                    _hdr = _t.proxyConnectHeader;
                };
                if (_hdr == null) {
                    _hdr = (({
                        final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
                        x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
                        {};
                        x;
                    } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.http.Http_Header.Header);
                };
                {
                    var _pa = (_cm._proxyAuth()?.__copy__() : stdgo.GoString);
                    if (_pa != (stdgo.Go.str())) {
                        _hdr = _hdr.clone();
                        _hdr.set(("Proxy-Authorization" : stdgo.GoString), _pa?.__copy__());
                    };
                };
                var _connectReq = (stdgo.Go.setRef(({ method : ("CONNECT" : stdgo.GoString), url : (stdgo.Go.setRef(({ opaque : _cm._targetAddr?.__copy__() } : stdgo._internal.net.url.Url_URL.URL)) : stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>), host : _cm._targetAddr?.__copy__(), header : _hdr } : stdgo._internal.net.http.Http_Request.Request)) : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>);
                var _connectCtx = (_ctx : stdgo._internal.context.Context_Context.Context);
                if (_ctx.done() == null) {
                    var __tmp__ = stdgo._internal.context.Context_withTimeout.withTimeout(_ctx, (60000000000i64 : stdgo._internal.time.Time_Duration.Duration)), _newCtx:stdgo._internal.context.Context_Context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context_CancelFunc.CancelFunc = __tmp__._1;
                    {
                        final __f__ = _cancel;
                        __deferstack__.unshift(() -> __f__());
                    };
                    _connectCtx = _newCtx;
                };
                var _didReadResponse = (new stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>(0, () -> ({} : stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError)) : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>);
                var __0:stdgo.Ref<stdgo._internal.net.http.Http_Response.Response> = (null : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>), __1:stdgo.Error = (null : stdgo.Error);
var _err = __1, _resp = __0;
                stdgo.Go.routine(() -> ({
                    var a = function():Void {
                        var __deferstack__:Array<Void -> Void> = [];
                        try {
                            {
                                var _a0 = _didReadResponse;
                                __deferstack__.unshift(() -> if (_a0 != null) _a0.__close__());
                            };
                            _err = _connectReq.write(_conn);
                            if (_err != null) {
                                {
                                    for (defer in __deferstack__) {
                                        defer();
                                    };
                                    return;
                                };
                            };
                            var _br = stdgo._internal.bufio.Bufio_newReader.newReader(_conn);
                            {
                                var __tmp__ = stdgo._internal.net.http.Http_readResponse.readResponse(_br, _connectReq);
                                _resp = __tmp__._0;
                                _err = __tmp__._1;
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
                    a();
                }));
                {
                    var __select__ = true;
                    while (__select__) {
                        if (_connectCtx.done() != null && _connectCtx.done().__isGet__()) {
                            __select__ = false;
                            {
                                _connectCtx.done().__get__();
                                {
                                    _conn.close();
                                    _didReadResponse.__get__();
                                    {
                                        final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>; var _1 : stdgo.Error; } = {
                                            final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>; var _1 : stdgo.Error; } = { _0 : null, _1 : _connectCtx.err() };
                                            _pconn = __tmp__._0;
                                            _err = __tmp__._1;
                                            __tmp__;
                                        };
                                        for (defer in __deferstack__) {
                                            defer();
                                        };
                                        return __ret__;
                                    };
                                };
                            };
                        } else if (_didReadResponse != null && _didReadResponse.__isGet__()) {
                            __select__ = false;
                            {
                                _didReadResponse.__get__();
                                {};
                            };
                        };
                        #if !js Sys.sleep(0.01) #else null #end;
                        stdgo._internal.internal.Async.tick();
                    };
                };
                if (_err != null) {
                    _conn.close();
                    {
                        final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>; var _1 : stdgo.Error; } = {
                            final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            _pconn = __tmp__._0;
                            _err = __tmp__._1;
                            __tmp__;
                        };
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return __ret__;
                    };
                };
                if (_t.onProxyConnectResponse != null) {
                    _err = _t.onProxyConnectResponse(_ctx, _cm._proxyURL, _connectReq, _resp);
                    if (_err != null) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _pconn = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                    };
                };
                if (_resp.statusCode != ((200 : stdgo.GoInt))) {
                    var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_resp.status?.__copy__(), (" " : stdgo.GoString)), __35648:stdgo.GoString = __tmp__._0, _text:stdgo.GoString = __tmp__._1, _ok:Bool = __tmp__._2;
                    _conn.close();
                    if (!_ok) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("unknown status code" : stdgo.GoString)) };
                                _pconn = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                    };
                    {
                        final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>; var _1 : stdgo.Error; } = {
                            final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(_text?.__copy__()) };
                            _pconn = __tmp__._0;
                            _err = __tmp__._1;
                            __tmp__;
                        };
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return __ret__;
                    };
                };
            };
            if (((_cm._proxyURL != null && ((_cm._proxyURL : Dynamic).__nil__ == null || !(_cm._proxyURL : Dynamic).__nil__)) && (_cm._targetScheme == ("https" : stdgo.GoString)) : Bool)) {
                {
                    var _err = (_pconn._addTLS(_ctx, _cm._tlsHost()?.__copy__(), _trace) : stdgo.Error);
                    if (_err != null) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _pconn = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                    };
                };
            };
            {
                var _s = _pconn._tlsState;
                if ((((_s != null && ((_s : Dynamic).__nil__ == null || !(_s : Dynamic).__nil__)) && _s.negotiatedProtocolIsMutual : Bool) && (_s.negotiatedProtocol != stdgo.Go.str()) : Bool)) {
                    {
                        var __tmp__ = (_t.tlsnextProto != null && _t.tlsnextProto.exists(_s.negotiatedProtocol?.__copy__()) ? { _0 : _t.tlsnextProto[_s.negotiatedProtocol?.__copy__()], _1 : true } : { _0 : null, _1 : false }), _next:(stdgo.GoString, stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>) -> stdgo._internal.net.http.Http_RoundTripper.RoundTripper = __tmp__._0, _ok:Bool = __tmp__._1;
                        if (_ok) {
                            var _alt = (_next(_cm._targetAddr?.__copy__(), (stdgo.Go.typeAssert((stdgo.Go.toInterface(_pconn._conn) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>)) : stdgo._internal.net.http.Http_RoundTripper.RoundTripper);
                            {
                                var __tmp__ = try {
                                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_alt) : stdgo._internal.net.http.Http_T_erringRoundTripper.T_erringRoundTripper)) : stdgo._internal.net.http.Http_T_erringRoundTripper.T_erringRoundTripper), _1 : true };
                                } catch(_) {
                                    { _0 : (null : stdgo._internal.net.http.Http_T_erringRoundTripper.T_erringRoundTripper), _1 : false };
                                }, _e = __tmp__._0, _ok = __tmp__._1;
                                if (_ok) {
                                    {
                                        final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>; var _1 : stdgo.Error; } = {
                                            final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>; var _1 : stdgo.Error; } = { _0 : null, _1 : _e.roundTripErr() };
                                            _pconn = __tmp__._0;
                                            _err = __tmp__._1;
                                            __tmp__;
                                        };
                                        for (defer in __deferstack__) {
                                            defer();
                                        };
                                        return __ret__;
                                    };
                                };
                            };
                            {
                                final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>; var _1 : stdgo.Error; } = {
                                    final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>; var _1 : stdgo.Error; } = { _0 : (stdgo.Go.setRef(({ _t : _t, _cacheKey : _pconn._cacheKey?.__copy__(), _alt : _alt } : stdgo._internal.net.http.Http_T_persistConn.T_persistConn)) : stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>), _1 : (null : stdgo.Error) };
                                    _pconn = __tmp__._0;
                                    _err = __tmp__._1;
                                    __tmp__;
                                };
                                for (defer in __deferstack__) {
                                    defer();
                                };
                                return __ret__;
                            };
                        };
                    };
                };
            };
            _pconn._br = stdgo._internal.bufio.Bufio_newReaderSize.newReaderSize(stdgo.Go.asInterface(_pconn), _t._readBufferSize());
            _pconn._bw = stdgo._internal.bufio.Bufio_newWriterSize.newWriterSize(stdgo.Go.asInterface((new stdgo._internal.net.http.Http_T_persistConnWriter.T_persistConnWriter(_pconn) : stdgo._internal.net.http.Http_T_persistConnWriter.T_persistConnWriter)), _t._writeBufferSize());
            stdgo.Go.routine(() -> _pconn._readLoop());
            stdgo.Go.routine(() -> _pconn._writeLoop());
            {
                final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>; var _1 : stdgo.Error; } = {
                    final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>; var _1 : stdgo.Error; } = { _0 : _pconn, _1 : (null : stdgo.Error) };
                    _pconn = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>; var _1 : stdgo.Error; } = { _0 : _pconn, _1 : _err };
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
            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>; var _1 : stdgo.Error; } = { _0 : _pconn, _1 : _err };
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
    @:keep
    static public function _decConnsPerHost( _t:stdgo.Ref<stdgo._internal.net.http.Http_Transport.Transport>, _key:stdgo._internal.net.http.Http_T_connectMethodKey.T_connectMethodKey):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_Transport.Transport> = _t;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if ((_t.maxConnsPerHost <= (0 : stdgo.GoInt) : Bool)) {
                return;
            };
            _t._connsPerHostMu.lock();
            {
                final __f__ = _t._connsPerHostMu.unlock;
                __deferstack__.unshift(() -> __f__());
            };
            var _n = (_t._connsPerHost[_key] ?? (0 : stdgo.GoInt) : stdgo.GoInt);
            if (_n == ((0 : stdgo.GoInt))) {
                throw stdgo.Go.toInterface(("net/http: internal error: connCount underflow" : stdgo.GoString));
            };
            {
                var _q = ((_t._connsPerHostWait[_key] ?? ({} : stdgo._internal.net.http.Http_T_wantConnQueue.T_wantConnQueue))?.__copy__() : stdgo._internal.net.http.Http_T_wantConnQueue.T_wantConnQueue);
                if ((_q._len() > (0 : stdgo.GoInt) : Bool)) {
                    var _done = (false : Bool);
                    while ((_q._len() > (0 : stdgo.GoInt) : Bool)) {
                        var _w = _q._popFront();
                        if (_w._waiting()) {
                            stdgo.Go.routine(() -> _t._dialConnFor(_w));
                            _done = true;
                            break;
                        };
                    };
                    if (_q._len() == ((0 : stdgo.GoInt))) {
                        if (_t._connsPerHostWait != null) _t._connsPerHostWait.remove(_key);
                    } else {
                        _t._connsPerHostWait[_key] = _q?.__copy__();
                    };
                    if (_done) {
                        {
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return;
                        };
                    };
                };
            };
            {
                _n--;
                if (_n == ((0 : stdgo.GoInt))) {
                    if (_t._connsPerHost != null) _t._connsPerHost.remove(_key);
                } else {
                    _t._connsPerHost[_key] = _n;
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
    static public function _dialConnFor( _t:stdgo.Ref<stdgo._internal.net.http.Http_Transport.Transport>, _w:stdgo.Ref<stdgo._internal.net.http.Http_T_wantConn.T_wantConn>):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_Transport.Transport> = _t;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {
                final __f__ = _w._afterDial;
                __deferstack__.unshift(() -> __f__());
            };
            var __tmp__ = _t._dialConn(_w._ctx, _w._cm?.__copy__()), _pc:stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            var _delivered = (_w._tryDeliver(_pc, _err) : Bool);
            if (((_err == null) && ((!_delivered || (_pc._alt != null) : Bool)) : Bool)) {
                _t._putOrCloseIdleConn(_pc);
            };
            if (_err != null) {
                _t._decConnsPerHost(_w._key?.__copy__());
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
    static public function _queueForDial( _t:stdgo.Ref<stdgo._internal.net.http.Http_Transport.Transport>, _w:stdgo.Ref<stdgo._internal.net.http.Http_T_wantConn.T_wantConn>):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_Transport.Transport> = _t;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _w._beforeDial();
            if ((_t.maxConnsPerHost <= (0 : stdgo.GoInt) : Bool)) {
                stdgo.Go.routine(() -> _t._dialConnFor(_w));
                return;
            };
            _t._connsPerHostMu.lock();
            {
                final __f__ = _t._connsPerHostMu.unlock;
                __deferstack__.unshift(() -> __f__());
            };
            {
                var _n = (_t._connsPerHost[_w._key] ?? (0 : stdgo.GoInt) : stdgo.GoInt);
                if ((_n < _t.maxConnsPerHost : Bool)) {
                    if (_t._connsPerHost == null) {
                        _t._connsPerHost = ({
                            final x = new stdgo.GoMap.GoObjectMap<stdgo._internal.net.http.Http_T_connectMethodKey.T_connectMethodKey, stdgo.GoInt>();
                            x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.net.http.Http_T_connectMethodKey.T_connectMethodKey", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "_proxy", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }, { name : "_scheme", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }, { name : "_addr", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }, { name : "_onlyH1", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind) }, optional : false }]), false, { get : () -> null }));
                            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
                            {};
                            cast x;
                        } : stdgo.GoMap<stdgo._internal.net.http.Http_T_connectMethodKey.T_connectMethodKey, stdgo.GoInt>);
                    };
                    _t._connsPerHost[_w._key] = (_n + (1 : stdgo.GoInt) : stdgo.GoInt);
                    stdgo.Go.routine(() -> _t._dialConnFor(_w));
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return;
                    };
                };
            };
            if (_t._connsPerHostWait == null) {
                _t._connsPerHostWait = ({
                    final x = new stdgo.GoMap.GoObjectMap<stdgo._internal.net.http.Http_T_connectMethodKey.T_connectMethodKey, stdgo._internal.net.http.Http_T_wantConnQueue.T_wantConnQueue>();
                    x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.net.http.Http_T_connectMethodKey.T_connectMethodKey", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "_proxy", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }, { name : "_scheme", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }, { name : "_addr", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }, { name : "_onlyH1", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind) }, optional : false }]), false, { get : () -> null }));
                    x.__defaultValue__ = () -> ({} : stdgo._internal.net.http.Http_T_wantConnQueue.T_wantConnQueue);
                    {};
                    cast x;
                } : stdgo.GoMap<stdgo._internal.net.http.Http_T_connectMethodKey.T_connectMethodKey, stdgo._internal.net.http.Http_T_wantConnQueue.T_wantConnQueue>);
            };
            var _q = ((_t._connsPerHostWait[_w._key] ?? ({} : stdgo._internal.net.http.Http_T_wantConnQueue.T_wantConnQueue))?.__copy__() : stdgo._internal.net.http.Http_T_wantConnQueue.T_wantConnQueue);
            _q._cleanFront();
            _q._pushBack(_w);
            _t._connsPerHostWait[_w._key] = _q?.__copy__();
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
    static public function _getConn( _t:stdgo.Ref<stdgo._internal.net.http.Http_Transport.Transport>, _treq:stdgo.Ref<stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest>, _cm:stdgo._internal.net.http.Http_T_connectMethod.T_connectMethod):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>; var _1 : stdgo.Error; } {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_Transport.Transport> = _t;
        var __deferstack__:Array<Void -> Void> = [];
        var _pc = (null : stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>), _err = (null : stdgo.Error);
        try {
            var _req = _treq.request;
            var _trace = _treq._trace;
            var _ctx = (_req.context() : stdgo._internal.context.Context_Context.Context);
            if (((_trace != null && ((_trace : Dynamic).__nil__ == null || !(_trace : Dynamic).__nil__)) && (_trace.getConn != null) : Bool)) {
                _trace.getConn(_cm._addr()?.__copy__());
            };
            var _w = (stdgo.Go.setRef(({ _cm : _cm?.__copy__(), _key : _cm._key()?.__copy__(), _ctx : _ctx, _ready : (new stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>((1 : stdgo.GoInt).toBasic(), () -> ({} : stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError)) : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>), _beforeDial : stdgo._internal.net.http.Http__testHookPrePendingDial._testHookPrePendingDial, _afterDial : stdgo._internal.net.http.Http__testHookPostPendingDial._testHookPostPendingDial } : stdgo._internal.net.http.Http_T_wantConn.T_wantConn)) : stdgo.Ref<stdgo._internal.net.http.Http_T_wantConn.T_wantConn>);
            {
                __deferstack__.unshift(() -> ({
                    var a = function():Void {
                        if (_err != null) {
                            _w._cancel(_t, _err);
                        };
                    };
                    a();
                }));
            };
            {
                var _delivered = (_t._queueForIdleConn(_w) : Bool);
                if (_delivered) {
                    var _pc = _w._pc;
                    if (((_pc._alt == null && (_trace != null && ((_trace : Dynamic).__nil__ == null || !(_trace : Dynamic).__nil__)) : Bool) && (_trace.gotConn != null) : Bool)) {
                        _trace.gotConn(_pc._gotIdleConnTrace(_pc._idleAt?.__copy__())?.__copy__());
                    };
                    _t._setReqCanceler(_treq._cancelKey?.__copy__(), function(_0:stdgo.Error):Void {});
                    {
                        final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>; var _1 : stdgo.Error; } = {
                            final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>; var _1 : stdgo.Error; } = { _0 : _pc, _1 : (null : stdgo.Error) };
                            _pc = __tmp__._0;
                            _err = __tmp__._1;
                            __tmp__;
                        };
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return __ret__;
                    };
                };
            };
            var _cancelc = (new stdgo.Chan<stdgo.Error>((1 : stdgo.GoInt).toBasic(), () -> (null : stdgo.Error)) : stdgo.Chan<stdgo.Error>);
            _t._setReqCanceler(_treq._cancelKey?.__copy__(), function(_err:stdgo.Error):Void {
                _cancelc.__send__(_err);
            });
            _t._queueForDial(_w);
            {
                {
                    var __select__ = true;
                    while (__select__) {
                        if (_w._ready != null && _w._ready.__isGet__()) {
                            __select__ = false;
                            {
                                _w._ready.__get__();
                                {
                                    if (((((_w._pc != null && ((_w._pc : Dynamic).__nil__ == null || !(_w._pc : Dynamic).__nil__)) && _w._pc._alt == null : Bool) && (_trace != null && ((_trace : Dynamic).__nil__ == null || !(_trace : Dynamic).__nil__)) : Bool) && (_trace.gotConn != null) : Bool)) {
                                        _trace.gotConn(({ conn : _w._pc._conn, reused : _w._pc._isReused() } : stdgo._internal.net.http.httptrace.Httptrace_GotConnInfo.GotConnInfo));
                                    };
                                    if (_w._err != null) {
                                        {
                                            var __select__ = true;
                                            while (__select__) {
                                                if (_req.cancel != null && _req.cancel.__isGet__()) {
                                                    __select__ = false;
                                                    {
                                                        _req.cancel.__get__();
                                                        {
                                                            {
                                                                final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>; var _1 : stdgo.Error; } = {
                                                                    final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo._internal.net.http.Http__errRequestCanceledConn._errRequestCanceledConn };
                                                                    _pc = __tmp__._0;
                                                                    _err = __tmp__._1;
                                                                    __tmp__;
                                                                };
                                                                for (defer in __deferstack__) {
                                                                    defer();
                                                                };
                                                                return __ret__;
                                                            };
                                                        };
                                                    };
                                                } else if (_req.context().done() != null && _req.context().done().__isGet__()) {
                                                    __select__ = false;
                                                    {
                                                        _req.context().done().__get__();
                                                        {
                                                            {
                                                                final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>; var _1 : stdgo.Error; } = {
                                                                    final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>; var _1 : stdgo.Error; } = { _0 : null, _1 : _req.context().err() };
                                                                    _pc = __tmp__._0;
                                                                    _err = __tmp__._1;
                                                                    __tmp__;
                                                                };
                                                                for (defer in __deferstack__) {
                                                                    defer();
                                                                };
                                                                return __ret__;
                                                            };
                                                        };
                                                    };
                                                } else if (_cancelc != null && _cancelc.__isGet__()) {
                                                    __select__ = false;
                                                    {
                                                        var _err = _cancelc.__get__();
                                                        {
                                                            if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.net.http.Http__errRequestCanceled._errRequestCanceled))) {
                                                                _err = stdgo._internal.net.http.Http__errRequestCanceledConn._errRequestCanceledConn;
                                                            };
                                                            {
                                                                final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>; var _1 : stdgo.Error; } = {
                                                                    final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                                                    _pc = __tmp__._0;
                                                                    _err = __tmp__._1;
                                                                    __tmp__;
                                                                };
                                                                for (defer in __deferstack__) {
                                                                    defer();
                                                                };
                                                                return __ret__;
                                                            };
                                                        };
                                                    };
                                                } else {
                                                    __select__ = false;
                                                    {};
                                                };
                                                #if !js Sys.sleep(0.01) #else null #end;
                                                stdgo._internal.internal.Async.tick();
                                            };
                                        };
                                    };
                                    {
                                        final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>; var _1 : stdgo.Error; } = {
                                            final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>; var _1 : stdgo.Error; } = { _0 : _w._pc, _1 : _w._err };
                                            _pc = __tmp__._0;
                                            _err = __tmp__._1;
                                            __tmp__;
                                        };
                                        for (defer in __deferstack__) {
                                            defer();
                                        };
                                        return __ret__;
                                    };
                                };
                            };
                        } else if (_req.cancel != null && _req.cancel.__isGet__()) {
                            __select__ = false;
                            {
                                _req.cancel.__get__();
                                {
                                    {
                                        final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>; var _1 : stdgo.Error; } = {
                                            final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo._internal.net.http.Http__errRequestCanceledConn._errRequestCanceledConn };
                                            _pc = __tmp__._0;
                                            _err = __tmp__._1;
                                            __tmp__;
                                        };
                                        for (defer in __deferstack__) {
                                            defer();
                                        };
                                        return __ret__;
                                    };
                                };
                            };
                        } else if (_req.context().done() != null && _req.context().done().__isGet__()) {
                            __select__ = false;
                            {
                                _req.context().done().__get__();
                                {
                                    {
                                        final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>; var _1 : stdgo.Error; } = {
                                            final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>; var _1 : stdgo.Error; } = { _0 : null, _1 : _req.context().err() };
                                            _pc = __tmp__._0;
                                            _err = __tmp__._1;
                                            __tmp__;
                                        };
                                        for (defer in __deferstack__) {
                                            defer();
                                        };
                                        return __ret__;
                                    };
                                };
                            };
                        } else if (_cancelc != null && _cancelc.__isGet__()) {
                            __select__ = false;
                            {
                                var _err = _cancelc.__get__();
                                {
                                    if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.net.http.Http__errRequestCanceled._errRequestCanceled))) {
                                        _err = stdgo._internal.net.http.Http__errRequestCanceledConn._errRequestCanceledConn;
                                    };
                                    {
                                        final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>; var _1 : stdgo.Error; } = {
                                            final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                            _pc = __tmp__._0;
                                            _err = __tmp__._1;
                                            __tmp__;
                                        };
                                        for (defer in __deferstack__) {
                                            defer();
                                        };
                                        return __ret__;
                                    };
                                };
                            };
                        };
                        #if !js Sys.sleep(0.01) #else null #end;
                        stdgo._internal.internal.Async.tick();
                    };
                };
                {
                    final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>; var _1 : stdgo.Error; } = { _0 : _pc, _1 : _err };
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            {
                final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>; var _1 : stdgo.Error; } = { _0 : _pc, _1 : _err };
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
            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>; var _1 : stdgo.Error; } = { _0 : _pc, _1 : _err };
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
    @:keep
    static public function _customDialTLS( _t:stdgo.Ref<stdgo._internal.net.http.Http_Transport.Transport>, _ctx:stdgo._internal.context.Context_Context.Context, _network:stdgo.GoString, _addr:stdgo.GoString):{ var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; } {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_Transport.Transport> = _t;
        var _conn = (null : stdgo._internal.net.Net_Conn.Conn), _err = (null : stdgo.Error);
        if (_t.dialTLSContext != null) {
            {
                var __tmp__ = _t.dialTLSContext(_ctx, _network?.__copy__(), _addr?.__copy__());
                _conn = __tmp__._0;
                _err = __tmp__._1;
            };
        } else {
            {
                var __tmp__ = _t.dialTLS(_network?.__copy__(), _addr?.__copy__());
                _conn = __tmp__._0;
                _err = __tmp__._1;
            };
        };
        if (((_conn == null) && (_err == null) : Bool)) {
            _err = stdgo._internal.errors.Errors_new_.new_(("net/http: Transport.DialTLS or DialTLSContext returned (nil, nil)" : stdgo.GoString));
        };
        return { _0 : _conn, _1 : _err };
    }
    @:keep
    static public function _dial( _t:stdgo.Ref<stdgo._internal.net.http.Http_Transport.Transport>, _ctx:stdgo._internal.context.Context_Context.Context, _network:stdgo.GoString, _addr:stdgo.GoString):{ var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; } {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_Transport.Transport> = _t;
        if (_t.dialContext != null) {
            var __tmp__ = _t.dialContext(_ctx, _network?.__copy__(), _addr?.__copy__()), _c:stdgo._internal.net.Net_Conn.Conn = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_c == null) && (_err == null) : Bool)) {
                _err = stdgo._internal.errors.Errors_new_.new_(("net/http: Transport.DialContext hook returned (nil, nil)" : stdgo.GoString));
            };
            return { _0 : _c, _1 : _err };
        };
        if (_t.dial != null) {
            var __tmp__ = _t.dial(_network?.__copy__(), _addr?.__copy__()), _c:stdgo._internal.net.Net_Conn.Conn = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_c == null) && (_err == null) : Bool)) {
                _err = stdgo._internal.errors.Errors_new_.new_(("net/http: Transport.Dial hook returned (nil, nil)" : stdgo.GoString));
            };
            return { _0 : _c, _1 : _err };
        };
        return stdgo._internal.net.http.Http__zeroDialer._zeroDialer.dialContext(_ctx, _network?.__copy__(), _addr?.__copy__());
    }
    @:keep
    static public function _replaceReqCanceler( _t:stdgo.Ref<stdgo._internal.net.http.Http_Transport.Transport>, _key:stdgo._internal.net.http.Http_T_cancelKey.T_cancelKey, _fn:stdgo.Error -> Void):Bool {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_Transport.Transport> = _t;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _t._reqMu.lock();
            {
                final __f__ = _t._reqMu.unlock;
                __deferstack__.unshift(() -> __f__());
            };
            var __tmp__ = (_t._reqCanceler != null && _t._reqCanceler.exists(_key?.__copy__()) ? { _0 : _t._reqCanceler[_key?.__copy__()], _1 : true } : { _0 : null, _1 : false }), __35628:stdgo.Error -> Void = __tmp__._0, _ok:Bool = __tmp__._1;
            if (!_ok) {
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return false;
                };
            };
            if (_fn != null) {
                _t._reqCanceler[_key] = _fn;
            } else {
                if (_t._reqCanceler != null) _t._reqCanceler.remove(_key);
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
    static public function _setReqCanceler( _t:stdgo.Ref<stdgo._internal.net.http.Http_Transport.Transport>, _key:stdgo._internal.net.http.Http_T_cancelKey.T_cancelKey, _fn:stdgo.Error -> Void):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_Transport.Transport> = _t;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _t._reqMu.lock();
            {
                final __f__ = _t._reqMu.unlock;
                __deferstack__.unshift(() -> __f__());
            };
            if (_t._reqCanceler == null) {
                _t._reqCanceler = ({
                    final x = new stdgo.GoMap.GoObjectMap<stdgo._internal.net.http.Http_T_cancelKey.T_cancelKey, stdgo.Error -> Void>();
                    x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.net.http.Http_T_cancelKey.T_cancelKey", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "_req", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.net.http.Http_Request.Request", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([
{ name : "method", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false },
{ name : "url", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.net.url.Url_URL.URL", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([
{ name : "scheme", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false },
{ name : "opaque", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false },
{ name : "user", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.net.url.Url_Userinfo.Userinfo", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "_username", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }, { name : "_password", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }, { name : "_passwordSet", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind) }, optional : false }]), false, { get : () -> null }) }) }, optional : false },
{ name : "host", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false },
{ name : "path", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false },
{ name : "rawPath", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false },
{ name : "omitHost", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "forceQuery", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "rawQuery", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false },
{ name : "fragment", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false },
{ name : "rawFragment", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }]), false, { get : () -> null }) }) }, optional : false },
{ name : "proto", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false },
{ name : "protoMajor", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind) }, optional : false },
{ name : "protoMinor", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind) }, optional : false },
{ name : "header", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.net.http.Http_Header.Header", [], stdgo._internal.internal.reflect.Reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }), false, { get : () -> null }) }, optional : false },
{ name : "body", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.io.Io_ReadCloser.ReadCloser", [], stdgo._internal.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }) }, optional : false },
{ name : "getBody", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.signature(false, { get : () -> null }, { get : () -> null }, { get : () -> null }) }, optional : false },
{ name : "contentLength", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int64_kind) }, optional : false },
{ name : "transferEncoding", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "close", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "host", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false },
{ name : "form", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.net.url.Url_Values.Values", [], stdgo._internal.internal.reflect.Reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }), false, { get : () -> null }) }, optional : false },
{ name : "postForm", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.net.url.Url_Values.Values", [], stdgo._internal.internal.reflect.Reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }), false, { get : () -> null }) }, optional : false },
{ name : "multipartForm", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.mime.multipart.Multipart_Form.Form", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "value", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }) }, optional : false }, { name : "file", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.mime.multipart.Multipart_FileHeader.FileHeader", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "filename", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }, { name : "header", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.net.textproto.Textproto_MIMEHeader.MIMEHeader", [], stdgo._internal.internal.reflect.Reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }), false, { get : () -> null }) }, optional : false }, { name : "size", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int64_kind) }, optional : false }, { name : "_content", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false }, { name : "_tmpfile", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }, { name : "_tmpoff", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int64_kind) }, optional : false }, { name : "_tmpshared", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind) }, optional : false }]), false, { get : () -> null }) }) }) }) }, optional : false }]), false, { get : () -> null }) }) }, optional : false },
{ name : "trailer", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.net.http.Http_Header.Header", [], stdgo._internal.internal.reflect.Reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }), false, { get : () -> null }) }, optional : false },
{ name : "remoteAddr", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false },
{ name : "requestURI", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false },
{ name : "tls", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([
{ name : "version", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint16_kind) }, optional : false },
{ name : "handshakeComplete", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "didResume", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "cipherSuite", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint16_kind) }, optional : false },
{ name : "negotiatedProtocol", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false },
{ name : "negotiatedProtocolIsMutual", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "serverName", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false },
{ name : "peerCertificates", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.crypto.x509.X509_Certificate.Certificate", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([
{ name : "raw", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "rawTBSCertificate", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "rawSubjectPublicKeyInfo", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "rawSubject", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "rawIssuer", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "signature", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "signatureAlgorithm", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.crypto.x509.X509_SignatureAlgorithm.SignatureAlgorithm", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind), false, { get : () -> null }) }, optional : false },
{ name : "publicKeyAlgorithm", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.crypto.x509.X509_PublicKeyAlgorithm.PublicKeyAlgorithm", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind), false, { get : () -> null }) }, optional : false },
{ name : "publicKey", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.interfaceType(true, []) }, optional : false },
{ name : "version", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind) }, optional : false },
{ name : "serialNumber", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.math.big.Big_Int_.Int_", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "_neg", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind) }, optional : false }, { name : "_abs", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.math.big.Big_T_nat.T_nat", [], stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.math.big.Big_Word.Word", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(uint_kind), false, { get : () -> null }) }), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }) }, optional : false },
{ name : "issuer", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.crypto.x509.pkix.Pkix_Name.Name", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([
{ name : "country", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "organization", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "organizationalUnit", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "locality", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "province", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "streetAddress", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "postalCode", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "serialNumber", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false },
{ name : "commonName", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false },
{ name : "names", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.crypto.x509.pkix.Pkix_AttributeTypeAndValue.AttributeTypeAndValue", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "type", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier", [], stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind) }), false, { get : () -> null }) }, optional : false }, { name : "value", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.interfaceType(true, []) }, optional : false }]), false, { get : () -> null }) }) }, optional : false },
{ name : "extraNames", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.crypto.x509.pkix.Pkix_AttributeTypeAndValue.AttributeTypeAndValue", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "type", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier", [], stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind) }), false, { get : () -> null }) }, optional : false }, { name : "value", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.interfaceType(true, []) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }]), false, { get : () -> null }) }, optional : false },
{ name : "subject", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.crypto.x509.pkix.Pkix_Name.Name", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([
{ name : "country", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "organization", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "organizationalUnit", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "locality", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "province", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "streetAddress", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "postalCode", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "serialNumber", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false },
{ name : "commonName", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false },
{ name : "names", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.crypto.x509.pkix.Pkix_AttributeTypeAndValue.AttributeTypeAndValue", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "type", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier", [], stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind) }), false, { get : () -> null }) }, optional : false }, { name : "value", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.interfaceType(true, []) }, optional : false }]), false, { get : () -> null }) }) }, optional : false },
{ name : "extraNames", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.crypto.x509.pkix.Pkix_AttributeTypeAndValue.AttributeTypeAndValue", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "type", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier", [], stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind) }), false, { get : () -> null }) }, optional : false }, { name : "value", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.interfaceType(true, []) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }]), false, { get : () -> null }) }, optional : false },
{ name : "notBefore", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.time.Time_Time.Time", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "_wall", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint64_kind) }, optional : false }, { name : "_ext", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int64_kind) }, optional : false }, { name : "_loc", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.time.Time_Location.Location", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "_name", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }, { name : "_zone", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.time.Time_T_zone.T_zone", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "_name", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }, { name : "_offset", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind) }, optional : false }, { name : "_isDST", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }, { name : "_tx", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.time.Time_T_zoneTrans.T_zoneTrans", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "_when", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int64_kind) }, optional : false }, { name : "_index", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false }, { name : "_isstd", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind) }, optional : false }, { name : "_isutc", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }, { name : "_extend", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }, { name : "_cacheStart", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int64_kind) }, optional : false }, { name : "_cacheEnd", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int64_kind) }, optional : false }, { name : "_cacheZone", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.time.Time_T_zone.T_zone", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "_name", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }, { name : "_offset", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind) }, optional : false }, { name : "_isDST", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }]), false, { get : () -> null }) }, optional : false },
{ name : "notAfter", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.time.Time_Time.Time", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "_wall", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint64_kind) }, optional : false }, { name : "_ext", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int64_kind) }, optional : false }, { name : "_loc", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.time.Time_Location.Location", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "_name", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }, { name : "_zone", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.time.Time_T_zone.T_zone", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "_name", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }, { name : "_offset", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind) }, optional : false }, { name : "_isDST", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }, { name : "_tx", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.time.Time_T_zoneTrans.T_zoneTrans", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "_when", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int64_kind) }, optional : false }, { name : "_index", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false }, { name : "_isstd", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind) }, optional : false }, { name : "_isutc", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }, { name : "_extend", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }, { name : "_cacheStart", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int64_kind) }, optional : false }, { name : "_cacheEnd", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int64_kind) }, optional : false }, { name : "_cacheZone", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.time.Time_T_zone.T_zone", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "_name", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }, { name : "_offset", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind) }, optional : false }, { name : "_isDST", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }]), false, { get : () -> null }) }, optional : false },
{ name : "keyUsage", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.crypto.x509.X509_KeyUsage.KeyUsage", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind), false, { get : () -> null }) }, optional : false },
{ name : "extensions", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "id", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier", [], stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind) }), false, { get : () -> null }) }, optional : false }, { name : "critical", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind) }, optional : false }, { name : "value", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false }]), false, { get : () -> null }) }) }, optional : false },
{ name : "extraExtensions", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "id", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier", [], stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind) }), false, { get : () -> null }) }, optional : false }, { name : "critical", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind) }, optional : false }, { name : "value", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false }]), false, { get : () -> null }) }) }, optional : false },
{ name : "unhandledCriticalExtensions", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier", [], stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind) }), false, { get : () -> null }) }) }, optional : false },
{ name : "extKeyUsage", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind), false, { get : () -> null }) }) }, optional : false },
{ name : "unknownExtKeyUsage", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier", [], stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind) }), false, { get : () -> null }) }) }, optional : false },
{ name : "basicConstraintsValid", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "isCA", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "maxPathLen", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind) }, optional : false },
{ name : "maxPathLenZero", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "subjectKeyId", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "authorityKeyId", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "ocspserver", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "issuingCertificateURL", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "dnsnames", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "emailAddresses", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "ipaddresses", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.net.Net_IP.IP", [], stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }), false, { get : () -> null }) }) }, optional : false },
{ name : "uris", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.net.url.Url_URL.URL", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([
{ name : "scheme", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false },
{ name : "opaque", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false },
{ name : "user", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.net.url.Url_Userinfo.Userinfo", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "_username", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }, { name : "_password", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }, { name : "_passwordSet", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind) }, optional : false }]), false, { get : () -> null }) }) }, optional : false },
{ name : "host", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false },
{ name : "path", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false },
{ name : "rawPath", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false },
{ name : "omitHost", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "forceQuery", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "rawQuery", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false },
{ name : "fragment", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false },
{ name : "rawFragment", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }]), false, { get : () -> null }) }) }) }, optional : false },
{ name : "permittedDNSDomainsCritical", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "permittedDNSDomains", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "excludedDNSDomains", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "permittedIPRanges", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.net.Net_IPNet.IPNet", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "ip", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.net.Net_IP.IP", [], stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }), false, { get : () -> null }) }, optional : false }, { name : "mask", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.net.Net_IPMask.IPMask", [], stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }) }) }, optional : false },
{ name : "excludedIPRanges", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.net.Net_IPNet.IPNet", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "ip", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.net.Net_IP.IP", [], stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }), false, { get : () -> null }) }, optional : false }, { name : "mask", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.net.Net_IPMask.IPMask", [], stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }) }) }, optional : false },
{ name : "permittedEmailAddresses", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "excludedEmailAddresses", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "permittedURIDomains", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "excludedURIDomains", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "crldistributionPoints", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "policyIdentifiers", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier", [], stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind) }), false, { get : () -> null }) }) }, optional : false }]), false, { get : () -> null }) }) }) }, optional : false },
{ name : "verifiedChains", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.crypto.x509.X509_Certificate.Certificate", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([
{ name : "raw", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "rawTBSCertificate", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "rawSubjectPublicKeyInfo", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "rawSubject", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "rawIssuer", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "signature", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "signatureAlgorithm", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.crypto.x509.X509_SignatureAlgorithm.SignatureAlgorithm", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind), false, { get : () -> null }) }, optional : false },
{ name : "publicKeyAlgorithm", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.crypto.x509.X509_PublicKeyAlgorithm.PublicKeyAlgorithm", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind), false, { get : () -> null }) }, optional : false },
{ name : "publicKey", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.interfaceType(true, []) }, optional : false },
{ name : "version", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind) }, optional : false },
{ name : "serialNumber", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.math.big.Big_Int_.Int_", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "_neg", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind) }, optional : false }, { name : "_abs", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.math.big.Big_T_nat.T_nat", [], stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.math.big.Big_Word.Word", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(uint_kind), false, { get : () -> null }) }), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }) }, optional : false },
{ name : "issuer", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.crypto.x509.pkix.Pkix_Name.Name", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([
{ name : "country", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "organization", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "organizationalUnit", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "locality", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "province", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "streetAddress", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "postalCode", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "serialNumber", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false },
{ name : "commonName", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false },
{ name : "names", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.crypto.x509.pkix.Pkix_AttributeTypeAndValue.AttributeTypeAndValue", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "type", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier", [], stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind) }), false, { get : () -> null }) }, optional : false }, { name : "value", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.interfaceType(true, []) }, optional : false }]), false, { get : () -> null }) }) }, optional : false },
{ name : "extraNames", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.crypto.x509.pkix.Pkix_AttributeTypeAndValue.AttributeTypeAndValue", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "type", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier", [], stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind) }), false, { get : () -> null }) }, optional : false }, { name : "value", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.interfaceType(true, []) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }]), false, { get : () -> null }) }, optional : false },
{ name : "subject", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.crypto.x509.pkix.Pkix_Name.Name", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([
{ name : "country", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "organization", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "organizationalUnit", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "locality", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "province", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "streetAddress", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "postalCode", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "serialNumber", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false },
{ name : "commonName", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false },
{ name : "names", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.crypto.x509.pkix.Pkix_AttributeTypeAndValue.AttributeTypeAndValue", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "type", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier", [], stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind) }), false, { get : () -> null }) }, optional : false }, { name : "value", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.interfaceType(true, []) }, optional : false }]), false, { get : () -> null }) }) }, optional : false },
{ name : "extraNames", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.crypto.x509.pkix.Pkix_AttributeTypeAndValue.AttributeTypeAndValue", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "type", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier", [], stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind) }), false, { get : () -> null }) }, optional : false }, { name : "value", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.interfaceType(true, []) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }]), false, { get : () -> null }) }, optional : false },
{ name : "notBefore", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.time.Time_Time.Time", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "_wall", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint64_kind) }, optional : false }, { name : "_ext", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int64_kind) }, optional : false }, { name : "_loc", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.time.Time_Location.Location", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "_name", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }, { name : "_zone", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.time.Time_T_zone.T_zone", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "_name", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }, { name : "_offset", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind) }, optional : false }, { name : "_isDST", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }, { name : "_tx", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.time.Time_T_zoneTrans.T_zoneTrans", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "_when", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int64_kind) }, optional : false }, { name : "_index", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false }, { name : "_isstd", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind) }, optional : false }, { name : "_isutc", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }, { name : "_extend", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }, { name : "_cacheStart", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int64_kind) }, optional : false }, { name : "_cacheEnd", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int64_kind) }, optional : false }, { name : "_cacheZone", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.time.Time_T_zone.T_zone", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "_name", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }, { name : "_offset", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind) }, optional : false }, { name : "_isDST", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }]), false, { get : () -> null }) }, optional : false },
{ name : "notAfter", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.time.Time_Time.Time", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "_wall", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint64_kind) }, optional : false }, { name : "_ext", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int64_kind) }, optional : false }, { name : "_loc", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.time.Time_Location.Location", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "_name", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }, { name : "_zone", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.time.Time_T_zone.T_zone", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "_name", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }, { name : "_offset", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind) }, optional : false }, { name : "_isDST", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }, { name : "_tx", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.time.Time_T_zoneTrans.T_zoneTrans", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "_when", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int64_kind) }, optional : false }, { name : "_index", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false }, { name : "_isstd", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind) }, optional : false }, { name : "_isutc", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }, { name : "_extend", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }, { name : "_cacheStart", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int64_kind) }, optional : false }, { name : "_cacheEnd", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int64_kind) }, optional : false }, { name : "_cacheZone", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.time.Time_T_zone.T_zone", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "_name", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }, { name : "_offset", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind) }, optional : false }, { name : "_isDST", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }]), false, { get : () -> null }) }, optional : false },
{ name : "keyUsage", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.crypto.x509.X509_KeyUsage.KeyUsage", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind), false, { get : () -> null }) }, optional : false },
{ name : "extensions", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "id", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier", [], stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind) }), false, { get : () -> null }) }, optional : false }, { name : "critical", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind) }, optional : false }, { name : "value", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false }]), false, { get : () -> null }) }) }, optional : false },
{ name : "extraExtensions", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "id", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier", [], stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind) }), false, { get : () -> null }) }, optional : false }, { name : "critical", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind) }, optional : false }, { name : "value", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false }]), false, { get : () -> null }) }) }, optional : false },
{ name : "unhandledCriticalExtensions", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier", [], stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind) }), false, { get : () -> null }) }) }, optional : false },
{ name : "extKeyUsage", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind), false, { get : () -> null }) }) }, optional : false },
{ name : "unknownExtKeyUsage", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier", [], stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind) }), false, { get : () -> null }) }) }, optional : false },
{ name : "basicConstraintsValid", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "isCA", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "maxPathLen", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind) }, optional : false },
{ name : "maxPathLenZero", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "subjectKeyId", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "authorityKeyId", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "ocspserver", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "issuingCertificateURL", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "dnsnames", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "emailAddresses", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "ipaddresses", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.net.Net_IP.IP", [], stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }), false, { get : () -> null }) }) }, optional : false },
{ name : "uris", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.net.url.Url_URL.URL", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([
{ name : "scheme", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false },
{ name : "opaque", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false },
{ name : "user", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.net.url.Url_Userinfo.Userinfo", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "_username", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }, { name : "_password", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }, { name : "_passwordSet", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind) }, optional : false }]), false, { get : () -> null }) }) }, optional : false },
{ name : "host", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false },
{ name : "path", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false },
{ name : "rawPath", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false },
{ name : "omitHost", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "forceQuery", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "rawQuery", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false },
{ name : "fragment", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false },
{ name : "rawFragment", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }]), false, { get : () -> null }) }) }) }, optional : false },
{ name : "permittedDNSDomainsCritical", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "permittedDNSDomains", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "excludedDNSDomains", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "permittedIPRanges", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.net.Net_IPNet.IPNet", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "ip", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.net.Net_IP.IP", [], stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }), false, { get : () -> null }) }, optional : false }, { name : "mask", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.net.Net_IPMask.IPMask", [], stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }) }) }, optional : false },
{ name : "excludedIPRanges", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.net.Net_IPNet.IPNet", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "ip", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.net.Net_IP.IP", [], stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }), false, { get : () -> null }) }, optional : false }, { name : "mask", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.net.Net_IPMask.IPMask", [], stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }) }) }, optional : false },
{ name : "permittedEmailAddresses", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "excludedEmailAddresses", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "permittedURIDomains", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "excludedURIDomains", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "crldistributionPoints", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "policyIdentifiers", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier", [], stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind) }), false, { get : () -> null }) }) }, optional : false }]), false, { get : () -> null }) }) }) }) }, optional : false },
{ name : "signedCertificateTimestamps", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }) }, optional : false },
{ name : "ocspresponse", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "tlsunique", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "_ekm", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.signature(false, { get : () -> null }, { get : () -> null }, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }) }, optional : false },
{ name : "cancel", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.chanType(2, { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([]), false, { get : () -> null }) }) }, optional : false },
{ name : "response", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.net.http.Http_Response.Response", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([
{ name : "status", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false },
{ name : "statusCode", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind) }, optional : false },
{ name : "proto", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false },
{ name : "protoMajor", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind) }, optional : false },
{ name : "protoMinor", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind) }, optional : false },
{ name : "header", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.net.http.Http_Header.Header", [], stdgo._internal.internal.reflect.Reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }), false, { get : () -> null }) }, optional : false },
{ name : "body", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.io.Io_ReadCloser.ReadCloser", [], stdgo._internal.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }) }, optional : false },
{ name : "contentLength", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int64_kind) }, optional : false },
{ name : "transferEncoding", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "close", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "uncompressed", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "trailer", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.net.http.Http_Header.Header", [], stdgo._internal.internal.reflect.Reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }), false, { get : () -> null }) }, optional : false },
{ name : "request", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.net.http.Http_Request.Request", [], stdgo._internal.internal.reflect.Reflect.GoType.invalidType, false, { get : () -> null }) }) }, optional : false },
{ name : "tls", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([
{ name : "version", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint16_kind) }, optional : false },
{ name : "handshakeComplete", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "didResume", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "cipherSuite", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint16_kind) }, optional : false },
{ name : "negotiatedProtocol", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false },
{ name : "negotiatedProtocolIsMutual", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "serverName", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false },
{ name : "peerCertificates", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.crypto.x509.X509_Certificate.Certificate", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([
{ name : "raw", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "rawTBSCertificate", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "rawSubjectPublicKeyInfo", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "rawSubject", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "rawIssuer", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "signature", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "signatureAlgorithm", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.crypto.x509.X509_SignatureAlgorithm.SignatureAlgorithm", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind), false, { get : () -> null }) }, optional : false },
{ name : "publicKeyAlgorithm", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.crypto.x509.X509_PublicKeyAlgorithm.PublicKeyAlgorithm", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind), false, { get : () -> null }) }, optional : false },
{ name : "publicKey", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.interfaceType(true, []) }, optional : false },
{ name : "version", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind) }, optional : false },
{ name : "serialNumber", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.math.big.Big_Int_.Int_", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "_neg", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind) }, optional : false }, { name : "_abs", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.math.big.Big_T_nat.T_nat", [], stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.math.big.Big_Word.Word", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(uint_kind), false, { get : () -> null }) }), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }) }, optional : false },
{ name : "issuer", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.crypto.x509.pkix.Pkix_Name.Name", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([
{ name : "country", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "organization", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "organizationalUnit", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "locality", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "province", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "streetAddress", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "postalCode", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "serialNumber", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false },
{ name : "commonName", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false },
{ name : "names", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.crypto.x509.pkix.Pkix_AttributeTypeAndValue.AttributeTypeAndValue", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "type", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier", [], stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind) }), false, { get : () -> null }) }, optional : false }, { name : "value", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.interfaceType(true, []) }, optional : false }]), false, { get : () -> null }) }) }, optional : false },
{ name : "extraNames", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.crypto.x509.pkix.Pkix_AttributeTypeAndValue.AttributeTypeAndValue", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "type", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier", [], stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind) }), false, { get : () -> null }) }, optional : false }, { name : "value", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.interfaceType(true, []) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }]), false, { get : () -> null }) }, optional : false },
{ name : "subject", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.crypto.x509.pkix.Pkix_Name.Name", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([
{ name : "country", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "organization", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "organizationalUnit", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "locality", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "province", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "streetAddress", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "postalCode", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "serialNumber", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false },
{ name : "commonName", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false },
{ name : "names", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.crypto.x509.pkix.Pkix_AttributeTypeAndValue.AttributeTypeAndValue", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "type", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier", [], stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind) }), false, { get : () -> null }) }, optional : false }, { name : "value", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.interfaceType(true, []) }, optional : false }]), false, { get : () -> null }) }) }, optional : false },
{ name : "extraNames", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.crypto.x509.pkix.Pkix_AttributeTypeAndValue.AttributeTypeAndValue", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "type", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier", [], stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind) }), false, { get : () -> null }) }, optional : false }, { name : "value", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.interfaceType(true, []) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }]), false, { get : () -> null }) }, optional : false },
{ name : "notBefore", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.time.Time_Time.Time", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "_wall", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint64_kind) }, optional : false }, { name : "_ext", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int64_kind) }, optional : false }, { name : "_loc", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.time.Time_Location.Location", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "_name", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }, { name : "_zone", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.time.Time_T_zone.T_zone", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "_name", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }, { name : "_offset", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind) }, optional : false }, { name : "_isDST", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }, { name : "_tx", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.time.Time_T_zoneTrans.T_zoneTrans", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "_when", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int64_kind) }, optional : false }, { name : "_index", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false }, { name : "_isstd", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind) }, optional : false }, { name : "_isutc", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }, { name : "_extend", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }, { name : "_cacheStart", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int64_kind) }, optional : false }, { name : "_cacheEnd", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int64_kind) }, optional : false }, { name : "_cacheZone", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.time.Time_T_zone.T_zone", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "_name", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }, { name : "_offset", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind) }, optional : false }, { name : "_isDST", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }]), false, { get : () -> null }) }, optional : false },
{ name : "notAfter", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.time.Time_Time.Time", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "_wall", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint64_kind) }, optional : false }, { name : "_ext", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int64_kind) }, optional : false }, { name : "_loc", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.time.Time_Location.Location", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "_name", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }, { name : "_zone", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.time.Time_T_zone.T_zone", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "_name", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }, { name : "_offset", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind) }, optional : false }, { name : "_isDST", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }, { name : "_tx", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.time.Time_T_zoneTrans.T_zoneTrans", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "_when", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int64_kind) }, optional : false }, { name : "_index", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false }, { name : "_isstd", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind) }, optional : false }, { name : "_isutc", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }, { name : "_extend", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }, { name : "_cacheStart", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int64_kind) }, optional : false }, { name : "_cacheEnd", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int64_kind) }, optional : false }, { name : "_cacheZone", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.time.Time_T_zone.T_zone", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "_name", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }, { name : "_offset", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind) }, optional : false }, { name : "_isDST", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }]), false, { get : () -> null }) }, optional : false },
{ name : "keyUsage", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.crypto.x509.X509_KeyUsage.KeyUsage", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind), false, { get : () -> null }) }, optional : false },
{ name : "extensions", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "id", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier", [], stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind) }), false, { get : () -> null }) }, optional : false }, { name : "critical", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind) }, optional : false }, { name : "value", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false }]), false, { get : () -> null }) }) }, optional : false },
{ name : "extraExtensions", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "id", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier", [], stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind) }), false, { get : () -> null }) }, optional : false }, { name : "critical", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind) }, optional : false }, { name : "value", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false }]), false, { get : () -> null }) }) }, optional : false },
{ name : "unhandledCriticalExtensions", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier", [], stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind) }), false, { get : () -> null }) }) }, optional : false },
{ name : "extKeyUsage", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind), false, { get : () -> null }) }) }, optional : false },
{ name : "unknownExtKeyUsage", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier", [], stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind) }), false, { get : () -> null }) }) }, optional : false },
{ name : "basicConstraintsValid", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "isCA", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "maxPathLen", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind) }, optional : false },
{ name : "maxPathLenZero", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "subjectKeyId", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "authorityKeyId", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "ocspserver", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "issuingCertificateURL", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "dnsnames", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "emailAddresses", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "ipaddresses", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.net.Net_IP.IP", [], stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }), false, { get : () -> null }) }) }, optional : false },
{ name : "uris", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.net.url.Url_URL.URL", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([
{ name : "scheme", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false },
{ name : "opaque", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false },
{ name : "user", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.net.url.Url_Userinfo.Userinfo", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "_username", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }, { name : "_password", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }, { name : "_passwordSet", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind) }, optional : false }]), false, { get : () -> null }) }) }, optional : false },
{ name : "host", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false },
{ name : "path", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false },
{ name : "rawPath", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false },
{ name : "omitHost", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "forceQuery", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "rawQuery", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false },
{ name : "fragment", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false },
{ name : "rawFragment", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }]), false, { get : () -> null }) }) }) }, optional : false },
{ name : "permittedDNSDomainsCritical", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "permittedDNSDomains", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "excludedDNSDomains", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "permittedIPRanges", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.net.Net_IPNet.IPNet", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "ip", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.net.Net_IP.IP", [], stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }), false, { get : () -> null }) }, optional : false }, { name : "mask", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.net.Net_IPMask.IPMask", [], stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }) }) }, optional : false },
{ name : "excludedIPRanges", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.net.Net_IPNet.IPNet", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "ip", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.net.Net_IP.IP", [], stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }), false, { get : () -> null }) }, optional : false }, { name : "mask", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.net.Net_IPMask.IPMask", [], stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }) }) }, optional : false },
{ name : "permittedEmailAddresses", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "excludedEmailAddresses", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "permittedURIDomains", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "excludedURIDomains", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "crldistributionPoints", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "policyIdentifiers", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier", [], stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind) }), false, { get : () -> null }) }) }, optional : false }]), false, { get : () -> null }) }) }) }, optional : false },
{ name : "verifiedChains", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.crypto.x509.X509_Certificate.Certificate", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([
{ name : "raw", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "rawTBSCertificate", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "rawSubjectPublicKeyInfo", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "rawSubject", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "rawIssuer", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "signature", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "signatureAlgorithm", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.crypto.x509.X509_SignatureAlgorithm.SignatureAlgorithm", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind), false, { get : () -> null }) }, optional : false },
{ name : "publicKeyAlgorithm", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.crypto.x509.X509_PublicKeyAlgorithm.PublicKeyAlgorithm", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind), false, { get : () -> null }) }, optional : false },
{ name : "publicKey", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.interfaceType(true, []) }, optional : false },
{ name : "version", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind) }, optional : false },
{ name : "serialNumber", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.math.big.Big_Int_.Int_", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "_neg", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind) }, optional : false }, { name : "_abs", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.math.big.Big_T_nat.T_nat", [], stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.math.big.Big_Word.Word", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(uint_kind), false, { get : () -> null }) }), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }) }, optional : false },
{ name : "issuer", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.crypto.x509.pkix.Pkix_Name.Name", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([
{ name : "country", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "organization", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "organizationalUnit", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "locality", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "province", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "streetAddress", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "postalCode", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "serialNumber", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false },
{ name : "commonName", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false },
{ name : "names", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.crypto.x509.pkix.Pkix_AttributeTypeAndValue.AttributeTypeAndValue", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "type", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier", [], stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind) }), false, { get : () -> null }) }, optional : false }, { name : "value", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.interfaceType(true, []) }, optional : false }]), false, { get : () -> null }) }) }, optional : false },
{ name : "extraNames", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.crypto.x509.pkix.Pkix_AttributeTypeAndValue.AttributeTypeAndValue", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "type", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier", [], stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind) }), false, { get : () -> null }) }, optional : false }, { name : "value", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.interfaceType(true, []) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }]), false, { get : () -> null }) }, optional : false },
{ name : "subject", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.crypto.x509.pkix.Pkix_Name.Name", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([
{ name : "country", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "organization", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "organizationalUnit", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "locality", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "province", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "streetAddress", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "postalCode", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "serialNumber", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false },
{ name : "commonName", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false },
{ name : "names", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.crypto.x509.pkix.Pkix_AttributeTypeAndValue.AttributeTypeAndValue", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "type", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier", [], stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind) }), false, { get : () -> null }) }, optional : false }, { name : "value", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.interfaceType(true, []) }, optional : false }]), false, { get : () -> null }) }) }, optional : false },
{ name : "extraNames", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.crypto.x509.pkix.Pkix_AttributeTypeAndValue.AttributeTypeAndValue", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "type", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier", [], stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind) }), false, { get : () -> null }) }, optional : false }, { name : "value", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.interfaceType(true, []) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }]), false, { get : () -> null }) }, optional : false },
{ name : "notBefore", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.time.Time_Time.Time", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "_wall", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint64_kind) }, optional : false }, { name : "_ext", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int64_kind) }, optional : false }, { name : "_loc", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.time.Time_Location.Location", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "_name", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }, { name : "_zone", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.time.Time_T_zone.T_zone", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "_name", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }, { name : "_offset", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind) }, optional : false }, { name : "_isDST", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }, { name : "_tx", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.time.Time_T_zoneTrans.T_zoneTrans", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "_when", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int64_kind) }, optional : false }, { name : "_index", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false }, { name : "_isstd", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind) }, optional : false }, { name : "_isutc", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }, { name : "_extend", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }, { name : "_cacheStart", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int64_kind) }, optional : false }, { name : "_cacheEnd", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int64_kind) }, optional : false }, { name : "_cacheZone", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.time.Time_T_zone.T_zone", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "_name", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }, { name : "_offset", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind) }, optional : false }, { name : "_isDST", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }]), false, { get : () -> null }) }, optional : false },
{ name : "notAfter", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.time.Time_Time.Time", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "_wall", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint64_kind) }, optional : false }, { name : "_ext", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int64_kind) }, optional : false }, { name : "_loc", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.time.Time_Location.Location", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "_name", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }, { name : "_zone", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.time.Time_T_zone.T_zone", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "_name", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }, { name : "_offset", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind) }, optional : false }, { name : "_isDST", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }, { name : "_tx", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.time.Time_T_zoneTrans.T_zoneTrans", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "_when", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int64_kind) }, optional : false }, { name : "_index", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false }, { name : "_isstd", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind) }, optional : false }, { name : "_isutc", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }, { name : "_extend", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }, { name : "_cacheStart", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int64_kind) }, optional : false }, { name : "_cacheEnd", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int64_kind) }, optional : false }, { name : "_cacheZone", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.time.Time_T_zone.T_zone", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "_name", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }, { name : "_offset", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind) }, optional : false }, { name : "_isDST", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }]), false, { get : () -> null }) }, optional : false },
{ name : "keyUsage", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.crypto.x509.X509_KeyUsage.KeyUsage", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind), false, { get : () -> null }) }, optional : false },
{ name : "extensions", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "id", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier", [], stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind) }), false, { get : () -> null }) }, optional : false }, { name : "critical", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind) }, optional : false }, { name : "value", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false }]), false, { get : () -> null }) }) }, optional : false },
{ name : "extraExtensions", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "id", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier", [], stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind) }), false, { get : () -> null }) }, optional : false }, { name : "critical", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind) }, optional : false }, { name : "value", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false }]), false, { get : () -> null }) }) }, optional : false },
{ name : "unhandledCriticalExtensions", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier", [], stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind) }), false, { get : () -> null }) }) }, optional : false },
{ name : "extKeyUsage", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind), false, { get : () -> null }) }) }, optional : false },
{ name : "unknownExtKeyUsage", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier", [], stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind) }), false, { get : () -> null }) }) }, optional : false },
{ name : "basicConstraintsValid", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "isCA", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "maxPathLen", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind) }, optional : false },
{ name : "maxPathLenZero", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "subjectKeyId", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "authorityKeyId", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "ocspserver", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "issuingCertificateURL", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "dnsnames", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "emailAddresses", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "ipaddresses", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.net.Net_IP.IP", [], stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }), false, { get : () -> null }) }) }, optional : false },
{ name : "uris", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.net.url.Url_URL.URL", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([
{ name : "scheme", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false },
{ name : "opaque", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false },
{ name : "user", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.net.url.Url_Userinfo.Userinfo", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "_username", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }, { name : "_password", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }, { name : "_passwordSet", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind) }, optional : false }]), false, { get : () -> null }) }) }, optional : false },
{ name : "host", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false },
{ name : "path", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false },
{ name : "rawPath", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false },
{ name : "omitHost", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "forceQuery", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "rawQuery", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false },
{ name : "fragment", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false },
{ name : "rawFragment", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }]), false, { get : () -> null }) }) }) }, optional : false },
{ name : "permittedDNSDomainsCritical", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "permittedDNSDomains", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "excludedDNSDomains", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "permittedIPRanges", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.net.Net_IPNet.IPNet", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "ip", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.net.Net_IP.IP", [], stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }), false, { get : () -> null }) }, optional : false }, { name : "mask", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.net.Net_IPMask.IPMask", [], stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }) }) }, optional : false },
{ name : "excludedIPRanges", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.net.Net_IPNet.IPNet", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "ip", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.net.Net_IP.IP", [], stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }), false, { get : () -> null }) }, optional : false }, { name : "mask", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.net.Net_IPMask.IPMask", [], stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }) }) }, optional : false },
{ name : "permittedEmailAddresses", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "excludedEmailAddresses", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "permittedURIDomains", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "excludedURIDomains", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "crldistributionPoints", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "policyIdentifiers", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier", [], stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind) }), false, { get : () -> null }) }) }, optional : false }]), false, { get : () -> null }) }) }) }) }, optional : false },
{ name : "signedCertificateTimestamps", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }) }, optional : false },
{ name : "ocspresponse", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "tlsunique", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "_ekm", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.signature(false, { get : () -> null }, { get : () -> null }, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }]), false, { get : () -> null }) }) }, optional : false },
{ name : "_ctx", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.context.Context_Context.Context", [], stdgo._internal.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }]), false, { get : () -> null }));
                    x.__defaultValue__ = () -> null;
                    {};
                    cast x;
                } : stdgo.GoMap<stdgo._internal.net.http.Http_T_cancelKey.T_cancelKey, stdgo.Error -> Void>);
            };
            if (_fn != null) {
                _t._reqCanceler[_key] = _fn;
            } else {
                if (_t._reqCanceler != null) _t._reqCanceler.remove(_key);
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
    static public function _removeIdleConnLocked( _t:stdgo.Ref<stdgo._internal.net.http.Http_Transport.Transport>, _pconn:stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>):Bool {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_Transport.Transport> = _t;
        if ((_pconn._idleTimer != null && ((_pconn._idleTimer : Dynamic).__nil__ == null || !(_pconn._idleTimer : Dynamic).__nil__))) {
            _pconn._idleTimer.stop();
        };
        _t._idleLRU._remove(_pconn);
        var _key = (_pconn._cacheKey?.__copy__() : stdgo._internal.net.http.Http_T_connectMethodKey.T_connectMethodKey);
        var _pconns = (_t._idleConn[_key] ?? (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>>));
        var _removed:Bool = false;
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                {
                    final __value__ = (_pconns.length);
                    if (__value__ == ((0 : stdgo.GoInt))) {
                        break;
                    } else if (__value__ == ((1 : stdgo.GoInt))) {
                        if (_pconns[(0 : stdgo.GoInt)] == (_pconn)) {
                            if (_t._idleConn != null) _t._idleConn.remove(_key);
                            _removed = true;
                        };
                        break;
                    } else {
                        for (_i => _v in _pconns) {
                            if (_v != (_pconn)) {
                                continue;
                            };
                            stdgo.Go.copySlice((_pconns.__slice__(_i) : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>>), (_pconns.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>>));
                            _t._idleConn[_key] = (_pconns.__slice__(0, ((_pconns.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>>);
                            _removed = true;
                            break;
                        };
                    };
                };
                break;
            };
        };
        return _removed;
    }
    @:keep
    static public function _removeIdleConn( _t:stdgo.Ref<stdgo._internal.net.http.Http_Transport.Transport>, _pconn:stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>):Bool {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_Transport.Transport> = _t;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _t._idleMu.lock();
            {
                final __f__ = _t._idleMu.unlock;
                __deferstack__.unshift(() -> __f__());
            };
            {
                final __ret__:Bool = _t._removeIdleConnLocked(_pconn);
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
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
    static public function _queueForIdleConn( _t:stdgo.Ref<stdgo._internal.net.http.Http_Transport.Transport>, _w:stdgo.Ref<stdgo._internal.net.http.Http_T_wantConn.T_wantConn>):Bool {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_Transport.Transport> = _t;
        var __deferstack__:Array<Void -> Void> = [];
        var _delivered = false;
        try {
            if (_t.disableKeepAlives) {
                return _delivered = false;
            };
            _t._idleMu.lock();
            {
                final __f__ = _t._idleMu.unlock;
                __deferstack__.unshift(() -> __f__());
            };
            _t._closeIdle = false;
            if ((_w == null || (_w : Dynamic).__nil__)) {
                {
                    final __ret__:Bool = _delivered = false;
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            var _oldTime:stdgo._internal.time.Time_Time.Time = ({} : stdgo._internal.time.Time_Time.Time);
            if ((_t.idleConnTimeout > (0i64 : stdgo._internal.time.Time_Duration.Duration) : Bool)) {
                _oldTime = stdgo._internal.time.Time_now.now().add(-_t.idleConnTimeout)?.__copy__();
            };
            {
                var __tmp__ = (_t._idleConn != null && _t._idleConn.exists(_w._key?.__copy__()) ? { _0 : _t._idleConn[_w._key?.__copy__()], _1 : true } : { _0 : (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>>), _1 : false }), _list:stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>> = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    var _stop = (false : Bool);
                    var _delivered = (false : Bool);
                    while ((((_list.length) > (0 : stdgo.GoInt) : Bool) && !_stop : Bool)) {
                        var _pconn = _list[((_list.length) - (1 : stdgo.GoInt) : stdgo.GoInt)];
                        var _tooOld = (!_oldTime.isZero() && _pconn._idleAt.round((0i64 : stdgo._internal.time.Time_Duration.Duration)).before(_oldTime?.__copy__()) : Bool);
                        if (_tooOld) {
                            stdgo.Go.routine(() -> _pconn._closeConnIfStillIdle());
                        };
                        if ((_pconn._isBroken() || _tooOld : Bool)) {
                            _list = (_list.__slice__(0, ((_list.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>>);
                            continue;
                        };
                        _delivered = _w._tryDeliver(_pconn, (null : stdgo.Error));
                        if (_delivered) {
                            if (_pconn._alt != null) {} else {
                                _t._idleLRU._remove(_pconn);
                                _list = (_list.__slice__(0, ((_list.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>>);
                            };
                        };
                        _stop = true;
                    };
                    if (((_list.length) > (0 : stdgo.GoInt) : Bool)) {
                        _t._idleConn[_w._key] = _list;
                    } else {
                        if (_t._idleConn != null) _t._idleConn.remove(_w._key);
                    };
                    if (_stop) {
                        {
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return _delivered;
                        };
                    };
                };
            };
            if (_t._idleConnWait == null) {
                _t._idleConnWait = ({
                    final x = new stdgo.GoMap.GoObjectMap<stdgo._internal.net.http.Http_T_connectMethodKey.T_connectMethodKey, stdgo._internal.net.http.Http_T_wantConnQueue.T_wantConnQueue>();
                    x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.net.http.Http_T_connectMethodKey.T_connectMethodKey", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "_proxy", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }, { name : "_scheme", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }, { name : "_addr", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }, { name : "_onlyH1", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind) }, optional : false }]), false, { get : () -> null }));
                    x.__defaultValue__ = () -> ({} : stdgo._internal.net.http.Http_T_wantConnQueue.T_wantConnQueue);
                    {};
                    cast x;
                } : stdgo.GoMap<stdgo._internal.net.http.Http_T_connectMethodKey.T_connectMethodKey, stdgo._internal.net.http.Http_T_wantConnQueue.T_wantConnQueue>);
            };
            var _q = ((_t._idleConnWait[_w._key] ?? ({} : stdgo._internal.net.http.Http_T_wantConnQueue.T_wantConnQueue))?.__copy__() : stdgo._internal.net.http.Http_T_wantConnQueue.T_wantConnQueue);
            _q._cleanFront();
            _q._pushBack(_w);
            _t._idleConnWait[_w._key] = _q?.__copy__();
            {
                final __ret__:Bool = _delivered = false;
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return _delivered;
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
            return _delivered;
        };
    }
    @:keep
    static public function _tryPutIdleConn( _t:stdgo.Ref<stdgo._internal.net.http.Http_Transport.Transport>, _pconn:stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>):stdgo.Error {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_Transport.Transport> = _t;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if ((_t.disableKeepAlives || (_t.maxIdleConnsPerHost < (0 : stdgo.GoInt) : Bool) : Bool)) {
                return stdgo._internal.net.http.Http__errKeepAlivesDisabled._errKeepAlivesDisabled;
            };
            if (_pconn._isBroken()) {
                return stdgo._internal.net.http.Http__errConnBroken._errConnBroken;
            };
            _pconn._markReused();
            _t._idleMu.lock();
            {
                final __f__ = _t._idleMu.unlock;
                __deferstack__.unshift(() -> __f__());
            };
            if (((_pconn._alt != null) && ((_t._idleLRU._m[_pconn] ?? (null : stdgo.Ref<stdgo._internal.container.list.List_Element.Element>)) != null && ((_t._idleLRU._m[_pconn] ?? (null : stdgo.Ref<stdgo._internal.container.list.List_Element.Element>) : Dynamic).__nil__ == null || !(_t._idleLRU._m[_pconn] ?? (null : stdgo.Ref<stdgo._internal.container.list.List_Element.Element>) : Dynamic).__nil__)) : Bool)) {
                {
                    final __ret__:stdgo.Error = (null : stdgo.Error);
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            var _key = (_pconn._cacheKey?.__copy__() : stdgo._internal.net.http.Http_T_connectMethodKey.T_connectMethodKey);
            {
                var __tmp__ = (_t._idleConnWait != null && _t._idleConnWait.exists(_key?.__copy__()) ? { _0 : _t._idleConnWait[_key?.__copy__()], _1 : true } : { _0 : ({} : stdgo._internal.net.http.Http_T_wantConnQueue.T_wantConnQueue), _1 : false }), _q:stdgo._internal.net.http.Http_T_wantConnQueue.T_wantConnQueue = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    var _done = (false : Bool);
                    if (_pconn._alt == null) {
                        while ((_q._len() > (0 : stdgo.GoInt) : Bool)) {
                            var _w = _q._popFront();
                            if (_w._tryDeliver(_pconn, (null : stdgo.Error))) {
                                _done = true;
                                break;
                            };
                        };
                    } else {
                        while ((_q._len() > (0 : stdgo.GoInt) : Bool)) {
                            var _w = _q._popFront();
                            _w._tryDeliver(_pconn, (null : stdgo.Error));
                        };
                    };
                    if (_q._len() == ((0 : stdgo.GoInt))) {
                        if (_t._idleConnWait != null) _t._idleConnWait.remove(_key);
                    } else {
                        _t._idleConnWait[_key] = _q?.__copy__();
                    };
                    if (_done) {
                        {
                            final __ret__:stdgo.Error = (null : stdgo.Error);
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                    };
                };
            };
            if (_t._closeIdle) {
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return stdgo._internal.net.http.Http__errCloseIdle._errCloseIdle;
                };
            };
            if (_t._idleConn == null) {
                _t._idleConn = ({
                    final x = new stdgo.GoMap.GoObjectMap<stdgo._internal.net.http.Http_T_connectMethodKey.T_connectMethodKey, stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>>>();
                    x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.net.http.Http_T_connectMethodKey.T_connectMethodKey", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "_proxy", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }, { name : "_scheme", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }, { name : "_addr", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }, { name : "_onlyH1", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind) }, optional : false }]), false, { get : () -> null }));
                    x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>>);
                    {};
                    cast x;
                } : stdgo.GoMap<stdgo._internal.net.http.Http_T_connectMethodKey.T_connectMethodKey, stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>>>);
            };
            var _idles = (_t._idleConn[_key] ?? (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>>));
            if (((_idles.length) >= _t._maxIdleConnsPerHost() : Bool)) {
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return stdgo._internal.net.http.Http__errTooManyIdleHost._errTooManyIdleHost;
                };
            };
            for (__35672 => _exist in _idles) {
                if (_exist == (_pconn)) {
                    stdgo._internal.log.Log_fatalf.fatalf(("dup idle pconn %p in freelist" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_pconn)));
                };
            };
            _t._idleConn[_key] = (_idles.__append__(_pconn));
            _t._idleLRU._add(_pconn);
            if (((_t.maxIdleConns != (0 : stdgo.GoInt)) && (_t._idleLRU._len() > _t.maxIdleConns : Bool) : Bool)) {
                var _oldest = _t._idleLRU._removeOldest();
                _oldest._close(stdgo._internal.net.http.Http__errTooManyIdle._errTooManyIdle);
                _t._removeIdleConnLocked(_oldest);
            };
            if (((_t.idleConnTimeout > (0i64 : stdgo._internal.time.Time_Duration.Duration) : Bool) && (_pconn._alt == null) : Bool)) {
                if ((_pconn._idleTimer != null && ((_pconn._idleTimer : Dynamic).__nil__ == null || !(_pconn._idleTimer : Dynamic).__nil__))) {
                    _pconn._idleTimer.reset(_t.idleConnTimeout);
                } else {
                    _pconn._idleTimer = stdgo._internal.time.Time_afterFunc.afterFunc(_t.idleConnTimeout, _pconn._closeConnIfStillIdle);
                };
            };
            _pconn._idleAt = stdgo._internal.time.Time_now.now()?.__copy__();
            {
                final __ret__:stdgo.Error = (null : stdgo.Error);
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
    static public function _maxIdleConnsPerHost( _t:stdgo.Ref<stdgo._internal.net.http.Http_Transport.Transport>):stdgo.GoInt {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_Transport.Transport> = _t;
        {
            var _v = (_t.maxIdleConnsPerHost : stdgo.GoInt);
            if (_v != ((0 : stdgo.GoInt))) {
                return _v;
            };
        };
        return (2 : stdgo.GoInt);
    }
    @:keep
    static public function _putOrCloseIdleConn( _t:stdgo.Ref<stdgo._internal.net.http.Http_Transport.Transport>, _pconn:stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_Transport.Transport> = _t;
        {
            var _err = (_t._tryPutIdleConn(_pconn) : stdgo.Error);
            if (_err != null) {
                _pconn._close(_err);
            };
        };
    }
    @:keep
    static public function _connectMethodForRequest( _t:stdgo.Ref<stdgo._internal.net.http.Http_Transport.Transport>, _treq:stdgo.Ref<stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest>):{ var _0 : stdgo._internal.net.http.Http_T_connectMethod.T_connectMethod; var _1 : stdgo.Error; } {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_Transport.Transport> = _t;
        var _cm = ({} : stdgo._internal.net.http.Http_T_connectMethod.T_connectMethod), _err = (null : stdgo.Error);
        _cm._targetScheme = _treq.request.url.scheme?.__copy__();
        _cm._targetAddr = stdgo._internal.net.http.Http__canonicalAddr._canonicalAddr(_treq.request.url)?.__copy__();
        if (_t.proxy != null) {
            {
                var __tmp__ = _t.proxy(_treq.request);
                _cm._proxyURL = __tmp__._0;
                _err = __tmp__._1;
            };
        };
        _cm._onlyH1 = _treq._requiresHTTP1();
        return {
            final __tmp__:{ var _0 : stdgo._internal.net.http.Http_T_connectMethod.T_connectMethod; var _1 : stdgo.Error; } = { _0 : _cm?.__copy__(), _1 : _err };
            _cm = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    static public function _cancelRequest( _t:stdgo.Ref<stdgo._internal.net.http.Http_Transport.Transport>, _key:stdgo._internal.net.http.Http_T_cancelKey.T_cancelKey, _err:stdgo.Error):Bool {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_Transport.Transport> = _t;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _t._reqMu.lock();
            {
                final __f__ = _t._reqMu.unlock;
                __deferstack__.unshift(() -> __f__());
            };
            var _cancel = (_t._reqCanceler[_key] ?? null : stdgo.Error -> Void);
            if (_t._reqCanceler != null) _t._reqCanceler.remove(_key);
            if (_cancel != null) {
                _cancel(_err);
            };
            {
                final __ret__:Bool = _cancel != null;
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
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
    static public function cancelRequest( _t:stdgo.Ref<stdgo._internal.net.http.Http_Transport.Transport>, _req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_Transport.Transport> = _t;
        _t._cancelRequest((new stdgo._internal.net.http.Http_T_cancelKey.T_cancelKey(_req) : stdgo._internal.net.http.Http_T_cancelKey.T_cancelKey), stdgo._internal.net.http.Http__errRequestCanceled._errRequestCanceled);
    }
    @:keep
    static public function closeIdleConnections( _t:stdgo.Ref<stdgo._internal.net.http.Http_Transport.Transport>):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_Transport.Transport> = _t;
        _t._nextProtoOnce.do_(_t._onceSetNextProtoDefaults);
        _t._idleMu.lock();
        var _m = _t._idleConn;
        _t._idleConn = (null : stdgo.GoMap<stdgo._internal.net.http.Http_T_connectMethodKey.T_connectMethodKey, stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>>>);
        _t._closeIdle = true;
        _t._idleLRU = (new stdgo._internal.net.http.Http_T_connLRU.T_connLRU() : stdgo._internal.net.http.Http_T_connLRU.T_connLRU);
        _t._idleMu.unlock();
        for (__35644 => _conns in _m) {
            for (__35645 => _pconn in _conns) {
                _pconn._close(stdgo._internal.net.http.Http__errCloseIdleConns._errCloseIdleConns);
            };
        };
        {
            var _t2 = (_t._h2transport : stdgo._internal.net.http.Http_T_h2Transport.T_h2Transport);
            if (_t2 != null) {
                _t2.closeIdleConnections();
            };
        };
    }
    @:keep
    static public function registerProtocol( _t:stdgo.Ref<stdgo._internal.net.http.Http_Transport.Transport>, _scheme:stdgo.GoString, _rt:stdgo._internal.net.http.Http_RoundTripper.RoundTripper):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_Transport.Transport> = _t;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _t._altMu.lock();
            {
                final __f__ = _t._altMu.unlock;
                __deferstack__.unshift(() -> __f__());
            };
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((_t._altProto.load() : stdgo.GoMap<stdgo.GoString, stdgo._internal.net.http.Http_RoundTripper.RoundTripper>)) : stdgo.GoMap<stdgo.GoString, stdgo._internal.net.http.Http_RoundTripper.RoundTripper>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.GoMap<stdgo.GoString, stdgo._internal.net.http.Http_RoundTripper.RoundTripper>), _1 : false };
            }, _oldMap = __tmp__._0, __35624 = __tmp__._1;
            {
                var __tmp__ = (_oldMap != null && _oldMap.exists(_scheme?.__copy__()) ? { _0 : _oldMap[_scheme?.__copy__()], _1 : true } : { _0 : (null : stdgo._internal.net.http.Http_RoundTripper.RoundTripper), _1 : false }), __35625:stdgo._internal.net.http.Http_RoundTripper.RoundTripper = __tmp__._0, _exists:Bool = __tmp__._1;
                if (_exists) {
                    throw stdgo.Go.toInterface(((("protocol " : stdgo.GoString) + _scheme?.__copy__() : stdgo.GoString) + (" already registered" : stdgo.GoString)?.__copy__() : stdgo.GoString));
                };
            };
            var _newMap = ({
                final x = new stdgo.GoMap.GoStringMap<stdgo._internal.net.http.Http_RoundTripper.RoundTripper>();
                x.__defaultValue__ = () -> (null : stdgo._internal.net.http.Http_RoundTripper.RoundTripper);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo._internal.net.http.Http_RoundTripper.RoundTripper>);
            for (_k => _v in _oldMap) {
                _newMap[_k] = _v;
            };
            _newMap[_scheme] = _rt;
            _t._altProto.store(stdgo.Go.toInterface(_newMap));
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
    static public function _roundTrip( _t:stdgo.Ref<stdgo._internal.net.http.Http_Transport.Transport>, _req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_Transport.Transport> = _t;
        _t._nextProtoOnce.do_(_t._onceSetNextProtoDefaults);
        var _ctx = (_req.context() : stdgo._internal.context.Context_Context.Context);
        var _trace = stdgo._internal.net.http.httptrace.Httptrace_contextClientTrace.contextClientTrace(_ctx);
        if ((_req.url == null || (_req.url : Dynamic).__nil__)) {
            _req._closeBody();
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("http: nil Request.URL" : stdgo.GoString)) };
        };
        if (_req.header == null) {
            _req._closeBody();
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("http: nil Request.Header" : stdgo.GoString)) };
        };
        var _scheme = (_req.url.scheme?.__copy__() : stdgo.GoString);
        var _isHTTP = ((_scheme == ("http" : stdgo.GoString)) || (_scheme == ("https" : stdgo.GoString)) : Bool);
        if (_isHTTP) {
            for (_k => _vv in _req.header) {
                if (!_internal.golang_dot_org.x.net.http.httpguts.Httpguts_validHeaderFieldName.validHeaderFieldName(_k?.__copy__())) {
                    _req._closeBody();
                    return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("net/http: invalid header field name %q" : stdgo.GoString), stdgo.Go.toInterface(_k)) };
                };
                for (__35620 => _v in _vv) {
                    if (!_internal.golang_dot_org.x.net.http.httpguts.Httpguts_validHeaderFieldValue.validHeaderFieldValue(_v?.__copy__())) {
                        _req._closeBody();
                        return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("net/http: invalid header field value for %q" : stdgo.GoString), stdgo.Go.toInterface(_k)) };
                    };
                };
            };
        };
        var _origReq = _req;
        var _cancelKey = (new stdgo._internal.net.http.Http_T_cancelKey.T_cancelKey(_origReq) : stdgo._internal.net.http.Http_T_cancelKey.T_cancelKey);
        _req = stdgo._internal.net.http.Http__setupRewindBody._setupRewindBody(_req);
        {
            var _altRT = (_t._alternateRoundTripper(_req) : stdgo._internal.net.http.Http_RoundTripper.RoundTripper);
            if (_altRT != null) {
                {
                    var __tmp__ = _altRT.roundTrip(_req), _resp:stdgo.Ref<stdgo._internal.net.http.Http_Response.Response> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.net.http.Http_errSkipAltProtocol.errSkipAltProtocol))) {
                        return { _0 : _resp, _1 : _err };
                    };
                };
                var _err:stdgo.Error = (null : stdgo.Error);
                {
                    var __tmp__ = stdgo._internal.net.http.Http__rewindBody._rewindBody(_req);
                    _req = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    return { _0 : null, _1 : _err };
                };
            };
        };
        if (!_isHTTP) {
            _req._closeBody();
            return { _0 : null, _1 : stdgo._internal.net.http.Http__badStringError._badStringError(("unsupported protocol scheme" : stdgo.GoString), _scheme?.__copy__()) };
        };
        if (((_req.method != stdgo.Go.str()) && !stdgo._internal.net.http.Http__validMethod._validMethod(_req.method?.__copy__()) : Bool)) {
            _req._closeBody();
            return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("net/http: invalid method %q" : stdgo.GoString), stdgo.Go.toInterface(_req.method)) };
        };
        if (_req.url.host == (stdgo.Go.str())) {
            _req._closeBody();
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("http: no Host in request URL" : stdgo.GoString)) };
        };
        while (true) {
            {
                var __select__ = true;
                while (__select__) {
                    if (_ctx.done() != null && _ctx.done().__isGet__()) {
                        __select__ = false;
                        {
                            _ctx.done().__get__();
                            {
                                _req._closeBody();
                                return { _0 : null, _1 : _ctx.err() };
                            };
                        };
                    } else {
                        __select__ = false;
                        {};
                    };
                    #if !js Sys.sleep(0.01) #else null #end;
                    stdgo._internal.internal.Async.tick();
                };
            };
            var _treq = (stdgo.Go.setRef(({ request : _req, _trace : _trace, _cancelKey : _cancelKey?.__copy__() } : stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest)) : stdgo.Ref<stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest>);
            var __tmp__ = _t._connectMethodForRequest(_treq), _cm:stdgo._internal.net.http.Http_T_connectMethod.T_connectMethod = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _req._closeBody();
                return { _0 : null, _1 : _err };
            };
            var __tmp__ = _t._getConn(_treq, _cm?.__copy__()), _pconn:stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t._setReqCanceler(_cancelKey?.__copy__(), null);
                _req._closeBody();
                return { _0 : null, _1 : _err };
            };
            var _resp:stdgo.Ref<stdgo._internal.net.http.Http_Response.Response> = (null : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>);
            if (_pconn._alt != null) {
                _t._setReqCanceler(_cancelKey?.__copy__(), null);
                {
                    var __tmp__ = _pconn._alt.roundTrip(_req);
                    _resp = __tmp__._0;
                    _err = __tmp__._1;
                };
            } else {
                {
                    var __tmp__ = _pconn._roundTrip(_treq);
                    _resp = __tmp__._0;
                    _err = __tmp__._1;
                };
            };
            if (_err == null) {
                _resp.request = _origReq;
                return { _0 : _resp, _1 : (null : stdgo.Error) };
            };
            if (stdgo._internal.net.http.Http__http2isNoCachedConnError._http2isNoCachedConnError(_err)) {
                if (_t._removeIdleConn(_pconn)) {
                    _t._decConnsPerHost(_pconn._cacheKey?.__copy__());
                };
            } else if (!_pconn._shouldRetryRequest(_req, _err)) {
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo._internal.net.http.Http_T_nothingWrittenError.T_nothingWrittenError)) : stdgo._internal.net.http.Http_T_nothingWrittenError.T_nothingWrittenError), _1 : true };
                    } catch(_) {
                        { _0 : ({} : stdgo._internal.net.http.Http_T_nothingWrittenError.T_nothingWrittenError), _1 : false };
                    }, _e = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        _err = _e._error;
                    };
                };
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo._internal.net.http.Http_T_transportReadFromServerError.T_transportReadFromServerError)) : stdgo._internal.net.http.Http_T_transportReadFromServerError.T_transportReadFromServerError), _1 : true };
                    } catch(_) {
                        { _0 : ({} : stdgo._internal.net.http.Http_T_transportReadFromServerError.T_transportReadFromServerError), _1 : false };
                    }, _e = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        _err = _e._err;
                    };
                };
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_req.body) : stdgo.Ref<stdgo._internal.net.http.Http_T_readTrackingBody.T_readTrackingBody>)) : stdgo.Ref<stdgo._internal.net.http.Http_T_readTrackingBody.T_readTrackingBody>), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.net.http.Http_T_readTrackingBody.T_readTrackingBody>), _1 : false };
                    }, _b = __tmp__._0, _ok = __tmp__._1;
                    if ((_ok && !_b._didClose : Bool)) {
                        _req._closeBody();
                    };
                };
                return { _0 : null, _1 : _err };
            };
            stdgo._internal.net.http.Http__testHookRoundTripRetried._testHookRoundTripRetried();
            {
                var __tmp__ = stdgo._internal.net.http.Http__rewindBody._rewindBody(_req);
                _req = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
        };
    }
    @:keep
    static public function _alternateRoundTripper( _t:stdgo.Ref<stdgo._internal.net.http.Http_Transport.Transport>, _req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):stdgo._internal.net.http.Http_RoundTripper.RoundTripper {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_Transport.Transport> = _t;
        if (!_t._useRegisteredProtocol(_req)) {
            return (null : stdgo._internal.net.http.Http_RoundTripper.RoundTripper);
        };
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_t._altProto.load() : stdgo.GoMap<stdgo.GoString, stdgo._internal.net.http.Http_RoundTripper.RoundTripper>)) : stdgo.GoMap<stdgo.GoString, stdgo._internal.net.http.Http_RoundTripper.RoundTripper>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.GoMap<stdgo.GoString, stdgo._internal.net.http.Http_RoundTripper.RoundTripper>), _1 : false };
        }, _altProto = __tmp__._0, __35620 = __tmp__._1;
        return (_altProto[_req.url.scheme] ?? (null : stdgo._internal.net.http.Http_RoundTripper.RoundTripper));
    }
    @:keep
    static public function _useRegisteredProtocol( _t:stdgo.Ref<stdgo._internal.net.http.Http_Transport.Transport>, _req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):Bool {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_Transport.Transport> = _t;
        if (((_req.url.scheme == ("https" : stdgo.GoString)) && _req._requiresHTTP1() : Bool)) {
            return false;
        };
        return true;
    }
    @:keep
    static public function _onceSetNextProtoDefaults( _t:stdgo.Ref<stdgo._internal.net.http.Http_Transport.Transport>):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_Transport.Transport> = _t;
        _t._tlsNextProtoWasNil = (_t.tlsnextProto == null);
        if (stdgo._internal.net.http.Http__http2client._http2client.value() == (("0" : stdgo.GoString))) {
            stdgo._internal.net.http.Http__http2client._http2client.incNonDefault();
            return;
        };
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_t._altProto.load() : stdgo.GoMap<stdgo.GoString, stdgo._internal.net.http.Http_RoundTripper.RoundTripper>)) : stdgo.GoMap<stdgo.GoString, stdgo._internal.net.http.Http_RoundTripper.RoundTripper>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.GoMap<stdgo.GoString, stdgo._internal.net.http.Http_RoundTripper.RoundTripper>), _1 : false };
        }, _altProto = __tmp__._0, __35632 = __tmp__._1;
        {
            var _rv = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((_altProto[("https" : stdgo.GoString)] ?? (null : stdgo._internal.net.http.Http_RoundTripper.RoundTripper))))?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
            if (((_rv.isValid() && _rv.type().kind() == ((25u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) : Bool) && (_rv.type().numField() == (1 : stdgo.GoInt)) : Bool)) {
                {
                    var _v = (_rv.field((0 : stdgo.GoInt))?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
                    if (_v.canInterface()) {
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((_v.interface_() : stdgo._internal.net.http.Http_T_h2Transport.T_h2Transport)) : stdgo._internal.net.http.Http_T_h2Transport.T_h2Transport), _1 : true };
                            } catch(_) {
                                { _0 : (null : stdgo._internal.net.http.Http_T_h2Transport.T_h2Transport), _1 : false };
                            }, _h2i = __tmp__._0, _ok = __tmp__._1;
                            if (_ok) {
                                _t._h2transport = _h2i;
                                return;
                            };
                        };
                    };
                };
            };
        };
        if (_t.tlsnextProto != null) {
            return;
        };
        if ((!_t.forceAttemptHTTP2 && (((((_t.tlsclientConfig != null && ((_t.tlsclientConfig : Dynamic).__nil__ == null || !(_t.tlsclientConfig : Dynamic).__nil__)) || _t.dial != null : Bool) || _t.dialContext != null : Bool) || _t._hasCustomTLSDialer() : Bool)) : Bool)) {
            return;
        };
        if (stdgo._internal.net.http.Http__omitBundledHTTP2._omitBundledHTTP2) {
            return;
        };
        var __tmp__ = stdgo._internal.net.http.Http__http2configureTransports._http2configureTransports(_t), _t2:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo._internal.log.Log_printf.printf(("Error enabling Transport HTTP/2 support: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            return;
        };
        _t._h2transport = stdgo.Go.asInterface(_t2);
        {
            var _limit1 = (_t.maxResponseHeaderBytes : stdgo.GoInt64);
            if (((_limit1 != (0i64 : stdgo.GoInt64)) && (_t2.maxHeaderListSize == (0u32 : stdgo.GoUInt32)) : Bool)) {
                {};
                if ((_limit1 >= (4294967295i64 : stdgo.GoInt64) : Bool)) {
                    _t2.maxHeaderListSize = (-1u32 : stdgo.GoUInt32);
                } else {
                    _t2.maxHeaderListSize = (_limit1 : stdgo.GoUInt32);
                };
            };
        };
    }
    @:keep
    static public function _hasCustomTLSDialer( _t:stdgo.Ref<stdgo._internal.net.http.Http_Transport.Transport>):Bool {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_Transport.Transport> = _t;
        return ((_t.dialTLS != null) || (_t.dialTLSContext != null) : Bool);
    }
    @:keep
    static public function clone( _t:stdgo.Ref<stdgo._internal.net.http.Http_Transport.Transport>):stdgo.Ref<stdgo._internal.net.http.Http_Transport.Transport> {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_Transport.Transport> = _t;
        _t._nextProtoOnce.do_(_t._onceSetNextProtoDefaults);
        var _t2 = (stdgo.Go.setRef(({ proxy : _t.proxy, onProxyConnectResponse : _t.onProxyConnectResponse, dialContext : _t.dialContext, dial : _t.dial, dialTLS : _t.dialTLS, dialTLSContext : _t.dialTLSContext, tlshandshakeTimeout : _t.tlshandshakeTimeout, disableKeepAlives : _t.disableKeepAlives, disableCompression : _t.disableCompression, maxIdleConns : _t.maxIdleConns, maxIdleConnsPerHost : _t.maxIdleConnsPerHost, maxConnsPerHost : _t.maxConnsPerHost, idleConnTimeout : _t.idleConnTimeout, responseHeaderTimeout : _t.responseHeaderTimeout, expectContinueTimeout : _t.expectContinueTimeout, proxyConnectHeader : _t.proxyConnectHeader.clone(), getProxyConnectHeader : _t.getProxyConnectHeader, maxResponseHeaderBytes : _t.maxResponseHeaderBytes, forceAttemptHTTP2 : _t.forceAttemptHTTP2, writeBufferSize : _t.writeBufferSize, readBufferSize : _t.readBufferSize } : stdgo._internal.net.http.Http_Transport.Transport)) : stdgo.Ref<stdgo._internal.net.http.Http_Transport.Transport>);
        if ((_t.tlsclientConfig != null && ((_t.tlsclientConfig : Dynamic).__nil__ == null || !(_t.tlsclientConfig : Dynamic).__nil__))) {
            _t2.tlsclientConfig = _t.tlsclientConfig.clone();
        };
        if (!_t._tlsNextProtoWasNil) {
            var _npm = ({
                final x = new stdgo.GoMap.GoStringMap<(stdgo.GoString, stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>) -> stdgo._internal.net.http.Http_RoundTripper.RoundTripper>();
                x.__defaultValue__ = () -> null;
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, (stdgo.GoString, stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>) -> stdgo._internal.net.http.Http_RoundTripper.RoundTripper>);
            for (_k => _v in _t.tlsnextProto) {
                _npm[_k] = _v;
            };
            _t2.tlsnextProto = _npm;
        };
        return _t2;
    }
    @:keep
    static public function _readBufferSize( _t:stdgo.Ref<stdgo._internal.net.http.Http_Transport.Transport>):stdgo.GoInt {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_Transport.Transport> = _t;
        if ((_t.readBufferSize > (0 : stdgo.GoInt) : Bool)) {
            return _t.readBufferSize;
        };
        return (4096 : stdgo.GoInt);
    }
    @:keep
    static public function _writeBufferSize( _t:stdgo.Ref<stdgo._internal.net.http.Http_Transport.Transport>):stdgo.GoInt {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_Transport.Transport> = _t;
        if ((_t.writeBufferSize > (0 : stdgo.GoInt) : Bool)) {
            return _t.writeBufferSize;
        };
        return (4096 : stdgo.GoInt);
    }
    @:keep
    static public function roundTrip( _t:stdgo.Ref<stdgo._internal.net.http.Http_Transport.Transport>, _req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_Transport.Transport> = _t;
        if ((((((_t.dial != null || _t.dialContext != null : Bool) || _t.dialTLS != null : Bool) || _t.dialTLSContext != null : Bool) || stdgo._internal.net.http.Http__jsFetchMissing._jsFetchMissing : Bool) || stdgo._internal.net.http.Http__jsFetchDisabled._jsFetchDisabled : Bool)) {
            return _t._roundTrip(_req);
        };
        var _ac = (stdgo._internal.syscall.js.Js_global.global().get(("AbortController" : stdgo.GoString))?.__copy__() : stdgo._internal.syscall.js.Js_Value.Value);
        if (!_ac.isUndefined()) {
            _ac = _ac.new_()?.__copy__();
        };
        var _opt = (stdgo._internal.syscall.js.Js_global.global().get(("Object" : stdgo.GoString)).new_()?.__copy__() : stdgo._internal.syscall.js.Js_Value.Value);
        _opt.set(("method" : stdgo.GoString), stdgo.Go.toInterface(_req.method));
        _opt.set(("credentials" : stdgo.GoString), stdgo.Go.toInterface(("same-origin" : stdgo.GoString)));
        {
            var _h = (_req.header.get(("js.fetch:credentials" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            if (_h != (stdgo.Go.str())) {
                _opt.set(("credentials" : stdgo.GoString), stdgo.Go.toInterface(_h));
                _req.header.del(("js.fetch:credentials" : stdgo.GoString));
            };
        };
        {
            var _h = (_req.header.get(("js.fetch:mode" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            if (_h != (stdgo.Go.str())) {
                _opt.set(("mode" : stdgo.GoString), stdgo.Go.toInterface(_h));
                _req.header.del(("js.fetch:mode" : stdgo.GoString));
            };
        };
        {
            var _h = (_req.header.get(("js.fetch:redirect" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            if (_h != (stdgo.Go.str())) {
                _opt.set(("redirect" : stdgo.GoString), stdgo.Go.toInterface(_h));
                _req.header.del(("js.fetch:redirect" : stdgo.GoString));
            };
        };
        if (!_ac.isUndefined()) {
            _opt.set(("signal" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_ac.get(("signal" : stdgo.GoString)))));
        };
        var _headers = (stdgo._internal.syscall.js.Js_global.global().get(("Headers" : stdgo.GoString)).new_()?.__copy__() : stdgo._internal.syscall.js.Js_Value.Value);
        for (_key => _values in _req.header) {
            for (__35661 => _value in _values) {
                _headers.call(("append" : stdgo.GoString), stdgo.Go.toInterface(_key), stdgo.Go.toInterface(_value));
            };
        };
        _opt.set(("headers" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_headers)));
        if (_req.body != null) {
            var __tmp__ = stdgo._internal.io.Io_readAll.readAll(_req.body), _body:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _req.body.close();
                return { _0 : null, _1 : _err };
            };
            _req.body.close();
            if ((_body.length) != ((0 : stdgo.GoInt))) {
                var _buf = (stdgo._internal.net.http.Http__uint8Array._uint8Array.new_(stdgo.Go.toInterface((_body.length)))?.__copy__() : stdgo._internal.syscall.js.Js_Value.Value);
                stdgo._internal.syscall.js.Js_copyBytesToJS.copyBytesToJS(_buf?.__copy__(), _body);
                _opt.set(("body" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_buf)));
            };
        };
        var _fetchPromise = (stdgo._internal.syscall.js.Js_global.global().call(("fetch" : stdgo.GoString), stdgo.Go.toInterface((_req.url.string() : stdgo.GoString)), stdgo.Go.toInterface(stdgo.Go.asInterface(_opt)))?.__copy__() : stdgo._internal.syscall.js.Js_Value.Value);
        var __0 = (new stdgo.Chan<stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>>((1 : stdgo.GoInt).toBasic(), () -> (null : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>)) : stdgo.Chan<stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>>), __1 = (new stdgo.Chan<stdgo.Error>((1 : stdgo.GoInt).toBasic(), () -> (null : stdgo.Error)) : stdgo.Chan<stdgo.Error>), __2:stdgo._internal.syscall.js.Js_Func.Func = ({} : stdgo._internal.syscall.js.Js_Func.Func), __3:stdgo._internal.syscall.js.Js_Func.Func = ({} : stdgo._internal.syscall.js.Js_Func.Func);
var _failure = __3, _success = __2, _errCh = __1, _respCh = __0;
        _success = stdgo._internal.syscall.js.Js_funcOf.funcOf(function(_this:stdgo._internal.syscall.js.Js_Value.Value, _args:stdgo.Slice<stdgo._internal.syscall.js.Js_Value.Value>):stdgo.AnyInterface {
            _success.release();
            _failure.release();
            var _result = (_args[(0 : stdgo.GoInt)] : stdgo._internal.syscall.js.Js_Value.Value);
            var _header = (({
                final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
                x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.http.Http_Header.Header);
            var _headersIt = (_result.get(("headers" : stdgo.GoString)).call(("entries" : stdgo.GoString))?.__copy__() : stdgo._internal.syscall.js.Js_Value.Value);
            while (true) {
                var _n = (_headersIt.call(("next" : stdgo.GoString))?.__copy__() : stdgo._internal.syscall.js.Js_Value.Value);
                if (_n.get(("done" : stdgo.GoString)).bool_()) {
                    break;
                };
                var _pair = (_n.get(("value" : stdgo.GoString))?.__copy__() : stdgo._internal.syscall.js.Js_Value.Value);
                var __0 = ((_pair.index((0 : stdgo.GoInt)).string() : stdgo.GoString)?.__copy__() : stdgo.GoString), __1 = ((_pair.index((1 : stdgo.GoInt)).string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
var _value = __1, _key = __0;
                var _ck = (stdgo._internal.net.http.Http_canonicalHeaderKey.canonicalHeaderKey(_key?.__copy__())?.__copy__() : stdgo.GoString);
                _header[_ck] = ((_header[_ck] ?? (null : stdgo.Slice<stdgo.GoString>)).__append__(_value?.__copy__()));
            };
            var _contentLength = ((0i64 : stdgo.GoInt64) : stdgo.GoInt64);
            var _clHeader = (_header.get(("Content-Length" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            if (_clHeader != (stdgo.Go.str())) {
                var __tmp__ = stdgo._internal.strconv.Strconv_parseInt.parseInt(_clHeader?.__copy__(), (10 : stdgo.GoInt), (64 : stdgo.GoInt)), _cl:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _errCh.__send__(stdgo._internal.fmt.Fmt_errorf.errorf(("net/http: ill-formed Content-Length header: %v" : stdgo.GoString), stdgo.Go.toInterface(_err)));
                    return (null : stdgo.AnyInterface);
                };
                if ((_cl < (0i64 : stdgo.GoInt64) : Bool)) {
                    _errCh.__send__(stdgo._internal.fmt.Fmt_errorf.errorf(("net/http: invalid Content-Length header: %q" : stdgo.GoString), stdgo.Go.toInterface(_clHeader)));
                    return (null : stdgo.AnyInterface);
                };
                _contentLength = _cl;
            } else {
                _contentLength = (-1i64 : stdgo.GoInt64);
            };
            var _b = (_result.get(("body" : stdgo.GoString))?.__copy__() : stdgo._internal.syscall.js.Js_Value.Value);
            var _body:stdgo._internal.io.Io_ReadCloser.ReadCloser = (null : stdgo._internal.io.Io_ReadCloser.ReadCloser);
            if ((!_b.isUndefined() && !_b.isNull() : Bool)) {
                _body = stdgo.Go.asInterface((stdgo.Go.setRef(({ _stream : _b.call(("getReader" : stdgo.GoString))?.__copy__() } : stdgo._internal.net.http.Http_T_streamReader.T_streamReader)) : stdgo.Ref<stdgo._internal.net.http.Http_T_streamReader.T_streamReader>));
            } else {
                _body = stdgo.Go.asInterface((stdgo.Go.setRef(({ _arrayPromise : _result.call(("arrayBuffer" : stdgo.GoString))?.__copy__() } : stdgo._internal.net.http.Http_T_arrayReader.T_arrayReader)) : stdgo.Ref<stdgo._internal.net.http.Http_T_arrayReader.T_arrayReader>));
            };
            var _code = (_result.get(("status" : stdgo.GoString)).int_() : stdgo.GoInt);
            _respCh.__send__((stdgo.Go.setRef(({ status : stdgo._internal.fmt.Fmt_sprintf.sprintf(("%d %s" : stdgo.GoString), stdgo.Go.toInterface(_code), stdgo.Go.toInterface(stdgo._internal.net.http.Http_statusText.statusText(_code)))?.__copy__(), statusCode : _code, header : _header, contentLength : _contentLength, body : _body, request : _req } : stdgo._internal.net.http.Http_Response.Response)) : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>));
            return (null : stdgo.AnyInterface);
        })?.__copy__();
        _failure = stdgo._internal.syscall.js.Js_funcOf.funcOf(function(_this:stdgo._internal.syscall.js.Js_Value.Value, _args:stdgo.Slice<stdgo._internal.syscall.js.Js_Value.Value>):stdgo.AnyInterface {
            _success.release();
            _failure.release();
            var _err = (_args[(0 : stdgo.GoInt)] : stdgo._internal.syscall.js.Js_Value.Value);
            var _errMsg = ((_err.call(("toString" : stdgo.GoString)).string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            {
                var _cause = (_err.get(("cause" : stdgo.GoString))?.__copy__() : stdgo._internal.syscall.js.Js_Value.Value);
                if (!_cause.isUndefined()) {
                    if (!_cause.get(("toString" : stdgo.GoString)).isUndefined()) {
                        _errMsg = (_errMsg + (((": " : stdgo.GoString) + (_cause.call(("toString" : stdgo.GoString)).string() : stdgo.GoString)?.__copy__() : stdgo.GoString))?.__copy__() : stdgo.GoString);
                    } else if (_cause.type() == ((4 : stdgo._internal.syscall.js.Js_Type_.Type_))) {
                        _errMsg = (_errMsg + (((": " : stdgo.GoString) + (_cause.string() : stdgo.GoString)?.__copy__() : stdgo.GoString))?.__copy__() : stdgo.GoString);
                    };
                };
            };
            _errCh.__send__(stdgo._internal.fmt.Fmt_errorf.errorf(("net/http: fetch() failed: %s" : stdgo.GoString), stdgo.Go.toInterface(_errMsg)));
            return (null : stdgo.AnyInterface);
        })?.__copy__();
        _fetchPromise.call(("then" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_success)), stdgo.Go.toInterface(stdgo.Go.asInterface(_failure)));
        {
            {
                var __select__ = true;
                while (__select__) {
                    if (_req.context().done() != null && _req.context().done().__isGet__()) {
                        __select__ = false;
                        {
                            _req.context().done().__get__();
                            {
                                if (!_ac.isUndefined()) {
                                    _ac.call(("abort" : stdgo.GoString));
                                };
                                return { _0 : null, _1 : _req.context().err() };
                            };
                        };
                    } else if (_respCh != null && _respCh.__isGet__()) {
                        __select__ = false;
                        {
                            var _resp = _respCh.__get__();
                            {
                                return { _0 : _resp, _1 : (null : stdgo.Error) };
                            };
                        };
                    } else if (_errCh != null && _errCh.__isGet__()) {
                        __select__ = false;
                        {
                            var _err = _errCh.__get__();
                            {
                                return { _0 : null, _1 : _err };
                            };
                        };
                    };
                    #if !js Sys.sleep(0.01) #else null #end;
                    stdgo._internal.internal.Async.tick();
                };
            };
            return { _0 : (null : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>), _1 : (null : stdgo.Error) };
        };
    }
}
