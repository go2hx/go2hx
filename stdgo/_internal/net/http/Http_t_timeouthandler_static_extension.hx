package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_timeoutHandler_asInterface) class T_timeoutHandler_static_extension {
    @:keep
    @:tdfield
    static public function serveHTTP( _h:stdgo.Ref<stdgo._internal.net.http.Http_t_timeouthandler.T_timeoutHandler>, _w:stdgo._internal.net.http.Http_responsewriter.ResponseWriter, _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):Void {
        @:recv var _h:stdgo.Ref<stdgo._internal.net.http.Http_t_timeouthandler.T_timeoutHandler> = _h;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _ctx = ((@:checkr _h ?? throw "null pointer dereference")._testContext : stdgo._internal.context.Context_context.Context);
            if (_ctx == null) {
                var _cancelCtx:stdgo._internal.context.Context_cancelfunc.CancelFunc = (null : stdgo._internal.context.Context_cancelfunc.CancelFunc);
                {
                    var __tmp__ = stdgo._internal.net.http.Http__context._context.withTimeout(@:check2r _r.context(), (@:checkr _h ?? throw "null pointer dereference")._dt);
                    _ctx = @:tmpset0 __tmp__._0;
                    _cancelCtx = @:tmpset0 __tmp__._1;
                };
                {
                    final __f__ = _cancelCtx;
                    __deferstack__.unshift({ ran : false, f : () -> __f__() });
                };
            };
            _r = @:check2r _r.withContext(_ctx);
            var _done = (new stdgo.Chan<stdgo._internal.net.http.Http_t_http2goawayflowerror.T_http2goAwayFlowError>(0, () -> ({} : stdgo._internal.net.http.Http_t_http2goawayflowerror.T_http2goAwayFlowError)) : stdgo.Chan<stdgo._internal.net.http.Http_t_http2goawayflowerror.T_http2goAwayFlowError>);
            var _tw = (stdgo.Go.setRef(({ _w : _w, _h : (({
                final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
                x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.http.Http_header.Header), _req : _r } : stdgo._internal.net.http.Http_t_timeoutwriter.T_timeoutWriter)) : stdgo.Ref<stdgo._internal.net.http.Http_t_timeoutwriter.T_timeoutWriter>);
            var _panicChan = (new stdgo.Chan<stdgo.AnyInterface>((1 : stdgo.GoInt).toBasic(), () -> (null : stdgo.AnyInterface)) : stdgo.Chan<stdgo.AnyInterface>);
            stdgo.Go.routine(() -> ({
                var a = function():Void {
                    var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
                    try {
                        {
                            __deferstack__.unshift({ ran : false, f : () -> ({
                                var a = function():Void {
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
                                };
                                a();
                            }) });
                        };
                        (@:checkr _h ?? throw "null pointer dereference")._handler.serveHTTP(stdgo.Go.asInterface(_tw), _r);
                        if (_done != null) _done.__close__();
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
                };
                a();
            }));
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
                                @:check2 (@:checkr _tw ?? throw "null pointer dereference")._mu.lock();
                                {
                                    final __f__ = @:check2 (@:checkr _tw ?? throw "null pointer dereference")._mu.unlock;
                                    __deferstack__.unshift({ ran : false, f : () -> __f__() });
                                };
                                var _dst = (_w.header() : stdgo._internal.net.http.Http_header.Header);
                                for (_k => _vv in (@:checkr _tw ?? throw "null pointer dereference")._h) {
                                    _dst[_k] = _vv;
                                };
                                if (!(@:checkr _tw ?? throw "null pointer dereference")._wroteHeader) {
                                    (@:checkr _tw ?? throw "null pointer dereference")._code = (200 : stdgo.GoInt);
                                };
                                _w.writeHeader((@:checkr _tw ?? throw "null pointer dereference")._code);
                                _w.write(@:check2 (@:checkr _tw ?? throw "null pointer dereference")._wbuf.bytes());
                            };
                        };
                    } else if (_ctx.done() != null && _ctx.done().__isGet__()) {
                        __select__ = false;
                        {
                            _ctx.done().__get__();
                            {
                                @:check2 (@:checkr _tw ?? throw "null pointer dereference")._mu.lock();
                                {
                                    final __f__ = @:check2 (@:checkr _tw ?? throw "null pointer dereference")._mu.unlock;
                                    __deferstack__.unshift({ ran : false, f : () -> __f__() });
                                };
                                {
                                    var _err = (_ctx.err() : stdgo.Error);
                                    {
                                        final __value__ = _err;
                                        if (stdgo.Go.toInterface(__value__) == (stdgo.Go.toInterface(stdgo._internal.net.http.Http__context._context.deadlineExceeded))) {
                                            _w.writeHeader((503 : stdgo.GoInt));
                                            stdgo._internal.net.http.Http__io._io.writeString(_w, @:check2r _h._errorBody()?.__copy__());
                                            (@:checkr _tw ?? throw "null pointer dereference")._err = stdgo._internal.net.http.Http_errhandlertimeout.errHandlerTimeout;
                                        } else {
                                            _w.writeHeader((503 : stdgo.GoInt));
                                            (@:checkr _tw ?? throw "null pointer dereference")._err = _err;
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
}
