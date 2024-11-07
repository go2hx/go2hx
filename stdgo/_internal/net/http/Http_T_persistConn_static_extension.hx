package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_persistConn_asInterface) class T_persistConn_static_extension {
    @:keep
    static public function _closeLocked( _pc:stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>, _err:stdgo.Error):Void {
        @:recv var _pc:stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn> = _pc;
        if (_err == null) {
            throw stdgo.Go.toInterface(("nil error" : stdgo.GoString));
        };
        _pc._broken = true;
        if (_pc._closed == null) {
            _pc._closed = _err;
            _pc._t._decConnsPerHost(_pc._cacheKey?.__copy__());
            if (_pc._alt == null) {
                if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.net.http.Http__errCallerOwnsConn._errCallerOwnsConn))) {
                    _pc._conn.close();
                };
                if (_pc._closech != null) _pc._closech.__close__();
            };
        };
        _pc._mutateHeaderFunc = null;
    }
    @:keep
    static public function _close( _pc:stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>, _err:stdgo.Error):Void {
        @:recv var _pc:stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn> = _pc;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _pc._mu.lock();
            __deferstack__.unshift(() -> _pc._mu.unlock());
            _pc._closeLocked(_err);
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
    static public function _markReused( _pc:stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>):Void {
        @:recv var _pc:stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn> = _pc;
        _pc._mu.lock();
        _pc._reused = true;
        _pc._mu.unlock();
    }
    @:keep
    static public function _roundTrip( _pc:stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>, _req:stdgo.Ref<stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest>):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } {
        @:recv var _pc:stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn> = _pc;
        var __deferstack__:Array<Void -> Void> = [];
        var _resp = (null : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>), _err = (null : stdgo.Error);
        try {
            stdgo._internal.net.http.Http__testHookEnterRoundTrip._testHookEnterRoundTrip();
            if (!_pc._t._replaceReqCanceler(_req._cancelKey?.__copy__(), _pc._cancelRequest)) {
                _pc._t._putOrCloseIdleConn(_pc);
                return { _0 : null, _1 : stdgo._internal.net.http.Http__errRequestCanceled._errRequestCanceled };
            };
            _pc._mu.lock();
            _pc._numExpectedResponses++;
            var _headerFn = (_pc._mutateHeaderFunc : stdgo._internal.net.http.Http_Header.Header -> Void);
            _pc._mu.unlock();
            if (_headerFn != null) {
                _headerFn(_req._extraHeaders());
            };
            var _requestedGzip = (false : Bool);
            if ((((!_pc._t.disableCompression && _req.request.header.get(("Accept-Encoding" : stdgo.GoString)) == (stdgo.Go.str()) : Bool) && _req.request.header.get(("Range" : stdgo.GoString)) == (stdgo.Go.str()) : Bool) && (_req.request.method != ("HEAD" : stdgo.GoString)) : Bool)) {
                _requestedGzip = true;
                _req._extraHeaders().set(("Accept-Encoding" : stdgo.GoString), ("gzip" : stdgo.GoString));
            };
            var _continueCh:stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError> = (null : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>);
            if (((_req.protoAtLeast((1 : stdgo.GoInt), (1 : stdgo.GoInt)) && _req.request.body != null : Bool) && _req._expectsContinue() : Bool)) {
                _continueCh = (new stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>((1 : stdgo.GoInt).toBasic(), () -> ({} : stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError)) : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>);
            };
            if (((_pc._t.disableKeepAlives && !_req._wantsClose() : Bool) && !stdgo._internal.net.http.Http__isProtocolSwitchHeader._isProtocolSwitchHeader(_req.request.header) : Bool)) {
                _req._extraHeaders().set(("Connection" : stdgo.GoString), ("close" : stdgo.GoString));
            };
            var _gone = (new stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>(0, () -> ({} : stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError)) : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>);
            {
                var _a0 = _gone;
                __deferstack__.unshift(() -> if (_a0 != null) _a0.__close__());
            };
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        if (_err != null) {
                            _pc._t._setReqCanceler(_req._cancelKey?.__copy__(), null);
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
            {};
            var _startBytesWritten = (_pc._nwrite : stdgo.GoInt64);
            var _writeErrCh = (new stdgo.Chan<stdgo.Error>((1 : stdgo.GoInt).toBasic(), () -> (null : stdgo.Error)) : stdgo.Chan<stdgo.Error>);
            _pc._writech.__send__((new stdgo._internal.net.http.Http_T_writeRequest.T_writeRequest(_req, _writeErrCh, _continueCh) : stdgo._internal.net.http.Http_T_writeRequest.T_writeRequest));
            var _resc = (new stdgo.Chan<stdgo._internal.net.http.Http_T_responseAndError.T_responseAndError>(0, () -> ({} : stdgo._internal.net.http.Http_T_responseAndError.T_responseAndError)) : stdgo.Chan<stdgo._internal.net.http.Http_T_responseAndError.T_responseAndError>);
            _pc._reqch.__send__(({ _req : _req.request, _cancelKey : _req._cancelKey?.__copy__(), _ch : _resc, _addedGzip : _requestedGzip, _continueCh : _continueCh, _callerGone : _gone } : stdgo._internal.net.http.Http_T_requestAndChan.T_requestAndChan));
            var _respHeaderTimer:stdgo.Chan<stdgo._internal.time.Time_Time.Time> = (null : stdgo.Chan<stdgo._internal.time.Time_Time.Time>);
            var _cancelChan = _req.request.cancel;
            var _ctxDoneChan = _req.context().done();
            var _pcClosed = _pc._closech;
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
                                        _req._logf(("writeErrCh resv: %T/%#v" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_err));
                                    };
                                    if (_err != null) {
                                        _pc._close(stdgo._internal.fmt.Fmt_errorf.errorf(("write error: %w" : stdgo.GoString), stdgo.Go.toInterface(_err)));
                                        {
                                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } = { _0 : null, _1 : _pc._mapRoundTripError(_req, _startBytesWritten, _err) };
                                            for (defer in __deferstack__) {
                                                defer();
                                            };
                                            return __ret__;
                                        };
                                    };
                                    {
                                        var _d = (_pc._t.responseHeaderTimeout : stdgo._internal.time.Time_Duration.Duration);
                                        if ((_d > (0i64 : stdgo._internal.time.Time_Duration.Duration) : Bool)) {
                                            if (false) {
                                                _req._logf(("starting timer for %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_d)));
                                            };
                                            var _timer = stdgo._internal.time.Time_newTimer.newTimer(_d);
                                            __deferstack__.unshift(() -> _timer.stop());
                                            _respHeaderTimer = _timer.c;
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
                                    if ((_canceled || _pc._t._replaceReqCanceler(_req._cancelKey?.__copy__(), null) : Bool)) {
                                        if (false) {
                                            _req._logf(("closech recv: %T %#v" : stdgo.GoString), stdgo.Go.toInterface(_pc._closed), stdgo.Go.toInterface(_pc._closed));
                                        };
                                        {
                                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } = { _0 : null, _1 : _pc._mapRoundTripError(_req, _startBytesWritten, _pc._closed) };
                                            for (defer in __deferstack__) {
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
                                        _req._logf(("timeout waiting for response headers." : stdgo.GoString));
                                    };
                                    _pc._close(stdgo._internal.net.http.Http__errTimeout._errTimeout);
                                    {
                                        final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo._internal.net.http.Http__errTimeout._errTimeout };
                                        for (defer in __deferstack__) {
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
                                        _req._logf(("resc recv: %p, %T/%#v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_re._res)), stdgo.Go.toInterface(_re._err), stdgo.Go.toInterface(_re._err));
                                    };
                                    if (_re._err != null) {
                                        {
                                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } = { _0 : null, _1 : _pc._mapRoundTripError(_req, _startBytesWritten, _re._err) };
                                            for (defer in __deferstack__) {
                                                defer();
                                            };
                                            return __ret__;
                                        };
                                    };
                                    {
                                        final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } = { _0 : _re._res, _1 : (null : stdgo.Error) };
                                        for (defer in __deferstack__) {
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
                                    _canceled = _pc._t._cancelRequest(_req._cancelKey?.__copy__(), stdgo._internal.net.http.Http__errRequestCanceled._errRequestCanceled);
                                    _cancelChan = (null : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>);
                                };
                            };
                        } else if (_ctxDoneChan != null && _ctxDoneChan.__isGet__()) {
                            __select__ = false;
                            {
                                _ctxDoneChan.__get__();
                                {
                                    _canceled = _pc._t._cancelRequest(_req._cancelKey?.__copy__(), _req.context().err());
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
                final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } = { _0 : _resp, _1 : _err };
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
            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } = { _0 : _resp, _1 : _err };
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
    @:keep
    static public function _wroteRequest( _pc:stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>):Bool {
        @:recv var _pc:stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn> = _pc;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {
                {
                    var __select__ = true;
                    while (__select__) {
                        if (_pc._writeErrCh != null && _pc._writeErrCh.__isGet__()) {
                            __select__ = false;
                            {
                                var _err = _pc._writeErrCh.__get__();
                                {
                                    return _err == null;
                                };
                            };
                        } else {
                            __select__ = false;
                            {
                                var _t = stdgo._internal.time.Time_newTimer.newTimer(stdgo._internal.net.http.Http__maxWriteWaitBeforeConnReuse._maxWriteWaitBeforeConnReuse);
                                __deferstack__.unshift(() -> _t.stop());
                                {
                                    {
                                        var __select__ = true;
                                        while (__select__) {
                                            if (_pc._writeErrCh != null && _pc._writeErrCh.__isGet__()) {
                                                __select__ = false;
                                                {
                                                    var _err = _pc._writeErrCh.__get__();
                                                    {
                                                        {
                                                            final __ret__:Bool = _err == null;
                                                            for (defer in __deferstack__) {
                                                                defer();
                                                            };
                                                            return __ret__;
                                                        };
                                                    };
                                                };
                                            } else if (_t.c != null && _t.c.__isGet__()) {
                                                __select__ = false;
                                                {
                                                    _t.c.__get__();
                                                    {
                                                        {
                                                            for (defer in __deferstack__) {
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
                        defer();
                    };
                    return false;
                };
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
    static public function _writeLoop( _pc:stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>):Void {
        @:recv var _pc:stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn> = _pc;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {
                var _a0 = _pc._writeLoopDone;
                __deferstack__.unshift(() -> if (_a0 != null) _a0.__close__());
            };
            while (true) {
                {
                    var __select__ = true;
                    while (__select__) {
                        if (_pc._writech != null && _pc._writech.__isGet__()) {
                            __select__ = false;
                            {
                                var _wr = _pc._writech.__get__();
                                {
                                    var _startBytesWritten = (_pc._nwrite : stdgo.GoInt64);
                                    var _err = (_wr._req.request._write(stdgo.Go.asInterface(_pc._bw), _pc._isProxy, _wr._req._extra, _pc._waitForContinue(_wr._continueCh)) : stdgo.Error);
                                    {
                                        var __tmp__ = try {
                                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo._internal.net.http.Http_T_requestBodyReadError.T_requestBodyReadError)) : stdgo._internal.net.http.Http_T_requestBodyReadError.T_requestBodyReadError), _1 : true };
                                        } catch(_) {
                                            { _0 : ({} : stdgo._internal.net.http.Http_T_requestBodyReadError.T_requestBodyReadError), _1 : false };
                                        }, _bre = __tmp__._0, _ok = __tmp__._1;
                                        if (_ok) {
                                            _err = _bre._error;
                                            _wr._req._setError(_err);
                                        };
                                    };
                                    if (_err == null) {
                                        _err = _pc._bw.flush();
                                    };
                                    if (_err != null) {
                                        if (_pc._nwrite == (_startBytesWritten)) {
                                            _err = stdgo.Go.asInterface((new stdgo._internal.net.http.Http_T_nothingWrittenError.T_nothingWrittenError(_err) : stdgo._internal.net.http.Http_T_nothingWrittenError.T_nothingWrittenError));
                                        };
                                    };
                                    _pc._writeErrCh.__send__(_err);
                                    _wr._ch.__send__(_err);
                                    if (_err != null) {
                                        _pc._close(_err);
                                        {
                                            for (defer in __deferstack__) {
                                                defer();
                                            };
                                            return;
                                        };
                                    };
                                };
                            };
                        } else if (_pc._closech != null && _pc._closech.__isGet__()) {
                            __select__ = false;
                            {
                                _pc._closech.__get__();
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
    static public function _waitForContinue( _pc:stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>, _continueCh:stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>):() -> Bool {
        @:recv var _pc:stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn> = _pc;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if (_continueCh == null) {
                return null;
            };
            {
                final __ret__:() -> Bool = function():Bool {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        var _timer = stdgo._internal.time.Time_newTimer.newTimer(_pc._t.expectContinueTimeout);
                        __deferstack__.unshift(() -> _timer.stop());
                        {
                            {
                                var __select__ = true;
                                while (__select__) {
                                    if (_timer.c != null && _timer.c.__isGet__()) {
                                        __select__ = false;
                                        {
                                            _timer.c.__get__();
                                            {
                                                {
                                                    for (defer in __deferstack__) {
                                                        defer();
                                                    };
                                                    return true;
                                                };
                                            };
                                        };
                                    } else if (_pc._closech != null && _pc._closech.__isGet__()) {
                                        __select__ = false;
                                        {
                                            _pc._closech.__get__();
                                            {
                                                {
                                                    for (defer in __deferstack__) {
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
                                    defer();
                                };
                                return false;
                            };
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
                };
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
                return null;
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
            return null;
        };
    }
    @:keep
    static public function _readResponse( _pc:stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>, _rc:stdgo._internal.net.http.Http_T_requestAndChan.T_requestAndChan, _trace:stdgo.Ref<stdgo._internal.net.http.httptrace.Httptrace_ClientTrace.ClientTrace>):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } {
        @:recv var _pc:stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn> = _pc;
        var _resp = (null : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>), _err = (null : stdgo.Error);
        if (((_trace != null && ((_trace : Dynamic).__nil__ == null || !(_trace : Dynamic).__nil__)) && (_trace.gotFirstResponseByte != null) : Bool)) {
            {
                var __tmp__ = _pc._br.peek((1 : stdgo.GoInt)), _peek:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (((_err == null) && (_peek.length == (1 : stdgo.GoInt)) : Bool)) {
                    _trace.gotFirstResponseByte();
                };
            };
        };
        var _num1xx = (0 : stdgo.GoInt);
        {};
        var _continueCh = _rc._continueCh;
        while (true) {
            {
                var __tmp__ = stdgo._internal.net.http.Http_readResponse.readResponse(_pc._br, _rc._req);
                _resp = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : _resp, _1 : _err };
            };
            var _resCode = (_resp.statusCode : stdgo.GoInt);
            if (_continueCh != null) {
                if (_resCode == ((100 : stdgo.GoInt))) {
                    if (((_trace != null && ((_trace : Dynamic).__nil__ == null || !(_trace : Dynamic).__nil__)) && (_trace.got100Continue != null) : Bool)) {
                        _trace.got100Continue();
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
                    return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("net/http: too many 1xx informational responses" : stdgo.GoString)) };
                };
                _pc._readLimit = _pc._maxHeaderResponseSize();
                if (((_trace != null && ((_trace : Dynamic).__nil__ == null || !(_trace : Dynamic).__nil__)) && (_trace.got1xxResponse != null) : Bool)) {
                    {
                        var _err = (_trace.got1xxResponse(_resCode, (_resp.header : stdgo._internal.net.textproto.Textproto_MIMEHeader.MIMEHeader)) : stdgo.Error);
                        if (_err != null) {
                            return { _0 : null, _1 : _err };
                        };
                    };
                };
                continue;
            };
            break;
        };
        if (_resp._isProtocolSwitch()) {
            _resp.body = stdgo._internal.net.http.Http__newReadWriteCloserBody._newReadWriteCloserBody(_pc._br, _pc._conn);
        };
        _resp.tls = _pc._tlsState;
        return { _0 : _resp, _1 : _err };
    }
    @:keep
    static public function _readLoopPeekFailLocked( _pc:stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>, _peekErr:stdgo.Error):Void {
        @:recv var _pc:stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn> = _pc;
        if (_pc._closed != null) {
            return;
        };
        {
            var _n = (_pc._br.buffered() : stdgo.GoInt);
            if ((_n > (0 : stdgo.GoInt) : Bool)) {
                var __tmp__ = _pc._br.peek(_n), _buf:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, __36024:stdgo.Error = __tmp__._1;
                if (stdgo._internal.net.http.Http__is408Message._is408Message(_buf)) {
                    _pc._closeLocked(stdgo._internal.net.http.Http__errServerClosedIdle._errServerClosedIdle);
                    return;
                } else {
                    stdgo._internal.log.Log_printf.printf(("Unsolicited response received on idle HTTP channel starting with %q; err=%v" : stdgo.GoString), stdgo.Go.toInterface(_buf), stdgo.Go.toInterface(_peekErr));
                };
            };
        };
        if (stdgo.Go.toInterface(_peekErr) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
            _pc._closeLocked(stdgo._internal.net.http.Http__errServerClosedIdle._errServerClosedIdle);
        } else {
            _pc._closeLocked(stdgo._internal.fmt.Fmt_errorf.errorf(("readLoopPeekFailLocked: %w" : stdgo.GoString), stdgo.Go.toInterface(_peekErr)));
        };
    }
    @:keep
    static public function _readLoop( _pc:stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>):Void {
        @:recv var _pc:stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn> = _pc;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _closeErr = (stdgo._internal.net.http.Http__errReadLoopExiting._errReadLoopExiting : stdgo.Error);
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        _pc._close(_closeErr);
                        _pc._t._removeIdleConn(_pc);
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
            var _tryPutIdleConn = function(_trace:stdgo.Ref<stdgo._internal.net.http.httptrace.Httptrace_ClientTrace.ClientTrace>):Bool {
                var __deferstack__:Array<Void -> Void> = [];
                try {
                    {
                        var _err = (_pc._t._tryPutIdleConn(_pc) : stdgo.Error);
                        if (_err != null) {
                            _closeErr = _err;
                            if ((((_trace != null && ((_trace : Dynamic).__nil__ == null || !(_trace : Dynamic).__nil__)) && _trace.putIdleConn != null : Bool) && (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo._internal.net.http.Http__errKeepAlivesDisabled._errKeepAlivesDisabled)) : Bool)) {
                                _trace.putIdleConn(_err);
                            };
                            {
                                for (defer in __deferstack__) {
                                    defer();
                                };
                                return false;
                            };
                        };
                    };
                    if (((_trace != null && ((_trace : Dynamic).__nil__ == null || !(_trace : Dynamic).__nil__)) && (_trace.putIdleConn != null) : Bool)) {
                        _trace.putIdleConn((null : stdgo.Error));
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
                _pc._readLimit = _pc._maxHeaderResponseSize();
                var __tmp__ = _pc._br.peek((1 : stdgo.GoInt)), __36024:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                _pc._mu.lock();
                if (_pc._numExpectedResponses == ((0 : stdgo.GoInt))) {
                    _pc._readLoopPeekFailLocked(_err);
                    _pc._mu.unlock();
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return;
                    };
                };
                _pc._mu.unlock();
                var _rc = (_pc._reqch.__get__()?.__copy__() : stdgo._internal.net.http.Http_T_requestAndChan.T_requestAndChan);
                var _trace = stdgo._internal.net.http.httptrace.Httptrace_contextClientTrace.contextClientTrace(_rc._req.context());
                var _resp:stdgo.Ref<stdgo._internal.net.http.Http_Response.Response> = (null : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>);
                if (_err == null) {
                    {
                        var __tmp__ = _pc._readResponse(_rc?.__copy__(), _trace);
                        _resp = __tmp__._0;
                        _err = __tmp__._1;
                    };
                } else {
                    _err = stdgo.Go.asInterface((new stdgo._internal.net.http.Http_T_transportReadFromServerError.T_transportReadFromServerError(_err) : stdgo._internal.net.http.Http_T_transportReadFromServerError.T_transportReadFromServerError));
                    _closeErr = _err;
                };
                if (_err != null) {
                    if ((_pc._readLimit <= (0i64 : stdgo.GoInt64) : Bool)) {
                        _err = stdgo._internal.fmt.Fmt_errorf.errorf(("net/http: server response headers exceeded %d bytes; aborted" : stdgo.GoString), stdgo.Go.toInterface(_pc._maxHeaderResponseSize()));
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
                            defer();
                        };
                        return;
                    };
                };
                _pc._readLimit = (9223372036854775807i64 : stdgo.GoInt64);
                _pc._mu.lock();
                _pc._numExpectedResponses--;
                _pc._mu.unlock();
                var _bodyWritable = (_resp._bodyIsWritable() : Bool);
                var _hasBody = ((_rc._req.method != ("HEAD" : stdgo.GoString)) && (_resp.contentLength != (0i64 : stdgo.GoInt64)) : Bool);
                if ((((_resp.close || _rc._req.close : Bool) || (_resp.statusCode <= (199 : stdgo.GoInt) : Bool) : Bool) || _bodyWritable : Bool)) {
                    _alive = false;
                };
                if ((!_hasBody || _bodyWritable : Bool)) {
                    var _replaced = (_pc._t._replaceReqCanceler(_rc._cancelKey?.__copy__(), null) : Bool);
                    _alive = ((((_alive && !_pc._sawEOF : Bool) && _pc._wroteRequest() : Bool) && _replaced : Bool) && _tryPutIdleConn(_trace) : Bool);
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
                var _body = (stdgo.Go.setRef(({ _body : _resp.body, _earlyCloseFn : function():stdgo.Error {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        _waitForBodyRead.__send__(false);
                        _eofc.__get__();
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
                }, _fn : function(_err:stdgo.Error):stdgo.Error {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        var _isEOF = (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof)) : Bool);
                        _waitForBodyRead.__send__(_isEOF);
                        if (_isEOF) {
                            _eofc.__get__();
                        } else if (_err != null) {
                            {
                                var _cerr = (_pc._canceled() : stdgo.Error);
                                if (_cerr != null) {
                                    {
                                        for (defer in __deferstack__) {
                                            defer();
                                        };
                                        return _cerr;
                                    };
                                };
                            };
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
                } } : stdgo._internal.net.http.Http_T_bodyEOFSignal.T_bodyEOFSignal)) : stdgo.Ref<stdgo._internal.net.http.Http_T_bodyEOFSignal.T_bodyEOFSignal>);
                _resp.body = stdgo.Go.asInterface(_body);
                if ((_rc._addedGzip && stdgo._internal.net.http.internal.ascii.Ascii_equalFold.equalFold(_resp.header.get(("Content-Encoding" : stdgo.GoString))?.__copy__(), ("gzip" : stdgo.GoString)) : Bool)) {
                    _resp.body = stdgo.Go.asInterface((stdgo.Go.setRef(({ _body : _body } : stdgo._internal.net.http.Http_T_gzipReader.T_gzipReader)) : stdgo.Ref<stdgo._internal.net.http.Http_T_gzipReader.T_gzipReader>));
                    _resp.header.del(("Content-Encoding" : stdgo.GoString));
                    _resp.header.del(("Content-Length" : stdgo.GoString));
                    _resp.contentLength = (-1i64 : stdgo.GoInt64);
                    _resp.uncompressed = true;
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
                                    var _replaced = (_pc._t._replaceReqCanceler(_rc._cancelKey?.__copy__(), null) : Bool);
                                    _alive = (((((_alive && _bodyEOF : Bool) && !_pc._sawEOF : Bool) && _pc._wroteRequest() : Bool) && _replaced : Bool) && _tryPutIdleConn(_trace) : Bool);
                                    if (_bodyEOF) {
                                        _eofc.__send__((new stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError() : stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError));
                                    };
                                };
                            };
                        } else if (_rc._req.cancel != null && _rc._req.cancel.__isGet__()) {
                            __select__ = false;
                            {
                                _rc._req.cancel.__get__();
                                {
                                    _alive = false;
                                    _pc._t.cancelRequest(_rc._req);
                                };
                            };
                        } else if (_rc._req.context().done() != null && _rc._req.context().done().__isGet__()) {
                            __select__ = false;
                            {
                                _rc._req.context().done().__get__();
                                {
                                    _alive = false;
                                    _pc._t._cancelRequest(_rc._cancelKey?.__copy__(), _rc._req.context().err());
                                };
                            };
                        } else if (_pc._closech != null && _pc._closech.__isGet__()) {
                            __select__ = false;
                            {
                                _pc._closech.__get__();
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
    static public function _mapRoundTripError( _pc:stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>, _req:stdgo.Ref<stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest>, _startBytesWritten:stdgo.GoInt64, _err:stdgo.Error):stdgo.Error {
        @:recv var _pc:stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn> = _pc;
        if (_err == null) {
            return (null : stdgo.Error);
        };
        _pc._writeLoopDone.__get__();
        {
            var _cerr = (_pc._canceled() : stdgo.Error);
            if (_cerr != null) {
                return _cerr;
            };
        };
        _req._mu.lock();
        var _reqErr = (_req._err : stdgo.Error);
        _req._mu.unlock();
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
            }, __36020 = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                if (_pc._nwrite == (_startBytesWritten)) {
                    return stdgo.Go.asInterface((new stdgo._internal.net.http.Http_T_nothingWrittenError.T_nothingWrittenError(_err) : stdgo._internal.net.http.Http_T_nothingWrittenError.T_nothingWrittenError));
                };
                return _err;
            };
        };
        if (_pc._isBroken()) {
            if (_pc._nwrite == (_startBytesWritten)) {
                return stdgo.Go.asInterface((new stdgo._internal.net.http.Http_T_nothingWrittenError.T_nothingWrittenError(_err) : stdgo._internal.net.http.Http_T_nothingWrittenError.T_nothingWrittenError));
            };
            return stdgo._internal.fmt.Fmt_errorf.errorf(("net/http: HTTP/1.x transport connection broken: %w" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        return _err;
    }
    @:keep
    static public function _closeConnIfStillIdle( _pc:stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>):Void {
        @:recv var _pc:stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn> = _pc;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _t = _pc._t;
            _t._idleMu.lock();
            __deferstack__.unshift(() -> _t._idleMu.unlock());
            {
                var __tmp__ = (_t._idleLRU._m != null && _t._idleLRU._m.exists(_pc) ? { _0 : _t._idleLRU._m[_pc], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.container.list.List_Element.Element>), _1 : false }), __36032:stdgo.Ref<stdgo._internal.container.list.List_Element.Element> = __tmp__._0, _ok:Bool = __tmp__._1;
                if (!_ok) {
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return;
                    };
                };
            };
            _t._removeIdleConnLocked(_pc);
            _pc._close(stdgo._internal.net.http.Http__errIdleConnTimeout._errIdleConnTimeout);
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
    static public function _cancelRequest( _pc:stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>, _err:stdgo.Error):Void {
        @:recv var _pc:stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn> = _pc;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _pc._mu.lock();
            __deferstack__.unshift(() -> _pc._mu.unlock());
            _pc._canceledErr = _err;
            _pc._closeLocked(stdgo._internal.net.http.Http__errRequestCanceled._errRequestCanceled);
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
    static public function _gotIdleConnTrace( _pc:stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>, _idleAt:stdgo._internal.time.Time_Time.Time):stdgo._internal.net.http.httptrace.Httptrace_GotConnInfo.GotConnInfo {
        @:recv var _pc:stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn> = _pc;
        var __deferstack__:Array<Void -> Void> = [];
        var _t = ({} : stdgo._internal.net.http.httptrace.Httptrace_GotConnInfo.GotConnInfo);
        try {
            _pc._mu.lock();
            __deferstack__.unshift(() -> _pc._mu.unlock());
            _t.reused = _pc._reused;
            _t.conn = _pc._conn;
            _t.wasIdle = true;
            if (!_idleAt.isZero()) {
                _t.idleTime = stdgo._internal.time.Time_since.since(_idleAt?.__copy__());
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return _t;
            };
            {
                for (defer in __deferstack__) {
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
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return _t;
        };
    }
    @:keep
    static public function _isReused( _pc:stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>):Bool {
        @:recv var _pc:stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn> = _pc;
        _pc._mu.lock();
        var _r = (_pc._reused : Bool);
        _pc._mu.unlock();
        return _r;
    }
    @:keep
    static public function _canceled( _pc:stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>):stdgo.Error {
        @:recv var _pc:stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn> = _pc;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _pc._mu.lock();
            __deferstack__.unshift(() -> _pc._mu.unlock());
            {
                final __ret__:stdgo.Error = _pc._canceledErr;
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
    static public function _isBroken( _pc:stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>):Bool {
        @:recv var _pc:stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn> = _pc;
        _pc._mu.lock();
        var _b = (_pc._closed != null : Bool);
        _pc._mu.unlock();
        return _b;
    }
    @:keep
    static public function read( _pc:stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _pc:stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn> = _pc;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if ((_pc._readLimit <= (0i64 : stdgo.GoInt64) : Bool)) {
            return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("read limit of %d bytes exhausted" : stdgo.GoString), stdgo.Go.toInterface(_pc._maxHeaderResponseSize())) };
        };
        if (((_p.length : stdgo.GoInt64) > _pc._readLimit : Bool)) {
            _p = (_p.__slice__(0, _pc._readLimit) : stdgo.Slice<stdgo.GoUInt8>);
        };
        {
            var __tmp__ = _pc._conn.read(_p);
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
            _pc._sawEOF = true;
        };
        _pc._readLimit = (_pc._readLimit - ((_n : stdgo.GoInt64)) : stdgo.GoInt64);
        return { _0 : _n, _1 : _err };
    }
    @:keep
    static public function _maxHeaderResponseSize( _pc:stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>):stdgo.GoInt64 {
        @:recv var _pc:stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn> = _pc;
        {
            var _v = (_pc._t.maxResponseHeaderBytes : stdgo.GoInt64);
            if (_v != ((0i64 : stdgo.GoInt64))) {
                return _v;
            };
        };
        return (10485760i64 : stdgo.GoInt64);
    }
    @:keep
    static public function _addTLS( _pconn:stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>, _ctx:stdgo._internal.context.Context_Context.Context, _name:stdgo.GoString, _trace:stdgo.Ref<stdgo._internal.net.http.httptrace.Httptrace_ClientTrace.ClientTrace>):stdgo.Error {
        @:recv var _pconn:stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn> = _pconn;
        var _cfg = stdgo._internal.net.http.Http__cloneTLSConfig._cloneTLSConfig(_pconn._t.tlsclientConfig);
        if (_cfg.serverName == (stdgo.Go.str())) {
            _cfg.serverName = _name?.__copy__();
        };
        if (_pconn._cacheKey._onlyH1) {
            _cfg.nextProtos = (null : stdgo.Slice<stdgo.GoString>);
        };
        var _plainConn = (_pconn._conn : stdgo._internal.net.Net_Conn.Conn);
        var _tlsConn = stdgo._internal.crypto.tls.Tls_client.client(_plainConn, _cfg);
        var _errc = (new stdgo.Chan<stdgo.Error>((2 : stdgo.GoInt).toBasic(), () -> (null : stdgo.Error)) : stdgo.Chan<stdgo.Error>);
        var _timer:stdgo.Ref<stdgo._internal.time.Time_Timer.Timer> = (null : stdgo.Ref<stdgo._internal.time.Time_Timer.Timer>);
        {
            var _d = (_pconn._t.tlshandshakeTimeout : stdgo._internal.time.Time_Duration.Duration);
            if (_d != ((0i64 : stdgo._internal.time.Time_Duration.Duration))) {
                _timer = stdgo._internal.time.Time_afterFunc.afterFunc(_d, function():Void {
                    _errc.__send__((new stdgo._internal.net.http.Http_T_tlsHandshakeTimeoutError.T_tlsHandshakeTimeoutError() : stdgo._internal.net.http.Http_T_tlsHandshakeTimeoutError.T_tlsHandshakeTimeoutError));
                });
            };
        };
        stdgo.Go.routine(() -> {
            var a = function():Void {
                if (((_trace != null && ((_trace : Dynamic).__nil__ == null || !(_trace : Dynamic).__nil__)) && (_trace.tlshandshakeStart != null) : Bool)) {
                    _trace.tlshandshakeStart();
                };
                var _err = (_tlsConn.handshakeContext(_ctx) : stdgo.Error);
                if ((_timer != null && ((_timer : Dynamic).__nil__ == null || !(_timer : Dynamic).__nil__))) {
                    _timer.stop();
                };
                _errc.__send__(_err);
            };
            a();
        });
        {
            var _err = (_errc.__get__() : stdgo.Error);
            if (_err != null) {
                _plainConn.close();
                if (((_trace != null && ((_trace : Dynamic).__nil__ == null || !(_trace : Dynamic).__nil__)) && (_trace.tlshandshakeDone != null) : Bool)) {
                    _trace.tlshandshakeDone((new stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState() : stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState), _err);
                };
                return _err;
            };
        };
        var _cs = (_tlsConn.connectionState()?.__copy__() : stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState);
        if (((_trace != null && ((_trace : Dynamic).__nil__ == null || !(_trace : Dynamic).__nil__)) && (_trace.tlshandshakeDone != null) : Bool)) {
            _trace.tlshandshakeDone(_cs?.__copy__(), (null : stdgo.Error));
        };
        _pconn._tlsState = (stdgo.Go.setRef(_cs) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState>);
        _pconn._conn = stdgo.Go.asInterface(_tlsConn);
        return (null : stdgo.Error);
    }
    @:keep
    static public function _shouldRetryRequest( _pc:stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>, _req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, _err:stdgo.Error):Bool {
        @:recv var _pc:stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn> = _pc;
        if (stdgo._internal.net.http.Http__http2isNoCachedConnError._http2isNoCachedConnError(_err)) {
            return true;
        };
        if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.net.http.Http__errMissingHost._errMissingHost))) {
            return false;
        };
        if (!_pc._isReused()) {
            return false;
        };
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo._internal.net.http.Http_T_nothingWrittenError.T_nothingWrittenError)) : stdgo._internal.net.http.Http_T_nothingWrittenError.T_nothingWrittenError), _1 : true };
            } catch(_) {
                { _0 : ({} : stdgo._internal.net.http.Http_T_nothingWrittenError.T_nothingWrittenError), _1 : false };
            }, __36016 = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                return ((_req._outgoingLength() == (0i64 : stdgo.GoInt64)) || (_req.getBody != null) : Bool);
            };
        };
        if (!_req._isReplayable()) {
            return false;
        };
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo._internal.net.http.Http_T_transportReadFromServerError.T_transportReadFromServerError)) : stdgo._internal.net.http.Http_T_transportReadFromServerError.T_transportReadFromServerError), _1 : true };
            } catch(_) {
                { _0 : ({} : stdgo._internal.net.http.Http_T_transportReadFromServerError.T_transportReadFromServerError), _1 : false };
            }, __36017 = __tmp__._0, _ok = __tmp__._1;
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
