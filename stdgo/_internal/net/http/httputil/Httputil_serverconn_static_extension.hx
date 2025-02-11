package stdgo._internal.net.http.httputil;
@:keep @:allow(stdgo._internal.net.http.httputil.Httputil.ServerConn_asInterface) class ServerConn_static_extension {
    @:keep
    @:tdfield
    static public function write( _sc:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_serverconn.ServerConn>, _req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, _resp:stdgo.Ref<stdgo._internal.net.http.Http_response.Response>):stdgo.Error {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_serverconn.ServerConn> = _sc;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            @:check2 (@:checkr _sc ?? throw "null pointer dereference")._mu.lock();
            var __tmp__ = ((@:checkr _sc ?? throw "null pointer dereference")._pipereq != null && (@:checkr _sc ?? throw "null pointer dereference")._pipereq.__exists__(_req) ? { _0 : (@:checkr _sc ?? throw "null pointer dereference")._pipereq[_req], _1 : true } : { _0 : (0 : stdgo.GoUInt), _1 : false }), _id:stdgo.GoUInt = __tmp__._0, _ok:Bool = __tmp__._1;
            if ((@:checkr _sc ?? throw "null pointer dereference")._pipereq != null) (@:checkr _sc ?? throw "null pointer dereference")._pipereq.__remove__(_req);
            if (!_ok) {
                @:check2 (@:checkr _sc ?? throw "null pointer dereference")._mu.unlock();
                return stdgo.Go.asInterface(stdgo._internal.net.http.httputil.Httputil_errpipeline.errPipeline);
            };
            @:check2 (@:checkr _sc ?? throw "null pointer dereference")._mu.unlock();
            @:check2 (@:checkr _sc ?? throw "null pointer dereference")._pipe.startResponse(_id);
            {
                var _a0 = _id;
                final __f__ = @:check2 (@:checkr _sc ?? throw "null pointer dereference")._pipe.endResponse;
                __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
            };
            @:check2 (@:checkr _sc ?? throw "null pointer dereference")._mu.lock();
            if ((@:checkr _sc ?? throw "null pointer dereference")._we != null) {
                {
                    final __f__ = @:check2 (@:checkr _sc ?? throw "null pointer dereference")._mu.unlock;
                    __deferstack__.unshift({ ran : false, f : () -> __f__() });
                };
                {
                    final __ret__:stdgo.Error = (@:checkr _sc ?? throw "null pointer dereference")._we;
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            if ((@:checkr _sc ?? throw "null pointer dereference")._c == null) {
                {
                    final __f__ = @:check2 (@:checkr _sc ?? throw "null pointer dereference")._mu.unlock;
                    __deferstack__.unshift({ ran : false, f : () -> __f__() });
                };
                {
                    final __ret__:stdgo.Error = stdgo.Go.asInterface(stdgo._internal.net.http.httputil.Httputil_errclosed.errClosed);
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            var _c = ((@:checkr _sc ?? throw "null pointer dereference")._c : stdgo._internal.net.Net_conn.Conn);
            if (((@:checkr _sc ?? throw "null pointer dereference")._nread <= (@:checkr _sc ?? throw "null pointer dereference")._nwritten : Bool)) {
                {
                    final __f__ = @:check2 (@:checkr _sc ?? throw "null pointer dereference")._mu.unlock;
                    __deferstack__.unshift({ ran : false, f : () -> __f__() });
                };
                {
                    final __ret__:stdgo.Error = stdgo._internal.errors.Errors_new_.new_(("persist server pipe count" : stdgo.GoString));
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            if ((@:checkr _resp ?? throw "null pointer dereference").close) {
                (@:checkr _sc ?? throw "null pointer dereference")._re = stdgo.Go.asInterface(stdgo._internal.net.http.httputil.Httputil_errpersisteof.errPersistEOF);
            };
            @:check2 (@:checkr _sc ?? throw "null pointer dereference")._mu.unlock();
            var _err = (@:check2r _resp.write(_c) : stdgo.Error);
            @:check2 (@:checkr _sc ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = @:check2 (@:checkr _sc ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            if (_err != null) {
                (@:checkr _sc ?? throw "null pointer dereference")._we = _err;
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return _err;
                };
            };
            (@:checkr _sc ?? throw "null pointer dereference")._nwritten++;
            {
                final __ret__:stdgo.Error = (null : stdgo.Error);
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
    static public function pending( _sc:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_serverconn.ServerConn>):stdgo.GoInt {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_serverconn.ServerConn> = _sc;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            @:check2 (@:checkr _sc ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = @:check2 (@:checkr _sc ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            {
                final __ret__:stdgo.GoInt = ((@:checkr _sc ?? throw "null pointer dereference")._nread - (@:checkr _sc ?? throw "null pointer dereference")._nwritten : stdgo.GoInt);
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
                return (0 : stdgo.GoInt);
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
                return (0 : stdgo.GoInt);
            };
        };
    }
    @:keep
    @:tdfield
    static public function read( _sc:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_serverconn.ServerConn>):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>; var _1 : stdgo.Error; } {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_serverconn.ServerConn> = _sc;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request> = (null : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>);
            var _err:stdgo.Error = (null : stdgo.Error);
            var _id = (@:check2 (@:checkr _sc ?? throw "null pointer dereference")._pipe.next() : stdgo.GoUInt);
            @:check2 (@:checkr _sc ?? throw "null pointer dereference")._pipe.startRequest(_id);
            {
                __deferstack__.unshift({ ran : false, f : () -> ({
                    var a = function():Void {
                        @:check2 (@:checkr _sc ?? throw "null pointer dereference")._pipe.endRequest(_id);
                        if ((_req == null || (_req : Dynamic).__nil__)) {
                            @:check2 (@:checkr _sc ?? throw "null pointer dereference")._pipe.startResponse(_id);
                            @:check2 (@:checkr _sc ?? throw "null pointer dereference")._pipe.endResponse(_id);
                        } else {
                            @:check2 (@:checkr _sc ?? throw "null pointer dereference")._mu.lock();
                            (@:checkr _sc ?? throw "null pointer dereference")._pipereq[_req] = _id;
                            @:check2 (@:checkr _sc ?? throw "null pointer dereference")._mu.unlock();
                        };
                    };
                    a();
                }) });
            };
            @:check2 (@:checkr _sc ?? throw "null pointer dereference")._mu.lock();
            if ((@:checkr _sc ?? throw "null pointer dereference")._we != null) {
                {
                    final __f__ = @:check2 (@:checkr _sc ?? throw "null pointer dereference")._mu.unlock;
                    __deferstack__.unshift({ ran : false, f : () -> __f__() });
                };
                {
                    final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>; var _1 : stdgo.Error; } = { _0 : null, _1 : (@:checkr _sc ?? throw "null pointer dereference")._we };
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            if ((@:checkr _sc ?? throw "null pointer dereference")._re != null) {
                {
                    final __f__ = @:check2 (@:checkr _sc ?? throw "null pointer dereference")._mu.unlock;
                    __deferstack__.unshift({ ran : false, f : () -> __f__() });
                };
                {
                    final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>; var _1 : stdgo.Error; } = { _0 : null, _1 : (@:checkr _sc ?? throw "null pointer dereference")._re };
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            if (((@:checkr _sc ?? throw "null pointer dereference")._r == null || ((@:checkr _sc ?? throw "null pointer dereference")._r : Dynamic).__nil__)) {
                {
                    final __f__ = @:check2 (@:checkr _sc ?? throw "null pointer dereference")._mu.unlock;
                    __deferstack__.unshift({ ran : false, f : () -> __f__() });
                };
                {
                    final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo._internal.net.http.httputil.Httputil__errclosed._errClosed };
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            var _r = (@:checkr _sc ?? throw "null pointer dereference")._r;
            var _lastbody = ((@:checkr _sc ?? throw "null pointer dereference")._lastbody : stdgo._internal.io.Io_readcloser.ReadCloser);
            (@:checkr _sc ?? throw "null pointer dereference")._lastbody = (null : stdgo._internal.io.Io_readcloser.ReadCloser);
            @:check2 (@:checkr _sc ?? throw "null pointer dereference")._mu.unlock();
            if (_lastbody != null) {
                _err = _lastbody.close();
                if (_err != null) {
                    @:check2 (@:checkr _sc ?? throw "null pointer dereference")._mu.lock();
                    {
                        final __f__ = @:check2 (@:checkr _sc ?? throw "null pointer dereference")._mu.unlock;
                        __deferstack__.unshift({ ran : false, f : () -> __f__() });
                    };
                    (@:checkr _sc ?? throw "null pointer dereference")._re = _err;
                    {
                        final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
            };
            {
                var __tmp__ = stdgo._internal.net.http.Http_readrequest.readRequest(_r);
                _req = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            @:check2 (@:checkr _sc ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = @:check2 (@:checkr _sc ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            if (_err != null) {
                if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_errunexpectedeof.errUnexpectedEOF))) {
                    (@:checkr _sc ?? throw "null pointer dereference")._re = stdgo.Go.asInterface(stdgo._internal.net.http.httputil.Httputil_errpersisteof.errPersistEOF);
                    {
                        final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>; var _1 : stdgo.Error; } = { _0 : null, _1 : (@:checkr _sc ?? throw "null pointer dereference")._re };
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                } else {
                    (@:checkr _sc ?? throw "null pointer dereference")._re = _err;
                    {
                        final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>; var _1 : stdgo.Error; } = { _0 : _req, _1 : _err };
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
            };
            (@:checkr _sc ?? throw "null pointer dereference")._lastbody = (@:checkr _req ?? throw "null pointer dereference").body;
            (@:checkr _sc ?? throw "null pointer dereference")._nread++;
            if ((@:checkr _req ?? throw "null pointer dereference").close) {
                (@:checkr _sc ?? throw "null pointer dereference")._re = stdgo.Go.asInterface(stdgo._internal.net.http.httputil.Httputil_errpersisteof.errPersistEOF);
                {
                    final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>; var _1 : stdgo.Error; } = { _0 : _req, _1 : (@:checkr _sc ?? throw "null pointer dereference")._re };
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            {
                final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>; var _1 : stdgo.Error; } = { _0 : _req, _1 : _err };
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
                return { _0 : (null : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>), _1 : (null : stdgo.Error) };
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
                return { _0 : (null : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>), _1 : (null : stdgo.Error) };
            };
        };
    }
    @:keep
    @:tdfield
    static public function close( _sc:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_serverconn.ServerConn>):stdgo.Error {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_serverconn.ServerConn> = _sc;
        var __tmp__ = @:check2r _sc.hijack(), _c:stdgo._internal.net.Net_conn.Conn = __tmp__._0, __0:stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader> = __tmp__._1;
        if (_c != null) {
            return _c.close();
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function hijack( _sc:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_serverconn.ServerConn>):{ var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>; } {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_serverconn.ServerConn> = _sc;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            @:check2 (@:checkr _sc ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = @:check2 (@:checkr _sc ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            var _c = ((@:checkr _sc ?? throw "null pointer dereference")._c : stdgo._internal.net.Net_conn.Conn);
            var _r = (@:checkr _sc ?? throw "null pointer dereference")._r;
            (@:checkr _sc ?? throw "null pointer dereference")._c = (null : stdgo._internal.net.Net_conn.Conn);
            (@:checkr _sc ?? throw "null pointer dereference")._r = null;
            {
                final __ret__:{ var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>; } = { _0 : _c, _1 : _r };
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
                return { _0 : (null : stdgo._internal.net.Net_conn.Conn), _1 : (null : stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>) };
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
                return { _0 : (null : stdgo._internal.net.Net_conn.Conn), _1 : (null : stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>) };
            };
        };
    }
}
