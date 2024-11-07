package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_conn_asInterface) class T_conn_static_extension {
    @:keep
    static public function _serve( _c:stdgo.Ref<stdgo._internal.net.http.Http_T_conn.T_conn>, _ctx:stdgo._internal.context.Context_Context.Context):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_T_conn.T_conn> = _c;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {
                var _ra = (_c._rwc.remoteAddr() : stdgo._internal.net.Net_Addr.Addr);
                if (_ra != null) {
                    _c._remoteAddr = (_ra.string() : stdgo.GoString)?.__copy__();
                };
            };
            _ctx = stdgo._internal.context.Context_withValue.withValue(_ctx, stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.net.http.Http_localAddrContextKey.localAddrContextKey)), stdgo.Go.toInterface(_c._rwc.localAddr()));
            var _inFlightResponse:stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response> = (null : stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response>);
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
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
                                _c._server._logf(("http: panic serving %v: %v\n%s" : stdgo.GoString), stdgo.Go.toInterface(_c._remoteAddr), _err, stdgo.Go.toInterface(_buf));
                            };
                        };
                        if ((_inFlightResponse != null && ((_inFlightResponse : Dynamic).__nil__ == null || !(_inFlightResponse : Dynamic).__nil__))) {
                            _inFlightResponse._cancelCtx();
                        };
                        if (!_c._hijacked()) {
                            if ((_inFlightResponse != null && ((_inFlightResponse : Dynamic).__nil__ == null || !(_inFlightResponse : Dynamic).__nil__))) {
                                _inFlightResponse._conn._r._abortPendingRead();
                                _inFlightResponse._reqBody.close();
                            };
                            _c._close();
                            _c._setState(_c._rwc, (4 : stdgo._internal.net.http.Http_ConnState.ConnState), true);
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
            });
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_c._rwc) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>), _1 : false };
                }, _tlsConn = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    var _tlsTO = (_c._server._tlsHandshakeTimeout() : stdgo._internal.time.Time_Duration.Duration);
                    if ((_tlsTO > (0i64 : stdgo._internal.time.Time_Duration.Duration) : Bool)) {
                        var _dl = (stdgo._internal.time.Time_now.now().add(_tlsTO)?.__copy__() : stdgo._internal.time.Time_Time.Time);
                        _c._rwc.setReadDeadline(_dl?.__copy__());
                        _c._rwc.setWriteDeadline(_dl?.__copy__());
                    };
                    {
                        var _err = (_tlsConn.handshakeContext(_ctx) : stdgo.Error);
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
                                            defer();
                                        };
                                        return;
                                    };
                                };
                            };
                            _c._server._logf(("http: TLS handshake error from %s: %v" : stdgo.GoString), stdgo.Go.toInterface(_c._rwc.remoteAddr()), stdgo.Go.toInterface(_err));
                            {
                                for (defer in __deferstack__) {
                                    defer();
                                };
                                return;
                            };
                        };
                    };
                    if ((_tlsTO > (0i64 : stdgo._internal.time.Time_Duration.Duration) : Bool)) {
                        _c._rwc.setReadDeadline((new stdgo._internal.time.Time_Time.Time() : stdgo._internal.time.Time_Time.Time));
                        _c._rwc.setWriteDeadline((new stdgo._internal.time.Time_Time.Time() : stdgo._internal.time.Time_Time.Time));
                    };
                    _c._tlsState = (stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState>);
                    {
                        var __tmp__ = _tlsConn.connectionState()?.__copy__();
                        (_c._tlsState : stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState).version = __tmp__.version;
                        (_c._tlsState : stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState).handshakeComplete = __tmp__.handshakeComplete;
                        (_c._tlsState : stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState).didResume = __tmp__.didResume;
                        (_c._tlsState : stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState).cipherSuite = __tmp__.cipherSuite;
                        (_c._tlsState : stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState).negotiatedProtocol = __tmp__.negotiatedProtocol;
                        (_c._tlsState : stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState).negotiatedProtocolIsMutual = __tmp__.negotiatedProtocolIsMutual;
                        (_c._tlsState : stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState).serverName = __tmp__.serverName;
                        (_c._tlsState : stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState).peerCertificates = __tmp__.peerCertificates;
                        (_c._tlsState : stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState).verifiedChains = __tmp__.verifiedChains;
                        (_c._tlsState : stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState).signedCertificateTimestamps = __tmp__.signedCertificateTimestamps;
                        (_c._tlsState : stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState).ocspresponse = __tmp__.ocspresponse;
                        (_c._tlsState : stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState).tlsunique = __tmp__.tlsunique;
                        (_c._tlsState : stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState)._ekm = __tmp__._ekm;
                    };
                    {
                        var _proto = (_c._tlsState.negotiatedProtocol?.__copy__() : stdgo.GoString);
                        if (stdgo._internal.net.http.Http__validNextProto._validNextProto(_proto?.__copy__())) {
                            {
                                var _fn = (_c._server.tlsnextProto[_proto] ?? null);
                                if (_fn != null) {
                                    var _h = (new stdgo._internal.net.http.Http_T_initALPNRequest.T_initALPNRequest(_ctx, _tlsConn, (new stdgo._internal.net.http.Http_T_serverHandler.T_serverHandler(_c._server) : stdgo._internal.net.http.Http_T_serverHandler.T_serverHandler)) : stdgo._internal.net.http.Http_T_initALPNRequest.T_initALPNRequest);
                                    _c._setState(_c._rwc, (1 : stdgo._internal.net.http.Http_ConnState.ConnState), false);
                                    _fn(_c._server, _tlsConn, stdgo.Go.asInterface(_h));
                                };
                            };
                            {
                                for (defer in __deferstack__) {
                                    defer();
                                };
                                return;
                            };
                        };
                    };
                };
            };
            var __tmp__ = stdgo._internal.context.Context_withCancel.withCancel(_ctx), _ctx:stdgo._internal.context.Context_Context.Context = __tmp__._0, _cancelCtx:stdgo._internal.context.Context_CancelFunc.CancelFunc = __tmp__._1;
            _c._cancelCtx = _cancelCtx;
            __deferstack__.unshift(() -> _cancelCtx());
            _c._r = (stdgo.Go.setRef(({ _conn : _c } : stdgo._internal.net.http.Http_T_connReader.T_connReader)) : stdgo.Ref<stdgo._internal.net.http.Http_T_connReader.T_connReader>);
            _c._bufr = stdgo._internal.net.http.Http__newBufioReader._newBufioReader(stdgo.Go.asInterface(_c._r));
            _c._bufw = stdgo._internal.net.http.Http__newBufioWriterSize._newBufioWriterSize(stdgo.Go.asInterface((new stdgo._internal.net.http.Http_T_checkConnErrorWriter.T_checkConnErrorWriter(_c) : stdgo._internal.net.http.Http_T_checkConnErrorWriter.T_checkConnErrorWriter)), (4096 : stdgo.GoInt));
            while (true) {
                var __tmp__ = _c._readRequest(_ctx), _w:stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_c._r._remain != (_c._server._initialReadLimitSize())) {
                    _c._setState(_c._rwc, (1 : stdgo._internal.net.http.Http_ConnState.ConnState), true);
                };
                if (_err != null) {
                    {};
                    if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.net.http.Http__errTooLarge._errTooLarge))) {
                        {};
                        stdgo._internal.fmt.Fmt_fprintf.fprintf(_c._rwc, ("HTTP/1.1 431 Request Header Fields Too Large\r\nContent-Type: text/plain; charset=utf-8\r\nConnection: close\r\n\r\n431 Request Header Fields Too Large" : stdgo.GoString));
                        _c._closeWriteAndWait();
                        {
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return;
                        };
                    } else if (stdgo._internal.net.http.Http__isUnsupportedTEError._isUnsupportedTEError(_err)) {
                        var _code = (501 : stdgo.GoInt);
                        stdgo._internal.fmt.Fmt_fprintf.fprintf(_c._rwc, ("HTTP/1.1 %d %s%sUnsupported transfer encoding" : stdgo.GoString), stdgo.Go.toInterface(_code), stdgo.Go.toInterface(stdgo._internal.net.http.Http_statusText.statusText(_code)), stdgo.Go.toInterface(("\r\nContent-Type: text/plain; charset=utf-8\r\nConnection: close\r\n\r\n" : stdgo.GoString)));
                        {
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return;
                        };
                    } else if (stdgo._internal.net.http.Http__isCommonNetReadError._isCommonNetReadError(_err)) {
                        {
                            for (defer in __deferstack__) {
                                defer();
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
                                stdgo._internal.fmt.Fmt_fprintf.fprintf(_c._rwc, ("HTTP/1.1 %d %s: %s%s%d %s: %s" : stdgo.GoString), stdgo.Go.toInterface(_v._code), stdgo.Go.toInterface(stdgo._internal.net.http.Http_statusText.statusText(_v._code)), stdgo.Go.toInterface(_v._text), stdgo.Go.toInterface(("\r\nContent-Type: text/plain; charset=utf-8\r\nConnection: close\r\n\r\n" : stdgo.GoString)), stdgo.Go.toInterface(_v._code), stdgo.Go.toInterface(stdgo._internal.net.http.Http_statusText.statusText(_v._code)), stdgo.Go.toInterface(_v._text));
                                {
                                    for (defer in __deferstack__) {
                                        defer();
                                    };
                                    return;
                                };
                            };
                        };
                        var _publicErr = ("400 Bad Request" : stdgo.GoString);
                        stdgo._internal.fmt.Fmt_fprintf.fprintf(_c._rwc, (((("HTTP/1.1 " : stdgo.GoString) + _publicErr?.__copy__() : stdgo.GoString) + ("\r\nContent-Type: text/plain; charset=utf-8\r\nConnection: close\r\n\r\n" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _publicErr?.__copy__() : stdgo.GoString)?.__copy__());
                        {
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return;
                        };
                    };
                };
                var _req = _w._req;
                if (_req._expectsContinue()) {
                    if ((_req.protoAtLeast((1 : stdgo.GoInt), (1 : stdgo.GoInt)) && (_req.contentLength != (0i64 : stdgo.GoInt64)) : Bool)) {
                        _req.body = stdgo.Go.asInterface((stdgo.Go.setRef(({ _readCloser : _req.body, _resp : _w } : stdgo._internal.net.http.Http_T_expectContinueReader.T_expectContinueReader)) : stdgo.Ref<stdgo._internal.net.http.Http_T_expectContinueReader.T_expectContinueReader>));
                        _w._canWriteContinue.store(true);
                    };
                } else if (_req.header._get(("Expect" : stdgo.GoString)) != (stdgo.Go.str())) {
                    _w._sendExpectationFailed();
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return;
                    };
                };
                _c._curReq.store(_w);
                if (stdgo._internal.net.http.Http__requestBodyRemains._requestBodyRemains(_req.body)) {
                    stdgo._internal.net.http.Http__registerOnHitEOF._registerOnHitEOF(_req.body, _w._conn._r._startBackgroundRead);
                } else {
                    _w._conn._r._startBackgroundRead();
                };
                _inFlightResponse = _w;
                (new stdgo._internal.net.http.Http_T_serverHandler.T_serverHandler(_c._server) : stdgo._internal.net.http.Http_T_serverHandler.T_serverHandler).serveHTTP(stdgo.Go.asInterface(_w), _w._req);
                _inFlightResponse = null;
                _w._cancelCtx();
                if (_c._hijacked()) {
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return;
                    };
                };
                _w._finishRequest();
                _c._rwc.setWriteDeadline((new stdgo._internal.time.Time_Time.Time() : stdgo._internal.time.Time_Time.Time));
                if (!_w._shouldReuseConnection()) {
                    if ((_w._requestBodyLimitHit || _w._closedRequestBodyEarly() : Bool)) {
                        _c._closeWriteAndWait();
                    };
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return;
                    };
                };
                _c._setState(_c._rwc, (2 : stdgo._internal.net.http.Http_ConnState.ConnState), true);
                _c._curReq.store(null);
                if (!_w._conn._server._doKeepAlives()) {
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return;
                    };
                };
                {
                    var _d = (_c._server._idleTimeout() : stdgo._internal.time.Time_Duration.Duration);
                    if (_d != ((0i64 : stdgo._internal.time.Time_Duration.Duration))) {
                        _c._rwc.setReadDeadline(stdgo._internal.time.Time_now.now().add(_d)?.__copy__());
                    } else {
                        _c._rwc.setReadDeadline((new stdgo._internal.time.Time_Time.Time() : stdgo._internal.time.Time_Time.Time));
                    };
                };
                {
                    var __tmp__ = _c._bufr.peek((4 : stdgo.GoInt)), __34976:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        {
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return;
                        };
                    };
                };
                _c._rwc.setReadDeadline((new stdgo._internal.time.Time_Time.Time() : stdgo._internal.time.Time_Time.Time));
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
    static public function _getState( _c:stdgo.Ref<stdgo._internal.net.http.Http_T_conn.T_conn>):{ var _0 : stdgo._internal.net.http.Http_ConnState.ConnState; var _1 : stdgo.GoInt64; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_T_conn.T_conn> = _c;
        var _state = ((0 : stdgo.GoInt) : stdgo._internal.net.http.Http_ConnState.ConnState), _unixSec = (0 : stdgo.GoInt64);
        var _packedState = (_c._curState.load() : stdgo.GoUInt64);
        return { _0 : ((_packedState & (255i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo._internal.net.http.Http_ConnState.ConnState), _1 : ((_packedState >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt64) };
    }
    @:keep
    static public function _setState( _c:stdgo.Ref<stdgo._internal.net.http.Http_T_conn.T_conn>, _nc:stdgo._internal.net.Net_Conn.Conn, _state:stdgo._internal.net.http.Http_ConnState.ConnState, _runHook:Bool):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_T_conn.T_conn> = _c;
        var _srv = _c._server;
        {
            final __value__ = _state;
            if (__value__ == ((0 : stdgo._internal.net.http.Http_ConnState.ConnState))) {
                _srv._trackConn(_c, true);
            } else if (__value__ == ((3 : stdgo._internal.net.http.Http_ConnState.ConnState)) || __value__ == ((4 : stdgo._internal.net.http.Http_ConnState.ConnState))) {
                _srv._trackConn(_c, false);
            };
        };
        if (((_state > (255 : stdgo._internal.net.http.Http_ConnState.ConnState) : Bool) || (_state < (0 : stdgo._internal.net.http.Http_ConnState.ConnState) : Bool) : Bool)) {
            throw stdgo.Go.toInterface(("internal error" : stdgo.GoString));
        };
        var _packedState = (((stdgo._internal.time.Time_now.now().unix() << (8i64 : stdgo.GoUInt64) : stdgo.GoInt64) : stdgo.GoUInt64) | (_state : stdgo.GoUInt64) : stdgo.GoUInt64);
        _c._curState.store(_packedState);
        if (!_runHook) {
            return;
        };
        {
            var _hook = (_srv.connState : (stdgo._internal.net.Net_Conn.Conn, stdgo._internal.net.http.Http_ConnState.ConnState) -> Void);
            if (_hook != null) {
                _hook(_nc, _state);
            };
        };
    }
    @:keep
    static public function _closeWriteAndWait( _c:stdgo.Ref<stdgo._internal.net.http.Http_T_conn.T_conn>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_T_conn.T_conn> = _c;
        _c._finalFlush();
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_c._rwc) : stdgo._internal.net.http.Http_T_closeWriter.T_closeWriter)) : stdgo._internal.net.http.Http_T_closeWriter.T_closeWriter), _1 : true };
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
    static public function _close( _c:stdgo.Ref<stdgo._internal.net.http.Http_T_conn.T_conn>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_T_conn.T_conn> = _c;
        _c._finalFlush();
        _c._rwc.close();
    }
    @:keep
    static public function _finalFlush( _c:stdgo.Ref<stdgo._internal.net.http.Http_T_conn.T_conn>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_T_conn.T_conn> = _c;
        if ((_c._bufr != null && ((_c._bufr : Dynamic).__nil__ == null || !(_c._bufr : Dynamic).__nil__))) {
            stdgo._internal.net.http.Http__putBufioReader._putBufioReader(_c._bufr);
            _c._bufr = null;
        };
        if ((_c._bufw != null && ((_c._bufw : Dynamic).__nil__ == null || !(_c._bufw : Dynamic).__nil__))) {
            _c._bufw.flush();
            stdgo._internal.net.http.Http__putBufioWriter._putBufioWriter(_c._bufw);
            _c._bufw = null;
        };
    }
    @:keep
    static public function _readRequest( _c:stdgo.Ref<stdgo._internal.net.http.Http_T_conn.T_conn>, _ctx:stdgo._internal.context.Context_Context.Context):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response>; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_T_conn.T_conn> = _c;
        var __deferstack__:Array<Void -> Void> = [];
        var _w = (null : stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response>), _err = (null : stdgo.Error);
        try {
            if (_c._hijacked()) {
                return { _0 : null, _1 : stdgo._internal.net.http.Http_errHijacked.errHijacked };
            };
            var __0:stdgo._internal.time.Time_Time.Time = ({} : stdgo._internal.time.Time_Time.Time), __1:stdgo._internal.time.Time_Time.Time = ({} : stdgo._internal.time.Time_Time.Time);
var _hdrDeadline = __1, _wholeReqDeadline = __0;
            var _t0 = (stdgo._internal.time.Time_now.now()?.__copy__() : stdgo._internal.time.Time_Time.Time);
            {
                var _d = (_c._server._readHeaderTimeout() : stdgo._internal.time.Time_Duration.Duration);
                if ((_d > (0i64 : stdgo._internal.time.Time_Duration.Duration) : Bool)) {
                    _hdrDeadline = _t0.add(_d)?.__copy__();
                };
            };
            {
                var _d = (_c._server.readTimeout : stdgo._internal.time.Time_Duration.Duration);
                if ((_d > (0i64 : stdgo._internal.time.Time_Duration.Duration) : Bool)) {
                    _wholeReqDeadline = _t0.add(_d)?.__copy__();
                };
            };
            _c._rwc.setReadDeadline(_hdrDeadline?.__copy__());
            {
                var _d = (_c._server.writeTimeout : stdgo._internal.time.Time_Duration.Duration);
                if ((_d > (0i64 : stdgo._internal.time.Time_Duration.Duration) : Bool)) {
                    __deferstack__.unshift(() -> {
                        var a = function():Void {
                            var __deferstack__:Array<Void -> Void> = [];
                            try {
                                _c._rwc.setWriteDeadline(stdgo._internal.time.Time_now.now().add(_d)?.__copy__());
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
                    });
                };
            };
            _c._r._setReadLimit(_c._server._initialReadLimitSize());
            if (_c._lastMethod == (("POST" : stdgo.GoString))) {
                var __tmp__ = _c._bufr.peek((4 : stdgo.GoInt)), _peek:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, __34424:stdgo.Error = __tmp__._1;
                _c._bufr.discard(stdgo._internal.net.http.Http__numLeadingCRorLF._numLeadingCRorLF(_peek));
            };
            var __tmp__ = stdgo._internal.net.http.Http__readRequest._readRequest(_c._bufr), _req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                if (_c._r._hitReadLimit()) {
                    {
                        final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo._internal.net.http.Http__errTooLarge._errTooLarge };
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return __ret__;
                    };
                };
                {
                    final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            if (!stdgo._internal.net.http.Http__http1ServerSupportsRequest._http1ServerSupportsRequest(_req)) {
                {
                    final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((new stdgo._internal.net.http.Http_T_statusError.T_statusError((505 : stdgo.GoInt), ("unsupported protocol version" : stdgo.GoString)) : stdgo._internal.net.http.Http_T_statusError.T_statusError)) };
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            _c._lastMethod = _req.method?.__copy__();
            _c._r._setInfiniteReadLimit();
            var __tmp__ = (_req.header != null && _req.header.exists(("Host" : stdgo.GoString)) ? { _0 : _req.header[("Host" : stdgo.GoString)], _1 : true } : { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : false }), _hosts:stdgo.Slice<stdgo.GoString> = __tmp__._0, _haveHost:Bool = __tmp__._1;
            var _isH2Upgrade = (_req._isH2Upgrade() : Bool);
            if ((((_req.protoAtLeast((1 : stdgo.GoInt), (1 : stdgo.GoInt)) && ((!_haveHost || (_hosts.length == (0 : stdgo.GoInt)) : Bool)) : Bool) && !_isH2Upgrade : Bool) && (_req.method != ("CONNECT" : stdgo.GoString)) : Bool)) {
                {
                    final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo._internal.net.http.Http__badRequestError._badRequestError(("missing required Host header" : stdgo.GoString)) };
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            if (((_hosts.length == (1 : stdgo.GoInt)) && !_internal.golang_dot_org.x.net.http.httpguts.Httpguts_validHostHeader.validHostHeader(_hosts[(0 : stdgo.GoInt)]?.__copy__()) : Bool)) {
                {
                    final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo._internal.net.http.Http__badRequestError._badRequestError(("malformed Host header" : stdgo.GoString)) };
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            for (_k => _vv in _req.header) {
                if (!_internal.golang_dot_org.x.net.http.httpguts.Httpguts_validHeaderFieldName.validHeaderFieldName(_k?.__copy__())) {
                    {
                        final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo._internal.net.http.Http__badRequestError._badRequestError(("invalid header name" : stdgo.GoString)) };
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return __ret__;
                    };
                };
                for (__34480 => _v in _vv) {
                    if (!_internal.golang_dot_org.x.net.http.httpguts.Httpguts_validHeaderFieldValue.validHeaderFieldValue(_v?.__copy__())) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo._internal.net.http.Http__badRequestError._badRequestError(("invalid header value" : stdgo.GoString)) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                    };
                };
            };
            if (_req.header != null) _req.header.remove(("Host" : stdgo.GoString));
            var __tmp__ = stdgo._internal.context.Context_withCancel.withCancel(_ctx), _ctx:stdgo._internal.context.Context_Context.Context = __tmp__._0, _cancelCtx:stdgo._internal.context.Context_CancelFunc.CancelFunc = __tmp__._1;
            _req._ctx = _ctx;
            _req.remoteAddr = _c._remoteAddr?.__copy__();
            _req.tls = _c._tlsState;
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_req.body) : stdgo.Ref<stdgo._internal.net.http.Http_T_body.T_body>)) : stdgo.Ref<stdgo._internal.net.http.Http_T_body.T_body>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.net.http.Http_T_body.T_body>), _1 : false };
                }, _body = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    _body._doEarlyClose = true;
                };
            };
            if (!_hdrDeadline.equal(_wholeReqDeadline?.__copy__())) {
                _c._rwc.setReadDeadline(_wholeReqDeadline?.__copy__());
            };
            _w = (stdgo.Go.setRef(({ _conn : _c, _cancelCtx : _cancelCtx, _req : _req, _reqBody : _req.body, _handlerHeader : (({
                final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
                x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.http.Http_Header.Header), _contentLength : (-1i64 : stdgo.GoInt64), _closeNotifyCh : (new stdgo.Chan<Bool>((1 : stdgo.GoInt).toBasic(), () -> false) : stdgo.Chan<Bool>), _wants10KeepAlive : _req._wantsHttp10KeepAlive(), _wantsClose : _req._wantsClose() } : stdgo._internal.net.http.Http_T_response.T_response)) : stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response>);
            if (_isH2Upgrade) {
                _w._closeAfterReply = true;
            };
            _w._cw._res = _w;
            _w._w = stdgo._internal.net.http.Http__newBufioWriterSize._newBufioWriterSize(stdgo.Go.asInterface((stdgo.Go.setRef(_w._cw) : stdgo.Ref<stdgo._internal.net.http.Http_T_chunkWriter.T_chunkWriter>)), (2048 : stdgo.GoInt));
            {
                final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response>; var _1 : stdgo.Error; } = { _0 : _w, _1 : (null : stdgo.Error) };
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response>; var _1 : stdgo.Error; } = { _0 : _w, _1 : _err };
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
            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response>; var _1 : stdgo.Error; } = { _0 : _w, _1 : _err };
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
    @:keep
    static public function _hijackLocked( _c:stdgo.Ref<stdgo._internal.net.http.Http_T_conn.T_conn>):{ var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Ref<stdgo._internal.bufio.Bufio_ReadWriter.ReadWriter>; var _2 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_T_conn.T_conn> = _c;
        var _rwc = (null : stdgo._internal.net.Net_Conn.Conn), _buf = (null : stdgo.Ref<stdgo._internal.bufio.Bufio_ReadWriter.ReadWriter>), _err = (null : stdgo.Error);
        if (_c._hijackedv) {
            return { _0 : (null : stdgo._internal.net.Net_Conn.Conn), _1 : null, _2 : stdgo._internal.net.http.Http_errHijacked.errHijacked };
        };
        _c._r._abortPendingRead();
        _c._hijackedv = true;
        _rwc = _c._rwc;
        _rwc.setDeadline((new stdgo._internal.time.Time_Time.Time() : stdgo._internal.time.Time_Time.Time));
        _buf = stdgo._internal.bufio.Bufio_newReadWriter.newReadWriter(_c._bufr, stdgo._internal.bufio.Bufio_newWriter.newWriter(_rwc));
        if (_c._r._hasByte) {
            {
                var __tmp__ = _c._bufr.peek((_c._bufr.buffered() + (1 : stdgo.GoInt) : stdgo.GoInt)), __34316:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : (null : stdgo._internal.net.Net_Conn.Conn), _1 : null, _2 : stdgo._internal.fmt.Fmt_errorf.errorf(("unexpected Peek failure reading buffered byte: %v" : stdgo.GoString), stdgo.Go.toInterface(_err)) };
                };
            };
        };
        _c._setState(_rwc, (3 : stdgo._internal.net.http.Http_ConnState.ConnState), true);
        return { _0 : _rwc, _1 : _buf, _2 : _err };
    }
    @:keep
    static public function _hijacked( _c:stdgo.Ref<stdgo._internal.net.http.Http_T_conn.T_conn>):Bool {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_T_conn.T_conn> = _c;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _c._mu.lock();
            __deferstack__.unshift(() -> _c._mu.unlock());
            {
                final __ret__:Bool = _c._hijackedv;
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
}
