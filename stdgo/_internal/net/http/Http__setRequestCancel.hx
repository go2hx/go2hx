package stdgo._internal.net.http;
function _setRequestCancel(_req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, _rt:stdgo._internal.net.http.Http_RoundTripper.RoundTripper, _deadline:stdgo._internal.time.Time_Time.Time):{ var _0 : () -> Void; var _1 : () -> Bool; } {
        var _stopTimer = null, _didTimeout = null;
        if (_deadline.isZero()) {
            return { _0 : _stopTimer = stdgo._internal.net.http.Http__nop._nop, _1 : _didTimeout = stdgo._internal.net.http.Http__alwaysFalse._alwaysFalse };
        };
        var _knownTransport = (stdgo._internal.net.http.Http__knownRoundTripperImpl._knownRoundTripperImpl(_rt, _req) : Bool);
        var _oldCtx = (_req.context() : stdgo._internal.context.Context_Context.Context);
        if (((_req.cancel == null) && _knownTransport : Bool)) {
            if (!stdgo._internal.net.http.Http__timeBeforeContextDeadline._timeBeforeContextDeadline(_deadline?.__copy__(), _oldCtx)) {
                return { _0 : _stopTimer = stdgo._internal.net.http.Http__nop._nop, _1 : _didTimeout = stdgo._internal.net.http.Http__alwaysFalse._alwaysFalse };
            };
            var _cancelCtx:() -> Void = null;
            {
                var __tmp__ = stdgo._internal.context.Context_withDeadline.withDeadline(_oldCtx, _deadline?.__copy__());
                _req._ctx = __tmp__._0;
                _cancelCtx = __tmp__._1;
            };
            return { _0 : _stopTimer = _cancelCtx, _1 : _didTimeout = function():Bool {
                return stdgo._internal.time.Time_now.now().after(_deadline?.__copy__());
            } };
        };
        var _initialReqCancel = _req.cancel;
        var _cancelCtx:() -> Void = null;
        if (stdgo._internal.net.http.Http__timeBeforeContextDeadline._timeBeforeContextDeadline(_deadline?.__copy__(), _oldCtx)) {
            {
                var __tmp__ = stdgo._internal.context.Context_withDeadline.withDeadline(_oldCtx, _deadline?.__copy__());
                _req._ctx = __tmp__._0;
                _cancelCtx = __tmp__._1;
            };
        };
        var _cancel = (new stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>(0, () -> ({} : stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError)) : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>);
        _req.cancel = _cancel;
        var _doCancel = (function():Void {
            if (_cancel != null) _cancel.__close__();
            {};
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_rt) : stdgo._internal.net.http.Http_T__setRequestCancel___localname___canceler_13723.T__setRequestCancel___localname___canceler_13723)) : stdgo._internal.net.http.Http_T__setRequestCancel___localname___canceler_13723.T__setRequestCancel___localname___canceler_13723), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo._internal.net.http.Http_T__setRequestCancel___localname___canceler_13723.T__setRequestCancel___localname___canceler_13723), _1 : false };
                }, _v = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    _v.cancelRequest(_req);
                };
            };
        } : () -> Void);
        var _stopTimerCh = (new stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>(0, () -> ({} : stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError)) : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>);
        var _once:stdgo._internal.sync.Sync_Once.Once = ({} : stdgo._internal.sync.Sync_Once.Once);
        _stopTimer = function():Void {
            _once.do_(function():Void {
                if (_stopTimerCh != null) _stopTimerCh.__close__();
                if (_cancelCtx != null) {
                    _cancelCtx();
                };
            });
        };
        var _timer = stdgo._internal.time.Time_newTimer.newTimer(stdgo._internal.time.Time_until.until(_deadline?.__copy__()));
        var _timedOut:stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_ = ({} : stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_);
        stdgo.Go.routine(() -> ({
            var a = function():Void {
                {
                    var __select__ = true;
                    while (__select__) {
                        if (_initialReqCancel != null && _initialReqCancel.__isGet__()) {
                            __select__ = false;
                            {
                                _initialReqCancel.__get__();
                                {
                                    _doCancel();
                                    _timer.stop();
                                };
                            };
                        } else if (_timer.c != null && _timer.c.__isGet__()) {
                            __select__ = false;
                            {
                                _timer.c.__get__();
                                {
                                    _timedOut.store(true);
                                    _doCancel();
                                };
                            };
                        } else if (_stopTimerCh != null && _stopTimerCh.__isGet__()) {
                            __select__ = false;
                            {
                                _stopTimerCh.__get__();
                                {
                                    _timer.stop();
                                };
                            };
                        };
                        #if !js Sys.sleep(0.01) #else null #end;
                        stdgo._internal.internal.Async.tick();
                    };
                };
            };
            a();
        }));
        return { _0 : _stopTimer, _1 : _didTimeout = _timedOut.load };
    }
