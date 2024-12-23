package stdgo._internal.net.http.httputil;
@:keep @:allow(stdgo._internal.net.http.httputil.Httputil.ClientConn_asInterface) class ClientConn_static_extension {
    @:keep
    static public function do_( _cc:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_ClientConn.ClientConn>, _req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_ClientConn.ClientConn> = _cc;
        var _err = (_cc.write(_req) : stdgo.Error);
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        return _cc.read(_req);
    }
    @:keep
    static public function read( _cc:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_ClientConn.ClientConn>, _req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_ClientConn.ClientConn> = _cc;
        var __deferstack__:Array<Void -> Void> = [];
        var _resp = (null : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>), _err = (null : stdgo.Error);
        try {
            _cc._mu.lock();
            var __tmp__ = (_cc._pipereq != null && _cc._pipereq.exists(_req) ? { _0 : _cc._pipereq[_req], _1 : true } : { _0 : (0 : stdgo.GoUInt), _1 : false }), _id:stdgo.GoUInt = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_cc._pipereq != null) _cc._pipereq.remove(_req);
            if (!_ok) {
                _cc._mu.unlock();
                return {
                    final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface(stdgo._internal.net.http.httputil.Httputil_errPipeline.errPipeline) };
                    _resp = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            _cc._mu.unlock();
            _cc._pipe.startResponse(_id);
            {
                var _a0 = _id;
                final __f__ = _cc._pipe.endResponse;
                __deferstack__.unshift(() -> __f__(_a0));
            };
            _cc._mu.lock();
            if (_cc._re != null) {
                {
                    final __f__ = _cc._mu.unlock;
                    __deferstack__.unshift(() -> __f__());
                };
                {
                    final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } = {
                        final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } = { _0 : null, _1 : _cc._re };
                        _resp = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            if ((_cc._r == null || (_cc._r : Dynamic).__nil__)) {
                {
                    final __f__ = _cc._mu.unlock;
                    __deferstack__.unshift(() -> __f__());
                };
                {
                    final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } = {
                        final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo._internal.net.http.httputil.Httputil__errClosed._errClosed };
                        _resp = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            var _r = _cc._r;
            var _lastbody = (_cc._lastbody : stdgo._internal.io.Io_ReadCloser.ReadCloser);
            _cc._lastbody = (null : stdgo._internal.io.Io_ReadCloser.ReadCloser);
            _cc._mu.unlock();
            if (_lastbody != null) {
                _err = _lastbody.close();
                if (_err != null) {
                    _cc._mu.lock();
                    {
                        final __f__ = _cc._mu.unlock;
                        __deferstack__.unshift(() -> __f__());
                    };
                    _cc._re = _err;
                    {
                        final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } = {
                            final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            _resp = __tmp__._0;
                            _err = __tmp__._1;
                            __tmp__;
                        };
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return __ret__;
                    };
                };
            };
            {
                var __tmp__ = stdgo._internal.net.http.Http_readResponse.readResponse(_r, _req);
                _resp = __tmp__._0;
                _err = __tmp__._1;
            };
            _cc._mu.lock();
            {
                final __f__ = _cc._mu.unlock;
                __deferstack__.unshift(() -> __f__());
            };
            if (_err != null) {
                _cc._re = _err;
                {
                    final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } = {
                        final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } = { _0 : _resp, _1 : _err };
                        _resp = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            _cc._lastbody = _resp.body;
            _cc._nread++;
            if (_resp.close) {
                _cc._re = stdgo.Go.asInterface(stdgo._internal.net.http.httputil.Httputil_errPersistEOF.errPersistEOF);
                {
                    final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } = {
                        final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } = { _0 : _resp, _1 : _cc._re };
                        _resp = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            {
                final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } = {
                    final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } = { _0 : _resp, _1 : _err };
                    _resp = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
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
                return { _0 : _resp, _1 : _err };
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
            return { _0 : _resp, _1 : _err };
        };
    }
    @:keep
    static public function pending( _cc:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_ClientConn.ClientConn>):stdgo.GoInt {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_ClientConn.ClientConn> = _cc;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _cc._mu.lock();
            {
                final __f__ = _cc._mu.unlock;
                __deferstack__.unshift(() -> __f__());
            };
            {
                final __ret__:stdgo.GoInt = (_cc._nwritten - _cc._nread : stdgo.GoInt);
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
                return (0 : stdgo.GoInt);
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
            return (0 : stdgo.GoInt);
        };
    }
    @:keep
    static public function write( _cc:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_ClientConn.ClientConn>, _req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):stdgo.Error {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_ClientConn.ClientConn> = _cc;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _err:stdgo.Error = (null : stdgo.Error);
            var _id = (_cc._pipe.next() : stdgo.GoUInt);
            _cc._pipe.startRequest(_id);
            {
                __deferstack__.unshift(() -> ({
                    var a = function():Void {
                        _cc._pipe.endRequest(_id);
                        if (_err != null) {
                            _cc._pipe.startResponse(_id);
                            _cc._pipe.endResponse(_id);
                        } else {
                            _cc._mu.lock();
                            _cc._pipereq[_req] = _id;
                            _cc._mu.unlock();
                        };
                    };
                    a();
                }));
            };
            _cc._mu.lock();
            if (_cc._re != null) {
                {
                    final __f__ = _cc._mu.unlock;
                    __deferstack__.unshift(() -> __f__());
                };
                {
                    final __ret__:stdgo.Error = _cc._re;
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            if (_cc._we != null) {
                {
                    final __f__ = _cc._mu.unlock;
                    __deferstack__.unshift(() -> __f__());
                };
                {
                    final __ret__:stdgo.Error = _cc._we;
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            if (_cc._c == null) {
                {
                    final __f__ = _cc._mu.unlock;
                    __deferstack__.unshift(() -> __f__());
                };
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return stdgo._internal.net.http.httputil.Httputil__errClosed._errClosed;
                };
            };
            var _c = (_cc._c : stdgo._internal.net.Net_Conn.Conn);
            if (_req.close) {
                _cc._we = stdgo.Go.asInterface(stdgo._internal.net.http.httputil.Httputil_errPersistEOF.errPersistEOF);
            };
            _cc._mu.unlock();
            _err = _cc._writeReq(_req, _c);
            _cc._mu.lock();
            {
                final __f__ = _cc._mu.unlock;
                __deferstack__.unshift(() -> __f__());
            };
            if (_err != null) {
                _cc._we = _err;
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return _err;
                };
            };
            _cc._nwritten++;
            {
                final __ret__:stdgo.Error = (null : stdgo.Error);
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
                return (null : stdgo.Error);
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
            return (null : stdgo.Error);
        };
    }
    @:keep
    static public function close( _cc:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_ClientConn.ClientConn>):stdgo.Error {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_ClientConn.ClientConn> = _cc;
        var __tmp__ = _cc.hijack(), _c:stdgo._internal.net.Net_Conn.Conn = __tmp__._0, __0:stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader> = __tmp__._1;
        if (_c != null) {
            return _c.close();
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function hijack( _cc:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_ClientConn.ClientConn>):{ var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>; } {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_ClientConn.ClientConn> = _cc;
        var __deferstack__:Array<Void -> Void> = [];
        var _c = (null : stdgo._internal.net.Net_Conn.Conn), _r = (null : stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>);
        try {
            _cc._mu.lock();
            {
                final __f__ = _cc._mu.unlock;
                __deferstack__.unshift(() -> __f__());
            };
            _c = _cc._c;
            _r = _cc._r;
            _cc._c = (null : stdgo._internal.net.Net_Conn.Conn);
            _cc._r = null;
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return { _0 : _c, _1 : _r };
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return { _0 : _c, _1 : _r };
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
            return { _0 : _c, _1 : _r };
        };
    }
}
