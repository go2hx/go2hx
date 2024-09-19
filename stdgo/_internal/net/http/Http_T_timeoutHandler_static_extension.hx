package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_timeoutHandler_asInterface) class T_timeoutHandler_static_extension {
    @:keep
    static public function serveHTTP( _h:stdgo.Ref<stdgo._internal.net.http.Http_T_timeoutHandler.T_timeoutHandler>, _w:stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):Void {
        @:recv var _h:stdgo.Ref<stdgo._internal.net.http.Http_T_timeoutHandler.T_timeoutHandler> = _h;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _ctx = (_h._testContext : stdgo._internal.context.Context_Context.Context);
            if (_ctx == null) {
                var _cancelCtx:stdgo._internal.context.Context_CancelFunc.CancelFunc = (null : stdgo._internal.context.Context_CancelFunc.CancelFunc);
                {
                    var __tmp__ = stdgo._internal.context.Context_withTimeout.withTimeout(_r.context(), _h._dt);
                    _ctx = __tmp__._0;
                    _cancelCtx = __tmp__._1;
                };
                __deferstack__.unshift(() -> _cancelCtx());
            };
            _r = _r.withContext(_ctx);
            var _done = (new stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>(0, () -> ({} : stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError)) : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>);
            var _tw = (stdgo.Go.setRef(({ _w : _w, _h : (({
                final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
                x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.http.Http_Header.Header), _req : _r } : stdgo._internal.net.http.Http_T_timeoutWriter.T_timeoutWriter)) : stdgo.Ref<stdgo._internal.net.http.Http_T_timeoutWriter.T_timeoutWriter>);
            var _panicChan = (new stdgo.Chan<stdgo.AnyInterface>((1 : stdgo.GoInt).toBasic(), () -> (null : stdgo.AnyInterface)) : stdgo.Chan<stdgo.AnyInterface>);
            stdgo.Go.routine(() -> {
                var a = function():Void {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        __deferstack__.unshift(() -> {
                            var a = function():Void {
                                var __deferstack__:Array<Void -> Void> = [];
                                try {
                                    {
                                        var _p = ({
                                            final r = stdgo.Go.recover_exception;
                                            stdgo.Go.recover_exception = null;
                                            r;
                                        } : stdgo.AnyInterface);
                                        if (_p != null) {
                                            _panicChan.__send__(_p);
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
                            };
                            a();
                        });
                        _h._handler.serveHTTP(stdgo.Go.asInterface(_tw), _r);
                        if (_done != null) _done.__close__();
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
                var __select__ = true;
                while (__select__) {
                    if (_panicChan != null && _panicChan.__isGet__()) {
                        __select__ = false;
                        {
                            var _p = _panicChan.__get__();
                            {
                                throw stdgo.Go.toInterface(_p);
                            };
                        };
                    } else if (_done != null && _done.__isGet__()) {
                        __select__ = false;
                        {
                            _done.__get__();
                            {
                                _tw._mu.lock();
                                __deferstack__.unshift(() -> _tw._mu.unlock());
                                var _dst = (_w.header() : stdgo._internal.net.http.Http_Header.Header);
                                for (_k => _vv in _tw._h) {
                                    _dst[_k] = _vv;
                                };
                                if (!_tw._wroteHeader) {
                                    _tw._code = (200 : stdgo.GoInt);
                                };
                                _w.writeHeader(_tw._code);
                                _w.write(_tw._wbuf.bytes());
                            };
                        };
                    } else if (_ctx.done() != null && _ctx.done().__isGet__()) {
                        __select__ = false;
                        {
                            _ctx.done().__get__();
                            {
                                _tw._mu.lock();
                                __deferstack__.unshift(() -> _tw._mu.unlock());
                                {
                                    var _err = (_ctx.err() : stdgo.Error);
                                    {
                                        final __value__ = _err;
                                        if (stdgo.Go.toInterface(__value__) == (stdgo.Go.toInterface(stdgo._internal.context.Context_deadlineExceeded.deadlineExceeded))) {
                                            _w.writeHeader((503 : stdgo.GoInt));
                                            stdgo._internal.io.Io_writeString.writeString(_w, _h._errorBody()?.__copy__());
                                            _tw._err = stdgo._internal.net.http.Http_errHandlerTimeout.errHandlerTimeout;
                                        } else {
                                            _w.writeHeader((503 : stdgo.GoInt));
                                            _tw._err = _err;
                                        };
                                    };
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
    static public function _errorBody( _h:stdgo.Ref<stdgo._internal.net.http.Http_T_timeoutHandler.T_timeoutHandler>):stdgo.GoString {
        @:recv var _h:stdgo.Ref<stdgo._internal.net.http.Http_T_timeoutHandler.T_timeoutHandler> = _h;
        if (_h._body != (stdgo.Go.str())) {
            return _h._body?.__copy__();
        };
        return ("<html><head><title>Timeout</title></head><body><h1>Timeout</h1></body></html>" : stdgo.GoString);
    }
}