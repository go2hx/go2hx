package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_conn_asInterface) class T_conn_static_extension {
    @:keep
    @:tdfield
    static public function _serve( _c:stdgo.Ref<stdgo._internal.net.http.Http_T_conn.T_conn>, _ctx:stdgo._internal.context.Context_Context.Context):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_T_conn.T_conn> = _c;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            {
                var _ra = ((@:checkr _c ?? throw "null pointer dereference")._rwc.remoteAddr() : stdgo._internal.net.Net_Addr.Addr);
                if (_ra != null) {
                    (@:checkr _c ?? throw "null pointer dereference")._remoteAddr = (_ra.string() : stdgo.GoString)?.__copy__();
                };
            };
            _ctx = stdgo._internal.context.Context_withValue.withValue(_ctx, stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.net.http.Http_localAddrContextKey.localAddrContextKey)), stdgo.Go.toInterface((@:checkr _c ?? throw "null pointer dereference")._rwc.localAddr()));
            var _inFlightResponse:stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response> = (null : stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response>);
            {
                __deferstack__.unshift({ ran : false, f : () -> ({
                    var a = function():Void {
                        {
                            var _err = ({
                                final r = stdgo.Go.recover_exception;
                                stdgo.Go.recover_exception = null;
                                r;
                            } : stdgo.AnyInterface);
                            if (((_err != null) && (_err != stdgo.Go.toInterface(stdgo._internal.net.http.Http_errAbortHandler.errAbortHandler)) : Bool)) {
                                {};
                                var _buf = (new stdgo.Slice<stdgo.GoUInt8>((65536 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                                _buf = (_buf.__slice__(0, stdgo._internal.runtime.Runtime_stack.stack(_buf, false)) : stdgo.Slice<stdgo.GoUInt8>);
                                @:check2r (@:checkr _c ?? throw "null pointer dereference")._server._logf(("http: panic serving %v: %v\n%s" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _c ?? throw "null pointer dereference")._remoteAddr), _err, stdgo.Go.toInterface(_buf));
                            };
                        };
                        if ((_inFlightResponse != null && ((_inFlightResponse : Dynamic).__nil__ == null || !(_inFlightResponse : Dynamic).__nil__))) {
                            (@:checkr _inFlightResponse ?? throw "null pointer dereference")._cancelCtx();
                        };
                        if (!@:check2r _c._hijacked()) {
                            if ((_inFlightResponse != null && ((_inFlightResponse : Dynamic).__nil__ == null || !(_inFlightResponse : Dynamic).__nil__))) {
                                @:check2r (@:checkr (@:checkr _inFlightResponse ?? throw "null pointer dereference")._conn ?? throw "null pointer dereference")._r._abortPendingRead();
                                (@:checkr _inFlightResponse ?? throw "null pointer dereference")._reqBody.close();
                            };
                            @:check2r _c._close();
                            @:check2r _c._setState((@:checkr _c ?? throw "null pointer dereference")._rwc, (4 : stdgo._internal.net.http.Http_ConnState.ConnState), true);
                        };
                    };
                    a();
                }) });
            };
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _c ?? throw "null pointer dereference")._rwc) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>), _1 : false };
                }, _tlsConn = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    var _tlsTO = (@:check2r (@:checkr _c ?? throw "null pointer dereference")._server._tlsHandshakeTimeout() : stdgo._internal.time.Time_Duration.Duration);
                    if ((_tlsTO > (0i64 : stdgo._internal.time.Time_Duration.Duration) : Bool)) {
                        var _dl = (stdgo._internal.time.Time_now.now().add(_tlsTO)?.__copy__() : stdgo._internal.time.Time_Time.Time);
                        (@:checkr _c ?? throw "null pointer dereference")._rwc.setReadDeadline(_dl?.__copy__());
                        (@:checkr _c ?? throw "null pointer dereference")._rwc.setWriteDeadline(_dl?.__copy__());
                    };
                    {
                        var _err = (@:check2r _tlsConn.handshakeContext(_ctx) : stdgo.Error);
                        if (_err != null) {
                            {
                                var __tmp__ = try {
                                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo._internal.crypto.tls.Tls_RecordHeaderError.RecordHeaderError)) : stdgo._internal.crypto.tls.Tls_RecordHeaderError.RecordHeaderError), _1 : true };
                                } catch(_) {
                                    { _0 : ({} : stdgo._internal.crypto.tls.Tls_RecordHeaderError.RecordHeaderError), _1 : false };
                                }, _re = __tmp__._0, _ok = __tmp__._1;
                                if (((_ok && _re.conn != null : Bool) && stdgo._internal.net.http.Http__tlsRecordHeaderLooksLikeHTTP._tlsRecordHeaderLooksLikeHTTP(_re.recordHeader?.__copy__()) : Bool)) {
                                    stdgo._internal.io.Io_writeString.writeString(_re.conn, ("HTTP/1.0 400 Bad Request\r\n\r\nClient sent an HTTP request to an HTTPS server.\n" : stdgo.GoString));
                                    _re.conn.close();
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
                            @:check2r (@:checkr _c ?? throw "null pointer dereference")._server._logf(("http: TLS handshake error from %s: %v" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _c ?? throw "null pointer dereference")._rwc.remoteAddr()), stdgo.Go.toInterface(_err));
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
                    if ((_tlsTO > (0i64 : stdgo._internal.time.Time_Duration.Duration) : Bool)) {
                        (@:checkr _c ?? throw "null pointer dereference")._rwc.setReadDeadline((new stdgo._internal.time.Time_Time.Time() : stdgo._internal.time.Time_Time.Time));
                        (@:checkr _c ?? throw "null pointer dereference")._rwc.setWriteDeadline((new stdgo._internal.time.Time_Time.Time() : stdgo._internal.time.Time_Time.Time));
                    };
                    (@:checkr _c ?? throw "null pointer dereference")._tlsState = (stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState>);
                    {
                        var __tmp__ = @:check2r _tlsConn.connectionState()?.__copy__();
                        var x = ((@:checkr _c ?? throw "null pointer dereference")._tlsState : stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState);
                        x.version = __tmp__.version;
                        x.handshakeComplete = __tmp__.handshakeComplete;
                        x.didResume = __tmp__.didResume;
                        x.cipherSuite = __tmp__.cipherSuite;
                        x.negotiatedProtocol = __tmp__.negotiatedProtocol;
                        x.negotiatedProtocolIsMutual = __tmp__.negotiatedProtocolIsMutual;
                        x.serverName = __tmp__.serverName;
                        x.peerCertificates = __tmp__.peerCertificates;
                        x.verifiedChains = __tmp__.verifiedChains;
                        x.signedCertificateTimestamps = __tmp__.signedCertificateTimestamps;
                        x.oCSPResponse = __tmp__.oCSPResponse;
                        x.tLSUnique = __tmp__.tLSUnique;
                        x._ekm = __tmp__._ekm;
                    };
                    {
                        var _proto = ((@:checkr (@:checkr _c ?? throw "null pointer dereference")._tlsState ?? throw "null pointer dereference").negotiatedProtocol?.__copy__() : stdgo.GoString);
                        if (stdgo._internal.net.http.Http__validNextProto._validNextProto(_proto?.__copy__())) {
                            {
                                var _fn = ((@:checkr (@:checkr _c ?? throw "null pointer dereference")._server ?? throw "null pointer dereference").tLSNextProto[_proto] ?? null);
                                if (_fn != null) {
                                    var _h = (new stdgo._internal.net.http.Http_T_initALPNRequest.T_initALPNRequest(_ctx, _tlsConn, (new stdgo._internal.net.http.Http_T_serverHandler.T_serverHandler((@:checkr _c ?? throw "null pointer dereference")._server) : stdgo._internal.net.http.Http_T_serverHandler.T_serverHandler)) : stdgo._internal.net.http.Http_T_initALPNRequest.T_initALPNRequest);
                                    @:check2r _c._setState((@:checkr _c ?? throw "null pointer dereference")._rwc, (1 : stdgo._internal.net.http.Http_ConnState.ConnState), false);
                                    _fn((@:checkr _c ?? throw "null pointer dereference")._server, _tlsConn, stdgo.Go.asInterface(_h));
                                };
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
                };
            };
            var __tmp__ = stdgo._internal.context.Context_withCancel.withCancel(_ctx), _ctx:stdgo._internal.context.Context_Context.Context = __tmp__._0, _cancelCtx:stdgo._internal.context.Context_CancelFunc.CancelFunc = __tmp__._1;
            (@:checkr _c ?? throw "null pointer dereference")._cancelCtx = _cancelCtx;
            {
                final __f__ = _cancelCtx;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            (@:checkr _c ?? throw "null pointer dereference")._r = (stdgo.Go.setRef(({ _conn : _c } : stdgo._internal.net.http.Http_T_connReader.T_connReader)) : stdgo.Ref<stdgo._internal.net.http.Http_T_connReader.T_connReader>);
            (@:checkr _c ?? throw "null pointer dereference")._bufr = stdgo._internal.net.http.Http__newBufioReader._newBufioReader(stdgo.Go.asInterface((@:checkr _c ?? throw "null pointer dereference")._r));
            (@:checkr _c ?? throw "null pointer dereference")._bufw = stdgo._internal.net.http.Http__newBufioWriterSize._newBufioWriterSize(stdgo.Go.asInterface((new stdgo._internal.net.http.Http_T_checkConnErrorWriter.T_checkConnErrorWriter(_c) : stdgo._internal.net.http.Http_T_checkConnErrorWriter.T_checkConnErrorWriter)), (4096 : stdgo.GoInt));
            while (true) {
                var __tmp__ = @:check2r _c._readRequest(_ctx), _w:stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if ((@:checkr (@:checkr _c ?? throw "null pointer dereference")._r ?? throw "null pointer dereference")._remain != (@:check2r (@:checkr _c ?? throw "null pointer dereference")._server._initialReadLimitSize())) {
                    @:check2r _c._setState((@:checkr _c ?? throw "null pointer dereference")._rwc, (1 : stdgo._internal.net.http.Http_ConnState.ConnState), true);
                };
                if (_err != null) {
                    {};
                    if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.net.http.Http__errTooLarge._errTooLarge))) {
                        {};
                        stdgo._internal.fmt.Fmt_fprintf.fprintf((@:checkr _c ?? throw "null pointer dereference")._rwc, ("HTTP/1.1 431 Request Header Fields Too Large\r\nContent-Type: text/plain; charset=utf-8\r\nConnection: close\r\n\r\n431 Request Header Fields Too Large" : stdgo.GoString));
                        @:check2r _c._closeWriteAndWait();
                        {
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return;
                        };
                    } else if (stdgo._internal.net.http.Http__isUnsupportedTEError._isUnsupportedTEError(_err)) {
                        var _code = (501 : stdgo.GoInt);
                        stdgo._internal.fmt.Fmt_fprintf.fprintf((@:checkr _c ?? throw "null pointer dereference")._rwc, ("HTTP/1.1 %d %s%sUnsupported transfer encoding" : stdgo.GoString), stdgo.Go.toInterface(_code), stdgo.Go.toInterface(stdgo._internal.net.http.Http_statusText.statusText(_code)), stdgo.Go.toInterface(("\r\nContent-Type: text/plain; charset=utf-8\r\nConnection: close\r\n\r\n" : stdgo.GoString)));
                        {
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return;
                        };
                    } else if (stdgo._internal.net.http.Http__isCommonNetReadError._isCommonNetReadError(_err)) {
                        {
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return;
                        };
                    } else {
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo._internal.net.http.Http_T_statusError.T_statusError)) : stdgo._internal.net.http.Http_T_statusError.T_statusError), _1 : true };
                            } catch(_) {
                                { _0 : ({} : stdgo._internal.net.http.Http_T_statusError.T_statusError), _1 : false };
                            }, _v = __tmp__._0, _ok = __tmp__._1;
                            if (_ok) {
                                stdgo._internal.fmt.Fmt_fprintf.fprintf((@:checkr _c ?? throw "null pointer dereference")._rwc, ("HTTP/1.1 %d %s: %s%s%d %s: %s" : stdgo.GoString), stdgo.Go.toInterface(_v._code), stdgo.Go.toInterface(stdgo._internal.net.http.Http_statusText.statusText(_v._code)), stdgo.Go.toInterface(_v._text), stdgo.Go.toInterface(("\r\nContent-Type: text/plain; charset=utf-8\r\nConnection: close\r\n\r\n" : stdgo.GoString)), stdgo.Go.toInterface(_v._code), stdgo.Go.toInterface(stdgo._internal.net.http.Http_statusText.statusText(_v._code)), stdgo.Go.toInterface(_v._text));
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
                        var _publicErr = ("400 Bad Request" : stdgo.GoString);
                        stdgo._internal.fmt.Fmt_fprintf.fprintf((@:checkr _c ?? throw "null pointer dereference")._rwc, (((("HTTP/1.1 " : stdgo.GoString) + _publicErr?.__copy__() : stdgo.GoString) + ("\r\nContent-Type: text/plain; charset=utf-8\r\nConnection: close\r\n\r\n" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _publicErr?.__copy__() : stdgo.GoString)?.__copy__());
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
                var _req = (@:checkr _w ?? throw "null pointer dereference")._req;
                if (@:check2r _req._expectsContinue()) {
                    if ((@:check2r _req.protoAtLeast((1 : stdgo.GoInt), (1 : stdgo.GoInt)) && ((@:checkr _req ?? throw "null pointer dereference").contentLength != (0i64 : stdgo.GoInt64)) : Bool)) {
                        (@:checkr _req ?? throw "null pointer dereference").body = stdgo.Go.asInterface((stdgo.Go.setRef(({ _readCloser : (@:checkr _req ?? throw "null pointer dereference").body, _resp : _w } : stdgo._internal.net.http.Http_T_expectContinueReader.T_expectContinueReader)) : stdgo.Ref<stdgo._internal.net.http.Http_T_expectContinueReader.T_expectContinueReader>));
                        @:check2 (@:checkr _w ?? throw "null pointer dereference")._canWriteContinue.store(true);
                    };
                } else if ((@:checkr _req ?? throw "null pointer dereference").header._get(("Expect" : stdgo.GoString)) != (stdgo.Go.str())) {
                    @:check2r _w._sendExpectationFailed();
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return;
                    };
                };
                @:check2 (@:checkr _c ?? throw "null pointer dereference")._curReq.store(_w);
                if (stdgo._internal.net.http.Http__requestBodyRemains._requestBodyRemains((@:checkr _req ?? throw "null pointer dereference").body)) {
                    stdgo._internal.net.http.Http__registerOnHitEOF._registerOnHitEOF((@:checkr _req ?? throw "null pointer dereference").body, @:check2r (@:checkr (@:checkr _w ?? throw "null pointer dereference")._conn ?? throw "null pointer dereference")._r._startBackgroundRead);
                } else {
                    @:check2r (@:checkr (@:checkr _w ?? throw "null pointer dereference")._conn ?? throw "null pointer dereference")._r._startBackgroundRead();
                };
                _inFlightResponse = _w;
                (new stdgo._internal.net.http.Http_T_serverHandler.T_serverHandler((@:checkr _c ?? throw "null pointer dereference")._server) : stdgo._internal.net.http.Http_T_serverHandler.T_serverHandler).serveHTTP(stdgo.Go.asInterface(_w), (@:checkr _w ?? throw "null pointer dereference")._req);
                _inFlightResponse = null;
                (@:checkr _w ?? throw "null pointer dereference")._cancelCtx();
                if (@:check2r _c._hijacked()) {
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return;
                    };
                };
                @:check2r _w._finishRequest();
                (@:checkr _c ?? throw "null pointer dereference")._rwc.setWriteDeadline((new stdgo._internal.time.Time_Time.Time() : stdgo._internal.time.Time_Time.Time));
                if (!@:check2r _w._shouldReuseConnection()) {
                    if (((@:checkr _w ?? throw "null pointer dereference")._requestBodyLimitHit || @:check2r _w._closedRequestBodyEarly() : Bool)) {
                        @:check2r _c._closeWriteAndWait();
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
                @:check2r _c._setState((@:checkr _c ?? throw "null pointer dereference")._rwc, (2 : stdgo._internal.net.http.Http_ConnState.ConnState), true);
                @:check2 (@:checkr _c ?? throw "null pointer dereference")._curReq.store(null);
                if (!@:check2r (@:checkr (@:checkr _w ?? throw "null pointer dereference")._conn ?? throw "null pointer dereference")._server._doKeepAlives()) {
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return;
                    };
                };
                {
                    var _d = (@:check2r (@:checkr _c ?? throw "null pointer dereference")._server._idleTimeout() : stdgo._internal.time.Time_Duration.Duration);
                    if (_d != ((0i64 : stdgo._internal.time.Time_Duration.Duration))) {
                        (@:checkr _c ?? throw "null pointer dereference")._rwc.setReadDeadline(stdgo._internal.time.Time_now.now().add(_d)?.__copy__());
                    } else {
                        (@:checkr _c ?? throw "null pointer dereference")._rwc.setReadDeadline((new stdgo._internal.time.Time_Time.Time() : stdgo._internal.time.Time_Time.Time));
                    };
                };
                {
                    var __tmp__ = @:check2r (@:checkr _c ?? throw "null pointer dereference")._bufr.peek((4 : stdgo.GoInt)), __34981:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
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
                (@:checkr _c ?? throw "null pointer dereference")._rwc.setReadDeadline((new stdgo._internal.time.Time_Time.Time() : stdgo._internal.time.Time_Time.Time));
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
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _getState( _c:stdgo.Ref<stdgo._internal.net.http.Http_T_conn.T_conn>):{ var _0 : stdgo._internal.net.http.Http_ConnState.ConnState; var _1 : stdgo.GoInt64; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_T_conn.T_conn> = _c;
        var _state = ((0 : stdgo.GoInt) : stdgo._internal.net.http.Http_ConnState.ConnState), _unixSec = (0 : stdgo.GoInt64);
        var _packedState = (@:check2 (@:checkr _c ?? throw "null pointer dereference")._curState.load() : stdgo.GoUInt64);
        return {
            final __tmp__:{ var _0 : stdgo._internal.net.http.Http_ConnState.ConnState; var _1 : stdgo.GoInt64; } = { _0 : ((_packedState & (255i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo._internal.net.http.Http_ConnState.ConnState), _1 : ((_packedState >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt64) };
            _state = __tmp__._0;
            _unixSec = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _setState( _c:stdgo.Ref<stdgo._internal.net.http.Http_T_conn.T_conn>, _nc:stdgo._internal.net.Net_Conn.Conn, _state:stdgo._internal.net.http.Http_ConnState.ConnState, _runHook:Bool):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_T_conn.T_conn> = _c;
        var _srv = (@:checkr _c ?? throw "null pointer dereference")._server;
        {
            final __value__ = _state;
            if (__value__ == ((0 : stdgo._internal.net.http.Http_ConnState.ConnState))) {
                @:check2r _srv._trackConn(_c, true);
            } else if (__value__ == ((3 : stdgo._internal.net.http.Http_ConnState.ConnState)) || __value__ == ((4 : stdgo._internal.net.http.Http_ConnState.ConnState))) {
                @:check2r _srv._trackConn(_c, false);
            };
        };
        if (((_state > (255 : stdgo._internal.net.http.Http_ConnState.ConnState) : Bool) || (_state < (0 : stdgo._internal.net.http.Http_ConnState.ConnState) : Bool) : Bool)) {
            throw stdgo.Go.toInterface(("internal error" : stdgo.GoString));
        };
        var _packedState = (((stdgo._internal.time.Time_now.now().unix() << (8i64 : stdgo.GoUInt64) : stdgo.GoInt64) : stdgo.GoUInt64) | (_state : stdgo.GoUInt64) : stdgo.GoUInt64);
        @:check2 (@:checkr _c ?? throw "null pointer dereference")._curState.store(_packedState);
        if (!_runHook) {
            return;
        };
        {
            var _hook = ((@:checkr _srv ?? throw "null pointer dereference").connState : (stdgo._internal.net.Net_Conn.Conn, stdgo._internal.net.http.Http_ConnState.ConnState) -> Void);
            if (_hook != null) {
                _hook(_nc, _state);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _closeWriteAndWait( _c:stdgo.Ref<stdgo._internal.net.http.Http_T_conn.T_conn>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_T_conn.T_conn> = _c;
        @:check2r _c._finalFlush();
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _c ?? throw "null pointer dereference")._rwc) : stdgo._internal.net.http.Http_T_closeWriter.T_closeWriter)) : stdgo._internal.net.http.Http_T_closeWriter.T_closeWriter), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.net.http.Http_T_closeWriter.T_closeWriter), _1 : false };
            }, _tcp = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                _tcp.closeWrite();
            };
        };
        stdgo._internal.time.Time_sleep.sleep((500000000i64 : stdgo._internal.time.Time_Duration.Duration));
    }
    @:keep
    @:tdfield
    static public function _close( _c:stdgo.Ref<stdgo._internal.net.http.Http_T_conn.T_conn>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_T_conn.T_conn> = _c;
        @:check2r _c._finalFlush();
        (@:checkr _c ?? throw "null pointer dereference")._rwc.close();
    }
    @:keep
    @:tdfield
    static public function _finalFlush( _c:stdgo.Ref<stdgo._internal.net.http.Http_T_conn.T_conn>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_T_conn.T_conn> = _c;
        if (((@:checkr _c ?? throw "null pointer dereference")._bufr != null && (((@:checkr _c ?? throw "null pointer dereference")._bufr : Dynamic).__nil__ == null || !((@:checkr _c ?? throw "null pointer dereference")._bufr : Dynamic).__nil__))) {
            stdgo._internal.net.http.Http__putBufioReader._putBufioReader((@:checkr _c ?? throw "null pointer dereference")._bufr);
            (@:checkr _c ?? throw "null pointer dereference")._bufr = null;
        };
        if (((@:checkr _c ?? throw "null pointer dereference")._bufw != null && (((@:checkr _c ?? throw "null pointer dereference")._bufw : Dynamic).__nil__ == null || !((@:checkr _c ?? throw "null pointer dereference")._bufw : Dynamic).__nil__))) {
            @:check2r (@:checkr _c ?? throw "null pointer dereference")._bufw.flush();
            stdgo._internal.net.http.Http__putBufioWriter._putBufioWriter((@:checkr _c ?? throw "null pointer dereference")._bufw);
            (@:checkr _c ?? throw "null pointer dereference")._bufw = null;
        };
    }
    @:keep
    @:tdfield
    static public function _readRequest( _c:stdgo.Ref<stdgo._internal.net.http.Http_T_conn.T_conn>, _ctx:stdgo._internal.context.Context_Context.Context):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response>; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_T_conn.T_conn> = _c;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _w = (null : stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response>), _err = (null : stdgo.Error);
        try {
            if (@:check2r _c._hijacked()) {
                return {
                    final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo._internal.net.http.Http_errHijacked.errHijacked };
                    _w = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            var __0:stdgo._internal.time.Time_Time.Time = ({} : stdgo._internal.time.Time_Time.Time), __1:stdgo._internal.time.Time_Time.Time = ({} : stdgo._internal.time.Time_Time.Time);
var _hdrDeadline = __1, _wholeReqDeadline = __0;
            var _t0 = (stdgo._internal.time.Time_now.now()?.__copy__() : stdgo._internal.time.Time_Time.Time);
            {
                var _d = (@:check2r (@:checkr _c ?? throw "null pointer dereference")._server._readHeaderTimeout() : stdgo._internal.time.Time_Duration.Duration);
                if ((_d > (0i64 : stdgo._internal.time.Time_Duration.Duration) : Bool)) {
                    _hdrDeadline = _t0.add(_d)?.__copy__();
                };
            };
            {
                var _d = ((@:checkr (@:checkr _c ?? throw "null pointer dereference")._server ?? throw "null pointer dereference").readTimeout : stdgo._internal.time.Time_Duration.Duration);
                if ((_d > (0i64 : stdgo._internal.time.Time_Duration.Duration) : Bool)) {
                    _wholeReqDeadline = _t0.add(_d)?.__copy__();
                };
            };
            (@:checkr _c ?? throw "null pointer dereference")._rwc.setReadDeadline(_hdrDeadline?.__copy__());
            {
                var _d = ((@:checkr (@:checkr _c ?? throw "null pointer dereference")._server ?? throw "null pointer dereference").writeTimeout : stdgo._internal.time.Time_Duration.Duration);
                if ((_d > (0i64 : stdgo._internal.time.Time_Duration.Duration) : Bool)) {
                    {
                        __deferstack__.unshift({ ran : false, f : () -> ({
                            var a = function():Void {
                                (@:checkr _c ?? throw "null pointer dereference")._rwc.setWriteDeadline(stdgo._internal.time.Time_now.now().add(_d)?.__copy__());
                            };
                            a();
                        }) });
                    };
                };
            };
            @:check2r (@:checkr _c ?? throw "null pointer dereference")._r._setReadLimit(@:check2r (@:checkr _c ?? throw "null pointer dereference")._server._initialReadLimitSize());
            if ((@:checkr _c ?? throw "null pointer dereference")._lastMethod == (("POST" : stdgo.GoString))) {
                var __tmp__ = @:check2r (@:checkr _c ?? throw "null pointer dereference")._bufr.peek((4 : stdgo.GoInt)), _peek:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, __34429:stdgo.Error = __tmp__._1;
                @:check2r (@:checkr _c ?? throw "null pointer dereference")._bufr.discard(stdgo._internal.net.http.Http__numLeadingCRorLF._numLeadingCRorLF(_peek));
            };
            var __tmp__ = stdgo._internal.net.http.Http__readRequest._readRequest((@:checkr _c ?? throw "null pointer dereference")._bufr), _req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                if (@:check2r (@:checkr _c ?? throw "null pointer dereference")._r._hitReadLimit()) {
                    {
                        final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response>; var _1 : stdgo.Error; } = {
                            final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo._internal.net.http.Http__errTooLarge._errTooLarge };
                            _w = __tmp__._0;
                            _err = __tmp__._1;
                            __tmp__;
                        };
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
                {
                    final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response>; var _1 : stdgo.Error; } = {
                        final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                        _w = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            if (!stdgo._internal.net.http.Http__http1ServerSupportsRequest._http1ServerSupportsRequest(_req)) {
                {
                    final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response>; var _1 : stdgo.Error; } = {
                        final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((new stdgo._internal.net.http.Http_T_statusError.T_statusError((505 : stdgo.GoInt), ("unsupported protocol version" : stdgo.GoString)) : stdgo._internal.net.http.Http_T_statusError.T_statusError)) };
                        _w = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            (@:checkr _c ?? throw "null pointer dereference")._lastMethod = (@:checkr _req ?? throw "null pointer dereference").method?.__copy__();
            @:check2r (@:checkr _c ?? throw "null pointer dereference")._r._setInfiniteReadLimit();
            var __tmp__ = ((@:checkr _req ?? throw "null pointer dereference").header != null && (@:checkr _req ?? throw "null pointer dereference").header.exists(("Host" : stdgo.GoString)) ? { _0 : (@:checkr _req ?? throw "null pointer dereference").header[("Host" : stdgo.GoString)], _1 : true } : { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : false }), _hosts:stdgo.Slice<stdgo.GoString> = __tmp__._0, _haveHost:Bool = __tmp__._1;
            var _isH2Upgrade = (@:check2r _req._isH2Upgrade() : Bool);
            if ((((@:check2r _req.protoAtLeast((1 : stdgo.GoInt), (1 : stdgo.GoInt)) && ((!_haveHost || (_hosts.length == (0 : stdgo.GoInt)) : Bool)) : Bool) && !_isH2Upgrade : Bool) && ((@:checkr _req ?? throw "null pointer dereference").method != ("CONNECT" : stdgo.GoString)) : Bool)) {
                {
                    final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response>; var _1 : stdgo.Error; } = {
                        final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo._internal.net.http.Http__badRequestError._badRequestError(("missing required Host header" : stdgo.GoString)) };
                        _w = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            if (((_hosts.length == (1 : stdgo.GoInt)) && !_internal.golang_dot_org.x.net.http.httpguts.Httpguts_validHostHeader.validHostHeader(_hosts[(0 : stdgo.GoInt)]?.__copy__()) : Bool)) {
                {
                    final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response>; var _1 : stdgo.Error; } = {
                        final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo._internal.net.http.Http__badRequestError._badRequestError(("malformed Host header" : stdgo.GoString)) };
                        _w = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            for (_k => _vv in (@:checkr _req ?? throw "null pointer dereference").header) {
                if (!_internal.golang_dot_org.x.net.http.httpguts.Httpguts_validHeaderFieldName.validHeaderFieldName(_k?.__copy__())) {
                    {
                        final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response>; var _1 : stdgo.Error; } = {
                            final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo._internal.net.http.Http__badRequestError._badRequestError(("invalid header name" : stdgo.GoString)) };
                            _w = __tmp__._0;
                            _err = __tmp__._1;
                            __tmp__;
                        };
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
                for (__34485 => _v in _vv) {
                    if (!_internal.golang_dot_org.x.net.http.httpguts.Httpguts_validHeaderFieldValue.validHeaderFieldValue(_v?.__copy__())) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo._internal.net.http.Http__badRequestError._badRequestError(("invalid header value" : stdgo.GoString)) };
                                _w = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                    };
                };
            };
            if ((@:checkr _req ?? throw "null pointer dereference").header != null) (@:checkr _req ?? throw "null pointer dereference").header.remove(("Host" : stdgo.GoString));
            var __tmp__ = stdgo._internal.context.Context_withCancel.withCancel(_ctx), _ctx:stdgo._internal.context.Context_Context.Context = __tmp__._0, _cancelCtx:stdgo._internal.context.Context_CancelFunc.CancelFunc = __tmp__._1;
            (@:checkr _req ?? throw "null pointer dereference")._ctx = _ctx;
            (@:checkr _req ?? throw "null pointer dereference").remoteAddr = (@:checkr _c ?? throw "null pointer dereference")._remoteAddr?.__copy__();
            (@:checkr _req ?? throw "null pointer dereference").tLS = (@:checkr _c ?? throw "null pointer dereference")._tlsState;
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _req ?? throw "null pointer dereference").body) : stdgo.Ref<stdgo._internal.net.http.Http_T_body.T_body>)) : stdgo.Ref<stdgo._internal.net.http.Http_T_body.T_body>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.net.http.Http_T_body.T_body>), _1 : false };
                }, _body = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    (@:checkr _body ?? throw "null pointer dereference")._doEarlyClose = true;
                };
            };
            if (!_hdrDeadline.equal(_wholeReqDeadline?.__copy__())) {
                (@:checkr _c ?? throw "null pointer dereference")._rwc.setReadDeadline(_wholeReqDeadline?.__copy__());
            };
            _w = (stdgo.Go.setRef(({ _conn : _c, _cancelCtx : _cancelCtx, _req : _req, _reqBody : (@:checkr _req ?? throw "null pointer dereference").body, _handlerHeader : (({
                final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
                x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.http.Http_Header.Header), _contentLength : (-1i64 : stdgo.GoInt64), _closeNotifyCh : (new stdgo.Chan<Bool>((1 : stdgo.GoInt).toBasic(), () -> false) : stdgo.Chan<Bool>), _wants10KeepAlive : @:check2r _req._wantsHttp10KeepAlive(), _wantsClose : @:check2r _req._wantsClose() } : stdgo._internal.net.http.Http_T_response.T_response)) : stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response>);
            if (_isH2Upgrade) {
                (@:checkr _w ?? throw "null pointer dereference")._closeAfterReply = true;
            };
            (@:checkr _w ?? throw "null pointer dereference")._cw._res = _w;
            (@:checkr _w ?? throw "null pointer dereference")._w = stdgo._internal.net.http.Http__newBufioWriterSize._newBufioWriterSize(stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _w ?? throw "null pointer dereference")._cw) : stdgo.Ref<stdgo._internal.net.http.Http_T_chunkWriter.T_chunkWriter>)), (2048 : stdgo.GoInt));
            {
                final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response>; var _1 : stdgo.Error; } = {
                    final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response>; var _1 : stdgo.Error; } = { _0 : _w, _1 : (null : stdgo.Error) };
                    _w = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
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
                return { _0 : _w, _1 : _err };
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
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return { _0 : _w, _1 : _err };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _hijackLocked( _c:stdgo.Ref<stdgo._internal.net.http.Http_T_conn.T_conn>):{ var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Ref<stdgo._internal.bufio.Bufio_ReadWriter.ReadWriter>; var _2 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_T_conn.T_conn> = _c;
        var _rwc = (null : stdgo._internal.net.Net_Conn.Conn), _buf = (null : stdgo.Ref<stdgo._internal.bufio.Bufio_ReadWriter.ReadWriter>), _err = (null : stdgo.Error);
        if ((@:checkr _c ?? throw "null pointer dereference")._hijackedv) {
            return {
                final __tmp__:{ var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Ref<stdgo._internal.bufio.Bufio_ReadWriter.ReadWriter>; var _2 : stdgo.Error; } = { _0 : (null : stdgo._internal.net.Net_Conn.Conn), _1 : null, _2 : stdgo._internal.net.http.Http_errHijacked.errHijacked };
                _rwc = __tmp__._0;
                _buf = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        @:check2r (@:checkr _c ?? throw "null pointer dereference")._r._abortPendingRead();
        (@:checkr _c ?? throw "null pointer dereference")._hijackedv = true;
        _rwc = (@:checkr _c ?? throw "null pointer dereference")._rwc;
        _rwc.setDeadline((new stdgo._internal.time.Time_Time.Time() : stdgo._internal.time.Time_Time.Time));
        _buf = stdgo._internal.bufio.Bufio_newReadWriter.newReadWriter((@:checkr _c ?? throw "null pointer dereference")._bufr, stdgo._internal.bufio.Bufio_newWriter.newWriter(_rwc));
        if ((@:checkr (@:checkr _c ?? throw "null pointer dereference")._r ?? throw "null pointer dereference")._hasByte) {
            {
                var __tmp__ = @:check2r (@:checkr _c ?? throw "null pointer dereference")._bufr.peek((@:check2r (@:checkr _c ?? throw "null pointer dereference")._bufr.buffered() + (1 : stdgo.GoInt) : stdgo.GoInt)), __34321:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Ref<stdgo._internal.bufio.Bufio_ReadWriter.ReadWriter>; var _2 : stdgo.Error; } = { _0 : (null : stdgo._internal.net.Net_Conn.Conn), _1 : null, _2 : stdgo._internal.fmt.Fmt_errorf.errorf(("unexpected Peek failure reading buffered byte: %v" : stdgo.GoString), stdgo.Go.toInterface(_err)) };
                        _rwc = __tmp__._0;
                        _buf = __tmp__._1;
                        _err = __tmp__._2;
                        __tmp__;
                    };
                };
            };
        };
        @:check2r _c._setState(_rwc, (3 : stdgo._internal.net.http.Http_ConnState.ConnState), true);
        return { _0 : _rwc, _1 : _buf, _2 : _err };
    }
    @:keep
    @:tdfield
    static public function _hijacked( _c:stdgo.Ref<stdgo._internal.net.http.Http_T_conn.T_conn>):Bool {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_T_conn.T_conn> = _c;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            @:check2 (@:checkr _c ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = @:check2 (@:checkr _c ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            {
                final __ret__:Bool = (@:checkr _c ?? throw "null pointer dereference")._hijackedv;
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
                return false;
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
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return false;
            };
        };
    }
}
