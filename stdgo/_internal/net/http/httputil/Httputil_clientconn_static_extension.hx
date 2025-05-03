package stdgo._internal.net.http.httputil;
@:keep @:allow(stdgo._internal.net.http.httputil.Httputil.ClientConn_asInterface) class ClientConn_static_extension {
    @:keep
    @:tdfield
    static public function do_( _cc:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_clientconn.ClientConn>, _req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_clientconn.ClientConn> = _cc;
        var _err = (_cc.write(_req) : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L427"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L428"
            return { _0 : null, _1 : _err };
        };
        //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L430"
        return _cc.read(_req);
    }
    @:keep
    @:tdfield
    static public function read( _cc:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_clientconn.ClientConn>, _req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_clientconn.ClientConn> = _cc;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _resp = (null : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>), _err = (null : stdgo.Error);
        try {
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L365"
            (@:checkr _cc ?? throw "null pointer dereference")._mu.lock();
            var __tmp__ = ((@:checkr _cc ?? throw "null pointer dereference")._pipereq != null && (@:checkr _cc ?? throw "null pointer dereference")._pipereq.__exists__(_req) ? { _0 : (@:checkr _cc ?? throw "null pointer dereference")._pipereq[_req], _1 : true } : { _0 : (0 : stdgo.GoUInt), _1 : false }), _id:stdgo.GoUInt = __tmp__._0, _ok:Bool = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L367"
            if ((@:checkr _cc ?? throw "null pointer dereference")._pipereq != null) (@:checkr _cc ?? throw "null pointer dereference")._pipereq.__remove__(_req);
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L368"
            if (!_ok) {
                //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L369"
                (@:checkr _cc ?? throw "null pointer dereference")._mu.unlock();
                //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L370"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface(stdgo._internal.net.http.httputil.Httputil_errpipeline.errPipeline) };
                    _resp = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L372"
            (@:checkr _cc ?? throw "null pointer dereference")._mu.unlock();
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L375"
            (@:checkr _cc ?? throw "null pointer dereference")._pipe.startResponse(_id);
            {
                var _a0 = _id;
                final __f__ = (@:checkr _cc ?? throw "null pointer dereference")._pipe.endResponse;
                __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
            };
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L378"
            (@:checkr _cc ?? throw "null pointer dereference")._mu.lock();
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L379"
            if ((@:checkr _cc ?? throw "null pointer dereference")._re != null) {
                {
                    final __f__ = (@:checkr _cc ?? throw "null pointer dereference")._mu.unlock;
                    __deferstack__.unshift({ ran : false, f : () -> __f__() });
                };
                //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L381"
                {
                    final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } = {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } = { _0 : null, _1 : (@:checkr _cc ?? throw "null pointer dereference")._re };
                        _resp = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _resp = __ret__._0;
                    _err = __ret__._1;
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L383"
            if (({
                final value = (@:checkr _cc ?? throw "null pointer dereference")._r;
                (value == null || (value : Dynamic).__nil__);
            })) {
                {
                    final __f__ = (@:checkr _cc ?? throw "null pointer dereference")._mu.unlock;
                    __deferstack__.unshift({ ran : false, f : () -> __f__() });
                };
                //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L385"
                {
                    final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } = {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo._internal.net.http.httputil.Httputil__errclosed._errClosed };
                        _resp = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _resp = __ret__._0;
                    _err = __ret__._1;
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            var _r = (@:checkr _cc ?? throw "null pointer dereference")._r;
            var _lastbody = ((@:checkr _cc ?? throw "null pointer dereference")._lastbody : stdgo._internal.io.Io_readcloser.ReadCloser);
            (@:checkr _cc ?? throw "null pointer dereference")._lastbody = (null : stdgo._internal.io.Io_readcloser.ReadCloser);
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L390"
            (@:checkr _cc ?? throw "null pointer dereference")._mu.unlock();
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L393"
            if (_lastbody != null) {
                _err = _lastbody.close();
                //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L398"
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L399"
                    (@:checkr _cc ?? throw "null pointer dereference")._mu.lock();
                    {
                        final __f__ = (@:checkr _cc ?? throw "null pointer dereference")._mu.unlock;
                        __deferstack__.unshift({ ran : false, f : () -> __f__() });
                    };
                    (@:checkr _cc ?? throw "null pointer dereference")._re = _err;
                    //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L402"
                    {
                        final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } = {
                            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            _resp = __tmp__._0;
                            _err = __tmp__._1;
                            __tmp__;
                        };
                        _resp = __ret__._0;
                        _err = __ret__._1;
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
                var __tmp__ = stdgo._internal.net.http.Http_readresponse.readResponse(_r, _req);
                _resp = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L407"
            (@:checkr _cc ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = (@:checkr _cc ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L409"
            if (_err != null) {
                (@:checkr _cc ?? throw "null pointer dereference")._re = _err;
                //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L411"
                {
                    final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } = {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } = { _0 : _resp, _1 : _err };
                        _resp = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _resp = __ret__._0;
                    _err = __ret__._1;
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            (@:checkr _cc ?? throw "null pointer dereference")._lastbody = (@:checkr _resp ?? throw "null pointer dereference").body;
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L415"
            (@:checkr _cc ?? throw "null pointer dereference")._nread++;
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L417"
            if ((@:checkr _resp ?? throw "null pointer dereference").close) {
                (@:checkr _cc ?? throw "null pointer dereference")._re = stdgo.Go.asInterface(stdgo._internal.net.http.httputil.Httputil_errpersisteof.errPersistEOF);
                //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L419"
                {
                    final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } = {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } = { _0 : _resp, _1 : (@:checkr _cc ?? throw "null pointer dereference")._re };
                        _resp = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _resp = __ret__._0;
                    _err = __ret__._1;
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L421"
            {
                final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } = {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } = { _0 : _resp, _1 : _err };
                    _resp = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
                _resp = __ret__._0;
                _err = __ret__._1;
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
                return { _0 : _resp, _1 : _err };
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
                return { _0 : _resp, _1 : _err };
            };
        };
    }
    @:keep
    @:tdfield
    static public function pending( _cc:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_clientconn.ClientConn>):stdgo.GoInt {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_clientconn.ClientConn> = _cc;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L354"
            (@:checkr _cc ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = (@:checkr _cc ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L356"
            {
                final __ret__:stdgo.GoInt = ((@:checkr _cc ?? throw "null pointer dereference")._nwritten - (@:checkr _cc ?? throw "null pointer dereference")._nread : stdgo.GoInt);
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
    static public function write( _cc:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_clientconn.ClientConn>, _req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):stdgo.Error {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_clientconn.ClientConn> = _cc;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _err:stdgo.Error = (null : stdgo.Error);
            var _id = ((@:checkr _cc ?? throw "null pointer dereference")._pipe.next() : stdgo.GoUInt);
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L304"
            (@:checkr _cc ?? throw "null pointer dereference")._pipe.startRequest(_id);
            {
                __deferstack__.unshift({ ran : false, f : () -> ({
                    var a = function():Void {
                        //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L306"
                        (@:checkr _cc ?? throw "null pointer dereference")._pipe.endRequest(_id);
                        //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L307"
                        if (_err != null) {
                            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L308"
                            (@:checkr _cc ?? throw "null pointer dereference")._pipe.startResponse(_id);
                            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L309"
                            (@:checkr _cc ?? throw "null pointer dereference")._pipe.endResponse(_id);
                        } else {
                            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L312"
                            (@:checkr _cc ?? throw "null pointer dereference")._mu.lock();
                            (@:checkr _cc ?? throw "null pointer dereference")._pipereq[_req] = _id;
                            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L314"
                            (@:checkr _cc ?? throw "null pointer dereference")._mu.unlock();
                        };
                    };
                    a();
                }) });
            };
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L318"
            (@:checkr _cc ?? throw "null pointer dereference")._mu.lock();
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L319"
            if ((@:checkr _cc ?? throw "null pointer dereference")._re != null) {
                {
                    final __f__ = (@:checkr _cc ?? throw "null pointer dereference")._mu.unlock;
                    __deferstack__.unshift({ ran : false, f : () -> __f__() });
                };
                //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L321"
                {
                    final __ret__:stdgo.Error = (@:checkr _cc ?? throw "null pointer dereference")._re;
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L323"
            if ((@:checkr _cc ?? throw "null pointer dereference")._we != null) {
                {
                    final __f__ = (@:checkr _cc ?? throw "null pointer dereference")._mu.unlock;
                    __deferstack__.unshift({ ran : false, f : () -> __f__() });
                };
                //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L325"
                {
                    final __ret__:stdgo.Error = (@:checkr _cc ?? throw "null pointer dereference")._we;
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L327"
            if ((@:checkr _cc ?? throw "null pointer dereference")._c == null) {
                {
                    final __f__ = (@:checkr _cc ?? throw "null pointer dereference")._mu.unlock;
                    __deferstack__.unshift({ ran : false, f : () -> __f__() });
                };
                //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L329"
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return stdgo._internal.net.http.httputil.Httputil__errclosed._errClosed;
                };
            };
            var _c = ((@:checkr _cc ?? throw "null pointer dereference")._c : stdgo._internal.net.Net_conn.Conn);
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L332"
            if ((@:checkr _req ?? throw "null pointer dereference").close) {
                (@:checkr _cc ?? throw "null pointer dereference")._we = stdgo.Go.asInterface(stdgo._internal.net.http.httputil.Httputil_errpersisteof.errPersistEOF);
            };
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L337"
            (@:checkr _cc ?? throw "null pointer dereference")._mu.unlock();
            _err = (@:checkr _cc ?? throw "null pointer dereference")._writeReq(_req, _c);
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L340"
            (@:checkr _cc ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = (@:checkr _cc ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L342"
            if (_err != null) {
                (@:checkr _cc ?? throw "null pointer dereference")._we = _err;
                //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L344"
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return _err;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L346"
            (@:checkr _cc ?? throw "null pointer dereference")._nwritten++;
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L348"
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
    static public function close( _cc:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_clientconn.ClientConn>):stdgo.Error {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_clientconn.ClientConn> = _cc;
        var __tmp__ = _cc.hijack(), _c:stdgo._internal.net.Net_conn.Conn = __tmp__._0, __0:stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader> = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L288"
        if (_c != null) {
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L289"
            return _c.close();
        };
        //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L291"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function hijack( _cc:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_clientconn.ClientConn>):{ var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>; } {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_clientconn.ClientConn> = _cc;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _c = (null : stdgo._internal.net.Net_conn.Conn), _r = (null : stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>);
        try {
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L276"
            (@:checkr _cc ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = (@:checkr _cc ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            _c = (@:checkr _cc ?? throw "null pointer dereference")._c;
            _r = (@:checkr _cc ?? throw "null pointer dereference")._r;
            (@:checkr _cc ?? throw "null pointer dereference")._c = (null : stdgo._internal.net.Net_conn.Conn);
            (@:checkr _cc ?? throw "null pointer dereference")._r = null;
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L282"
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return { _0 : _c, _1 : _r };
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
                return { _0 : _c, _1 : _r };
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
                return { _0 : _c, _1 : _r };
            };
        };
    }
}
