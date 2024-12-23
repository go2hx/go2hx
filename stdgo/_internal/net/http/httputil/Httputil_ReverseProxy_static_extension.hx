package stdgo._internal.net.http.httputil;
@:keep @:allow(stdgo._internal.net.http.httputil.Httputil.ReverseProxy_asInterface) class ReverseProxy_static_extension {
    @:keep
    static public function _handleUpgradeResponse( _p:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_ReverseProxy.ReverseProxy>, _rw:stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, _req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, _res:stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_ReverseProxy.ReverseProxy> = _p;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _reqUpType = (stdgo._internal.net.http.httputil.Httputil__upgradeType._upgradeType(_req.header)?.__copy__() : stdgo.GoString);
            var _resUpType = (stdgo._internal.net.http.httputil.Httputil__upgradeType._upgradeType(_res.header)?.__copy__() : stdgo.GoString);
            if (!stdgo._internal.net.http.internal.ascii.Ascii_isPrint.isPrint(_resUpType?.__copy__())) {
                _p._getErrorHandler()(_rw, _req, stdgo._internal.fmt.Fmt_errorf.errorf(("backend tried to switch to invalid protocol %q" : stdgo.GoString), stdgo.Go.toInterface(_resUpType)));
            };
            if (!stdgo._internal.net.http.internal.ascii.Ascii_equalFold.equalFold(_reqUpType?.__copy__(), _resUpType?.__copy__())) {
                _p._getErrorHandler()(_rw, _req, stdgo._internal.fmt.Fmt_errorf.errorf(("backend tried to switch protocol %q when %q was requested" : stdgo.GoString), stdgo.Go.toInterface(_resUpType), stdgo.Go.toInterface(_reqUpType)));
                return;
            };
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_res.body) : stdgo._internal.io.Io_ReadWriteCloser.ReadWriteCloser)) : stdgo._internal.io.Io_ReadWriteCloser.ReadWriteCloser), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.io.Io_ReadWriteCloser.ReadWriteCloser), _1 : false };
            }, _backConn = __tmp__._0, _ok = __tmp__._1;
            if (!_ok) {
                _p._getErrorHandler()(_rw, _req, stdgo._internal.fmt.Fmt_errorf.errorf(("internal error: 101 switching protocols response with non-writable body" : stdgo.GoString)));
                return;
            };
            var _rc = stdgo._internal.net.http.Http_newResponseController.newResponseController(_rw);
            var __tmp__ = _rc.hijack(), _conn:stdgo._internal.net.Net_Conn.Conn = __tmp__._0, _brw:stdgo.Ref<stdgo._internal.bufio.Bufio_ReadWriter.ReadWriter> = __tmp__._1, _hijackErr:stdgo.Error = __tmp__._2;
            if (stdgo._internal.errors.Errors_is_.is_(_hijackErr, stdgo.Go.asInterface(stdgo._internal.net.http.Http_errNotSupported.errNotSupported))) {
                _p._getErrorHandler()(_rw, _req, stdgo._internal.fmt.Fmt_errorf.errorf(("can\'t switch protocols using non-Hijacker ResponseWriter type %T" : stdgo.GoString), stdgo.Go.toInterface(_rw)));
                return;
            };
            var _backConnCloseCh = (new stdgo.Chan<Bool>(0, () -> false) : stdgo.Chan<Bool>);
            stdgo.Go.routine(() -> ({
                var a = function():Void {
                    {
                        var __select__ = true;
                        while (__select__) {
                            if (_req.context().done() != null && _req.context().done().__isGet__()) {
                                __select__ = false;
                                {
                                    _req.context().done().__get__();
                                    {};
                                };
                            } else if (_backConnCloseCh != null && _backConnCloseCh.__isGet__()) {
                                __select__ = false;
                                {
                                    _backConnCloseCh.__get__();
                                    {};
                                };
                            };
                            #if !js Sys.sleep(0.01) #else null #end;
                            stdgo._internal.internal.Async.tick();
                        };
                    };
                    _backConn.close();
                };
                a();
            }));
            {
                var _a0 = _backConnCloseCh;
                __deferstack__.unshift(() -> if (_a0 != null) _a0.__close__());
            };
            if (_hijackErr != null) {
                _p._getErrorHandler()(_rw, _req, stdgo._internal.fmt.Fmt_errorf.errorf(("Hijack failed on protocol switch: %v" : stdgo.GoString), stdgo.Go.toInterface(_hijackErr)));
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return;
                };
            };
            {
                final __f__ = _conn.close;
                __deferstack__.unshift(() -> __f__());
            };
            stdgo._internal.net.http.httputil.Httputil__copyHeader._copyHeader(_rw.header(), _res.header);
            _res.header = _rw.header();
            _res.body = (null : stdgo._internal.io.Io_ReadCloser.ReadCloser);
            {
                var _err = (_res.write(stdgo.Go.asInterface(_brw)) : stdgo.Error);
                if (_err != null) {
                    _p._getErrorHandler()(_rw, _req, stdgo._internal.fmt.Fmt_errorf.errorf(("response write: %v" : stdgo.GoString), stdgo.Go.toInterface(_err)));
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return;
                    };
                };
            };
            {
                var _err = (_brw.flush() : stdgo.Error);
                if (_err != null) {
                    _p._getErrorHandler()(_rw, _req, stdgo._internal.fmt.Fmt_errorf.errorf(("response flush: %v" : stdgo.GoString), stdgo.Go.toInterface(_err)));
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return;
                    };
                };
            };
            var _errc = (new stdgo.Chan<stdgo.Error>((1 : stdgo.GoInt).toBasic(), () -> (null : stdgo.Error)) : stdgo.Chan<stdgo.Error>);
            var _spc = ({ _user : _conn, _backend : _backConn } : stdgo._internal.net.http.httputil.Httputil_T_switchProtocolCopier.T_switchProtocolCopier);
            stdgo.Go.routine(() -> _spc._copyToBackend(_errc));
            stdgo.Go.routine(() -> _spc._copyFromBackend(_errc));
            _errc.__get__();
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
    static public function _logf( _p:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_ReverseProxy.ReverseProxy>, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _p:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_ReverseProxy.ReverseProxy> = _p;
        if ((_p.errorLog != null && ((_p.errorLog : Dynamic).__nil__ == null || !(_p.errorLog : Dynamic).__nil__))) {
            _p.errorLog.printf(_format?.__copy__(), ...(_args : Array<stdgo.AnyInterface>));
        } else {
            stdgo._internal.log.Log_printf.printf(_format?.__copy__(), ...(_args : Array<stdgo.AnyInterface>));
        };
    }
    @:keep
    static public function _copyBuffer( _p:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_ReverseProxy.ReverseProxy>, _dst:stdgo._internal.io.Io_Writer.Writer, _src:stdgo._internal.io.Io_Reader.Reader, _buf:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_ReverseProxy.ReverseProxy> = _p;
        if ((_buf.length) == ((0 : stdgo.GoInt))) {
            _buf = (new stdgo.Slice<stdgo.GoUInt8>((32768 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        };
        var _written:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        while (true) {
            var __tmp__ = _src.read(_buf), _nr:stdgo.GoInt = __tmp__._0, _rerr:stdgo.Error = __tmp__._1;
            if (((_rerr != null && stdgo.Go.toInterface(_rerr) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof)) : Bool) && (stdgo.Go.toInterface(_rerr) != stdgo.Go.toInterface(stdgo._internal.context.Context_canceled.canceled)) : Bool)) {
                _p._logf(("httputil: ReverseProxy read error during body copy: %v" : stdgo.GoString), stdgo.Go.toInterface(_rerr));
            };
            if ((_nr > (0 : stdgo.GoInt) : Bool)) {
                var __tmp__ = _dst.write((_buf.__slice__(0, _nr) : stdgo.Slice<stdgo.GoUInt8>)), _nw:stdgo.GoInt = __tmp__._0, _werr:stdgo.Error = __tmp__._1;
                if ((_nw > (0 : stdgo.GoInt) : Bool)) {
                    _written = (_written + ((_nw : stdgo.GoInt64)) : stdgo.GoInt64);
                };
                if (_werr != null) {
                    return { _0 : _written, _1 : _werr };
                };
                if (_nr != (_nw)) {
                    return { _0 : _written, _1 : stdgo._internal.io.Io_errShortWrite.errShortWrite };
                };
            };
            if (_rerr != null) {
                if (stdgo.Go.toInterface(_rerr) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                    _rerr = (null : stdgo.Error);
                };
                return { _0 : _written, _1 : _rerr };
            };
        };
    }
    @:keep
    static public function _copyResponse( _p:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_ReverseProxy.ReverseProxy>, _dst:stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, _src:stdgo._internal.io.Io_Reader.Reader, _flushInterval:stdgo._internal.time.Time_Duration.Duration):stdgo.Error {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_ReverseProxy.ReverseProxy> = _p;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _w:stdgo._internal.io.Io_Writer.Writer = _dst;
            if (_flushInterval != ((0i64 : stdgo._internal.time.Time_Duration.Duration))) {
                var _mlw = (stdgo.Go.setRef(({ _dst : _dst, _flush : stdgo._internal.net.http.Http_newResponseController.newResponseController(_dst).flush, _latency : _flushInterval } : stdgo._internal.net.http.httputil.Httputil_T_maxLatencyWriter.T_maxLatencyWriter)) : stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_T_maxLatencyWriter.T_maxLatencyWriter>);
                {
                    final __f__ = _mlw._stop;
                    __deferstack__.unshift(() -> __f__());
                };
                _mlw._flushPending = true;
                _mlw._t = stdgo._internal.time.Time_afterFunc.afterFunc(_flushInterval, _mlw._delayedFlush);
                _w = stdgo.Go.asInterface(_mlw);
            };
            var _buf:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
            if (_p.bufferPool != null) {
                _buf = _p.bufferPool.get();
                {
                    var _a0 = _buf;
                    final __f__ = _p.bufferPool.put;
                    __deferstack__.unshift(() -> __f__(_a0));
                };
            };
            var __tmp__ = _p._copyBuffer(_w, _src, _buf), __16:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return _err;
            };
            {
                for (defer in __deferstack__) {
                    defer();
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
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return (null : stdgo.Error);
        };
    }
    @:keep
    static public function _flushInterval( _p:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_ReverseProxy.ReverseProxy>, _res:stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>):stdgo._internal.time.Time_Duration.Duration {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_ReverseProxy.ReverseProxy> = _p;
        var _resCT = (_res.header.get(("Content-Type" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        {
            var __tmp__ = stdgo._internal.mime.Mime_parseMediaType.parseMediaType(_resCT?.__copy__()), _baseCT:stdgo.GoString = __tmp__._0, __0:stdgo.GoMap<stdgo.GoString, stdgo.GoString> = __tmp__._1, __1:stdgo.Error = __tmp__._2;
            if (_baseCT == (("text/event-stream" : stdgo.GoString))) {
                return (-1i64 : stdgo._internal.time.Time_Duration.Duration);
            };
        };
        if (_res.contentLength == ((-1i64 : stdgo.GoInt64))) {
            return (-1i64 : stdgo._internal.time.Time_Duration.Duration);
        };
        return _p.flushInterval;
    }
    @:keep
    static public function serveHTTP( _p:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_ReverseProxy.ReverseProxy>, _rw:stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, _req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_ReverseProxy.ReverseProxy> = _p;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _transport = (_p.transport : stdgo._internal.net.http.Http_RoundTripper.RoundTripper);
            if (_transport == null) {
                _transport = stdgo._internal.net.http.Http_defaultTransport.defaultTransport;
            };
            var _ctx = (_req.context() : stdgo._internal.context.Context_Context.Context);
            if (_ctx.done() != null) {} else {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_rw) : stdgo._internal.net.http.Http_CloseNotifier.CloseNotifier)) : stdgo._internal.net.http.Http_CloseNotifier.CloseNotifier), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo._internal.net.http.Http_CloseNotifier.CloseNotifier), _1 : false };
                }, _cn = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    var _cancel:stdgo._internal.context.Context_CancelFunc.CancelFunc = (null : stdgo._internal.context.Context_CancelFunc.CancelFunc);
                    {
                        var __tmp__ = stdgo._internal.context.Context_withCancel.withCancel(_ctx);
                        _ctx = __tmp__._0;
                        _cancel = __tmp__._1;
                    };
                    {
                        final __f__ = _cancel;
                        __deferstack__.unshift(() -> __f__());
                    };
                    var _notifyChan = _cn.closeNotify();
                    stdgo.Go.routine(() -> ({
                        var a = function():Void {
                            {
                                var __select__ = true;
                                while (__select__) {
                                    if (_notifyChan != null && _notifyChan.__isGet__()) {
                                        __select__ = false;
                                        {
                                            _notifyChan.__get__();
                                            {
                                                _cancel();
                                            };
                                        };
                                    } else if (_ctx.done() != null && _ctx.done().__isGet__()) {
                                        __select__ = false;
                                        {
                                            _ctx.done().__get__();
                                            {};
                                        };
                                    };
                                    #if !js Sys.sleep(0.01) #else null #end;
                                    stdgo._internal.internal.Async.tick();
                                };
                            };
                        };
                        a();
                    }));
                };
            };
            var _outreq = _req.clone(_ctx);
            if (_req.contentLength == ((0i64 : stdgo.GoInt64))) {
                _outreq.body = (null : stdgo._internal.io.Io_ReadCloser.ReadCloser);
            };
            if (_outreq.body != null) {
                {
                    final __f__ = _outreq.body.close;
                    __deferstack__.unshift(() -> __f__());
                };
            };
            if (_outreq.header == null) {
                _outreq.header = (({
                    final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
                    x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
                    {};
                    x;
                } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.http.Http_Header.Header);
            };
            if ((_p.director != null) == ((_p.rewrite != null))) {
                _p._getErrorHandler()(_rw, _req, stdgo._internal.errors.Errors_new_.new_(("ReverseProxy must have exactly one of Director or Rewrite set" : stdgo.GoString)));
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return;
                };
            };
            if (_p.director != null) {
                _p.director(_outreq);
                if (_outreq.form != null) {
                    _outreq.url.rawQuery = stdgo._internal.net.http.httputil.Httputil__cleanQueryParams._cleanQueryParams(_outreq.url.rawQuery?.__copy__())?.__copy__();
                };
            };
            _outreq.close = false;
            var _reqUpType = (stdgo._internal.net.http.httputil.Httputil__upgradeType._upgradeType(_outreq.header)?.__copy__() : stdgo.GoString);
            if (!stdgo._internal.net.http.internal.ascii.Ascii_isPrint.isPrint(_reqUpType?.__copy__())) {
                _p._getErrorHandler()(_rw, _req, stdgo._internal.fmt.Fmt_errorf.errorf(("client tried to switch to invalid protocol %q" : stdgo.GoString), stdgo.Go.toInterface(_reqUpType)));
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return;
                };
            };
            stdgo._internal.net.http.httputil.Httputil__removeHopByHopHeaders._removeHopByHopHeaders(_outreq.header);
            if (_internal.golang_dot_org.x.net.http.httpguts.Httpguts_headerValuesContainsToken.headerValuesContainsToken((_req.header[("Te" : stdgo.GoString)] ?? (null : stdgo.Slice<stdgo.GoString>)), ("trailers" : stdgo.GoString))) {
                _outreq.header.set(("Te" : stdgo.GoString), ("trailers" : stdgo.GoString));
            };
            if (_reqUpType != (stdgo.Go.str())) {
                _outreq.header.set(("Connection" : stdgo.GoString), ("Upgrade" : stdgo.GoString));
                _outreq.header.set(("Upgrade" : stdgo.GoString), _reqUpType?.__copy__());
            };
            if (_p.rewrite != null) {
                _outreq.header.del(("Forwarded" : stdgo.GoString));
                _outreq.header.del(("X-Forwarded-For" : stdgo.GoString));
                _outreq.header.del(("X-Forwarded-Host" : stdgo.GoString));
                _outreq.header.del(("X-Forwarded-Proto" : stdgo.GoString));
                _outreq.url.rawQuery = stdgo._internal.net.http.httputil.Httputil__cleanQueryParams._cleanQueryParams(_outreq.url.rawQuery?.__copy__())?.__copy__();
                var _pr = (stdgo.Go.setRef(({ in_ : _req, out : _outreq } : stdgo._internal.net.http.httputil.Httputil_ProxyRequest.ProxyRequest)) : stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_ProxyRequest.ProxyRequest>);
                _p.rewrite(_pr);
                _outreq = _pr.out;
            } else {
                {
                    var __tmp__ = stdgo._internal.net.Net_splitHostPort.splitHostPort(_req.remoteAddr?.__copy__()), _clientIP:stdgo.GoString = __tmp__._0, __40:stdgo.GoString = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                    if (_err == null) {
                        var __tmp__ = (_outreq.header != null && _outreq.header.exists(("X-Forwarded-For" : stdgo.GoString)) ? { _0 : _outreq.header[("X-Forwarded-For" : stdgo.GoString)], _1 : true } : { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : false }), _prior:stdgo.Slice<stdgo.GoString> = __tmp__._0, _ok:Bool = __tmp__._1;
                        var _omit = (_ok && (_prior == null) : Bool);
                        if (((_prior.length) > (0 : stdgo.GoInt) : Bool)) {
                            _clientIP = ((stdgo._internal.strings.Strings_join.join(_prior, (", " : stdgo.GoString)) + (", " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _clientIP?.__copy__() : stdgo.GoString)?.__copy__();
                        };
                        if (!_omit) {
                            _outreq.header.set(("X-Forwarded-For" : stdgo.GoString), _clientIP?.__copy__());
                        };
                    };
                };
            };
            {
                var __tmp__ = (_outreq.header != null && _outreq.header.exists(("User-Agent" : stdgo.GoString)) ? { _0 : _outreq.header[("User-Agent" : stdgo.GoString)], _1 : true } : { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : false }), __40:stdgo.Slice<stdgo.GoString> = __tmp__._0, _ok:Bool = __tmp__._1;
                if (!_ok) {
                    _outreq.header.set(("User-Agent" : stdgo.GoString), stdgo.Go.str()?.__copy__());
                };
            };
            var _trace = (stdgo.Go.setRef(({ got1xxResponse : function(_code:stdgo.GoInt, _header:stdgo._internal.net.textproto.Textproto_MIMEHeader.MIMEHeader):stdgo.Error {
                var _h = (_rw.header() : stdgo._internal.net.http.Http_Header.Header);
                stdgo._internal.net.http.httputil.Httputil__copyHeader._copyHeader(_h, (_header : stdgo._internal.net.http.Http_Header.Header));
                _rw.writeHeader(_code);
                for (_k => _ in _h) {
                    if (_h != null) _h.remove(_k);
                };
                return (null : stdgo.Error);
            } } : stdgo._internal.net.http.httptrace.Httptrace_ClientTrace.ClientTrace)) : stdgo.Ref<stdgo._internal.net.http.httptrace.Httptrace_ClientTrace.ClientTrace>);
            _outreq = _outreq.withContext(stdgo._internal.net.http.httptrace.Httptrace_withClientTrace.withClientTrace(_outreq.context(), _trace));
            var __tmp__ = _transport.roundTrip(_outreq), _res:stdgo.Ref<stdgo._internal.net.http.Http_Response.Response> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _p._getErrorHandler()(_rw, _outreq, _err);
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return;
                };
            };
            if (_res.statusCode == ((101 : stdgo.GoInt))) {
                if (!_p._modifyResponse(_rw, _res, _outreq)) {
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return;
                    };
                };
                _p._handleUpgradeResponse(_rw, _outreq, _res);
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return;
                };
            };
            stdgo._internal.net.http.httputil.Httputil__removeHopByHopHeaders._removeHopByHopHeaders(_res.header);
            if (!_p._modifyResponse(_rw, _res, _outreq)) {
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return;
                };
            };
            stdgo._internal.net.http.httputil.Httputil__copyHeader._copyHeader(_rw.header(), _res.header);
            var _announcedTrailers = (_res.trailer.length : stdgo.GoInt);
            if ((_announcedTrailers > (0 : stdgo.GoInt) : Bool)) {
                var _trailerKeys = (new stdgo.Slice<stdgo.GoString>((0 : stdgo.GoInt).toBasic(), (_res.trailer.length)).__setString__() : stdgo.Slice<stdgo.GoString>);
                for (_k => _ in _res.trailer) {
                    _trailerKeys = (_trailerKeys.__append__(_k?.__copy__()));
                };
                _rw.header().add(("Trailer" : stdgo.GoString), stdgo._internal.strings.Strings_join.join(_trailerKeys, (", " : stdgo.GoString))?.__copy__());
            };
            _rw.writeHeader(_res.statusCode);
            _err = _p._copyResponse(_rw, _res.body, _p._flushInterval(_res));
            if (_err != null) {
                {
                    final __f__ = _res.body.close;
                    __deferstack__.unshift(() -> __f__());
                };
                if (!stdgo._internal.net.http.httputil.Httputil__shouldPanicOnCopyError._shouldPanicOnCopyError(_req)) {
                    _p._logf(("suppressing panic for copyResponse error in test; copy error: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return;
                    };
                };
                throw stdgo.Go.toInterface(stdgo._internal.net.http.Http_errAbortHandler.errAbortHandler);
            };
            _res.body.close();
            if (((_res.trailer.length) > (0 : stdgo.GoInt) : Bool)) {
                stdgo._internal.net.http.Http_newResponseController.newResponseController(_rw).flush();
            };
            if ((_res.trailer.length) == (_announcedTrailers)) {
                stdgo._internal.net.http.httputil.Httputil__copyHeader._copyHeader(_rw.header(), _res.trailer);
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return;
                };
            };
            for (_k => _vv in _res.trailer) {
                _k = (("Trailer:" : stdgo.GoString) + _k?.__copy__() : stdgo.GoString)?.__copy__();
                for (__65 => _v in _vv) {
                    _rw.header().add(_k?.__copy__(), _v?.__copy__());
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
    static public function _modifyResponse( _p:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_ReverseProxy.ReverseProxy>, _rw:stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, _res:stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>, _req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):Bool {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_ReverseProxy.ReverseProxy> = _p;
        if (_p.modifyResponse == null) {
            return true;
        };
        {
            var _err = (_p.modifyResponse(_res) : stdgo.Error);
            if (_err != null) {
                _res.body.close();
                _p._getErrorHandler()(_rw, _req, _err);
                return false;
            };
        };
        return true;
    }
    @:keep
    static public function _getErrorHandler( _p:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_ReverseProxy.ReverseProxy>):(stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, stdgo.Error) -> Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_ReverseProxy.ReverseProxy> = _p;
        if (_p.errorHandler != null) {
            return _p.errorHandler;
        };
        return _p._defaultErrorHandler;
    }
    @:keep
    static public function _defaultErrorHandler( _p:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_ReverseProxy.ReverseProxy>, _rw:stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, _req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, _err:stdgo.Error):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_ReverseProxy.ReverseProxy> = _p;
        _p._logf(("http: proxy error: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        _rw.writeHeader((502 : stdgo.GoInt));
    }
}
