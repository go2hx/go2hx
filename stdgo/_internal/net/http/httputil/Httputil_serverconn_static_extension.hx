package stdgo._internal.net.http.httputil;
@:keep @:allow(stdgo._internal.net.http.httputil.Httputil.ServerConn_asInterface) class ServerConn_static_extension {
    @:keep
    @:tdfield
    static public function write( _sc:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_serverconn.ServerConn>, _req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, _resp:stdgo.Ref<stdgo._internal.net.http.Http_response.Response>):stdgo.Error {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_serverconn.ServerConn> = _sc;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L178"
            (@:checkr _sc ?? throw "null pointer dereference")._mu.lock();
            var __tmp__ = ((@:checkr _sc ?? throw "null pointer dereference")._pipereq != null && (@:checkr _sc ?? throw "null pointer dereference")._pipereq.__exists__(_req) ? { _0 : (@:checkr _sc ?? throw "null pointer dereference")._pipereq[_req], _1 : true } : { _0 : (0 : stdgo.GoUInt), _1 : false }), _id:stdgo.GoUInt = __tmp__._0, _ok:Bool = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L180"
            if ((@:checkr _sc ?? throw "null pointer dereference")._pipereq != null) (@:checkr _sc ?? throw "null pointer dereference")._pipereq.__remove__(_req);
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L181"
            if (!_ok) {
                //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L182"
                (@:checkr _sc ?? throw "null pointer dereference")._mu.unlock();
                //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L183"
                return stdgo.Go.asInterface(stdgo._internal.net.http.httputil.Httputil_errpipeline.errPipeline);
            };
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L185"
            (@:checkr _sc ?? throw "null pointer dereference")._mu.unlock();
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L188"
            (@:checkr _sc ?? throw "null pointer dereference")._pipe.startResponse(_id);
            {
                var _a0 = _id;
                final __f__ = (@:checkr _sc ?? throw "null pointer dereference")._pipe.endResponse;
                __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
            };
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L191"
            (@:checkr _sc ?? throw "null pointer dereference")._mu.lock();
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L192"
            if ((@:checkr _sc ?? throw "null pointer dereference")._we != null) {
                {
                    final __f__ = (@:checkr _sc ?? throw "null pointer dereference")._mu.unlock;
                    __deferstack__.unshift({ ran : false, f : () -> __f__() });
                };
                //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L194"
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
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L196"
            if ((@:checkr _sc ?? throw "null pointer dereference")._c == null) {
                {
                    final __f__ = (@:checkr _sc ?? throw "null pointer dereference")._mu.unlock;
                    __deferstack__.unshift({ ran : false, f : () -> __f__() });
                };
                //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L198"
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
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L201"
            if (((@:checkr _sc ?? throw "null pointer dereference")._nread <= (@:checkr _sc ?? throw "null pointer dereference")._nwritten : Bool)) {
                {
                    final __f__ = (@:checkr _sc ?? throw "null pointer dereference")._mu.unlock;
                    __deferstack__.unshift({ ran : false, f : () -> __f__() });
                };
                //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L203"
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
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L205"
            if ((@:checkr _resp ?? throw "null pointer dereference").close) {
                (@:checkr _sc ?? throw "null pointer dereference")._re = stdgo.Go.asInterface(stdgo._internal.net.http.httputil.Httputil_errpersisteof.errPersistEOF);
            };
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L211"
            (@:checkr _sc ?? throw "null pointer dereference")._mu.unlock();
            var _err = (_resp.write(_c) : stdgo.Error);
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L214"
            (@:checkr _sc ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = (@:checkr _sc ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L216"
            if (_err != null) {
                (@:checkr _sc ?? throw "null pointer dereference")._we = _err;
                //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L218"
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return _err;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L220"
            (@:checkr _sc ?? throw "null pointer dereference")._nwritten++;
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L222"
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
    static public function pending( _sc:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_serverconn.ServerConn>):stdgo.GoInt {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_serverconn.ServerConn> = _sc;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L167"
            (@:checkr _sc ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = (@:checkr _sc ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L169"
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
            var _id = ((@:checkr _sc ?? throw "null pointer dereference")._pipe.next() : stdgo.GoUInt);
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L94"
            (@:checkr _sc ?? throw "null pointer dereference")._pipe.startRequest(_id);
            {
                __deferstack__.unshift({ ran : false, f : () -> ({
                    var a = function():Void {
                        //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L96"
                        (@:checkr _sc ?? throw "null pointer dereference")._pipe.endRequest(_id);
                        //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L97"
                        if (({
                            final value = _req;
                            (value == null || (value : Dynamic).__nil__);
                        })) {
                            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L98"
                            (@:checkr _sc ?? throw "null pointer dereference")._pipe.startResponse(_id);
                            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L99"
                            (@:checkr _sc ?? throw "null pointer dereference")._pipe.endResponse(_id);
                        } else {
                            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L102"
                            (@:checkr _sc ?? throw "null pointer dereference")._mu.lock();
                            (@:checkr _sc ?? throw "null pointer dereference")._pipereq[_req] = _id;
                            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L104"
                            (@:checkr _sc ?? throw "null pointer dereference")._mu.unlock();
                        };
                    };
                    a();
                }) });
            };
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L108"
            (@:checkr _sc ?? throw "null pointer dereference")._mu.lock();
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L109"
            if ((@:checkr _sc ?? throw "null pointer dereference")._we != null) {
                {
                    final __f__ = (@:checkr _sc ?? throw "null pointer dereference")._mu.unlock;
                    __deferstack__.unshift({ ran : false, f : () -> __f__() });
                };
                //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L111"
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
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L113"
            if ((@:checkr _sc ?? throw "null pointer dereference")._re != null) {
                {
                    final __f__ = (@:checkr _sc ?? throw "null pointer dereference")._mu.unlock;
                    __deferstack__.unshift({ ran : false, f : () -> __f__() });
                };
                //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L115"
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
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L117"
            if (({
                final value = (@:checkr _sc ?? throw "null pointer dereference")._r;
                (value == null || (value : Dynamic).__nil__);
            })) {
                {
                    final __f__ = (@:checkr _sc ?? throw "null pointer dereference")._mu.unlock;
                    __deferstack__.unshift({ ran : false, f : () -> __f__() });
                };
                //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L119"
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
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L124"
            (@:checkr _sc ?? throw "null pointer dereference")._mu.unlock();
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L127"
            if (_lastbody != null) {
                _err = _lastbody.close();
                //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L132"
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L133"
                    (@:checkr _sc ?? throw "null pointer dereference")._mu.lock();
                    {
                        final __f__ = (@:checkr _sc ?? throw "null pointer dereference")._mu.unlock;
                        __deferstack__.unshift({ ran : false, f : () -> __f__() });
                    };
                    (@:checkr _sc ?? throw "null pointer dereference")._re = _err;
                    //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L136"
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
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L141"
            (@:checkr _sc ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = (@:checkr _sc ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L143"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L144"
                if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_errunexpectedeof.errUnexpectedEOF))) {
                    (@:checkr _sc ?? throw "null pointer dereference")._re = stdgo.Go.asInterface(stdgo._internal.net.http.httputil.Httputil_errpersisteof.errPersistEOF);
                    //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L149"
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
                    //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L152"
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
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L156"
            (@:checkr _sc ?? throw "null pointer dereference")._nread++;
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L157"
            if ((@:checkr _req ?? throw "null pointer dereference").close) {
                (@:checkr _sc ?? throw "null pointer dereference")._re = stdgo.Go.asInterface(stdgo._internal.net.http.httputil.Httputil_errpersisteof.errPersistEOF);
                //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L159"
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
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L161"
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
                return { _0 : (null : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>), _1 : (null : stdgo.Error) };
            };
        };
    }
    @:keep
    @:tdfield
    static public function close( _sc:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_serverconn.ServerConn>):stdgo.Error {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_serverconn.ServerConn> = _sc;
        var __tmp__ = _sc.hijack(), _c:stdgo._internal.net.Net_conn.Conn = __tmp__._0, __0:stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader> = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L78"
        if (_c != null) {
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L79"
            return _c.close();
        };
        //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L81"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function hijack( _sc:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_serverconn.ServerConn>):{ var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>; } {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_serverconn.ServerConn> = _sc;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L66"
            (@:checkr _sc ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = (@:checkr _sc ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            var _c = ((@:checkr _sc ?? throw "null pointer dereference")._c : stdgo._internal.net.Net_conn.Conn);
            var _r = (@:checkr _sc ?? throw "null pointer dereference")._r;
            (@:checkr _sc ?? throw "null pointer dereference")._c = (null : stdgo._internal.net.Net_conn.Conn);
            (@:checkr _sc ?? throw "null pointer dereference")._r = null;
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L72"
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
                return { _0 : (null : stdgo._internal.net.Net_conn.Conn), _1 : (null : stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>) };
            };
        };
    }
}
