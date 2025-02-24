package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2transportResponseBody_asInterface) class T_http2transportResponseBody_static_extension {
    @:keep
    @:tdfield
    static public function close( _b:stdgo._internal.net.http.Http_t_http2transportresponsebody.T_http2transportResponseBody):stdgo.Error {
        @:recv var _b:stdgo._internal.net.http.Http_t_http2transportresponsebody.T_http2transportResponseBody = _b?.__copy__();
        var _cs = _b._cs;
        var _cc = (@:checkr _cs ?? throw "null pointer dereference")._cc;
        @:check2 (@:checkr _cs ?? throw "null pointer dereference")._bufPipe.breakWithError(stdgo._internal.net.http.Http__http2errclosedresponsebody._http2errClosedResponseBody);
        @:check2r _cs._abortStream(stdgo._internal.net.http.Http__http2errclosedresponsebody._http2errClosedResponseBody);
        var _unread = (@:check2 (@:checkr _cs ?? throw "null pointer dereference")._bufPipe.len() : stdgo.GoInt);
        if ((_unread > (0 : stdgo.GoInt) : Bool)) {
            @:check2 (@:checkr _cc ?? throw "null pointer dereference")._mu.lock();
            var _connAdd = (@:check2 (@:checkr _cc ?? throw "null pointer dereference")._inflow._add(_unread) : stdgo.GoInt32);
            @:check2 (@:checkr _cc ?? throw "null pointer dereference")._mu.unlock();
            @:check2 (@:checkr _cc ?? throw "null pointer dereference")._wmu.lock();
            if ((_connAdd > (0 : stdgo.GoInt32) : Bool)) {
                @:check2r (@:checkr _cc ?? throw "null pointer dereference")._fr.writeWindowUpdate((0u32 : stdgo.GoUInt32), (_connAdd : stdgo.GoUInt32));
            };
            @:check2r (@:checkr _cc ?? throw "null pointer dereference")._bw.flush();
            @:check2 (@:checkr _cc ?? throw "null pointer dereference")._wmu.unlock();
        };
        {
            var __select__ = true;
            while (__select__) {
                if ((@:checkr _cs ?? throw "null pointer dereference")._donec != null && (@:checkr _cs ?? throw "null pointer dereference")._donec.__isGet__()) {
                    __select__ = false;
                    {
                        (@:checkr _cs ?? throw "null pointer dereference")._donec.__get__();
                        {};
                    };
                } else if ((@:checkr _cs ?? throw "null pointer dereference")._ctx.done() != null && (@:checkr _cs ?? throw "null pointer dereference")._ctx.done().__isGet__()) {
                    __select__ = false;
                    {
                        (@:checkr _cs ?? throw "null pointer dereference")._ctx.done().__get__();
                        {
                            return (null : stdgo.Error);
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
    }
    @:keep
    @:tdfield
    static public function read( _b:stdgo._internal.net.http.Http_t_http2transportresponsebody.T_http2transportResponseBody, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo._internal.net.http.Http_t_http2transportresponsebody.T_http2transportResponseBody = _b?.__copy__();
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        try {
            var _cs = _b._cs;
            var _cc = (@:checkr _cs ?? throw "null pointer dereference")._cc;
            if ((@:checkr _cs ?? throw "null pointer dereference")._readErr != null) {
                return {
                    final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (@:checkr _cs ?? throw "null pointer dereference")._readErr };
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            {
                var __tmp__ = @:check2 (@:checkr _b._cs ?? throw "null pointer dereference")._bufPipe.read(_p);
                _n = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            if ((@:checkr _cs ?? throw "null pointer dereference")._bytesRemain != ((-1i64 : stdgo.GoInt64))) {
                if (((_n : stdgo.GoInt64) > (@:checkr _cs ?? throw "null pointer dereference")._bytesRemain : Bool)) {
                    _n = ((@:checkr _cs ?? throw "null pointer dereference")._bytesRemain : stdgo.GoInt);
                    if (_err == null) {
                        _err = stdgo._internal.net.http.Http__errors._errors.new_(("net/http: server replied with more than declared Content-Length; truncated" : stdgo.GoString));
                        @:check2r _cs._abortStream(_err);
                    };
                    (@:checkr _cs ?? throw "null pointer dereference")._readErr = _err;
                    return {
                        final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : ((@:checkr _cs ?? throw "null pointer dereference")._bytesRemain : stdgo.GoInt), _1 : _err };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
                (@:checkr _cs ?? throw "null pointer dereference")._bytesRemain = ((@:checkr _cs ?? throw "null pointer dereference")._bytesRemain - ((_n : stdgo.GoInt64)) : stdgo.GoInt64);
                if (((stdgo.Go.toInterface(_err) == stdgo.Go.toInterface(stdgo._internal.net.http.Http__io._io.eOF)) && ((@:checkr _cs ?? throw "null pointer dereference")._bytesRemain > (0i64 : stdgo.GoInt64) : Bool) : Bool)) {
                    _err = stdgo._internal.net.http.Http__io._io.errUnexpectedEOF;
                    (@:checkr _cs ?? throw "null pointer dereference")._readErr = _err;
                    return {
                        final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : _err };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
            };
            if (_n == ((0 : stdgo.GoInt))) {
                return { _0 : _n, _1 : _err };
            };
            @:check2 (@:checkr _cc ?? throw "null pointer dereference")._mu.lock();
            var _connAdd = (@:check2 (@:checkr _cc ?? throw "null pointer dereference")._inflow._add(_n) : stdgo.GoInt32);
            var _streamAdd:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            if (_err == null) {
                _streamAdd = @:check2 (@:checkr _cs ?? throw "null pointer dereference")._inflow._add(_n);
            };
            @:check2 (@:checkr _cc ?? throw "null pointer dereference")._mu.unlock();
            if (((_connAdd != (0 : stdgo.GoInt32)) || (_streamAdd != (0 : stdgo.GoInt32)) : Bool)) {
                @:check2 (@:checkr _cc ?? throw "null pointer dereference")._wmu.lock();
                {
                    final __f__ = @:check2 (@:checkr _cc ?? throw "null pointer dereference")._wmu.unlock;
                    __deferstack__.unshift({ ran : false, f : () -> __f__() });
                };
                if (_connAdd != ((0 : stdgo.GoInt32))) {
                    @:check2r (@:checkr _cc ?? throw "null pointer dereference")._fr.writeWindowUpdate((0u32 : stdgo.GoUInt32), stdgo._internal.net.http.Http__http2mustuint31._http2mustUint31(_connAdd));
                };
                if (_streamAdd != ((0 : stdgo.GoInt32))) {
                    @:check2r (@:checkr _cc ?? throw "null pointer dereference")._fr.writeWindowUpdate((@:checkr _cs ?? throw "null pointer dereference").iD, stdgo._internal.net.http.Http__http2mustuint31._http2mustUint31(_streamAdd));
                };
                @:check2r (@:checkr _cc ?? throw "null pointer dereference")._bw.flush();
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return { _0 : _n, _1 : _err };
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
                return { _0 : _n, _1 : _err };
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
                return { _0 : _n, _1 : _err };
            };
        };
    }
}
