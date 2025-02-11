package stdgo._internal.net.http.httputil;
@:keep @:allow(stdgo._internal.net.http.httputil.Httputil.ReverseProxy_asInterface) class ReverseProxy_static_extension {
    @:keep
    @:tdfield
    static public function _handleUpgradeResponse( _p:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_reverseproxy.ReverseProxy>, _rw:stdgo._internal.net.http.Http_responsewriter.ResponseWriter, _req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, _res:stdgo.Ref<stdgo._internal.net.http.Http_response.Response>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_reverseproxy.ReverseProxy> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _reqUpType = (stdgo._internal.net.http.httputil.Httputil__upgradetype._upgradeType((@:checkr _req ?? throw "null pointer dereference").header)?.__copy__() : stdgo.GoString);
            var _resUpType = (stdgo._internal.net.http.httputil.Httputil__upgradetype._upgradeType((@:checkr _res ?? throw "null pointer dereference").header)?.__copy__() : stdgo.GoString);
            if (!stdgo._internal.net.http.internal.ascii.Ascii_isprint.isPrint(_resUpType?.__copy__())) {
                @:check2r _p._getErrorHandler()(_rw, _req, stdgo._internal.fmt.Fmt_errorf.errorf(("backend tried to switch to invalid protocol %q" : stdgo.GoString), stdgo.Go.toInterface(_resUpType)));
            };
            if (!stdgo._internal.net.http.internal.ascii.Ascii_equalfold.equalFold(_reqUpType?.__copy__(), _resUpType?.__copy__())) {
                @:check2r _p._getErrorHandler()(_rw, _req, stdgo._internal.fmt.Fmt_errorf.errorf(("backend tried to switch protocol %q when %q was requested" : stdgo.GoString), stdgo.Go.toInterface(_resUpType), stdgo.Go.toInterface(_reqUpType)));
                return;
            };
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _res ?? throw "null pointer dereference").body) : stdgo._internal.io.Io_readwritecloser.ReadWriteCloser)) : stdgo._internal.io.Io_readwritecloser.ReadWriteCloser), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.io.Io_readwritecloser.ReadWriteCloser), _1 : false };
            }, _backConn = __tmp__._0, _ok = __tmp__._1;
            if (!_ok) {
                @:check2r _p._getErrorHandler()(_rw, _req, stdgo._internal.fmt.Fmt_errorf.errorf(("internal error: 101 switching protocols response with non-writable body" : stdgo.GoString)));
                return;
            };
            var _rc = stdgo._internal.net.http.Http_newresponsecontroller.newResponseController(_rw);
            var __tmp__ = @:check2r _rc.hijack(), _conn:stdgo._internal.net.Net_conn.Conn = __tmp__._0, _brw:stdgo.Ref<stdgo._internal.bufio.Bufio_readwriter.ReadWriter> = __tmp__._1, _hijackErr:stdgo.Error = __tmp__._2;
            if (stdgo._internal.errors.Errors_is_.is_(_hijackErr, stdgo.Go.asInterface(stdgo._internal.net.http.Http_errnotsupported.errNotSupported))) {
                @:check2r _p._getErrorHandler()(_rw, _req, stdgo._internal.fmt.Fmt_errorf.errorf(("can\'t switch protocols using non-Hijacker ResponseWriter type %T" : stdgo.GoString), stdgo.Go.toInterface(_rw)));
                return;
            };
            var _backConnCloseCh = (new stdgo.Chan<Bool>(0, () -> false) : stdgo.Chan<Bool>);
            stdgo.Go.routine(() -> ({
                var a = function():Void {
                    {
                        var __select__ = true;
                        while (__select__) {
                            if (@:check2r _req.context().done() != null && @:check2r _req.context().done().__isGet__()) {
                                __select__ = false;
                                {
                                    @:check2r _req.context().done().__get__();
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
                __deferstack__.unshift({ ran : false, f : () -> if (_a0 != null) _a0.__close__() });
            };
            if (_hijackErr != null) {
                @:check2r _p._getErrorHandler()(_rw, _req, stdgo._internal.fmt.Fmt_errorf.errorf(("Hijack failed on protocol switch: %v" : stdgo.GoString), stdgo.Go.toInterface(_hijackErr)));
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
                final __f__ = _conn.close;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            stdgo._internal.net.http.httputil.Httputil__copyheader._copyHeader(_rw.header(), (@:checkr _res ?? throw "null pointer dereference").header);
            (@:checkr _res ?? throw "null pointer dereference").header = _rw.header();
            (@:checkr _res ?? throw "null pointer dereference").body = (null : stdgo._internal.io.Io_readcloser.ReadCloser);
            {
                var _err = (@:check2r _res.write(stdgo.Go.asInterface(_brw)) : stdgo.Error);
                if (_err != null) {
                    @:check2r _p._getErrorHandler()(_rw, _req, stdgo._internal.fmt.Fmt_errorf.errorf(("response write: %v" : stdgo.GoString), stdgo.Go.toInterface(_err)));
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
            {
                var _err = (@:check2r _brw.flush() : stdgo.Error);
                if (_err != null) {
                    @:check2r _p._getErrorHandler()(_rw, _req, stdgo._internal.fmt.Fmt_errorf.errorf(("response flush: %v" : stdgo.GoString), stdgo.Go.toInterface(_err)));
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
            var _errc = (new stdgo.Chan<stdgo.Error>((1 : stdgo.GoInt).toBasic(), () -> (null : stdgo.Error)) : stdgo.Chan<stdgo.Error>);
            var _spc = ({ _user : _conn, _backend : _backConn } : stdgo._internal.net.http.httputil.Httputil_t_switchprotocolcopier.T_switchProtocolCopier);
            stdgo.Go.routine(() -> _spc._copyToBackend(_errc));
            stdgo.Go.routine(() -> _spc._copyFromBackend(_errc));
            _errc.__get__();
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
    @:keep
    @:tdfield
    static public function _logf( _p:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_reverseproxy.ReverseProxy>, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _p:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_reverseproxy.ReverseProxy> = _p;
        if (((@:checkr _p ?? throw "null pointer dereference").errorLog != null && (((@:checkr _p ?? throw "null pointer dereference").errorLog : Dynamic).__nil__ == null || !((@:checkr _p ?? throw "null pointer dereference").errorLog : Dynamic).__nil__))) {
            @:check2r (@:checkr _p ?? throw "null pointer dereference").errorLog.printf(_format?.__copy__(), ...(_args : Array<stdgo.AnyInterface>));
        } else {
            stdgo._internal.log.Log_printf.printf(_format?.__copy__(), ...(_args : Array<stdgo.AnyInterface>));
        };
    }
    @:keep
    @:tdfield
    static public function _copyBuffer( _p:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_reverseproxy.ReverseProxy>, _dst:stdgo._internal.io.Io_writer.Writer, _src:stdgo._internal.io.Io_reader.Reader, _buf:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_reverseproxy.ReverseProxy> = _p;
        if ((_buf.length) == ((0 : stdgo.GoInt))) {
            _buf = (new stdgo.Slice<stdgo.GoUInt8>((32768 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        };
        var _written:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        while (true) {
            var __tmp__ = _src.read(_buf), _nr:stdgo.GoInt = __tmp__._0, _rerr:stdgo.Error = __tmp__._1;
            if (((_rerr != null && stdgo.Go.toInterface(_rerr) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF)) : Bool) && (stdgo.Go.toInterface(_rerr) != stdgo.Go.toInterface(stdgo._internal.context.Context_canceled.canceled)) : Bool)) {
                @:check2r _p._logf(("httputil: ReverseProxy read error during body copy: %v" : stdgo.GoString), stdgo.Go.toInterface(_rerr));
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
                    return { _0 : _written, _1 : stdgo._internal.io.Io_errshortwrite.errShortWrite };
                };
            };
            if (_rerr != null) {
                if (stdgo.Go.toInterface(_rerr) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                    _rerr = (null : stdgo.Error);
                };
                return { _0 : _written, _1 : _rerr };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _copyResponse( _p:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_reverseproxy.ReverseProxy>, _dst:stdgo._internal.net.http.Http_responsewriter.ResponseWriter, _src:stdgo._internal.io.Io_reader.Reader, _flushInterval:stdgo._internal.time.Time_duration.Duration):stdgo.Error {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_reverseproxy.ReverseProxy> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _w:stdgo._internal.io.Io_writer.Writer = _dst;
            if (_flushInterval != ((0i64 : stdgo._internal.time.Time_duration.Duration))) {
                var _mlw = (stdgo.Go.setRef(({ _dst : _dst, _flush : @:check2r stdgo._internal.net.http.Http_newresponsecontroller.newResponseController(_dst).flush, _latency : _flushInterval } : stdgo._internal.net.http.httputil.Httputil_t_maxlatencywriter.T_maxLatencyWriter)) : stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_t_maxlatencywriter.T_maxLatencyWriter>);
                {
                    final __f__ = @:check2r _mlw._stop;
                    __deferstack__.unshift({ ran : false, f : () -> __f__() });
                };
                (@:checkr _mlw ?? throw "null pointer dereference")._flushPending = true;
                (@:checkr _mlw ?? throw "null pointer dereference")._t = stdgo._internal.time.Time_afterfunc.afterFunc(_flushInterval, @:check2r _mlw._delayedFlush);
                _w = stdgo.Go.asInterface(_mlw);
            };
            var _buf:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
            if ((@:checkr _p ?? throw "null pointer dereference").bufferPool != null) {
                _buf = (@:checkr _p ?? throw "null pointer dereference").bufferPool.get();
                {
                    var _a0 = _buf;
                    final __f__ = (@:checkr _p ?? throw "null pointer dereference").bufferPool.put;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            var __tmp__ = @:check2r _p._copyBuffer(_w, _src, _buf), __16:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
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
    @:keep
    @:tdfield
    static public function _flushInterval( _p:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_reverseproxy.ReverseProxy>, _res:stdgo.Ref<stdgo._internal.net.http.Http_response.Response>):stdgo._internal.time.Time_duration.Duration {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_reverseproxy.ReverseProxy> = _p;
        var _resCT = ((@:checkr _res ?? throw "null pointer dereference").header.get(("Content-Type" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        {
            var __tmp__ = stdgo._internal.mime.Mime_parsemediatype.parseMediaType(_resCT?.__copy__()), _baseCT:stdgo.GoString = __tmp__._0, __0:stdgo.GoMap<stdgo.GoString, stdgo.GoString> = __tmp__._1, __1:stdgo.Error = __tmp__._2;
            if (_baseCT == (("text/event-stream" : stdgo.GoString))) {
                return (-1i64 : stdgo._internal.time.Time_duration.Duration);
            };
        };
        if ((@:checkr _res ?? throw "null pointer dereference").contentLength == ((-1i64 : stdgo.GoInt64))) {
            return (-1i64 : stdgo._internal.time.Time_duration.Duration);
        };
        return (@:checkr _p ?? throw "null pointer dereference").flushInterval;
    }
    @:keep
    @:tdfield
    static public function serveHTTP( _p:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_reverseproxy.ReverseProxy>, _rw:stdgo._internal.net.http.Http_responsewriter.ResponseWriter, _req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_reverseproxy.ReverseProxy> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _transport = ((@:checkr _p ?? throw "null pointer dereference").transport : stdgo._internal.net.http.Http_roundtripper.RoundTripper);
            if (_transport == null) {
                _transport = stdgo._internal.net.http.Http_defaulttransport.defaultTransport;
            };
            var _ctx = (@:check2r _req.context() : stdgo._internal.context.Context_context.Context);
            if (_ctx.done() != null) {} else {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_rw) : stdgo._internal.net.http.Http_closenotifier.CloseNotifier)) : stdgo._internal.net.http.Http_closenotifier.CloseNotifier), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo._internal.net.http.Http_closenotifier.CloseNotifier), _1 : false };
                }, _cn = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    var _cancel:stdgo._internal.context.Context_cancelfunc.CancelFunc = (null : stdgo._internal.context.Context_cancelfunc.CancelFunc);
                    {
                        var __tmp__ = stdgo._internal.context.Context_withcancel.withCancel(_ctx);
                        _ctx = @:tmpset0 __tmp__._0;
                        _cancel = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __f__ = _cancel;
                        __deferstack__.unshift({ ran : false, f : () -> __f__() });
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
            var _outreq = @:check2r _req.clone(_ctx);
            if ((@:checkr _req ?? throw "null pointer dereference").contentLength == ((0i64 : stdgo.GoInt64))) {
                (@:checkr _outreq ?? throw "null pointer dereference").body = (null : stdgo._internal.io.Io_readcloser.ReadCloser);
            };
            if ((@:checkr _outreq ?? throw "null pointer dereference").body != null) {
                {
                    final __f__ = (@:checkr _outreq ?? throw "null pointer dereference").body.close;
                    __deferstack__.unshift({ ran : false, f : () -> __f__() });
                };
            };
            if ((@:checkr _outreq ?? throw "null pointer dereference").header == null) {
                (@:checkr _outreq ?? throw "null pointer dereference").header = (({
                    final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
                    x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
                    {};
                    x;
                } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.http.Http_header.Header);
            };
            if (((@:checkr _p ?? throw "null pointer dereference").director != null) == (((@:checkr _p ?? throw "null pointer dereference").rewrite != null))) {
                @:check2r _p._getErrorHandler()(_rw, _req, stdgo._internal.errors.Errors_new_.new_(("ReverseProxy must have exactly one of Director or Rewrite set" : stdgo.GoString)));
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return;
                };
            };
            if ((@:checkr _p ?? throw "null pointer dereference").director != null) {
                (@:checkr _p ?? throw "null pointer dereference").director(_outreq);
                if ((@:checkr _outreq ?? throw "null pointer dereference").form != null) {
                    (@:checkr (@:checkr _outreq ?? throw "null pointer dereference").uRL ?? throw "null pointer dereference").rawQuery = stdgo._internal.net.http.httputil.Httputil__cleanqueryparams._cleanQueryParams((@:checkr (@:checkr _outreq ?? throw "null pointer dereference").uRL ?? throw "null pointer dereference").rawQuery?.__copy__())?.__copy__();
                };
            };
            (@:checkr _outreq ?? throw "null pointer dereference").close = false;
            var _reqUpType = (stdgo._internal.net.http.httputil.Httputil__upgradetype._upgradeType((@:checkr _outreq ?? throw "null pointer dereference").header)?.__copy__() : stdgo.GoString);
            if (!stdgo._internal.net.http.internal.ascii.Ascii_isprint.isPrint(_reqUpType?.__copy__())) {
                @:check2r _p._getErrorHandler()(_rw, _req, stdgo._internal.fmt.Fmt_errorf.errorf(("client tried to switch to invalid protocol %q" : stdgo.GoString), stdgo.Go.toInterface(_reqUpType)));
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return;
                };
            };
            stdgo._internal.net.http.httputil.Httputil__removehopbyhopheaders._removeHopByHopHeaders((@:checkr _outreq ?? throw "null pointer dereference").header);
            if (_internal.golang_dot_org.x.net.http.httpguts.Httpguts_headervaluescontainstoken.headerValuesContainsToken(((@:checkr _req ?? throw "null pointer dereference").header[("Te" : stdgo.GoString)] ?? (null : stdgo.Slice<stdgo.GoString>)), ("trailers" : stdgo.GoString))) {
                (@:checkr _outreq ?? throw "null pointer dereference").header.set(("Te" : stdgo.GoString), ("trailers" : stdgo.GoString));
            };
            if (_reqUpType != ((stdgo.Go.str() : stdgo.GoString))) {
                (@:checkr _outreq ?? throw "null pointer dereference").header.set(("Connection" : stdgo.GoString), ("Upgrade" : stdgo.GoString));
                (@:checkr _outreq ?? throw "null pointer dereference").header.set(("Upgrade" : stdgo.GoString), _reqUpType?.__copy__());
            };
            if ((@:checkr _p ?? throw "null pointer dereference").rewrite != null) {
                (@:checkr _outreq ?? throw "null pointer dereference").header.del(("Forwarded" : stdgo.GoString));
                (@:checkr _outreq ?? throw "null pointer dereference").header.del(("X-Forwarded-For" : stdgo.GoString));
                (@:checkr _outreq ?? throw "null pointer dereference").header.del(("X-Forwarded-Host" : stdgo.GoString));
                (@:checkr _outreq ?? throw "null pointer dereference").header.del(("X-Forwarded-Proto" : stdgo.GoString));
                (@:checkr (@:checkr _outreq ?? throw "null pointer dereference").uRL ?? throw "null pointer dereference").rawQuery = stdgo._internal.net.http.httputil.Httputil__cleanqueryparams._cleanQueryParams((@:checkr (@:checkr _outreq ?? throw "null pointer dereference").uRL ?? throw "null pointer dereference").rawQuery?.__copy__())?.__copy__();
                var _pr = (stdgo.Go.setRef(({ in_ : _req, out : _outreq } : stdgo._internal.net.http.httputil.Httputil_proxyrequest.ProxyRequest)) : stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_proxyrequest.ProxyRequest>);
                (@:checkr _p ?? throw "null pointer dereference").rewrite(_pr);
                _outreq = (@:checkr _pr ?? throw "null pointer dereference").out;
            } else {
                {
                    var __tmp__ = stdgo._internal.net.Net_splithostport.splitHostPort((@:checkr _req ?? throw "null pointer dereference").remoteAddr?.__copy__()), _clientIP:stdgo.GoString = __tmp__._0, __40:stdgo.GoString = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                    if (_err == null) {
                        var __tmp__ = ((@:checkr _outreq ?? throw "null pointer dereference").header != null && (@:checkr _outreq ?? throw "null pointer dereference").header.__exists__(("X-Forwarded-For" : stdgo.GoString)) ? { _0 : (@:checkr _outreq ?? throw "null pointer dereference").header[("X-Forwarded-For" : stdgo.GoString)], _1 : true } : { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : false }), _prior:stdgo.Slice<stdgo.GoString> = __tmp__._0, _ok:Bool = __tmp__._1;
                        var _omit = (_ok && (_prior == null) : Bool);
                        if (((_prior.length) > (0 : stdgo.GoInt) : Bool)) {
                            _clientIP = ((stdgo._internal.strings.Strings_join.join(_prior, (", " : stdgo.GoString)) + (", " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _clientIP?.__copy__() : stdgo.GoString)?.__copy__();
                        };
                        if (!_omit) {
                            (@:checkr _outreq ?? throw "null pointer dereference").header.set(("X-Forwarded-For" : stdgo.GoString), _clientIP?.__copy__());
                        };
                    };
                };
            };
            {
                var __tmp__ = ((@:checkr _outreq ?? throw "null pointer dereference").header != null && (@:checkr _outreq ?? throw "null pointer dereference").header.__exists__(("User-Agent" : stdgo.GoString)) ? { _0 : (@:checkr _outreq ?? throw "null pointer dereference").header[("User-Agent" : stdgo.GoString)], _1 : true } : { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : false }), __40:stdgo.Slice<stdgo.GoString> = __tmp__._0, _ok:Bool = __tmp__._1;
                if (!_ok) {
                    (@:checkr _outreq ?? throw "null pointer dereference").header.set(("User-Agent" : stdgo.GoString), (stdgo.Go.str() : stdgo.GoString)?.__copy__());
                };
            };
            var _trace = (stdgo.Go.setRef(({ got1xxResponse : function(_code:stdgo.GoInt, _header:stdgo._internal.net.textproto.Textproto_mimeheader.MIMEHeader):stdgo.Error {
                var _h = (_rw.header() : stdgo._internal.net.http.Http_header.Header);
                stdgo._internal.net.http.httputil.Httputil__copyheader._copyHeader(_h, (_header : stdgo._internal.net.http.Http_header.Header));
                _rw.writeHeader(_code);
                for (_k => _ in _h) {
                    if (_h != null) _h.__remove__(_k);
                };
                return (null : stdgo.Error);
            } } : stdgo._internal.net.http.httptrace.Httptrace_clienttrace.ClientTrace)) : stdgo.Ref<stdgo._internal.net.http.httptrace.Httptrace_clienttrace.ClientTrace>);
            _outreq = @:check2r _outreq.withContext(stdgo._internal.net.http.httptrace.Httptrace_withclienttrace.withClientTrace(@:check2r _outreq.context(), _trace));
            var __tmp__ = _transport.roundTrip(_outreq), _res:stdgo.Ref<stdgo._internal.net.http.Http_response.Response> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                @:check2r _p._getErrorHandler()(_rw, _outreq, _err);
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return;
                };
            };
            if ((@:checkr _res ?? throw "null pointer dereference").statusCode == ((101 : stdgo.GoInt))) {
                if (!@:check2r _p._modifyResponse(_rw, _res, _outreq)) {
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return;
                    };
                };
                @:check2r _p._handleUpgradeResponse(_rw, _outreq, _res);
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return;
                };
            };
            stdgo._internal.net.http.httputil.Httputil__removehopbyhopheaders._removeHopByHopHeaders((@:checkr _res ?? throw "null pointer dereference").header);
            if (!@:check2r _p._modifyResponse(_rw, _res, _outreq)) {
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return;
                };
            };
            stdgo._internal.net.http.httputil.Httputil__copyheader._copyHeader(_rw.header(), (@:checkr _res ?? throw "null pointer dereference").header);
            var _announcedTrailers = ((@:checkr _res ?? throw "null pointer dereference").trailer.length : stdgo.GoInt);
            if ((_announcedTrailers > (0 : stdgo.GoInt) : Bool)) {
                var _trailerKeys = (new stdgo.Slice<stdgo.GoString>((0 : stdgo.GoInt).toBasic(), ((@:checkr _res ?? throw "null pointer dereference").trailer.length)).__setString__() : stdgo.Slice<stdgo.GoString>);
                for (_k => _ in (@:checkr _res ?? throw "null pointer dereference").trailer) {
                    _trailerKeys = (_trailerKeys.__append__(_k?.__copy__()));
                };
                _rw.header().add(("Trailer" : stdgo.GoString), stdgo._internal.strings.Strings_join.join(_trailerKeys, (", " : stdgo.GoString))?.__copy__());
            };
            _rw.writeHeader((@:checkr _res ?? throw "null pointer dereference").statusCode);
            _err = @:check2r _p._copyResponse(_rw, (@:checkr _res ?? throw "null pointer dereference").body, @:check2r _p._flushInterval(_res));
            if (_err != null) {
                {
                    final __f__ = (@:checkr _res ?? throw "null pointer dereference").body.close;
                    __deferstack__.unshift({ ran : false, f : () -> __f__() });
                };
                if (!stdgo._internal.net.http.httputil.Httputil__shouldpaniconcopyerror._shouldPanicOnCopyError(_req)) {
                    @:check2r _p._logf(("suppressing panic for copyResponse error in test; copy error: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return;
                    };
                };
                throw stdgo.Go.toInterface(stdgo._internal.net.http.Http_erraborthandler.errAbortHandler);
            };
            (@:checkr _res ?? throw "null pointer dereference").body.close();
            if ((((@:checkr _res ?? throw "null pointer dereference").trailer.length) > (0 : stdgo.GoInt) : Bool)) {
                @:check2r stdgo._internal.net.http.Http_newresponsecontroller.newResponseController(_rw).flush();
            };
            if (((@:checkr _res ?? throw "null pointer dereference").trailer.length) == (_announcedTrailers)) {
                stdgo._internal.net.http.httputil.Httputil__copyheader._copyHeader(_rw.header(), (@:checkr _res ?? throw "null pointer dereference").trailer);
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return;
                };
            };
            for (_k => _vv in (@:checkr _res ?? throw "null pointer dereference").trailer) {
                _k = (("Trailer:" : stdgo.GoString) + _k?.__copy__() : stdgo.GoString)?.__copy__();
                for (__65 => _v in _vv) {
                    _rw.header().add(_k?.__copy__(), _v?.__copy__());
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
    @:keep
    @:tdfield
    static public function _modifyResponse( _p:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_reverseproxy.ReverseProxy>, _rw:stdgo._internal.net.http.Http_responsewriter.ResponseWriter, _res:stdgo.Ref<stdgo._internal.net.http.Http_response.Response>, _req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):Bool {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_reverseproxy.ReverseProxy> = _p;
        if ((@:checkr _p ?? throw "null pointer dereference").modifyResponse == null) {
            return true;
        };
        {
            var _err = ((@:checkr _p ?? throw "null pointer dereference").modifyResponse(_res) : stdgo.Error);
            if (_err != null) {
                (@:checkr _res ?? throw "null pointer dereference").body.close();
                @:check2r _p._getErrorHandler()(_rw, _req, _err);
                return false;
            };
        };
        return true;
    }
    @:keep
    @:tdfield
    static public function _getErrorHandler( _p:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_reverseproxy.ReverseProxy>):(stdgo._internal.net.http.Http_responsewriter.ResponseWriter, stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, stdgo.Error) -> Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_reverseproxy.ReverseProxy> = _p;
        if ((@:checkr _p ?? throw "null pointer dereference").errorHandler != null) {
            return (@:checkr _p ?? throw "null pointer dereference").errorHandler;
        };
        return @:check2r _p._defaultErrorHandler;
    }
    @:keep
    @:tdfield
    static public function _defaultErrorHandler( _p:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_reverseproxy.ReverseProxy>, _rw:stdgo._internal.net.http.Http_responsewriter.ResponseWriter, _req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, _err:stdgo.Error):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_reverseproxy.ReverseProxy> = _p;
        @:check2r _p._logf(("http: proxy error: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        _rw.writeHeader((502 : stdgo.GoInt));
    }
}
