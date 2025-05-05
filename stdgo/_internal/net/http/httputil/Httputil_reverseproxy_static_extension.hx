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
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L729"
            if (!stdgo._internal.net.http.internal.ascii.Ascii_isprint.isPrint(_resUpType?.__copy__())) {
                //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L730"
                _p._getErrorHandler()(_rw, _req, stdgo._internal.fmt.Fmt_errorf.errorf(("backend tried to switch to invalid protocol %q" : stdgo.GoString), stdgo.Go.toInterface(_resUpType)));
            };
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L732"
            if (!stdgo._internal.net.http.internal.ascii.Ascii_equalfold.equalFold(_reqUpType?.__copy__(), _resUpType?.__copy__())) {
                //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L733"
                _p._getErrorHandler()(_rw, _req, stdgo._internal.fmt.Fmt_errorf.errorf(("backend tried to switch protocol %q when %q was requested" : stdgo.GoString), stdgo.Go.toInterface(_resUpType), stdgo.Go.toInterface(_reqUpType)));
                //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L734"
                return;
            };
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _res ?? throw "null pointer dereference").body) : stdgo._internal.io.Io_readwritecloser.ReadWriteCloser)) : stdgo._internal.io.Io_readwritecloser.ReadWriteCloser), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.io.Io_readwritecloser.ReadWriteCloser), _1 : false };
            }, _backConn = __tmp__._0, _ok = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L738"
            if (!_ok) {
                //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L739"
                _p._getErrorHandler()(_rw, _req, stdgo._internal.fmt.Fmt_errorf.errorf(("internal error: 101 switching protocols response with non-writable body" : stdgo.GoString)));
                //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L740"
                return;
            };
            var _rc = stdgo._internal.net.http.Http_newresponsecontroller.newResponseController(_rw);
            var __tmp__ = _rc.hijack(), _conn:stdgo._internal.net.Net_conn.Conn = __tmp__._0, _brw:stdgo.Ref<stdgo._internal.bufio.Bufio_readwriter.ReadWriter> = __tmp__._1, _hijackErr:stdgo.Error = __tmp__._2;
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L745"
            if (stdgo._internal.errors.Errors_is_.is_(_hijackErr, stdgo.Go.asInterface(stdgo._internal.net.http.Http_errnotsupported.errNotSupported))) {
                //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L746"
                _p._getErrorHandler()(_rw, _req, stdgo._internal.fmt.Fmt_errorf.errorf(("can\'t switch protocols using non-Hijacker ResponseWriter type %T" : stdgo.GoString), stdgo.Go.toInterface(_rw)));
                //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L747"
                return;
            };
            var _backConnCloseCh = (new stdgo.Chan<Bool>(0, () -> false) : stdgo.Chan<Bool>);
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L751"
            stdgo.Go.routine(() -> ({
                var a = function():Void {
                    //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L754"
                    {
                        var __select__ = true;
                        var __c__0 = null;
var __c__1 = null;
                        while (__select__) {
                            if ({
                                if (__c__0 == null) {
                                    __c__0 = _req.context().done();
                                };
                                __c__0 != null && __c__0.__isGet__(true);
                            }) {
                                __select__ = false;
                                {
                                    __c__0.__get__();
                                    {};
                                };
                            } else if ({
                                if (__c__1 == null) {
                                    __c__1 = _backConnCloseCh;
                                };
                                __c__1 != null && __c__1.__isGet__(true);
                            }) {
                                __select__ = false;
                                {
                                    __c__1.__get__();
                                    {};
                                };
                            };
                            #if (sys || hxnodejs) Sys.sleep(0.01) #else null #end;
                            stdgo._internal.internal.Async.tick();
                        };
                        __c__0.__reset__();
__c__1.__reset__();
                    };
                    //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L758"
                    _backConn.close();
                };
                a();
            }));
            {
                var _a0 = _backConnCloseCh;
                __deferstack__.unshift({ ran : false, f : () -> if (_a0 != null) _a0.__close__() });
            };
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L762"
            if (_hijackErr != null) {
                //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L763"
                _p._getErrorHandler()(_rw, _req, stdgo._internal.fmt.Fmt_errorf.errorf(("Hijack failed on protocol switch: %v" : stdgo.GoString), stdgo.Go.toInterface(_hijackErr)));
                //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L764"
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
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L768"
            stdgo._internal.net.http.httputil.Httputil__copyheader._copyHeader(_rw.header(), (@:checkr _res ?? throw "null pointer dereference").header);
            (@:checkr _res ?? throw "null pointer dereference").header = _rw.header();
            (@:checkr _res ?? throw "null pointer dereference").body = (null : stdgo._internal.io.Io_readcloser.ReadCloser);
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L772"
            {
                var _err = (_res.write(stdgo.Go.asInterface(_brw)) : stdgo.Error);
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L773"
                    _p._getErrorHandler()(_rw, _req, stdgo._internal.fmt.Fmt_errorf.errorf(("response write: %v" : stdgo.GoString), stdgo.Go.toInterface(_err)));
                    //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L774"
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
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L776"
            {
                var _err = (_brw.flush() : stdgo.Error);
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L777"
                    _p._getErrorHandler()(_rw, _req, stdgo._internal.fmt.Fmt_errorf.errorf(("response flush: %v" : stdgo.GoString), stdgo.Go.toInterface(_err)));
                    //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L778"
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
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L782"
            {
                final __tmp__0 = _errc;
                stdgo.Go.routine(() -> _spc._copyToBackend(__tmp__0));
            };
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L783"
            {
                final __tmp__0 = _errc;
                stdgo.Go.routine(() -> _spc._copyFromBackend(__tmp__0));
            };
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L784"
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
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
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
        //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L663"
        if (({
            final value = (@:checkr _p ?? throw "null pointer dereference").errorLog;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L664"
            (@:checkr _p ?? throw "null pointer dereference").errorLog.printf(_format?.__copy__(), ...(_args : Array<stdgo.AnyInterface>));
        } else {
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L666"
            stdgo._internal.log.Log_printf.printf(_format?.__copy__(), ...(_args : Array<stdgo.AnyInterface>));
        };
    }
    @:keep
    @:tdfield
    static public function _copyBuffer( _p:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_reverseproxy.ReverseProxy>, _dst:stdgo._internal.io.Io_writer.Writer, _src:stdgo._internal.io.Io_reader.Reader, _buf:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_reverseproxy.ReverseProxy> = _p;
        //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L632"
        if ((_buf.length) == ((0 : stdgo.GoInt))) {
            _buf = (new stdgo.Slice<stdgo.GoUInt8>((32768 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        };
        var _written:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L636"
        while (true) {
            var __tmp__ = _src.read(_buf), _nr:stdgo.GoInt = __tmp__._0, _rerr:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L638"
            if (((_rerr != null && stdgo.Go.toInterface(_rerr) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF)) : Bool) && (stdgo.Go.toInterface(_rerr) != stdgo.Go.toInterface(stdgo._internal.context.Context_canceled.canceled)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L639"
                _p._logf(("httputil: ReverseProxy read error during body copy: %v" : stdgo.GoString), stdgo.Go.toInterface(_rerr));
            };
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L641"
            if ((_nr > (0 : stdgo.GoInt) : Bool)) {
                var __tmp__ = _dst.write((_buf.__slice__(0, _nr) : stdgo.Slice<stdgo.GoUInt8>)), _nw:stdgo.GoInt = __tmp__._0, _werr:stdgo.Error = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L643"
                if ((_nw > (0 : stdgo.GoInt) : Bool)) {
                    _written = (_written + ((_nw : stdgo.GoInt64)) : stdgo.GoInt64);
                };
                //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L646"
                if (_werr != null) {
                    //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L647"
                    return { _0 : _written, _1 : _werr };
                };
                //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L649"
                if (_nr != (_nw)) {
                    //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L650"
                    return { _0 : _written, _1 : stdgo._internal.io.Io_errshortwrite.errShortWrite };
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L653"
            if (_rerr != null) {
                //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L654"
                if (stdgo.Go.toInterface(_rerr) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                    _rerr = (null : stdgo.Error);
                };
                //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L657"
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
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L605"
            if (_flushInterval != ((0i64 : stdgo._internal.time.Time_duration.Duration))) {
                var _mlw = (stdgo.Go.setRef(({ _dst : _dst, _flush : stdgo._internal.net.http.Http_newresponsecontroller.newResponseController(_dst).flush, _latency : _flushInterval } : stdgo._internal.net.http.httputil.Httputil_t_maxlatencywriter.T_maxLatencyWriter)) : stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_t_maxlatencywriter.T_maxLatencyWriter>);
                {
                    final __f__ = _mlw._stop;
                    __deferstack__.unshift({ ran : false, f : () -> __f__() });
                };
                (@:checkr _mlw ?? throw "null pointer dereference")._flushPending = true;
                (@:checkr _mlw ?? throw "null pointer dereference")._t = stdgo._internal.time.Time_afterfunc.afterFunc(_flushInterval, _mlw._delayedFlush);
                _w = stdgo.Go.asInterface(_mlw);
            };
            var _buf:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L621"
            if ((@:checkr _p ?? throw "null pointer dereference").bufferPool != null) {
                _buf = (@:checkr _p ?? throw "null pointer dereference").bufferPool.get();
                {
                    var _a0 = _buf;
                    final __f__ = (@:checkr _p ?? throw "null pointer dereference").bufferPool.put;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            var __tmp__ = _p._copyBuffer(_w, _src, _buf), __16:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L626"
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
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
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
        //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L590"
        {
            var __tmp__ = stdgo._internal.mime.Mime_parsemediatype.parseMediaType(_resCT?.__copy__()), _baseCT:stdgo.GoString = __tmp__._0, __0:stdgo.GoMap<stdgo.GoString, stdgo.GoString> = __tmp__._1, __1:stdgo.Error = __tmp__._2;
            if (_baseCT == (("text/event-stream" : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L591"
                return (-1i64 : stdgo._internal.time.Time_duration.Duration);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L595"
        if ((@:checkr _res ?? throw "null pointer dereference").contentLength == ((-1i64 : stdgo.GoInt64))) {
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L596"
            return (-1i64 : stdgo._internal.time.Time_duration.Duration);
        };
        //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L599"
        return (@:checkr _p ?? throw "null pointer dereference").flushInterval;
    }
    @:keep
    @:tdfield
    static public function serveHTTP( _p:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_reverseproxy.ReverseProxy>, _rw:stdgo._internal.net.http.Http_responsewriter.ResponseWriter, _req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_reverseproxy.ReverseProxy> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _transport = ((@:checkr _p ?? throw "null pointer dereference").transport : stdgo._internal.net.http.Http_roundtripper.RoundTripper);
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L334"
            if (_transport == null) {
                _transport = stdgo._internal.net.http.Http_defaulttransport.defaultTransport;
            };
            var _ctx = (_req.context() : stdgo._internal.context.Context_context.Context);
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L339"
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
                    //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L355"
                    stdgo.Go.routine(() -> ({
                        var a = function():Void {
                            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L356"
                            {
                                var __select__ = true;
                                var __c__0 = null;
var __c__1 = null;
                                while (__select__) {
                                    if ({
                                        if (__c__0 == null) {
                                            __c__0 = _notifyChan;
                                        };
                                        __c__0 != null && __c__0.__isGet__(true);
                                    }) {
                                        __select__ = false;
                                        {
                                            __c__0.__get__();
                                            {
                                                //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L358"
                                                _cancel();
                                            };
                                        };
                                    } else if ({
                                        if (__c__1 == null) {
                                            __c__1 = _ctx.done();
                                        };
                                        __c__1 != null && __c__1.__isGet__(true);
                                    }) {
                                        __select__ = false;
                                        {
                                            __c__1.__get__();
                                            {};
                                        };
                                    };
                                    #if (sys || hxnodejs) Sys.sleep(0.01) #else null #end;
                                    stdgo._internal.internal.Async.tick();
                                };
                                __c__0.__reset__();
__c__1.__reset__();
                            };
                        };
                        a();
                    }));
                };
            };
            var _outreq = _req.clone(_ctx);
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L365"
            if ((@:checkr _req ?? throw "null pointer dereference").contentLength == ((0i64 : stdgo.GoInt64))) {
                (@:checkr _outreq ?? throw "null pointer dereference").body = (null : stdgo._internal.io.Io_readcloser.ReadCloser);
            };
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L368"
            if ((@:checkr _outreq ?? throw "null pointer dereference").body != null) {
                {
                    final __f__ = (@:checkr _outreq ?? throw "null pointer dereference").body.close;
                    __deferstack__.unshift({ ran : false, f : () -> __f__() });
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L377"
            if ((@:checkr _outreq ?? throw "null pointer dereference").header == null) {
                (@:checkr _outreq ?? throw "null pointer dereference").header = (({
                    final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
                    x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
                    {};
                    x;
                } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.http.Http_header.Header);
            };
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L381"
            if (((@:checkr _p ?? throw "null pointer dereference").director != null) == (((@:checkr _p ?? throw "null pointer dereference").rewrite != null))) {
                //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L382"
                _p._getErrorHandler()(_rw, _req, stdgo._internal.errors.Errors_new_.new_(("ReverseProxy must have exactly one of Director or Rewrite set" : stdgo.GoString)));
                //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L383"
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L386"
            if ((@:checkr _p ?? throw "null pointer dereference").director != null) {
                //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L387"
                (@:checkr _p ?? throw "null pointer dereference").director(_outreq);
                //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L388"
                if ((@:checkr _outreq ?? throw "null pointer dereference").form != null) {
                    (@:checkr (@:checkr _outreq ?? throw "null pointer dereference").uRL ?? throw "null pointer dereference").rawQuery = stdgo._internal.net.http.httputil.Httputil__cleanqueryparams._cleanQueryParams((@:checkr (@:checkr _outreq ?? throw "null pointer dereference").uRL ?? throw "null pointer dereference").rawQuery?.__copy__())?.__copy__();
                };
            };
            (@:checkr _outreq ?? throw "null pointer dereference").close = false;
            var _reqUpType = (stdgo._internal.net.http.httputil.Httputil__upgradetype._upgradeType((@:checkr _outreq ?? throw "null pointer dereference").header)?.__copy__() : stdgo.GoString);
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L395"
            if (!stdgo._internal.net.http.internal.ascii.Ascii_isprint.isPrint(_reqUpType?.__copy__())) {
                //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L396"
                _p._getErrorHandler()(_rw, _req, stdgo._internal.fmt.Fmt_errorf.errorf(("client tried to switch to invalid protocol %q" : stdgo.GoString), stdgo.Go.toInterface(_reqUpType)));
                //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L397"
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L399"
            stdgo._internal.net.http.httputil.Httputil__removehopbyhopheaders._removeHopByHopHeaders((@:checkr _outreq ?? throw "null pointer dereference").header);
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L406"
            if (_internal.golangdotorg.x.net.http.httpguts.Httpguts_headervaluescontainstoken.headerValuesContainsToken(((@:checkr _req ?? throw "null pointer dereference").header[("Te" : stdgo.GoString)] ?? (null : stdgo.Slice<stdgo.GoString>)), ("trailers" : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L407"
                (@:checkr _outreq ?? throw "null pointer dereference").header.set(("Te" : stdgo.GoString), ("trailers" : stdgo.GoString));
            };
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L412"
            if (_reqUpType != ((stdgo.Go.str() : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L413"
                (@:checkr _outreq ?? throw "null pointer dereference").header.set(("Connection" : stdgo.GoString), ("Upgrade" : stdgo.GoString));
                //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L414"
                (@:checkr _outreq ?? throw "null pointer dereference").header.set(("Upgrade" : stdgo.GoString), _reqUpType?.__copy__());
            };
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L417"
            if ((@:checkr _p ?? throw "null pointer dereference").rewrite != null) {
                //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L421"
                (@:checkr _outreq ?? throw "null pointer dereference").header.del(("Forwarded" : stdgo.GoString));
                //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L422"
                (@:checkr _outreq ?? throw "null pointer dereference").header.del(("X-Forwarded-For" : stdgo.GoString));
                //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L423"
                (@:checkr _outreq ?? throw "null pointer dereference").header.del(("X-Forwarded-Host" : stdgo.GoString));
                //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L424"
                (@:checkr _outreq ?? throw "null pointer dereference").header.del(("X-Forwarded-Proto" : stdgo.GoString));
                (@:checkr (@:checkr _outreq ?? throw "null pointer dereference").uRL ?? throw "null pointer dereference").rawQuery = stdgo._internal.net.http.httputil.Httputil__cleanqueryparams._cleanQueryParams((@:checkr (@:checkr _outreq ?? throw "null pointer dereference").uRL ?? throw "null pointer dereference").rawQuery?.__copy__())?.__copy__();
                var _pr = (stdgo.Go.setRef(({ in_ : _req, out : _outreq } : stdgo._internal.net.http.httputil.Httputil_proxyrequest.ProxyRequest)) : stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_proxyrequest.ProxyRequest>);
                //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L433"
                (@:checkr _p ?? throw "null pointer dereference").rewrite(_pr);
                _outreq = (@:checkr _pr ?? throw "null pointer dereference").out;
            } else {
                //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L436"
                {
                    var __tmp__ = stdgo._internal.net.Net_splithostport.splitHostPort((@:checkr _req ?? throw "null pointer dereference").remoteAddr?.__copy__()), _clientIP:stdgo.GoString = __tmp__._0, __40:stdgo.GoString = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                    if (_err == null) {
                        var __tmp__ = ((@:checkr _outreq ?? throw "null pointer dereference").header != null && (@:checkr _outreq ?? throw "null pointer dereference").header.__exists__(("X-Forwarded-For" : stdgo.GoString)) ? { _0 : (@:checkr _outreq ?? throw "null pointer dereference").header[("X-Forwarded-For" : stdgo.GoString)], _1 : true } : { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : false }), _prior:stdgo.Slice<stdgo.GoString> = __tmp__._0, _ok:Bool = __tmp__._1;
                        var _omit = (_ok && (_prior == null) : Bool);
                        //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L442"
                        if (((_prior.length) > (0 : stdgo.GoInt) : Bool)) {
                            _clientIP = ((stdgo._internal.strings.Strings_join.join(_prior, (", " : stdgo.GoString)) + (", " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _clientIP?.__copy__() : stdgo.GoString)?.__copy__();
                        };
                        //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L445"
                        if (!_omit) {
                            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L446"
                            (@:checkr _outreq ?? throw "null pointer dereference").header.set(("X-Forwarded-For" : stdgo.GoString), _clientIP?.__copy__());
                        };
                    };
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L451"
            {
                var __tmp__ = ((@:checkr _outreq ?? throw "null pointer dereference").header != null && (@:checkr _outreq ?? throw "null pointer dereference").header.__exists__(("User-Agent" : stdgo.GoString)) ? { _0 : (@:checkr _outreq ?? throw "null pointer dereference").header[("User-Agent" : stdgo.GoString)], _1 : true } : { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : false }), __40:stdgo.Slice<stdgo.GoString> = __tmp__._0, _ok:Bool = __tmp__._1;
                if (!_ok) {
                    //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L454"
                    (@:checkr _outreq ?? throw "null pointer dereference").header.set(("User-Agent" : stdgo.GoString), (stdgo.Go.str() : stdgo.GoString)?.__copy__());
                };
            };
            var _trace = (stdgo.Go.setRef(({ got1xxResponse : function(_code:stdgo.GoInt, _header:stdgo._internal.net.textproto.Textproto_mimeheader.MIMEHeader):stdgo.Error {
                var _h = (_rw.header() : stdgo._internal.net.http.Http_header.Header);
                //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L460"
                stdgo._internal.net.http.httputil.Httputil__copyheader._copyHeader(_h, (_header : stdgo._internal.net.http.Http_header.Header));
                //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L461"
                _rw.writeHeader(_code);
                //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L464"
                for (_k => _ in _h) {
                    //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L465"
                    if (_h != null) _h.__remove__(_k);
                };
                //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L468"
                return (null : stdgo.Error);
            } } : stdgo._internal.net.http.httptrace.Httptrace_clienttrace.ClientTrace)) : stdgo.Ref<stdgo._internal.net.http.httptrace.Httptrace_clienttrace.ClientTrace>);
            _outreq = _outreq.withContext(stdgo._internal.net.http.httptrace.Httptrace_withclienttrace.withClientTrace(_outreq.context(), _trace));
            var __tmp__ = _transport.roundTrip(_outreq), _res:stdgo.Ref<stdgo._internal.net.http.Http_response.Response> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L474"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L475"
                _p._getErrorHandler()(_rw, _outreq, _err);
                //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L476"
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L480"
            if ((@:checkr _res ?? throw "null pointer dereference").statusCode == ((101 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L481"
                if (!_p._modifyResponse(_rw, _res, _outreq)) {
                    //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L482"
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return;
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L484"
                _p._handleUpgradeResponse(_rw, _outreq, _res);
                //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L485"
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L488"
            stdgo._internal.net.http.httputil.Httputil__removehopbyhopheaders._removeHopByHopHeaders((@:checkr _res ?? throw "null pointer dereference").header);
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L490"
            if (!_p._modifyResponse(_rw, _res, _outreq)) {
                //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L491"
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L494"
            stdgo._internal.net.http.httputil.Httputil__copyheader._copyHeader(_rw.header(), (@:checkr _res ?? throw "null pointer dereference").header);
            var _announcedTrailers = ((@:checkr _res ?? throw "null pointer dereference").trailer.length : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L499"
            if ((_announcedTrailers > (0 : stdgo.GoInt) : Bool)) {
                var _trailerKeys = (new stdgo.Slice<stdgo.GoString>((0 : stdgo.GoInt).toBasic(), ((@:checkr _res ?? throw "null pointer dereference").trailer.length)).__setString__() : stdgo.Slice<stdgo.GoString>);
                //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L501"
                for (_k => _ in (@:checkr _res ?? throw "null pointer dereference").trailer) {
                    _trailerKeys = (_trailerKeys.__append__(_k?.__copy__()) : stdgo.Slice<stdgo.GoString>);
                };
                //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L504"
                _rw.header().add(("Trailer" : stdgo.GoString), stdgo._internal.strings.Strings_join.join(_trailerKeys, (", " : stdgo.GoString))?.__copy__());
            };
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L507"
            _rw.writeHeader((@:checkr _res ?? throw "null pointer dereference").statusCode);
            _err = _p._copyResponse(_rw, (@:checkr _res ?? throw "null pointer dereference").body, _p._flushInterval(_res));
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L510"
            if (_err != null) {
                {
                    final __f__ = (@:checkr _res ?? throw "null pointer dereference").body.close;
                    __deferstack__.unshift({ ran : false, f : () -> __f__() });
                };
                //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L515"
                if (!stdgo._internal.net.http.httputil.Httputil__shouldpaniconcopyerror._shouldPanicOnCopyError(_req)) {
                    //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L516"
                    _p._logf(("suppressing panic for copyResponse error in test; copy error: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                    //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L517"
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return;
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L519"
                throw stdgo.Go.toInterface(stdgo._internal.net.http.Http_erraborthandler.errAbortHandler);
            };
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L521"
            (@:checkr _res ?? throw "null pointer dereference").body.close();
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L523"
            if ((((@:checkr _res ?? throw "null pointer dereference").trailer.length) > (0 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L527"
                stdgo._internal.net.http.Http_newresponsecontroller.newResponseController(_rw).flush();
            };
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L530"
            if (((@:checkr _res ?? throw "null pointer dereference").trailer.length) == (_announcedTrailers)) {
                //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L531"
                stdgo._internal.net.http.httputil.Httputil__copyheader._copyHeader(_rw.header(), (@:checkr _res ?? throw "null pointer dereference").trailer);
                //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L532"
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L535"
            for (_k => _vv in (@:checkr _res ?? throw "null pointer dereference").trailer) {
                _k = (("Trailer:" : stdgo.GoString) + _k?.__copy__() : stdgo.GoString)?.__copy__();
                //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L537"
                for (__65 => _v in _vv) {
                    //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L538"
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
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
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
        //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L321"
        if ((@:checkr _p ?? throw "null pointer dereference").modifyResponse == null) {
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L322"
            return true;
        };
        //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L324"
        {
            var _err = ((@:checkr _p ?? throw "null pointer dereference").modifyResponse(_res) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L325"
                (@:checkr _res ?? throw "null pointer dereference").body.close();
                //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L326"
                _p._getErrorHandler()(_rw, _req, _err);
                //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L327"
                return false;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L329"
        return true;
    }
    @:keep
    @:tdfield
    static public function _getErrorHandler( _p:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_reverseproxy.ReverseProxy>):(stdgo._internal.net.http.Http_responsewriter.ResponseWriter, stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, stdgo.Error) -> Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_reverseproxy.ReverseProxy> = _p;
        //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L312"
        if ((@:checkr _p ?? throw "null pointer dereference").errorHandler != null) {
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L313"
            return (@:checkr _p ?? throw "null pointer dereference").errorHandler;
        };
        //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L315"
        return _p._defaultErrorHandler;
    }
    @:keep
    @:tdfield
    static public function _defaultErrorHandler( _p:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_reverseproxy.ReverseProxy>, _rw:stdgo._internal.net.http.Http_responsewriter.ResponseWriter, _req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, _err:stdgo.Error):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_reverseproxy.ReverseProxy> = _p;
        //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L307"
        _p._logf(("http: proxy error: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L308"
        _rw.writeHeader((502 : stdgo.GoInt));
    }
}
