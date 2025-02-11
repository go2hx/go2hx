package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2ClientConn_asInterface) class T_http2ClientConn_static_extension {
    @:keep
    @:tdfield
    static public function ping( _cc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>, _ctx:stdgo._internal.context.Context_context.Context):stdgo.Error {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn> = _cc;
        var _c = (new stdgo.Chan<stdgo._internal.net.http.Http_t_http2goawayflowerror.T_http2goAwayFlowError>(0, () -> ({} : stdgo._internal.net.http.Http_t_http2goawayflowerror.T_http2goAwayFlowError)) : stdgo.Chan<stdgo._internal.net.http.Http_t_http2goawayflowerror.T_http2goAwayFlowError>);
        var _p:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(8, 8).__setNumber32__();
        while (true) {
            {
                var __tmp__ = stdgo._internal.net.http.Http__rand._rand.read((_p.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)), __2643:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
            };
            @:check2 (@:checkr _cc ?? throw "null pointer dereference")._mu.lock();
            {
                var __tmp__ = ((@:checkr _cc ?? throw "null pointer dereference")._pings != null && (@:checkr _cc ?? throw "null pointer dereference")._pings.__exists__(_p?.__copy__()) ? { _0 : (@:checkr _cc ?? throw "null pointer dereference")._pings[_p?.__copy__()], _1 : true } : { _0 : (null : stdgo.Chan<stdgo._internal.net.http.Http_t_http2goawayflowerror.T_http2goAwayFlowError>), _1 : false }), __2674:stdgo.Chan<stdgo._internal.net.http.Http_t_http2goawayflowerror.T_http2goAwayFlowError> = __tmp__._0, _found:Bool = __tmp__._1;
                if (!_found) {
                    (@:checkr _cc ?? throw "null pointer dereference")._pings[_p] = _c;
                    @:check2 (@:checkr _cc ?? throw "null pointer dereference")._mu.unlock();
                    break;
                };
            };
            @:check2 (@:checkr _cc ?? throw "null pointer dereference")._mu.unlock();
        };
        var _errc = (new stdgo.Chan<stdgo.Error>((1 : stdgo.GoInt).toBasic(), () -> (null : stdgo.Error)) : stdgo.Chan<stdgo.Error>);
        stdgo.Go.routine(() -> ({
            var a = function():Void {
                var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
                try {
                    @:check2 (@:checkr _cc ?? throw "null pointer dereference")._wmu.lock();
                    {
                        final __f__ = @:check2 (@:checkr _cc ?? throw "null pointer dereference")._wmu.unlock;
                        __deferstack__.unshift({ ran : false, f : () -> __f__() });
                    };
                    {
                        var _err = (@:check2r (@:checkr _cc ?? throw "null pointer dereference")._fr.writePing(false, _p?.__copy__()) : stdgo.Error);
                        if (_err != null) {
                            _errc.__send__(_err);
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
                        var _err = (@:check2r (@:checkr _cc ?? throw "null pointer dereference")._bw.flush() : stdgo.Error);
                        if (_err != null) {
                            _errc.__send__(_err);
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
            {
                var __select__ = true;
                while (__select__) {
                    if (_c != null && _c.__isGet__()) {
                        __select__ = false;
                        {
                            _c.__get__();
                            {
                                return (null : stdgo.Error);
                            };
                        };
                    } else if (_errc != null && _errc.__isGet__()) {
                        __select__ = false;
                        {
                            var _err = _errc.__get__();
                            {
                                return _err;
                            };
                        };
                    } else if (_ctx.done() != null && _ctx.done().__isGet__()) {
                        __select__ = false;
                        {
                            _ctx.done().__get__();
                            {
                                return _ctx.err();
                            };
                        };
                    } else if ((@:checkr _cc ?? throw "null pointer dereference")._readerDone != null && (@:checkr _cc ?? throw "null pointer dereference")._readerDone.__isGet__()) {
                        __select__ = false;
                        {
                            (@:checkr _cc ?? throw "null pointer dereference")._readerDone.__get__();
                            {
                                return (@:checkr _cc ?? throw "null pointer dereference")._readerErr;
                            };
                        };
                    };
                    #if !js Sys.sleep(0.01) #else null #end;
                    stdgo._internal.internal.Async.tick();
                };
            };
            return (null : stdgo.Error);
        };
    }
    @:keep
    @:tdfield
    static public function roundTrip( _cc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>, _req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn> = _cc;
        var _ctx = (@:check2r _req.context() : stdgo._internal.context.Context_context.Context);
        var _cs = (stdgo.Go.setRef(({ _cc : _cc, _ctx : _ctx, _reqCancel : (@:checkr _req ?? throw "null pointer dereference").cancel, _isHead : (@:checkr _req ?? throw "null pointer dereference").method == (("HEAD" : stdgo.GoString)), _reqBody : (@:checkr _req ?? throw "null pointer dereference").body, _reqBodyContentLength : stdgo._internal.net.http.Http__http2actualcontentlength._http2actualContentLength(_req), _trace : stdgo._internal.net.http.Http__httptrace._httptrace.contextClientTrace(_ctx), _peerClosed : (new stdgo.Chan<stdgo._internal.net.http.Http_t_http2goawayflowerror.T_http2goAwayFlowError>(0, () -> ({} : stdgo._internal.net.http.Http_t_http2goawayflowerror.T_http2goAwayFlowError)) : stdgo.Chan<stdgo._internal.net.http.Http_t_http2goawayflowerror.T_http2goAwayFlowError>), _abort : (new stdgo.Chan<stdgo._internal.net.http.Http_t_http2goawayflowerror.T_http2goAwayFlowError>(0, () -> ({} : stdgo._internal.net.http.Http_t_http2goawayflowerror.T_http2goAwayFlowError)) : stdgo.Chan<stdgo._internal.net.http.Http_t_http2goawayflowerror.T_http2goAwayFlowError>), _respHeaderRecv : (new stdgo.Chan<stdgo._internal.net.http.Http_t_http2goawayflowerror.T_http2goAwayFlowError>(0, () -> ({} : stdgo._internal.net.http.Http_t_http2goawayflowerror.T_http2goAwayFlowError)) : stdgo.Chan<stdgo._internal.net.http.Http_t_http2goawayflowerror.T_http2goAwayFlowError>), _donec : (new stdgo.Chan<stdgo._internal.net.http.Http_t_http2goawayflowerror.T_http2goAwayFlowError>(0, () -> ({} : stdgo._internal.net.http.Http_t_http2goawayflowerror.T_http2goAwayFlowError)) : stdgo.Chan<stdgo._internal.net.http.Http_t_http2goawayflowerror.T_http2goAwayFlowError>) } : stdgo._internal.net.http.Http_t_http2clientstream.T_http2clientStream)) : stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientstream.T_http2clientStream>);
        stdgo.Go.routine(() -> @:check2r _cs._doRequest(_req));
        var _waitDone = (function():stdgo.Error {
            {
                {
                    var __select__ = true;
                    while (__select__) {
                        if ((@:checkr _cs ?? throw "null pointer dereference")._donec != null && (@:checkr _cs ?? throw "null pointer dereference")._donec.__isGet__()) {
                            __select__ = false;
                            {
                                (@:checkr _cs ?? throw "null pointer dereference")._donec.__get__();
                                {
                                    return (null : stdgo.Error);
                                };
                            };
                        } else if (_ctx.done() != null && _ctx.done().__isGet__()) {
                            __select__ = false;
                            {
                                _ctx.done().__get__();
                                {
                                    return _ctx.err();
                                };
                            };
                        } else if ((@:checkr _cs ?? throw "null pointer dereference")._reqCancel != null && (@:checkr _cs ?? throw "null pointer dereference")._reqCancel.__isGet__()) {
                            __select__ = false;
                            {
                                (@:checkr _cs ?? throw "null pointer dereference")._reqCancel.__get__();
                                {
                                    return stdgo._internal.net.http.Http__http2errrequestcanceled._http2errRequestCanceled;
                                };
                            };
                        };
                        #if !js Sys.sleep(0.01) #else null #end;
                        stdgo._internal.internal.Async.tick();
                    };
                };
                return (null : stdgo.Error);
            };
        } : () -> stdgo.Error);
        var _handleResponseHeaders = (function():{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } {
            var _res = (@:checkr _cs ?? throw "null pointer dereference")._res;
            if (((@:checkr _res ?? throw "null pointer dereference").statusCode > (299 : stdgo.GoInt) : Bool)) {
                @:check2r _cs._abortRequestBodyWrite();
            };
            (@:checkr _res ?? throw "null pointer dereference").request = _req;
            (@:checkr _res ?? throw "null pointer dereference").tLS = (@:checkr _cc ?? throw "null pointer dereference")._tlsState;
            if (((stdgo.Go.toInterface((@:checkr _res ?? throw "null pointer dereference").body) == stdgo.Go.toInterface(stdgo._internal.net.http.Http__http2nobody._http2noBody)) && (stdgo._internal.net.http.Http__http2actualcontentlength._http2actualContentLength(_req) == (0i64 : stdgo.GoInt64)) : Bool)) {
                {
                    var _err = (_waitDone() : stdgo.Error);
                    if (_err != null) {
                        return { _0 : null, _1 : _err };
                    };
                };
            };
            return { _0 : _res, _1 : (null : stdgo.Error) };
        } : () -> { var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; });
        var _cancelRequest = function(_cs:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientstream.T_http2clientStream>, _err:stdgo.Error):stdgo.Error {
            @:check2 (@:checkr (@:checkr _cs ?? throw "null pointer dereference")._cc ?? throw "null pointer dereference")._mu.lock();
            var _bodyClosed = (@:checkr _cs ?? throw "null pointer dereference")._reqBodyClosed;
            @:check2 (@:checkr (@:checkr _cs ?? throw "null pointer dereference")._cc ?? throw "null pointer dereference")._mu.unlock();
            if (_bodyClosed != null) {
                _bodyClosed.__get__();
            };
            return _err;
        };
        while (true) {
            {
                {
                    var __select__ = true;
                    while (__select__) {
                        if ((@:checkr _cs ?? throw "null pointer dereference")._respHeaderRecv != null && (@:checkr _cs ?? throw "null pointer dereference")._respHeaderRecv.__isGet__()) {
                            __select__ = false;
                            {
                                (@:checkr _cs ?? throw "null pointer dereference")._respHeaderRecv.__get__();
                                {
                                    return _handleResponseHeaders();
                                };
                            };
                        } else if ((@:checkr _cs ?? throw "null pointer dereference")._abort != null && (@:checkr _cs ?? throw "null pointer dereference")._abort.__isGet__()) {
                            __select__ = false;
                            {
                                (@:checkr _cs ?? throw "null pointer dereference")._abort.__get__();
                                {
                                    {
                                        {
                                            var __select__ = true;
                                            while (__select__) {
                                                if ((@:checkr _cs ?? throw "null pointer dereference")._respHeaderRecv != null && (@:checkr _cs ?? throw "null pointer dereference")._respHeaderRecv.__isGet__()) {
                                                    __select__ = false;
                                                    {
                                                        (@:checkr _cs ?? throw "null pointer dereference")._respHeaderRecv.__get__();
                                                        {
                                                            return _handleResponseHeaders();
                                                        };
                                                    };
                                                } else {
                                                    __select__ = false;
                                                    {
                                                        _waitDone();
                                                        return { _0 : null, _1 : (@:checkr _cs ?? throw "null pointer dereference")._abortErr };
                                                    };
                                                };
                                                #if !js Sys.sleep(0.01) #else null #end;
                                                stdgo._internal.internal.Async.tick();
                                            };
                                        };
                                        return { _0 : (null : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>), _1 : (null : stdgo.Error) };
                                    };
                                };
                            };
                        } else if (_ctx.done() != null && _ctx.done().__isGet__()) {
                            __select__ = false;
                            {
                                _ctx.done().__get__();
                                {
                                    var _err = (_ctx.err() : stdgo.Error);
                                    @:check2r _cs._abortStream(_err);
                                    return { _0 : null, _1 : _cancelRequest(_cs, _err) };
                                };
                            };
                        } else if ((@:checkr _cs ?? throw "null pointer dereference")._reqCancel != null && (@:checkr _cs ?? throw "null pointer dereference")._reqCancel.__isGet__()) {
                            __select__ = false;
                            {
                                (@:checkr _cs ?? throw "null pointer dereference")._reqCancel.__get__();
                                {
                                    @:check2r _cs._abortStream(stdgo._internal.net.http.Http__http2errrequestcanceled._http2errRequestCanceled);
                                    return { _0 : null, _1 : _cancelRequest(_cs, stdgo._internal.net.http.Http__http2errrequestcanceled._http2errRequestCanceled) };
                                };
                            };
                        };
                        #if !js Sys.sleep(0.01) #else null #end;
                        stdgo._internal.internal.Async.tick();
                    };
                };
                return { _0 : (null : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>), _1 : (null : stdgo.Error) };
            };
        };
    }
    @:keep
    @:tdfield
    static public function close( _cc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>):stdgo.Error {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn> = _cc;
        var _err = (stdgo._internal.net.http.Http__errors._errors.new_(("http2: client connection force closed via ClientConn.Close" : stdgo.GoString)) : stdgo.Error);
        @:check2r _cc._closeForError(_err);
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function shutdown( _cc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>, _ctx:stdgo._internal.context.Context_context.Context):stdgo.Error {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn> = _cc;
        {
            var _err = (@:check2r _cc._sendGoAway() : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        var _done = (new stdgo.Chan<stdgo._internal.net.http.Http_t_http2goawayflowerror.T_http2goAwayFlowError>(0, () -> ({} : stdgo._internal.net.http.Http_t_http2goawayflowerror.T_http2goAwayFlowError)) : stdgo.Chan<stdgo._internal.net.http.Http_t_http2goawayflowerror.T_http2goAwayFlowError>);
        var _cancelled = (false : Bool);
        stdgo.Go.routine(() -> ({
            var a = function():Void {
                var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
                try {
                    @:check2 (@:checkr _cc ?? throw "null pointer dereference")._mu.lock();
                    {
                        final __f__ = @:check2 (@:checkr _cc ?? throw "null pointer dereference")._mu.unlock;
                        __deferstack__.unshift({ ran : false, f : () -> __f__() });
                    };
                    while (true) {
                        if ((((@:checkr _cc ?? throw "null pointer dereference")._streams.length == (0 : stdgo.GoInt)) || (@:checkr _cc ?? throw "null pointer dereference")._closed : Bool)) {
                            (@:checkr _cc ?? throw "null pointer dereference")._closed = true;
                            if (_done != null) _done.__close__();
                            break;
                        };
                        if (_cancelled) {
                            break;
                        };
                        @:check2r (@:checkr _cc ?? throw "null pointer dereference")._cond.wait_();
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
            };
            a();
        }));
        stdgo._internal.net.http.Http__http2shutdownenterwaitstatehook._http2shutdownEnterWaitStateHook();
        {
            {
                var __select__ = true;
                while (__select__) {
                    if (_done != null && _done.__isGet__()) {
                        __select__ = false;
                        {
                            _done.__get__();
                            {
                                @:check2r _cc._closeConn();
                                return (null : stdgo.Error);
                            };
                        };
                    } else if (_ctx.done() != null && _ctx.done().__isGet__()) {
                        __select__ = false;
                        {
                            _ctx.done().__get__();
                            {
                                @:check2 (@:checkr _cc ?? throw "null pointer dereference")._mu.lock();
                                _cancelled = true;
                                @:check2r (@:checkr _cc ?? throw "null pointer dereference")._cond.broadcast();
                                @:check2 (@:checkr _cc ?? throw "null pointer dereference")._mu.unlock();
                                return _ctx.err();
                            };
                        };
                    };
                    #if !js Sys.sleep(0.01) #else null #end;
                    stdgo._internal.internal.Async.tick();
                };
            };
            return (null : stdgo.Error);
        };
    }
    @:keep
    @:tdfield
    static public function state( _cc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>):stdgo._internal.net.http.Http_t_http2clientconnstate.T_http2ClientConnState {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn> = _cc;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            @:check2 (@:checkr _cc ?? throw "null pointer dereference")._wmu.lock();
            var _maxConcurrent = ((@:checkr _cc ?? throw "null pointer dereference")._maxConcurrentStreams : stdgo.GoUInt32);
            if (!(@:checkr _cc ?? throw "null pointer dereference")._seenSettings) {
                _maxConcurrent = (0u32 : stdgo.GoUInt32);
            };
            @:check2 (@:checkr _cc ?? throw "null pointer dereference")._wmu.unlock();
            @:check2 (@:checkr _cc ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = @:check2 (@:checkr _cc ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            {
                final __ret__:stdgo._internal.net.http.Http_t_http2clientconnstate.T_http2ClientConnState = ({ closed : (@:checkr _cc ?? throw "null pointer dereference")._closed, closing : ((((@:checkr _cc ?? throw "null pointer dereference")._closing || (@:checkr _cc ?? throw "null pointer dereference")._singleUse : Bool) || (@:checkr _cc ?? throw "null pointer dereference")._doNotReuse : Bool) || ((@:checkr _cc ?? throw "null pointer dereference")._goAway != null && (((@:checkr _cc ?? throw "null pointer dereference")._goAway : Dynamic).__nil__ == null || !((@:checkr _cc ?? throw "null pointer dereference")._goAway : Dynamic).__nil__)) : Bool), streamsActive : ((@:checkr _cc ?? throw "null pointer dereference")._streams.length), streamsReserved : (@:checkr _cc ?? throw "null pointer dereference")._streamsReserved, streamsPending : (@:checkr _cc ?? throw "null pointer dereference")._pendingRequests, lastIdle : (@:checkr _cc ?? throw "null pointer dereference")._lastIdle?.__copy__(), maxConcurrentStreams : _maxConcurrent } : stdgo._internal.net.http.Http_t_http2clientconnstate.T_http2ClientConnState);
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
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return ({} : stdgo._internal.net.http.Http_t_http2clientconnstate.T_http2ClientConnState);
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
                return ({} : stdgo._internal.net.http.Http_t_http2clientconnstate.T_http2ClientConnState);
            };
        };
    }
    @:keep
    @:tdfield
    static public function reserveNewRequest( _cc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>):Bool {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn> = _cc;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            @:check2 (@:checkr _cc ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = @:check2 (@:checkr _cc ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            {
                var _st = (@:check2r _cc._idleStateLocked()?.__copy__() : stdgo._internal.net.http.Http_t_http2clientconnidlestate.T_http2clientConnIdleState);
                if (!_st._canTakeNewRequest) {
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return false;
                    };
                };
            };
            (@:checkr _cc ?? throw "null pointer dereference")._streamsReserved++;
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return true;
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
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return false;
            };
        };
    }
    @:keep
    @:tdfield
    static public function canTakeNewRequest( _cc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>):Bool {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn> = _cc;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            @:check2 (@:checkr _cc ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = @:check2 (@:checkr _cc ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            {
                final __ret__:Bool = @:check2r _cc._canTakeNewRequestLocked();
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
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
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
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return false;
            };
        };
    }
    @:keep
    @:tdfield
    static public function setDoNotReuse( _cc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>):Void {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn> = _cc;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            @:check2 (@:checkr _cc ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = @:check2 (@:checkr _cc ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            (@:checkr _cc ?? throw "null pointer dereference")._doNotReuse = true;
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
