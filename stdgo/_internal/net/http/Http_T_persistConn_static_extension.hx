package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_persistConn_asInterface) class T_persistConn_static_extension {
    @:keep
    @:tdfield
    static public function _closeLocked( _pc:stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>, _err:stdgo.Error):Void {
        @:recv var _pc:stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn> = _pc;
        if (_err == null) {
            throw stdgo.Go.toInterface(("nil error" : stdgo.GoString));
        };
        (@:checkr _pc ?? throw "null pointer dereference")._broken = true;
        if ((@:checkr _pc ?? throw "null pointer dereference")._closed == null) {
            (@:checkr _pc ?? throw "null pointer dereference")._closed = _err;
            @:check2r (@:checkr _pc ?? throw "null pointer dereference")._t._decConnsPerHost((@:checkr _pc ?? throw "null pointer dereference")._cacheKey?.__copy__());
            if ((@:checkr _pc ?? throw "null pointer dereference")._alt == null) {
                if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.net.http.Http__errCallerOwnsConn._errCallerOwnsConn))) {
                    (@:checkr _pc ?? throw "null pointer dereference")._conn.close();
                };
                if ((@:checkr _pc ?? throw "null pointer dereference")._closech != null) (@:checkr _pc ?? throw "null pointer dereference")._closech.__close__();
            };
        };
        (@:checkr _pc ?? throw "null pointer dereference")._mutateHeaderFunc = null;
    }
    @:keep
    @:tdfield
    static public function _close( _pc:stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>, _err:stdgo.Error):Void {
        @:recv var _pc:stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn> = _pc;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            @:check2 (@:checkr _pc ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = @:check2 (@:checkr _pc ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift(() -> __f__());
            };
            @:check2r _pc._closeLocked(_err);
            {
                for (defer in __deferstack__) {
                    __deferstack__.remove(defer);
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
                __deferstack__.remove(defer);
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
    @:keep
    @:tdfield
    static public function _markReused( _pc:stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>):Void {
        @:recv var _pc:stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn> = _pc;
        @:check2 (@:checkr _pc ?? throw "null pointer dereference")._mu.lock();
        (@:checkr _pc ?? throw "null pointer dereference")._reused = true;
        @:check2 (@:checkr _pc ?? throw "null pointer dereference")._mu.unlock();
    }
    @:keep
    @:tdfield
    static public function _roundTrip( _pc:stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>, _req:stdgo.Ref<stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest>):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } {
        @:recv var _pc:stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn> = _pc;
        var __deferstack__:Array<Void -> Void> = [];
        var _resp = (null : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>), _err = (null : stdgo.Error);
        try {
            stdgo._internal.net.http.Http__testHookEnterRoundTrip._testHookEnterRoundTrip();
            if (!@:check2r (@:checkr _pc ?? throw "null pointer dereference")._t._replaceReqCanceler((@:checkr _req ?? throw "null pointer dereference")._cancelKey?.__copy__(), @:check2r _pc._cancelRequest)) {
                @:check2r (@:checkr _pc ?? throw "null pointer dereference")._t._putOrCloseIdleConn(_pc);
                return {
                    final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo._internal.net.http.Http__errRequestCanceled._errRequestCanceled };
                    _resp = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            @:check2 (@:checkr _pc ?? throw "null pointer dereference")._mu.lock();
            (@:checkr _pc ?? throw "null pointer dereference")._numExpectedResponses++;
            var _headerFn = ((@:checkr _pc ?? throw "null pointer dereference")._mutateHeaderFunc : stdgo._internal.net.http.Http_Header.Header -> Void);
            @:check2 (@:checkr _pc ?? throw "null pointer dereference")._mu.unlock();
            if (_headerFn != null) {
                _headerFn(@:check2r _req._extraHeaders());
            };
            var _requestedGzip = (false : Bool);
            if ((((!(@:checkr (@:checkr _pc ?? throw "null pointer dereference")._t ?? throw "null pointer dereference").disableCompression && (@:checkr _req ?? throw "null pointer dereference").request.header.get(("Accept-Encoding" : stdgo.GoString)) == (stdgo.Go.str()) : Bool) && (@:checkr _req ?? throw "null pointer dereference").request.header.get(("Range" : stdgo.GoString)) == (stdgo.Go.str()) : Bool) && ((@:checkr _req ?? throw "null pointer dereference").request.method != ("HEAD" : stdgo.GoString)) : Bool)) {
                _requestedGzip = true;
                @:check2r _req._extraHeaders().set(("Accept-Encoding" : stdgo.GoString), ("gzip" : stdgo.GoString));
            };
            var _continueCh:stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError> = (null : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>);
            if (((@:check2r _req.protoAtLeast((1 : stdgo.GoInt), (1 : stdgo.GoInt)) && (@:checkr _req ?? throw "null pointer dereference").request.body != null : Bool) && @:check2r _req._expectsContinue() : Bool)) {
                _continueCh = (new stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>((1 : stdgo.GoInt).toBasic(), () -> ({} : stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError)) : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>);
            };
            if ((((@:checkr (@:checkr _pc ?? throw "null pointer dereference")._t ?? throw "null pointer dereference").disableKeepAlives && !@:check2r _req._wantsClose() : Bool) && !stdgo._internal.net.http.Http__isProtocolSwitchHeader._isProtocolSwitchHeader((@:checkr _req ?? throw "null pointer dereference").request.header) : Bool)) {
                @:check2r _req._extraHeaders().set(("Connection" : stdgo.GoString), ("close" : stdgo.GoString));
            };
            var _gone = (new stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>(0, () -> ({} : stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError)) : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>);
            {
                var _a0 = _gone;
                __deferstack__.unshift(() -> if (_a0 != null) _a0.__close__());
            };
            {
                __deferstack__.unshift(() -> ({
                    var a = function():Void {
                        if (_err != null) {
                            @:check2r (@:checkr _pc ?? throw "null pointer dereference")._t._setReqCanceler((@:checkr _req ?? throw "null pointer dereference")._cancelKey?.__copy__(), null);
                        };
                    };
                    a();
                }));
            };
            {};
            var _startBytesWritten = ((@:checkr _pc ?? throw "null pointer dereference")._nwrite : stdgo.GoInt64);
            var _writeErrCh = (new stdgo.Chan<stdgo.Error>((1 : stdgo.GoInt).toBasic(), () -> (null : stdgo.Error)) : stdgo.Chan<stdgo.Error>);
            (@:checkr _pc ?? throw "null pointer dereference")._writech.__send__((new stdgo._internal.net.http.Http_T_writeRequest.T_writeRequest(_req, _writeErrCh, _continueCh) : stdgo._internal.net.http.Http_T_writeRequest.T_writeRequest));
            var _resc = (new stdgo.Chan<stdgo._internal.net.http.Http_T_responseAndError.T_responseAndError>(0, () -> ({} : stdgo._internal.net.http.Http_T_responseAndError.T_responseAndError)) : stdgo.Chan<stdgo._internal.net.http.Http_T_responseAndError.T_responseAndError>);
            (@:checkr _pc ?? throw "null pointer dereference")._reqch.__send__(({ _req : (@:checkr _req ?? throw "null pointer dereference").request, _cancelKey : (@:checkr _req ?? throw "null pointer dereference")._cancelKey?.__copy__(), _ch : _resc, _addedGzip : _requestedGzip, _continueCh : _continueCh, _callerGone : _gone } : stdgo._internal.net.http.Http_T_requestAndChan.T_requestAndChan));
            var _respHeaderTimer:stdgo.Chan<stdgo._internal.time.Time_Time.Time> = (null : stdgo.Chan<stdgo._internal.time.Time_Time.Time>);
            var _cancelChan = (@:checkr (@:checkr _req ?? throw "null pointer dereference").request ?? throw "null pointer dereference").cancel;
            var _ctxDoneChan = @:check2r _req.context().done();
            var _pcClosed = (@:checkr _pc ?? throw "null pointer dereference")._closech;
            var _canceled = (false : Bool);
            while (true) {
                stdgo._internal.net.http.Http__testHookWaitResLoop._testHookWaitResLoop();
                {
                    var __select__ = true;
                    while (__select__) {
                        if (_writeErrCh != null && _writeErrCh.__isGet__()) {
                            __select__ = false;
                            {
                                var _err = _writeErrCh.__get__();
                                {
                                    if (false) {
                                        @:check2r _req._logf(("writeErrCh resv: %T/%#v" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_err));
                                    };
                                    if (_err != null) {
                                        @:check2r _pc._close(stdgo._internal.fmt.Fmt_errorf.errorf(("write error: %w" : stdgo.GoString), stdgo.Go.toInterface(_err)));
                                        {
                                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } = {
                                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } = { _0 : null, _1 : @:check2r _pc._mapRoundTripError(_req, _startBytesWritten, _err) };
                                                _resp = __tmp__._0;
                                                _err = __tmp__._1;
                                                __tmp__;
                                            };
                                            for (defer in __deferstack__) {
                                                __deferstack__.remove(defer);
                                                defer();
                                            };
                                            return __ret__;
                                        };
                                    };
                                    {
                                        var _d = ((@:checkr (@:checkr _pc ?? throw "null pointer dereference")._t ?? throw "null pointer dereference").responseHeaderTimeout : stdgo._internal.time.Time_Duration.Duration);
                                        if ((_d > (0i64 : stdgo._internal.time.Time_Duration.Duration) : Bool)) {
                                            if (false) {
                                                @:check2r _req._logf(("starting timer for %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_d)));
                                            };
                                            var _timer = stdgo._internal.time.Time_newTimer.newTimer(_d);
                                            {
                                                final __f__ = @:check2r _timer.stop;
                                                __deferstack__.unshift(() -> __f__());
                                            };
                                            _respHeaderTimer = (@:checkr _timer ?? throw "null pointer dereference").c;
                                        };
                                    };
                                };
                            };
                        } else if (_pcClosed != null && _pcClosed.__isGet__()) {
                            __select__ = false;
                            {
                                _pcClosed.__get__();
                                {
                                    _pcClosed = (null : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>);
                                    if ((_canceled || @:check2r (@:checkr _pc ?? throw "null pointer dereference")._t._replaceReqCanceler((@:checkr _req ?? throw "null pointer dereference")._cancelKey?.__copy__(), null) : Bool)) {
                                        if (false) {
                                            @:check2r _req._logf(("closech recv: %T %#v" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _pc ?? throw "null pointer dereference")._closed), stdgo.Go.toInterface((@:checkr _pc ?? throw "null pointer dereference")._closed));
                                        };
                                        {
                                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } = {
                                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } = { _0 : null, _1 : @:check2r _pc._mapRoundTripError(_req, _startBytesWritten, (@:checkr _pc ?? throw "null pointer dereference")._closed) };
                                                _resp = __tmp__._0;
                                                _err = __tmp__._1;
                                                __tmp__;
                                            };
                                            for (defer in __deferstack__) {
                                                __deferstack__.remove(defer);
                                                defer();
                                            };
                                            return __ret__;
                                        };
                                    };
                                };
                            };
                        } else if (_respHeaderTimer != null && _respHeaderTimer.__isGet__()) {
                            __select__ = false;
                            {
                                _respHeaderTimer.__get__();
                                {
                                    if (false) {
                                        @:check2r _req._logf(("timeout waiting for response headers." : stdgo.GoString));
                                    };
                                    @:check2r _pc._close(stdgo._internal.net.http.Http__errTimeout._errTimeout);
                                    {
                                        final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } = {
                                            final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo._internal.net.http.Http__errTimeout._errTimeout };
                                            _resp = __tmp__._0;
                                            _err = __tmp__._1;
                                            __tmp__;
                                        };
                                        for (defer in __deferstack__) {
                                            __deferstack__.remove(defer);
                                            defer();
                                        };
                                        return __ret__;
                                    };
                                };
                            };
                        } else if (_resc != null && _resc.__isGet__()) {
                            __select__ = false;
                            {
                                var _re = _resc.__get__();
                                {
                                    if (((_re._res == null || (_re._res : Dynamic).__nil__)) == ((_re._err == null))) {
                                        throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("internal error: exactly one of res or err should be set; nil=%v" : stdgo.GoString), stdgo.Go.toInterface((_re._res == null || (_re._res : Dynamic).__nil__))));
                                    };
                                    if (false) {
                                        @:check2r _req._logf(("resc recv: %p, %T/%#v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_re._res)), stdgo.Go.toInterface(_re._err), stdgo.Go.toInterface(_re._err));
                                    };
                                    if (_re._err != null) {
                                        {
                                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } = {
                                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } = { _0 : null, _1 : @:check2r _pc._mapRoundTripError(_req, _startBytesWritten, _re._err) };
                                                _resp = __tmp__._0;
                                                _err = __tmp__._1;
                                                __tmp__;
                                            };
                                            for (defer in __deferstack__) {
                                                __deferstack__.remove(defer);
                                                defer();
                                            };
                                            return __ret__;
                                        };
                                    };
                                    {
                                        final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } = {
                                            final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } = { _0 : _re._res, _1 : (null : stdgo.Error) };
                                            _resp = __tmp__._0;
                                            _err = __tmp__._1;
                                            __tmp__;
                                        };
                                        for (defer in __deferstack__) {
                                            __deferstack__.remove(defer);
                                            defer();
                                        };
                                        return __ret__;
                                    };
                                };
                            };
                        } else if (_cancelChan != null && _cancelChan.__isGet__()) {
                            __select__ = false;
                            {
                                _cancelChan.__get__();
                                {
                                    _canceled = @:check2r (@:checkr _pc ?? throw "null pointer dereference")._t._cancelRequest((@:checkr _req ?? throw "null pointer dereference")._cancelKey?.__copy__(), stdgo._internal.net.http.Http__errRequestCanceled._errRequestCanceled);
                                    _cancelChan = (null : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>);
                                };
                            };
                        } else if (_ctxDoneChan != null && _ctxDoneChan.__isGet__()) {
                            __select__ = false;
                            {
                                _ctxDoneChan.__get__();
                                {
                                    _canceled = @:check2r (@:checkr _pc ?? throw "null pointer dereference")._t._cancelRequest((@:checkr _req ?? throw "null pointer dereference")._cancelKey?.__copy__(), @:check2r _req.context().err());
                                    _cancelChan = (null : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>);
                                    _ctxDoneChan = (null : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>);
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
                    __deferstack__.remove(defer);
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return { _0 : _resp, _1 : _err };
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
                __deferstack__.remove(defer);
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return { _0 : _resp, _1 : _err };
        };
    }
    @:keep
    @:tdfield
    static public function _wroteRequest( _pc:stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>):Bool {
        @:recv var _pc:stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn> = _pc;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {
                {
                    var __select__ = true;
                    while (__select__) {
                        if ((@:checkr _pc ?? throw "null pointer dereference")._writeErrCh != null && (@:checkr _pc ?? throw "null pointer dereference")._writeErrCh.__isGet__()) {
                            __select__ = false;
                            {
                                var _err = (@:checkr _pc ?? throw "null pointer dereference")._writeErrCh.__get__();
                                {
                                    return _err == null;
                                };
                            };
                        } else {
                            __select__ = false;
                            {
                                var _t = stdgo._internal.time.Time_newTimer.newTimer(stdgo._internal.net.http.Http__maxWriteWaitBeforeConnReuse._maxWriteWaitBeforeConnReuse);
                                {
                                    final __f__ = @:check2r _t.stop;
                                    __deferstack__.unshift(() -> __f__());
                                };
                                {
                                    {
                                        var __select__ = true;
                                        while (__select__) {
                                            if ((@:checkr _pc ?? throw "null pointer dereference")._writeErrCh != null && (@:checkr _pc ?? throw "null pointer dereference")._writeErrCh.__isGet__()) {
                                                __select__ = false;
                                                {
                                                    var _err = (@:checkr _pc ?? throw "null pointer dereference")._writeErrCh.__get__();
                                                    {
                                                        {
                                                            final __ret__:Bool = _err == null;
                                                            for (defer in __deferstack__) {
                                                                __deferstack__.remove(defer);
                                                                defer();
                                                            };
                                                            return __ret__;
                                                        };
                                                    };
                                                };
                                            } else if ((@:checkr _t ?? throw "null pointer dereference").c != null && (@:checkr _t ?? throw "null pointer dereference").c.__isGet__()) {
                                                __select__ = false;
                                                {
                                                    (@:checkr _t ?? throw "null pointer dereference").c.__get__();
                                                    {
                                                        {
                                                            for (defer in __deferstack__) {
                                                                __deferstack__.remove(defer);
                                                                defer();
                                                            };
                                                            return false;
                                                        };
                                                    };
                                                };
                                            };
                                            #if !js Sys.sleep(0.01) #else null #end;
                                            stdgo._internal.internal.Async.tick();
                                        };
                                    };
                                    {
                                        for (defer in __deferstack__) {
                                            __deferstack__.remove(defer);
                                            defer();
                                        };
                                        return false;
                                    };
                                };
                            };
                        };
                        #if !js Sys.sleep(0.01) #else null #end;
                        stdgo._internal.internal.Async.tick();
                    };
                };
                {
                    for (defer in __deferstack__) {
                        __deferstack__.remove(defer);
                        defer();
                    };
                    return false;
                };
            };
            {
                for (defer in __deferstack__) {
                    __deferstack__.remove(defer);
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
                __deferstack__.remove(defer);
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return false;
        };
    }
    @:keep
    @:tdfield
    static public function _writeLoop( _pc:stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>):Void {
        @:recv var _pc:stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn> = _pc;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {
                var _a0 = (@:checkr _pc ?? throw "null pointer dereference")._writeLoopDone;
                __deferstack__.unshift(() -> if (_a0 != null) _a0.__close__());
            };
            while (true) {
                {
                    var __select__ = true;
                    while (__select__) {
                        if ((@:checkr _pc ?? throw "null pointer dereference")._writech != null && (@:checkr _pc ?? throw "null pointer dereference")._writech.__isGet__()) {
                            __select__ = false;
                            {
                                var _wr = (@:checkr _pc ?? throw "null pointer dereference")._writech.__get__();
                                {
                                    var _startBytesWritten = ((@:checkr _pc ?? throw "null pointer dereference")._nwrite : stdgo.GoInt64);
                                    var _err = (@:check2r (@:checkr _wr._req ?? throw "null pointer dereference").request._write(stdgo.Go.asInterface((@:checkr _pc ?? throw "null pointer dereference")._bw), (@:checkr _pc ?? throw "null pointer dereference")._isProxy, (@:checkr _wr._req ?? throw "null pointer dereference")._extra, @:check2r _pc._waitForContinue(_wr._continueCh)) : stdgo.Error);
                                    {
                                        var __tmp__ = try {
                                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo._internal.net.http.Http_T_requestBodyReadError.T_requestBodyReadError)) : stdgo._internal.net.http.Http_T_requestBodyReadError.T_requestBodyReadError), _1 : true };
                                        } catch(_) {
                                            { _0 : ({} : stdgo._internal.net.http.Http_T_requestBodyReadError.T_requestBodyReadError), _1 : false };
                                        }, _bre = __tmp__._0, _ok = __tmp__._1;
                                        if (_ok) {
                                            _err = _bre._error;
                                            @:check2r _wr._req._setError(_err);
                                        };
                                    };
                                    if (_err == null) {
                                        _err = @:check2r (@:checkr _pc ?? throw "null pointer dereference")._bw.flush();
                                    };
                                    if (_err != null) {
                                        if ((@:checkr _pc ?? throw "null pointer dereference")._nwrite == (_startBytesWritten)) {
                                            _err = stdgo.Go.asInterface((new stdgo._internal.net.http.Http_T_nothingWrittenError.T_nothingWrittenError(_err) : stdgo._internal.net.http.Http_T_nothingWrittenError.T_nothingWrittenError));
                                        };
                                    };
                                    (@:checkr _pc ?? throw "null pointer dereference")._writeErrCh.__send__(_err);
                                    _wr._ch.__send__(_err);
                                    if (_err != null) {
                                        @:check2r _pc._close(_err);
                                        {
                                            for (defer in __deferstack__) {
                                                __deferstack__.remove(defer);
                                                defer();
                                            };
                                            return;
                                        };
                                    };
                                };
                            };
                        } else if ((@:checkr _pc ?? throw "null pointer dereference")._closech != null && (@:checkr _pc ?? throw "null pointer dereference")._closech.__isGet__()) {
                            __select__ = false;
                            {
                                (@:checkr _pc ?? throw "null pointer dereference")._closech.__get__();
                                {
                                    {
                                        for (defer in __deferstack__) {
                                            __deferstack__.remove(defer);
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
            };
            {
                for (defer in __deferstack__) {
                    __deferstack__.remove(defer);
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
                __deferstack__.remove(defer);
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
    @:keep
    @:tdfield
    static public function _waitForContinue( _pc:stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>, _continueCh:stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>):() -> Bool {
        @:recv var _pc:stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn> = _pc;
        if (_continueCh == null) {
            return null;
        };
        return function():Bool {
            var __deferstack__:Array<Void -> Void> = [];
            try {
                var _timer = stdgo._internal.time.Time_newTimer.newTimer((@:checkr (@:checkr _pc ?? throw "null pointer dereference")._t ?? throw "null pointer dereference").expectContinueTimeout);
                {
                    final __f__ = @:check2r _timer.stop;
                    __deferstack__.unshift(() -> __f__());
                };
                {
                    {
                        var __select__ = true;
                        while (__select__) {
                            if ((@:checkr _timer ?? throw "null pointer dereference").c != null && (@:checkr _timer ?? throw "null pointer dereference").c.__isGet__()) {
                                __select__ = false;
                                {
                                    (@:checkr _timer ?? throw "null pointer dereference").c.__get__();
                                    {
                                        {
                                            for (defer in __deferstack__) {
                                                __deferstack__.remove(defer);
                                                defer();
                                            };
                                            return true;
                                        };
                                    };
                                };
                            } else if ((@:checkr _pc ?? throw "null pointer dereference")._closech != null && (@:checkr _pc ?? throw "null pointer dereference")._closech.__isGet__()) {
                                __select__ = false;
                                {
                                    (@:checkr _pc ?? throw "null pointer dereference")._closech.__get__();
                                    {
                                        {
                                            for (defer in __deferstack__) {
                                                __deferstack__.remove(defer);
                                                defer();
                                            };
                                            return false;
                                        };
                                    };
                                };
                            };
                            #if !js Sys.sleep(0.01) #else null #end;
                            stdgo._internal.internal.Async.tick();
                        };
                    };
                    {
                        for (defer in __deferstack__) {
                            __deferstack__.remove(defer);
                            defer();
                        };
                        return false;
                    };
                };
                {
                    for (defer in __deferstack__) {
                        __deferstack__.remove(defer);
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
                    __deferstack__.remove(defer);
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return false;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _readResponse( _pc:stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>, _rc:stdgo._internal.net.http.Http_T_requestAndChan.T_requestAndChan, _trace:stdgo.Ref<stdgo._internal.net.http.httptrace.Httptrace_ClientTrace.ClientTrace>):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } {
        @:recv var _pc:stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn> = _pc;
        var _resp = (null : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>), _err = (null : stdgo.Error);
        if (((_trace != null && ((_trace : Dynamic).__nil__ == null || !(_trace : Dynamic).__nil__)) && ((@:checkr _trace ?? throw "null pointer dereference").gotFirstResponseByte != null) : Bool)) {
            {
                var __tmp__ = @:check2r (@:checkr _pc ?? throw "null pointer dereference")._br.peek((1 : stdgo.GoInt)), _peek:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (((_err == null) && (_peek.length == (1 : stdgo.GoInt)) : Bool)) {
                    (@:checkr _trace ?? throw "null pointer dereference").gotFirstResponseByte();
                };
            };
        };
        var _num1xx = (0 : stdgo.GoInt);
        {};
        var _continueCh = _rc._continueCh;
        while (true) {
            {
                var __tmp__ = stdgo._internal.net.http.Http_readResponse.readResponse((@:checkr _pc ?? throw "null pointer dereference")._br, _rc._req);
                _resp = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : _resp, _1 : _err };
            };
            var _resCode = ((@:checkr _resp ?? throw "null pointer dereference").statusCode : stdgo.GoInt);
            if (_continueCh != null) {
                if (_resCode == ((100 : stdgo.GoInt))) {
                    if (((_trace != null && ((_trace : Dynamic).__nil__ == null || !(_trace : Dynamic).__nil__)) && ((@:checkr _trace ?? throw "null pointer dereference").got100Continue != null) : Bool)) {
                        (@:checkr _trace ?? throw "null pointer dereference").got100Continue();
                    };
                    _continueCh.__send__((new stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError() : stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError));
                    _continueCh = (null : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>);
                } else if ((_resCode >= (200 : stdgo.GoInt) : Bool)) {
                    if (_continueCh != null) _continueCh.__close__();
                    _continueCh = (null : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>);
                };
            };
            var _is1xx = (((100 : stdgo.GoInt) <= _resCode : Bool) && (_resCode <= (199 : stdgo.GoInt) : Bool) : Bool);
            var _is1xxNonTerminal = (_is1xx && (_resCode != (101 : stdgo.GoInt)) : Bool);
            if (_is1xxNonTerminal) {
                _num1xx++;
                if ((_num1xx > (5 : stdgo.GoInt) : Bool)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("net/http: too many 1xx informational responses" : stdgo.GoString)) };
                        _resp = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
                (@:checkr _pc ?? throw "null pointer dereference")._readLimit = @:check2r _pc._maxHeaderResponseSize();
                if (((_trace != null && ((_trace : Dynamic).__nil__ == null || !(_trace : Dynamic).__nil__)) && ((@:checkr _trace ?? throw "null pointer dereference").got1xxResponse != null) : Bool)) {
                    {
                        var _err = ((@:checkr _trace ?? throw "null pointer dereference").got1xxResponse(_resCode, ((@:checkr _resp ?? throw "null pointer dereference").header : stdgo._internal.net.textproto.Textproto_MIMEHeader.MIMEHeader)) : stdgo.Error);
                        if (_err != null) {
                            return {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _resp = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                        };
                    };
                };
                continue;
            };
            break;
        };
        if (@:check2r _resp._isProtocolSwitch()) {
            (@:checkr _resp ?? throw "null pointer dereference").body = stdgo._internal.net.http.Http__newReadWriteCloserBody._newReadWriteCloserBody((@:checkr _pc ?? throw "null pointer dereference")._br, (@:checkr _pc ?? throw "null pointer dereference")._conn);
        };
        (@:checkr _resp ?? throw "null pointer dereference").tLS = (@:checkr _pc ?? throw "null pointer dereference")._tlsState;
        return { _0 : _resp, _1 : _err };
    }
    @:keep
    @:tdfield
    static public function _readLoopPeekFailLocked( _pc:stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>, _peekErr:stdgo.Error):Void {
        @:recv var _pc:stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn> = _pc;
        if ((@:checkr _pc ?? throw "null pointer dereference")._closed != null) {
            return;
        };
        {
            var _n = (@:check2r (@:checkr _pc ?? throw "null pointer dereference")._br.buffered() : stdgo.GoInt);
            if ((_n > (0 : stdgo.GoInt) : Bool)) {
                var __tmp__ = @:check2r (@:checkr _pc ?? throw "null pointer dereference")._br.peek(_n), _buf:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, __36029:stdgo.Error = __tmp__._1;
                if (stdgo._internal.net.http.Http__is408Message._is408Message(_buf)) {
                    @:check2r _pc._closeLocked(stdgo._internal.net.http.Http__errServerClosedIdle._errServerClosedIdle);
                    return;
                } else {
                    stdgo._internal.log.Log_printf.printf(("Unsolicited response received on idle HTTP channel starting with %q; err=%v" : stdgo.GoString), stdgo.Go.toInterface(_buf), stdgo.Go.toInterface(_peekErr));
                };
            };
        };
        if (stdgo.Go.toInterface(_peekErr) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eOF.eOF))) {
            @:check2r _pc._closeLocked(stdgo._internal.net.http.Http__errServerClosedIdle._errServerClosedIdle);
        } else {
            @:check2r _pc._closeLocked(stdgo._internal.fmt.Fmt_errorf.errorf(("readLoopPeekFailLocked: %w" : stdgo.GoString), stdgo.Go.toInterface(_peekErr)));
        };
    }
    @:keep
    @:tdfield
    static public function _readLoop( _pc:stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>):Void {
        @:recv var _pc:stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn> = _pc;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _closeErr = (stdgo._internal.net.http.Http__errReadLoopExiting._errReadLoopExiting : stdgo.Error);
            {
                __deferstack__.unshift(() -> ({
                    var a = function():Void {
                        @:check2r _pc._close(_closeErr);
                        @:check2r (@:checkr _pc ?? throw "null pointer dereference")._t._removeIdleConn(_pc);
                    };
                    a();
                }));
            };
            var _tryPutIdleConn = function(_trace:stdgo.Ref<stdgo._internal.net.http.httptrace.Httptrace_ClientTrace.ClientTrace>):Bool {
                {
                    var _err = (@:check2r (@:checkr _pc ?? throw "null pointer dereference")._t._tryPutIdleConn(_pc) : stdgo.Error);
                    if (_err != null) {
                        _closeErr = _err;
                        if ((((_trace != null && ((_trace : Dynamic).__nil__ == null || !(_trace : Dynamic).__nil__)) && (@:checkr _trace ?? throw "null pointer dereference").putIdleConn != null : Bool) && (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo._internal.net.http.Http__errKeepAlivesDisabled._errKeepAlivesDisabled)) : Bool)) {
                            (@:checkr _trace ?? throw "null pointer dereference").putIdleConn(_err);
                        };
                        return false;
                    };
                };
                if (((_trace != null && ((_trace : Dynamic).__nil__ == null || !(_trace : Dynamic).__nil__)) && ((@:checkr _trace ?? throw "null pointer dereference").putIdleConn != null) : Bool)) {
                    (@:checkr _trace ?? throw "null pointer dereference").putIdleConn((null : stdgo.Error));
                };
                return true;
            };
            var _eofc = (new stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>(0, () -> ({} : stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError)) : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>);
            {
                var _a0 = _eofc;
                __deferstack__.unshift(() -> if (_a0 != null) _a0.__close__());
            };
            stdgo._internal.net.http.Http__testHookMu._testHookMu.lock();
            var _testHookReadLoopBeforeNextRead = (stdgo._internal.net.http.Http__testHookReadLoopBeforeNextRead._testHookReadLoopBeforeNextRead : () -> Void);
            stdgo._internal.net.http.Http__testHookMu._testHookMu.unlock();
            var _alive = (true : Bool);
            while (_alive) {
                (@:checkr _pc ?? throw "null pointer dereference")._readLimit = @:check2r _pc._maxHeaderResponseSize();
                var __tmp__ = @:check2r (@:checkr _pc ?? throw "null pointer dereference")._br.peek((1 : stdgo.GoInt)), __36029:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                @:check2 (@:checkr _pc ?? throw "null pointer dereference")._mu.lock();
                if ((@:checkr _pc ?? throw "null pointer dereference")._numExpectedResponses == ((0 : stdgo.GoInt))) {
                    @:check2r _pc._readLoopPeekFailLocked(_err);
                    @:check2 (@:checkr _pc ?? throw "null pointer dereference")._mu.unlock();
                    {
                        for (defer in __deferstack__) {
                            __deferstack__.remove(defer);
                            defer();
                        };
                        return;
                    };
                };
                @:check2 (@:checkr _pc ?? throw "null pointer dereference")._mu.unlock();
                var _rc = ((@:checkr _pc ?? throw "null pointer dereference")._reqch.__get__()?.__copy__() : stdgo._internal.net.http.Http_T_requestAndChan.T_requestAndChan);
                var _trace = stdgo._internal.net.http.httptrace.Httptrace_contextClientTrace.contextClientTrace(@:check2r _rc._req.context());
                var _resp:stdgo.Ref<stdgo._internal.net.http.Http_Response.Response> = (null : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>);
                if (_err == null) {
                    {
                        var __tmp__ = @:check2r _pc._readResponse(_rc?.__copy__(), _trace);
                        _resp = __tmp__._0;
                        _err = __tmp__._1;
                    };
                } else {
                    _err = stdgo.Go.asInterface((new stdgo._internal.net.http.Http_T_transportReadFromServerError.T_transportReadFromServerError(_err) : stdgo._internal.net.http.Http_T_transportReadFromServerError.T_transportReadFromServerError));
                    _closeErr = _err;
                };
                if (_err != null) {
                    if (((@:checkr _pc ?? throw "null pointer dereference")._readLimit <= (0i64 : stdgo.GoInt64) : Bool)) {
                        _err = stdgo._internal.fmt.Fmt_errorf.errorf(("net/http: server response headers exceeded %d bytes; aborted" : stdgo.GoString), stdgo.Go.toInterface(@:check2r _pc._maxHeaderResponseSize()));
                    };
                    {
                        var __select__ = true;
                        while (__select__) {
                            if (_rc._ch != null && _rc._ch.__isSend__()) {
                                __select__ = false;
                                {
                                    _rc._ch.__send__(({ _err : _err } : stdgo._internal.net.http.Http_T_responseAndError.T_responseAndError));
                                    {};
                                };
                            } else if (_rc._callerGone != null && _rc._callerGone.__isGet__()) {
                                __select__ = false;
                                {
                                    _rc._callerGone.__get__();
                                    {
                                        {
                                            for (defer in __deferstack__) {
                                                __deferstack__.remove(defer);
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
                    {
                        for (defer in __deferstack__) {
                            __deferstack__.remove(defer);
                            defer();
                        };
                        return;
                    };
                };
                (@:checkr _pc ?? throw "null pointer dereference")._readLimit = (9223372036854775807i64 : stdgo.GoInt64);
                @:check2 (@:checkr _pc ?? throw "null pointer dereference")._mu.lock();
                (@:checkr _pc ?? throw "null pointer dereference")._numExpectedResponses--;
                @:check2 (@:checkr _pc ?? throw "null pointer dereference")._mu.unlock();
                var _bodyWritable = (@:check2r _resp._bodyIsWritable() : Bool);
                var _hasBody = (((@:checkr _rc._req ?? throw "null pointer dereference").method != ("HEAD" : stdgo.GoString)) && ((@:checkr _resp ?? throw "null pointer dereference").contentLength != (0i64 : stdgo.GoInt64)) : Bool);
                if (((((@:checkr _resp ?? throw "null pointer dereference").close || (@:checkr _rc._req ?? throw "null pointer dereference").close : Bool) || ((@:checkr _resp ?? throw "null pointer dereference").statusCode <= (199 : stdgo.GoInt) : Bool) : Bool) || _bodyWritable : Bool)) {
                    _alive = false;
                };
                if ((!_hasBody || _bodyWritable : Bool)) {
                    var _replaced = (@:check2r (@:checkr _pc ?? throw "null pointer dereference")._t._replaceReqCanceler(_rc._cancelKey?.__copy__(), null) : Bool);
                    _alive = ((((_alive && !(@:checkr _pc ?? throw "null pointer dereference")._sawEOF : Bool) && @:check2r _pc._wroteRequest() : Bool) && _replaced : Bool) && _tryPutIdleConn(_trace) : Bool);
                    if (_bodyWritable) {
                        _closeErr = stdgo._internal.net.http.Http__errCallerOwnsConn._errCallerOwnsConn;
                    };
                    {
                        var __select__ = true;
                        while (__select__) {
                            if (_rc._ch != null && _rc._ch.__isSend__()) {
                                __select__ = false;
                                {
                                    _rc._ch.__send__(({ _res : _resp } : stdgo._internal.net.http.Http_T_responseAndError.T_responseAndError));
                                    {};
                                };
                            } else if (_rc._callerGone != null && _rc._callerGone.__isGet__()) {
                                __select__ = false;
                                {
                                    _rc._callerGone.__get__();
                                    {
                                        {
                                            for (defer in __deferstack__) {
                                                __deferstack__.remove(defer);
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
                    _testHookReadLoopBeforeNextRead();
                    continue;
                };
                var _waitForBodyRead = (new stdgo.Chan<Bool>((2 : stdgo.GoInt).toBasic(), () -> false) : stdgo.Chan<Bool>);
                var _body = (stdgo.Go.setRef(({ _body : (@:checkr _resp ?? throw "null pointer dereference").body, _earlyCloseFn : function():stdgo.Error {
                    _waitForBodyRead.__send__(false);
                    _eofc.__get__();
                    return (null : stdgo.Error);
                }, _fn : function(_err:stdgo.Error):stdgo.Error {
                    var _isEOF = (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eOF.eOF)) : Bool);
                    _waitForBodyRead.__send__(_isEOF);
                    if (_isEOF) {
                        _eofc.__get__();
                    } else if (_err != null) {
                        {
                            var _cerr = (@:check2r _pc._canceled() : stdgo.Error);
                            if (_cerr != null) {
                                return _cerr;
                            };
                        };
                    };
                    return _err;
                } } : stdgo._internal.net.http.Http_T_bodyEOFSignal.T_bodyEOFSignal)) : stdgo.Ref<stdgo._internal.net.http.Http_T_bodyEOFSignal.T_bodyEOFSignal>);
                (@:checkr _resp ?? throw "null pointer dereference").body = stdgo.Go.asInterface(_body);
                if ((_rc._addedGzip && stdgo._internal.net.http.internal.ascii.Ascii_equalFold.equalFold((@:checkr _resp ?? throw "null pointer dereference").header.get(("Content-Encoding" : stdgo.GoString))?.__copy__(), ("gzip" : stdgo.GoString)) : Bool)) {
                    (@:checkr _resp ?? throw "null pointer dereference").body = stdgo.Go.asInterface((stdgo.Go.setRef(({ _body : _body } : stdgo._internal.net.http.Http_T_gzipReader.T_gzipReader)) : stdgo.Ref<stdgo._internal.net.http.Http_T_gzipReader.T_gzipReader>));
                    (@:checkr _resp ?? throw "null pointer dereference").header.del(("Content-Encoding" : stdgo.GoString));
                    (@:checkr _resp ?? throw "null pointer dereference").header.del(("Content-Length" : stdgo.GoString));
                    (@:checkr _resp ?? throw "null pointer dereference").contentLength = (-1i64 : stdgo.GoInt64);
                    (@:checkr _resp ?? throw "null pointer dereference").uncompressed = true;
                };
                {
                    var __select__ = true;
                    while (__select__) {
                        if (_rc._ch != null && _rc._ch.__isSend__()) {
                            __select__ = false;
                            {
                                _rc._ch.__send__(({ _res : _resp } : stdgo._internal.net.http.Http_T_responseAndError.T_responseAndError));
                                {};
                            };
                        } else if (_rc._callerGone != null && _rc._callerGone.__isGet__()) {
                            __select__ = false;
                            {
                                _rc._callerGone.__get__();
                                {
                                    {
                                        for (defer in __deferstack__) {
                                            __deferstack__.remove(defer);
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
                {
                    var __select__ = true;
                    while (__select__) {
                        if (_waitForBodyRead != null && _waitForBodyRead.__isGet__()) {
                            __select__ = false;
                            {
                                var _bodyEOF = _waitForBodyRead.__get__();
                                {
                                    var _replaced = (@:check2r (@:checkr _pc ?? throw "null pointer dereference")._t._replaceReqCanceler(_rc._cancelKey?.__copy__(), null) : Bool);
                                    _alive = (((((_alive && _bodyEOF : Bool) && !(@:checkr _pc ?? throw "null pointer dereference")._sawEOF : Bool) && @:check2r _pc._wroteRequest() : Bool) && _replaced : Bool) && _tryPutIdleConn(_trace) : Bool);
                                    if (_bodyEOF) {
                                        _eofc.__send__((new stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError() : stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError));
                                    };
                                };
                            };
                        } else if ((@:checkr _rc._req ?? throw "null pointer dereference").cancel != null && (@:checkr _rc._req ?? throw "null pointer dereference").cancel.__isGet__()) {
                            __select__ = false;
                            {
                                (@:checkr _rc._req ?? throw "null pointer dereference").cancel.__get__();
                                {
                                    _alive = false;
                                    @:check2r (@:checkr _pc ?? throw "null pointer dereference")._t.cancelRequest(_rc._req);
                                };
                            };
                        } else if (@:check2r _rc._req.context().done() != null && @:check2r _rc._req.context().done().__isGet__()) {
                            __select__ = false;
                            {
                                @:check2r _rc._req.context().done().__get__();
                                {
                                    _alive = false;
                                    @:check2r (@:checkr _pc ?? throw "null pointer dereference")._t._cancelRequest(_rc._cancelKey?.__copy__(), @:check2r _rc._req.context().err());
                                };
                            };
                        } else if ((@:checkr _pc ?? throw "null pointer dereference")._closech != null && (@:checkr _pc ?? throw "null pointer dereference")._closech.__isGet__()) {
                            __select__ = false;
                            {
                                (@:checkr _pc ?? throw "null pointer dereference")._closech.__get__();
                                {
                                    _alive = false;
                                };
                            };
                        };
                        #if !js Sys.sleep(0.01) #else null #end;
                        stdgo._internal.internal.Async.tick();
                    };
                };
                _testHookReadLoopBeforeNextRead();
            };
            {
                for (defer in __deferstack__) {
                    __deferstack__.remove(defer);
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
                __deferstack__.remove(defer);
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
    @:keep
    @:tdfield
    static public function _mapRoundTripError( _pc:stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>, _req:stdgo.Ref<stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest>, _startBytesWritten:stdgo.GoInt64, _err:stdgo.Error):stdgo.Error {
        @:recv var _pc:stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn> = _pc;
        if (_err == null) {
            return (null : stdgo.Error);
        };
        (@:checkr _pc ?? throw "null pointer dereference")._writeLoopDone.__get__();
        {
            var _cerr = (@:check2r _pc._canceled() : stdgo.Error);
            if (_cerr != null) {
                return _cerr;
            };
        };
        @:check2 (@:checkr _req ?? throw "null pointer dereference")._mu.lock();
        var _reqErr = ((@:checkr _req ?? throw "null pointer dereference")._err : stdgo.Error);
        @:check2 (@:checkr _req ?? throw "null pointer dereference")._mu.unlock();
        if (_reqErr != null) {
            return _reqErr;
        };
        if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.net.http.Http__errServerClosedIdle._errServerClosedIdle))) {
            return _err;
        };
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo._internal.net.http.Http_T_transportReadFromServerError.T_transportReadFromServerError)) : stdgo._internal.net.http.Http_T_transportReadFromServerError.T_transportReadFromServerError), _1 : true };
            } catch(_) {
                { _0 : ({} : stdgo._internal.net.http.Http_T_transportReadFromServerError.T_transportReadFromServerError), _1 : false };
            }, __36025 = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                if ((@:checkr _pc ?? throw "null pointer dereference")._nwrite == (_startBytesWritten)) {
                    return stdgo.Go.asInterface((new stdgo._internal.net.http.Http_T_nothingWrittenError.T_nothingWrittenError(_err) : stdgo._internal.net.http.Http_T_nothingWrittenError.T_nothingWrittenError));
                };
                return _err;
            };
        };
        if (@:check2r _pc._isBroken()) {
            if ((@:checkr _pc ?? throw "null pointer dereference")._nwrite == (_startBytesWritten)) {
                return stdgo.Go.asInterface((new stdgo._internal.net.http.Http_T_nothingWrittenError.T_nothingWrittenError(_err) : stdgo._internal.net.http.Http_T_nothingWrittenError.T_nothingWrittenError));
            };
            return stdgo._internal.fmt.Fmt_errorf.errorf(("net/http: HTTP/1.x transport connection broken: %w" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        return _err;
    }
    @:keep
    @:tdfield
    static public function _closeConnIfStillIdle( _pc:stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>):Void {
        @:recv var _pc:stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn> = _pc;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _t = (@:checkr _pc ?? throw "null pointer dereference")._t;
            @:check2 (@:checkr _t ?? throw "null pointer dereference")._idleMu.lock();
            {
                final __f__ = @:check2 (@:checkr _t ?? throw "null pointer dereference")._idleMu.unlock;
                __deferstack__.unshift(() -> __f__());
            };
            {
                var __tmp__ = ((@:checkr _t ?? throw "null pointer dereference")._idleLRU._m != null && (@:checkr _t ?? throw "null pointer dereference")._idleLRU._m.exists(_pc) ? { _0 : (@:checkr _t ?? throw "null pointer dereference")._idleLRU._m[_pc], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.container.list.List_Element.Element>), _1 : false }), __36037:stdgo.Ref<stdgo._internal.container.list.List_Element.Element> = __tmp__._0, _ok:Bool = __tmp__._1;
                if (!_ok) {
                    {
                        for (defer in __deferstack__) {
                            __deferstack__.remove(defer);
                            defer();
                        };
                        return;
                    };
                };
            };
            @:check2r _t._removeIdleConnLocked(_pc);
            @:check2r _pc._close(stdgo._internal.net.http.Http__errIdleConnTimeout._errIdleConnTimeout);
            {
                for (defer in __deferstack__) {
                    __deferstack__.remove(defer);
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
                __deferstack__.remove(defer);
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
    @:keep
    @:tdfield
    static public function _cancelRequest( _pc:stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>, _err:stdgo.Error):Void {
        @:recv var _pc:stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn> = _pc;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            @:check2 (@:checkr _pc ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = @:check2 (@:checkr _pc ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift(() -> __f__());
            };
            (@:checkr _pc ?? throw "null pointer dereference")._canceledErr = _err;
            @:check2r _pc._closeLocked(stdgo._internal.net.http.Http__errRequestCanceled._errRequestCanceled);
            {
                for (defer in __deferstack__) {
                    __deferstack__.remove(defer);
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
                __deferstack__.remove(defer);
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
    @:keep
    @:tdfield
    static public function _gotIdleConnTrace( _pc:stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>, _idleAt:stdgo._internal.time.Time_Time.Time):stdgo._internal.net.http.httptrace.Httptrace_GotConnInfo.GotConnInfo {
        @:recv var _pc:stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn> = _pc;
        var __deferstack__:Array<Void -> Void> = [];
        var _t = ({} : stdgo._internal.net.http.httptrace.Httptrace_GotConnInfo.GotConnInfo);
        try {
            @:check2 (@:checkr _pc ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = @:check2 (@:checkr _pc ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift(() -> __f__());
            };
            _t.reused = (@:checkr _pc ?? throw "null pointer dereference")._reused;
            _t.conn = (@:checkr _pc ?? throw "null pointer dereference")._conn;
            _t.wasIdle = true;
            if (!_idleAt.isZero()) {
                _t.idleTime = stdgo._internal.time.Time_since.since(_idleAt?.__copy__());
            };
            {
                for (defer in __deferstack__) {
                    __deferstack__.remove(defer);
                    defer();
                };
                return _t;
            };
            {
                for (defer in __deferstack__) {
                    __deferstack__.remove(defer);
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return _t;
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
                __deferstack__.remove(defer);
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return _t;
        };
    }
    @:keep
    @:tdfield
    static public function _isReused( _pc:stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>):Bool {
        @:recv var _pc:stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn> = _pc;
        @:check2 (@:checkr _pc ?? throw "null pointer dereference")._mu.lock();
        var _r = ((@:checkr _pc ?? throw "null pointer dereference")._reused : Bool);
        @:check2 (@:checkr _pc ?? throw "null pointer dereference")._mu.unlock();
        return _r;
    }
    @:keep
    @:tdfield
    static public function _canceled( _pc:stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>):stdgo.Error {
        @:recv var _pc:stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn> = _pc;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            @:check2 (@:checkr _pc ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = @:check2 (@:checkr _pc ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift(() -> __f__());
            };
            {
                final __ret__:stdgo.Error = (@:checkr _pc ?? throw "null pointer dereference")._canceledErr;
                for (defer in __deferstack__) {
                    __deferstack__.remove(defer);
                    defer();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    __deferstack__.remove(defer);
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
                __deferstack__.remove(defer);
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return (null : stdgo.Error);
        };
    }
    @:keep
    @:tdfield
    static public function _isBroken( _pc:stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>):Bool {
        @:recv var _pc:stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn> = _pc;
        @:check2 (@:checkr _pc ?? throw "null pointer dereference")._mu.lock();
        var _b = ((@:checkr _pc ?? throw "null pointer dereference")._closed != null : Bool);
        @:check2 (@:checkr _pc ?? throw "null pointer dereference")._mu.unlock();
        return _b;
    }
    @:keep
    @:tdfield
    static public function read( _pc:stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _pc:stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn> = _pc;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if (((@:checkr _pc ?? throw "null pointer dereference")._readLimit <= (0i64 : stdgo.GoInt64) : Bool)) {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("read limit of %d bytes exhausted" : stdgo.GoString), stdgo.Go.toInterface(@:check2r _pc._maxHeaderResponseSize())) };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        if (((_p.length : stdgo.GoInt64) > (@:checkr _pc ?? throw "null pointer dereference")._readLimit : Bool)) {
            _p = (_p.__slice__(0, (@:checkr _pc ?? throw "null pointer dereference")._readLimit) : stdgo.Slice<stdgo.GoUInt8>);
        };
        {
            var __tmp__ = (@:checkr _pc ?? throw "null pointer dereference")._conn.read(_p);
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eOF.eOF))) {
            (@:checkr _pc ?? throw "null pointer dereference")._sawEOF = true;
        };
        (@:checkr _pc ?? throw "null pointer dereference")._readLimit = ((@:checkr _pc ?? throw "null pointer dereference")._readLimit - ((_n : stdgo.GoInt64)) : stdgo.GoInt64);
        return { _0 : _n, _1 : _err };
    }
    @:keep
    @:tdfield
    static public function _maxHeaderResponseSize( _pc:stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>):stdgo.GoInt64 {
        @:recv var _pc:stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn> = _pc;
        {
            var _v = ((@:checkr (@:checkr _pc ?? throw "null pointer dereference")._t ?? throw "null pointer dereference").maxResponseHeaderBytes : stdgo.GoInt64);
            if (_v != ((0i64 : stdgo.GoInt64))) {
                return _v;
            };
        };
        return (10485760i64 : stdgo.GoInt64);
    }
    @:keep
    @:tdfield
    static public function _addTLS( _pconn:stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>, _ctx:stdgo._internal.context.Context_Context.Context, _name:stdgo.GoString, _trace:stdgo.Ref<stdgo._internal.net.http.httptrace.Httptrace_ClientTrace.ClientTrace>):stdgo.Error {
        @:recv var _pconn:stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn> = _pconn;
        var _cfg = stdgo._internal.net.http.Http__cloneTLSConfig._cloneTLSConfig((@:checkr (@:checkr _pconn ?? throw "null pointer dereference")._t ?? throw "null pointer dereference").tLSClientConfig);
        if ((@:checkr _cfg ?? throw "null pointer dereference").serverName == (stdgo.Go.str())) {
            (@:checkr _cfg ?? throw "null pointer dereference").serverName = _name?.__copy__();
        };
        if ((@:checkr _pconn ?? throw "null pointer dereference")._cacheKey._onlyH1) {
            (@:checkr _cfg ?? throw "null pointer dereference").nextProtos = (null : stdgo.Slice<stdgo.GoString>);
        };
        var _plainConn = ((@:checkr _pconn ?? throw "null pointer dereference")._conn : stdgo._internal.net.Net_Conn.Conn);
        var _tlsConn = stdgo._internal.crypto.tls.Tls_client.client(_plainConn, _cfg);
        var _errc = (new stdgo.Chan<stdgo.Error>((2 : stdgo.GoInt).toBasic(), () -> (null : stdgo.Error)) : stdgo.Chan<stdgo.Error>);
        var _timer:stdgo.Ref<stdgo._internal.time.Time_Timer.Timer> = (null : stdgo.Ref<stdgo._internal.time.Time_Timer.Timer>);
        {
            var _d = ((@:checkr (@:checkr _pconn ?? throw "null pointer dereference")._t ?? throw "null pointer dereference").tLSHandshakeTimeout : stdgo._internal.time.Time_Duration.Duration);
            if (_d != ((0i64 : stdgo._internal.time.Time_Duration.Duration))) {
                _timer = stdgo._internal.time.Time_afterFunc.afterFunc(_d, function():Void {
                    _errc.__send__((new stdgo._internal.net.http.Http_T_tlsHandshakeTimeoutError.T_tlsHandshakeTimeoutError() : stdgo._internal.net.http.Http_T_tlsHandshakeTimeoutError.T_tlsHandshakeTimeoutError));
                });
            };
        };
        stdgo.Go.routine(() -> ({
            var a = function():Void {
                if (((_trace != null && ((_trace : Dynamic).__nil__ == null || !(_trace : Dynamic).__nil__)) && ((@:checkr _trace ?? throw "null pointer dereference").tLSHandshakeStart != null) : Bool)) {
                    (@:checkr _trace ?? throw "null pointer dereference").tLSHandshakeStart();
                };
                var _err = (@:check2r _tlsConn.handshakeContext(_ctx) : stdgo.Error);
                if ((_timer != null && ((_timer : Dynamic).__nil__ == null || !(_timer : Dynamic).__nil__))) {
                    @:check2r _timer.stop();
                };
                _errc.__send__(_err);
            };
            a();
        }));
        {
            var _err = (_errc.__get__() : stdgo.Error);
            if (_err != null) {
                _plainConn.close();
                if (((_trace != null && ((_trace : Dynamic).__nil__ == null || !(_trace : Dynamic).__nil__)) && ((@:checkr _trace ?? throw "null pointer dereference").tLSHandshakeDone != null) : Bool)) {
                    (@:checkr _trace ?? throw "null pointer dereference").tLSHandshakeDone((new stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState() : stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState), _err);
                };
                return _err;
            };
        };
        var _cs = (@:check2r _tlsConn.connectionState()?.__copy__() : stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState);
        if (((_trace != null && ((_trace : Dynamic).__nil__ == null || !(_trace : Dynamic).__nil__)) && ((@:checkr _trace ?? throw "null pointer dereference").tLSHandshakeDone != null) : Bool)) {
            (@:checkr _trace ?? throw "null pointer dereference").tLSHandshakeDone(_cs?.__copy__(), (null : stdgo.Error));
        };
        (@:checkr _pconn ?? throw "null pointer dereference")._tlsState = (stdgo.Go.setRef(_cs) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState>);
        (@:checkr _pconn ?? throw "null pointer dereference")._conn = stdgo.Go.asInterface(_tlsConn);
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _shouldRetryRequest( _pc:stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>, _req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, _err:stdgo.Error):Bool {
        @:recv var _pc:stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn> = _pc;
        if (stdgo._internal.net.http.Http__http2isNoCachedConnError._http2isNoCachedConnError(_err)) {
            return true;
        };
        if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.net.http.Http__errMissingHost._errMissingHost))) {
            return false;
        };
        if (!@:check2r _pc._isReused()) {
            return false;
        };
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo._internal.net.http.Http_T_nothingWrittenError.T_nothingWrittenError)) : stdgo._internal.net.http.Http_T_nothingWrittenError.T_nothingWrittenError), _1 : true };
            } catch(_) {
                { _0 : ({} : stdgo._internal.net.http.Http_T_nothingWrittenError.T_nothingWrittenError), _1 : false };
            }, __36021 = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                return ((@:check2r _req._outgoingLength() == (0i64 : stdgo.GoInt64)) || ((@:checkr _req ?? throw "null pointer dereference").getBody != null) : Bool);
            };
        };
        if (!@:check2r _req._isReplayable()) {
            return false;
        };
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo._internal.net.http.Http_T_transportReadFromServerError.T_transportReadFromServerError)) : stdgo._internal.net.http.Http_T_transportReadFromServerError.T_transportReadFromServerError), _1 : true };
            } catch(_) {
                { _0 : ({} : stdgo._internal.net.http.Http_T_transportReadFromServerError.T_transportReadFromServerError), _1 : false };
            }, __36022 = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                return true;
            };
        };
        if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.net.http.Http__errServerClosedIdle._errServerClosedIdle))) {
            return true;
        };
        return false;
    }
}
