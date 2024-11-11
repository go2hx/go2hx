package stdgo._internal.net.http.httputil;
@:keep @:allow(stdgo._internal.net.http.httputil.Httputil.ServerConn_asInterface) class ServerConn_static_extension {
    @:keep
    static public function write( _sc:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_ServerConn.ServerConn>, _req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, _resp:stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>):stdgo.Error {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_ServerConn.ServerConn> = _sc;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _sc._mu.lock();
            var __tmp__ = (_sc._pipereq != null && _sc._pipereq.exists(_req) ? { _0 : _sc._pipereq[_req], _1 : true } : { _0 : (0 : stdgo.GoUInt), _1 : false }), _id:stdgo.GoUInt = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_sc._pipereq != null) _sc._pipereq.remove(_req);
            if (!_ok) {
                _sc._mu.unlock();
                return stdgo.Go.asInterface(stdgo._internal.net.http.httputil.Httputil_errPipeline.errPipeline);
            };
            _sc._mu.unlock();
            _sc._pipe.startResponse(_id);
            {
                var _a0 = _id;
                __deferstack__.unshift(() -> _sc._pipe.endResponse(_a0));
            };
            _sc._mu.lock();
            if (_sc._we != null) {
                __deferstack__.unshift(() -> _sc._mu.unlock());
                {
                    final __ret__:stdgo.Error = _sc._we;
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            if (_sc._c == null) {
                __deferstack__.unshift(() -> _sc._mu.unlock());
                {
                    final __ret__:stdgo.Error = stdgo.Go.asInterface(stdgo._internal.net.http.httputil.Httputil_errClosed.errClosed);
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            var _c = (_sc._c : stdgo._internal.net.Net_Conn.Conn);
            if ((_sc._nread <= _sc._nwritten : Bool)) {
                __deferstack__.unshift(() -> _sc._mu.unlock());
                {
                    final __ret__:stdgo.Error = stdgo._internal.errors.Errors_new_.new_(("persist server pipe count" : stdgo.GoString));
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            if (_resp.close) {
                _sc._re = stdgo.Go.asInterface(stdgo._internal.net.http.httputil.Httputil_errPersistEOF.errPersistEOF);
            };
            _sc._mu.unlock();
            var _err = (_resp.write(_c) : stdgo.Error);
            _sc._mu.lock();
            __deferstack__.unshift(() -> _sc._mu.unlock());
            if (_err != null) {
                _sc._we = _err;
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return _err;
                };
            };
            _sc._nwritten++;
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
    }
    @:keep
    static public function pending( _sc:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_ServerConn.ServerConn>):stdgo.GoInt {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_ServerConn.ServerConn> = _sc;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _sc._mu.lock();
            __deferstack__.unshift(() -> _sc._mu.unlock());
            {
                final __ret__:stdgo.GoInt = (_sc._nread - _sc._nwritten : stdgo.GoInt);
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:stdgo.GoInt = (0 : stdgo.GoInt);
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
            final __ret__:stdgo.GoInt = (0 : stdgo.GoInt);
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
    @:keep
    static public function read( _sc:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_ServerConn.ServerConn>):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>; var _1 : stdgo.Error; } {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_ServerConn.ServerConn> = _sc;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> = (null : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>);
            var _err:stdgo.Error = (null : stdgo.Error);
            var _id = (_sc._pipe.next() : stdgo.GoUInt);
            _sc._pipe.startRequest(_id);
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    _sc._pipe.endRequest(_id);
                    if ((_req == null || (_req : Dynamic).__nil__)) {
                        _sc._pipe.startResponse(_id);
                        _sc._pipe.endResponse(_id);
                    } else {
                        _sc._mu.lock();
                        _sc._pipereq[_req] = _id;
                        _sc._mu.unlock();
                    };
                };
                a();
            });
            _sc._mu.lock();
            if (_sc._we != null) {
                __deferstack__.unshift(() -> _sc._mu.unlock());
                {
                    final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>; var _1 : stdgo.Error; } = { _0 : null, _1 : _sc._we };
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            if (_sc._re != null) {
                __deferstack__.unshift(() -> _sc._mu.unlock());
                {
                    final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>; var _1 : stdgo.Error; } = { _0 : null, _1 : _sc._re };
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            if ((_sc._r == null || (_sc._r : Dynamic).__nil__)) {
                __deferstack__.unshift(() -> _sc._mu.unlock());
                {
                    final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo._internal.net.http.httputil.Httputil__errClosed._errClosed };
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            var _r = _sc._r;
            var _lastbody = (_sc._lastbody : stdgo._internal.io.Io_ReadCloser.ReadCloser);
            _sc._lastbody = (null : stdgo._internal.io.Io_ReadCloser.ReadCloser);
            _sc._mu.unlock();
            if (_lastbody != null) {
                _err = _lastbody.close();
                if (_err != null) {
                    _sc._mu.lock();
                    __deferstack__.unshift(() -> _sc._mu.unlock());
                    _sc._re = _err;
                    {
                        final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return __ret__;
                    };
                };
            };
            {
                var __tmp__ = stdgo._internal.net.http.Http_readRequest.readRequest(_r);
                _req = __tmp__._0;
                _err = __tmp__._1;
            };
            _sc._mu.lock();
            __deferstack__.unshift(() -> _sc._mu.unlock());
            if (_err != null) {
                if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_errUnexpectedEOF.errUnexpectedEOF))) {
                    _sc._re = stdgo.Go.asInterface(stdgo._internal.net.http.httputil.Httputil_errPersistEOF.errPersistEOF);
                    {
                        final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>; var _1 : stdgo.Error; } = { _0 : null, _1 : _sc._re };
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return __ret__;
                    };
                } else {
                    _sc._re = _err;
                    {
                        final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>; var _1 : stdgo.Error; } = { _0 : _req, _1 : _err };
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return __ret__;
                    };
                };
            };
            _sc._lastbody = _req.body;
            _sc._nread++;
            if (_req.close) {
                _sc._re = stdgo.Go.asInterface(stdgo._internal.net.http.httputil.Httputil_errPersistEOF.errPersistEOF);
                {
                    final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>; var _1 : stdgo.Error; } = { _0 : _req, _1 : _sc._re };
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            {
                final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>; var _1 : stdgo.Error; } = { _0 : _req, _1 : _err };
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>), _1 : (null : stdgo.Error) };
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
            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>), _1 : (null : stdgo.Error) };
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
    @:keep
    static public function close( _sc:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_ServerConn.ServerConn>):stdgo.Error {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_ServerConn.ServerConn> = _sc;
        var __tmp__ = _sc.hijack(), _c:stdgo._internal.net.Net_Conn.Conn = __tmp__._0, __0:stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader> = __tmp__._1;
        if (_c != null) {
            return _c.close();
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function hijack( _sc:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_ServerConn.ServerConn>):{ var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>; } {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_ServerConn.ServerConn> = _sc;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _sc._mu.lock();
            __deferstack__.unshift(() -> _sc._mu.unlock());
            var _c = (_sc._c : stdgo._internal.net.Net_Conn.Conn);
            var _r = _sc._r;
            _sc._c = (null : stdgo._internal.net.Net_Conn.Conn);
            _sc._r = null;
            {
                final __ret__:{ var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>; } = { _0 : _c, _1 : _r };
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:{ var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>; } = { _0 : (null : stdgo._internal.net.Net_Conn.Conn), _1 : (null : stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>) };
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
            final __ret__:{ var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>; } = { _0 : (null : stdgo._internal.net.Net_Conn.Conn), _1 : (null : stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>) };
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
}
