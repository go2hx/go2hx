package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2ClientConn_asInterface) class T_http2ClientConn_static_extension {
    @:keep
    static public function _vlogf( _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn> = _cc;
        _cc._t._vlogf(_format?.__copy__(), ...(_args : Array<stdgo.AnyInterface>));
    }
    @:keep
    static public function _logf( _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn> = _cc;
        _cc._t._logf(_format?.__copy__(), ...(_args : Array<stdgo.AnyInterface>));
    }
    @:keep
    static public function _writeStreamReset( _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>, _streamID:stdgo.GoUInt32, _code:stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode, _err:stdgo.Error):Void {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn> = _cc;
        _cc._wmu.lock();
        _cc._fr.writeRSTStream(_streamID, _code);
        _cc._bw.flush();
        _cc._wmu.unlock();
    }
    @:keep
    static public function ping( _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>, _ctx:stdgo._internal.context.Context_Context.Context):stdgo.Error {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn> = _cc;
        var _c = (new stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>(0, () -> ({} : stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError)) : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>);
        var _p:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(8, 8, ...[for (i in 0 ... 8) (0 : stdgo.GoUInt8)]);
        while (true) {
            {
                var __tmp__ = stdgo._internal.math.rand.Rand_read.read((_p.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)), __32092:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
            };
            _cc._mu.lock();
            {
                var __tmp__ = (_cc._pings != null && _cc._pings.exists(_p?.__copy__()) ? { _0 : _cc._pings[_p?.__copy__()], _1 : true } : { _0 : (null : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>), _1 : false }), __32123:stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError> = __tmp__._0, _found:Bool = __tmp__._1;
                if (!_found) {
                    _cc._pings[_p] = _c;
                    _cc._mu.unlock();
                    break;
                };
            };
            _cc._mu.unlock();
        };
        var _errc = (new stdgo.Chan<stdgo.Error>((1 : stdgo.GoInt).toBasic(), () -> (null : stdgo.Error)) : stdgo.Chan<stdgo.Error>);
        stdgo.Go.routine(() -> ({
            var a = function():Void {
                var __deferstack__:Array<Void -> Void> = [];
                try {
                    _cc._wmu.lock();
                    {
                        final __f__ = _cc._wmu.unlock;
                        __deferstack__.unshift(() -> __f__());
                    };
                    {
                        var _err = (_cc._fr.writePing(false, _p?.__copy__()) : stdgo.Error);
                        if (_err != null) {
                            _errc.__send__(_err);
                            {
                                for (defer in __deferstack__) {
                                    defer();
                                };
                                return;
                            };
                        };
                    };
                    {
                        var _err = (_cc._bw.flush() : stdgo.Error);
                        if (_err != null) {
                            _errc.__send__(_err);
                            {
                                for (defer in __deferstack__) {
                                    defer();
                                };
                                return;
                            };
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
                    } else if (_cc._readerDone != null && _cc._readerDone.__isGet__()) {
                        __select__ = false;
                        {
                            _cc._readerDone.__get__();
                            {
                                return _cc._readerErr;
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
    static public function _countReadFrameError( _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>, _err:stdgo.Error):Void {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn> = _cc;
        var _f = (_cc._t.countError : stdgo.GoString -> Void);
        if (((_f == null) || (_err == null) : Bool)) {
            return;
        };
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo._internal.net.http.Http_T_http2ConnectionError.T_http2ConnectionError)) : stdgo._internal.net.http.Http_T_http2ConnectionError.T_http2ConnectionError), _1 : true };
            } catch(_) {
                { _0 : ((0 : stdgo.GoUInt32) : stdgo._internal.net.http.Http_T_http2ConnectionError.T_http2ConnectionError), _1 : false };
            }, _ce = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                var _errCode = (_ce : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode);
                _f(stdgo._internal.fmt.Fmt_sprintf.sprintf(("read_frame_conn_error_%s" : stdgo.GoString), stdgo.Go.toInterface(_errCode._stringToken()))?.__copy__());
                return;
            };
        };
        if (stdgo._internal.errors.Errors_is_.is_(_err, stdgo._internal.io.Io_eof.eof)) {
            _f(("read_frame_eof" : stdgo.GoString));
            return;
        };
        if (stdgo._internal.errors.Errors_is_.is_(_err, stdgo._internal.io.Io_errUnexpectedEOF.errUnexpectedEOF)) {
            _f(("read_frame_unexpected_eof" : stdgo.GoString));
            return;
        };
        if (stdgo._internal.errors.Errors_is_.is_(_err, stdgo._internal.net.http.Http__http2ErrFrameTooLarge._http2ErrFrameTooLarge)) {
            _f(("read_frame_too_large" : stdgo.GoString));
            return;
        };
        _f(("read_frame_other" : stdgo.GoString));
    }
    @:keep
    static public function _readLoop( _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>):Void {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn> = _cc;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _rl = (stdgo.Go.setRef(({ _cc : _cc } : stdgo._internal.net.http.Http_T_http2clientConnReadLoop.T_http2clientConnReadLoop)) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientConnReadLoop.T_http2clientConnReadLoop>);
            {
                final __f__ = _rl._cleanup;
                __deferstack__.unshift(() -> __f__());
            };
            _cc._readerErr = _rl._run();
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_cc._readerErr) : stdgo._internal.net.http.Http_T_http2ConnectionError.T_http2ConnectionError)) : stdgo._internal.net.http.Http_T_http2ConnectionError.T_http2ConnectionError), _1 : true };
                } catch(_) {
                    { _0 : ((0 : stdgo.GoUInt32) : stdgo._internal.net.http.Http_T_http2ConnectionError.T_http2ConnectionError), _1 : false };
                }, _ce = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    _cc._wmu.lock();
                    _cc._fr.writeGoAway((0u32 : stdgo.GoUInt32), (_ce : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode), (null : stdgo.Slice<stdgo.GoUInt8>));
                    _cc._wmu.unlock();
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
    static public function _forgetStreamID( _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>, _id:stdgo.GoUInt32):Void {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn> = _cc;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _cc._mu.lock();
            var _slen = (_cc._streams.length : stdgo.GoInt);
            if (_cc._streams != null) _cc._streams.remove(_id);
            if ((_cc._streams.length) != ((_slen - (1 : stdgo.GoInt) : stdgo.GoInt))) {
                throw stdgo.Go.toInterface(("forgetting unknown stream id" : stdgo.GoString));
            };
            _cc._lastActive = stdgo._internal.time.Time_now.now()?.__copy__();
            if (((_cc._streams.length == (0 : stdgo.GoInt)) && (_cc._idleTimer != null && ((_cc._idleTimer : Dynamic).__nil__ == null || !(_cc._idleTimer : Dynamic).__nil__)) : Bool)) {
                _cc._idleTimer.reset(_cc._idleTimeout);
                _cc._lastIdle = stdgo._internal.time.Time_now.now()?.__copy__();
            };
            _cc._cond.broadcast();
            var _closeOnIdle = (((_cc._singleUse || _cc._doNotReuse : Bool) || _cc._t._disableKeepAlives() : Bool) || (_cc._goAway != null && ((_cc._goAway : Dynamic).__nil__ == null || !(_cc._goAway : Dynamic).__nil__)) : Bool);
            if (((_closeOnIdle && _cc._streamsReserved == ((0 : stdgo.GoInt)) : Bool) && (_cc._streams.length == (0 : stdgo.GoInt)) : Bool)) {
                if (stdgo._internal.net.http.Http__http2VerboseLogs._http2VerboseLogs) {
                    _cc._vlogf(("http2: Transport closing idle conn %p (forSingleUse=%v, maxStream=%v)" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_cc)), stdgo.Go.toInterface(_cc._singleUse), stdgo.Go.toInterface((_cc._nextStreamID - (2u32 : stdgo.GoUInt32) : stdgo.GoUInt32)));
                };
                _cc._closed = true;
                {
                    final __f__ = _cc._closeConn;
                    __deferstack__.unshift(() -> __f__());
                };
            };
            _cc._mu.unlock();
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
    static public function _addStreamLocked( _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>, _cs:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream>):Void {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn> = _cc;
        _cs._flow._add((_cc._initialWindowSize : stdgo.GoInt32));
        _cs._flow._setConnFlow((stdgo.Go.setRef(_cc._flow) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2outflow.T_http2outflow>));
        _cs._inflow._init((4194304 : stdgo.GoInt32));
        _cs.id = _cc._nextStreamID;
        _cc._nextStreamID = (_cc._nextStreamID + ((2u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
        _cc._streams[_cs.id] = _cs;
        if (_cs.id == ((0u32 : stdgo.GoUInt32))) {
            throw stdgo.Go.toInterface(("assigned stream ID 0" : stdgo.GoString));
        };
    }
    @:keep
    static public function _writeHeader( _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>, _name:stdgo.GoString, _value:stdgo.GoString):Void {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn> = _cc;
        if (stdgo._internal.net.http.Http__http2VerboseLogs._http2VerboseLogs) {
            stdgo._internal.log.Log_printf.printf(("http2: Transport encoding header %q = %q" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_value));
        };
        _cc._henc.writeField(({ name : _name?.__copy__(), value : _value?.__copy__() } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField));
    }
    @:keep
    static public function _encodeTrailers( _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>, _trailer:stdgo._internal.net.http.Http_Header.Header):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn> = _cc;
        _cc._hbuf.reset();
        var _hlSize = ((0i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        for (_k => _vv in _trailer) {
            for (__32102 => _v in _vv) {
                var _hf = ({ name : _k?.__copy__(), value : _v?.__copy__() } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField);
                _hlSize = (_hlSize + ((_hf.size() : stdgo.GoUInt64)) : stdgo.GoUInt64);
            };
        };
        if ((_hlSize > _cc._peerMaxHeaderListSize : Bool)) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.net.http.Http__http2errRequestHeaderListSize._http2errRequestHeaderListSize };
        };
        for (_k => _vv in _trailer) {
            var __tmp__ = stdgo._internal.net.http.Http__http2lowerHeader._http2lowerHeader(_k?.__copy__()), _lowKey:stdgo.GoString = __tmp__._0, _ascii:Bool = __tmp__._1;
            if (!_ascii) {
                continue;
            };
            for (__32112 => _v in _vv) {
                _cc._writeHeader(_lowKey?.__copy__(), _v?.__copy__());
            };
        };
        return { _0 : _cc._hbuf.bytes(), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function _encodeHeaders( _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>, _req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, _addGzipHeader:Bool, _trailers:stdgo.GoString, _contentLength:stdgo.GoInt64):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn> = _cc;
        _cc._hbuf.reset();
        if ((_req.url == null || (_req.url : Dynamic).__nil__)) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.net.http.Http__http2errNilRequestURL._http2errNilRequestURL };
        };
        var _host = (_req.host?.__copy__() : stdgo.GoString);
        if (_host == (stdgo.Go.str())) {
            _host = _req.url.host?.__copy__();
        };
        var __tmp__ = _internal.golang_dot_org.x.net.http.httpguts.Httpguts_punycodeHostPort.punycodeHostPort(_host?.__copy__()), _host:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        if (!_internal.golang_dot_org.x.net.http.httpguts.Httpguts_validHostHeader.validHostHeader(_host?.__copy__())) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("http2: invalid Host header" : stdgo.GoString)) };
        };
        var _path:stdgo.GoString = ("" : stdgo.GoString);
        if (_req.method != (("CONNECT" : stdgo.GoString))) {
            _path = _req.url.requestURI()?.__copy__();
            if (!stdgo._internal.net.http.Http__http2validPseudoPath._http2validPseudoPath(_path?.__copy__())) {
                var _orig = (_path?.__copy__() : stdgo.GoString);
                _path = stdgo._internal.strings.Strings_trimPrefix.trimPrefix(_path?.__copy__(), ((_req.url.scheme + ("://" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _host?.__copy__() : stdgo.GoString)?.__copy__())?.__copy__();
                if (!stdgo._internal.net.http.Http__http2validPseudoPath._http2validPseudoPath(_path?.__copy__())) {
                    if (_req.url.opaque != (stdgo.Go.str())) {
                        return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("invalid request :path %q from URL.Opaque = %q" : stdgo.GoString), stdgo.Go.toInterface(_orig), stdgo.Go.toInterface(_req.url.opaque)) };
                    } else {
                        return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("invalid request :path %q" : stdgo.GoString), stdgo.Go.toInterface(_orig)) };
                    };
                };
            };
        };
        for (_k => _vv in _req.header) {
            if (!_internal.golang_dot_org.x.net.http.httpguts.Httpguts_validHeaderFieldName.validHeaderFieldName(_k?.__copy__())) {
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("invalid HTTP header name %q" : stdgo.GoString), stdgo.Go.toInterface(_k)) };
            };
            for (__32102 => _v in _vv) {
                if (!_internal.golang_dot_org.x.net.http.httpguts.Httpguts_validHeaderFieldValue.validHeaderFieldValue(_v?.__copy__())) {
                    return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("invalid HTTP header value for header %q" : stdgo.GoString), stdgo.Go.toInterface(_k)) };
                };
            };
        };
        var _enumerateHeaders = (function(_f:(stdgo.GoString, stdgo.GoString) -> Void):Void {
            _f((":authority" : stdgo.GoString), _host?.__copy__());
            var _m = (_req.method?.__copy__() : stdgo.GoString);
            if (_m == (stdgo.Go.str())) {
                _m = ("GET" : stdgo.GoString);
            };
            _f((":method" : stdgo.GoString), _m?.__copy__());
            if (_req.method != (("CONNECT" : stdgo.GoString))) {
                _f((":path" : stdgo.GoString), _path?.__copy__());
                _f((":scheme" : stdgo.GoString), _req.url.scheme?.__copy__());
            };
            if (_trailers != (stdgo.Go.str())) {
                _f(("trailer" : stdgo.GoString), _trailers?.__copy__());
            };
            var _didUA:Bool = false;
            for (_k => _vv in _req.header) {
                if ((stdgo._internal.net.http.Http__http2asciiEqualFold._http2asciiEqualFold(_k?.__copy__(), ("host" : stdgo.GoString)) || stdgo._internal.net.http.Http__http2asciiEqualFold._http2asciiEqualFold(_k?.__copy__(), ("content-length" : stdgo.GoString)) : Bool)) {
                    continue;
                } else if (((((stdgo._internal.net.http.Http__http2asciiEqualFold._http2asciiEqualFold(_k?.__copy__(), ("connection" : stdgo.GoString)) || stdgo._internal.net.http.Http__http2asciiEqualFold._http2asciiEqualFold(_k?.__copy__(), ("proxy-connection" : stdgo.GoString)) : Bool) || stdgo._internal.net.http.Http__http2asciiEqualFold._http2asciiEqualFold(_k?.__copy__(), ("transfer-encoding" : stdgo.GoString)) : Bool) || stdgo._internal.net.http.Http__http2asciiEqualFold._http2asciiEqualFold(_k?.__copy__(), ("upgrade" : stdgo.GoString)) : Bool) || stdgo._internal.net.http.Http__http2asciiEqualFold._http2asciiEqualFold(_k?.__copy__(), ("keep-alive" : stdgo.GoString)) : Bool)) {
                    continue;
                } else if (stdgo._internal.net.http.Http__http2asciiEqualFold._http2asciiEqualFold(_k?.__copy__(), ("user-agent" : stdgo.GoString))) {
                    _didUA = true;
                    if (((_vv.length) < (1 : stdgo.GoInt) : Bool)) {
                        continue;
                    };
                    _vv = (_vv.__slice__(0, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>);
                    if (_vv[(0 : stdgo.GoInt)] == (stdgo.Go.str())) {
                        continue;
                    };
                } else if (stdgo._internal.net.http.Http__http2asciiEqualFold._http2asciiEqualFold(_k?.__copy__(), ("cookie" : stdgo.GoString))) {
                    for (__32102 => _v in _vv) {
                        while (true) {
                            var _p = (stdgo._internal.strings.Strings_indexByte.indexByte(_v?.__copy__(), (59 : stdgo.GoUInt8)) : stdgo.GoInt);
                            if ((_p < (0 : stdgo.GoInt) : Bool)) {
                                break;
                            };
                            _f(("cookie" : stdgo.GoString), (_v.__slice__(0, _p) : stdgo.GoString)?.__copy__());
                            _p++;
                            while ((((_p + (1 : stdgo.GoInt) : stdgo.GoInt) <= (_v.length) : Bool) && (_v[(_p : stdgo.GoInt)] == (32 : stdgo.GoUInt8)) : Bool)) {
                                _p++;
                            };
                            _v = (_v.__slice__(_p) : stdgo.GoString)?.__copy__();
                        };
                        if (((_v.length) > (0 : stdgo.GoInt) : Bool)) {
                            _f(("cookie" : stdgo.GoString), _v?.__copy__());
                        };
                    };
                    continue;
                };
                for (__32102 => _v in _vv) {
                    _f(_k?.__copy__(), _v?.__copy__());
                };
            };
            if (stdgo._internal.net.http.Http__http2shouldSendReqContentLength._http2shouldSendReqContentLength(_req.method?.__copy__(), _contentLength)) {
                _f(("content-length" : stdgo.GoString), stdgo._internal.strconv.Strconv_formatInt.formatInt(_contentLength, (10 : stdgo.GoInt))?.__copy__());
            };
            if (_addGzipHeader) {
                _f(("accept-encoding" : stdgo.GoString), ("gzip" : stdgo.GoString));
            };
            if (!_didUA) {
                _f(("user-agent" : stdgo.GoString), ("Go-http-client/2.0" : stdgo.GoString));
            };
        } : ((stdgo.GoString, stdgo.GoString) -> Void) -> Void);
        var _hlSize = ((0i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        _enumerateHeaders(function(_name:stdgo.GoString, _value:stdgo.GoString):Void {
            var _hf = ({ name : _name?.__copy__(), value : _value?.__copy__() } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField);
            _hlSize = (_hlSize + ((_hf.size() : stdgo.GoUInt64)) : stdgo.GoUInt64);
        });
        if ((_hlSize > _cc._peerMaxHeaderListSize : Bool)) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.net.http.Http__http2errRequestHeaderListSize._http2errRequestHeaderListSize };
        };
        var _trace = stdgo._internal.net.http.httptrace.Httptrace_contextClientTrace.contextClientTrace(_req.context());
        var _traceHeaders = (stdgo._internal.net.http.Http__http2traceHasWroteHeaderField._http2traceHasWroteHeaderField(_trace) : Bool);
        _enumerateHeaders(function(_name:stdgo.GoString, _value:stdgo.GoString):Void {
            var __tmp__ = stdgo._internal.net.http.Http__http2lowerHeader._http2lowerHeader(_name?.__copy__()), _name:stdgo.GoString = __tmp__._0, _ascii:Bool = __tmp__._1;
            if (!_ascii) {
                return;
            };
            _cc._writeHeader(_name?.__copy__(), _value?.__copy__());
            if (_traceHeaders) {
                stdgo._internal.net.http.Http__http2traceWroteHeaderField._http2traceWroteHeaderField(_trace, _name?.__copy__(), _value?.__copy__());
            };
        });
        return { _0 : _cc._hbuf.bytes(), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function _writeHeaders( _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>, _streamID:stdgo.GoUInt32, _endStream:Bool, _maxFrameSize:stdgo.GoInt, _hdrs:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn> = _cc;
        var _first = (true : Bool);
        while ((((_hdrs.length) > (0 : stdgo.GoInt) : Bool) && (_cc._werr == null) : Bool)) {
            var _chunk = _hdrs;
            if (((_chunk.length) > _maxFrameSize : Bool)) {
                _chunk = (_chunk.__slice__(0, _maxFrameSize) : stdgo.Slice<stdgo.GoUInt8>);
            };
            _hdrs = (_hdrs.__slice__((_chunk.length)) : stdgo.Slice<stdgo.GoUInt8>);
            var _endHeaders = ((_hdrs.length) == ((0 : stdgo.GoInt)) : Bool);
            if (_first) {
                _cc._fr.writeHeaders(({ streamID : _streamID, blockFragment : _chunk, endStream : _endStream, endHeaders : _endHeaders } : stdgo._internal.net.http.Http_T_http2HeadersFrameParam.T_http2HeadersFrameParam));
                _first = false;
            } else {
                _cc._fr.writeContinuation(_streamID, _endHeaders, _chunk);
            };
        };
        _cc._bw.flush();
        return _cc._werr;
    }
    @:keep
    static public function _awaitOpenSlotForStreamLocked( _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>, _cs:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream>):stdgo.Error {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn> = _cc;
        while (true) {
            _cc._lastActive = stdgo._internal.time.Time_now.now()?.__copy__();
            if ((_cc._closed || !_cc._canTakeNewRequestLocked() : Bool)) {
                return stdgo._internal.net.http.Http__http2errClientConnUnusable._http2errClientConnUnusable;
            };
            _cc._lastIdle = (new stdgo._internal.time.Time_Time.Time() : stdgo._internal.time.Time_Time.Time);
            if (((_cc._streams.length : stdgo.GoInt64) < (_cc._maxConcurrentStreams : stdgo.GoInt64) : Bool)) {
                return (null : stdgo.Error);
            };
            _cc._pendingRequests++;
            _cc._cond.wait_();
            _cc._pendingRequests--;
            {
                var __select__ = true;
                while (__select__) {
                    if (_cs._abort != null && _cs._abort.__isGet__()) {
                        __select__ = false;
                        {
                            _cs._abort.__get__();
                            {
                                return _cs._abortErr;
                            };
                        };
                    } else {
                        __select__ = false;
                        {};
                    };
                    #if !js Sys.sleep(0.01) #else null #end;
                    stdgo._internal.internal.Async.tick();
                };
            };
        };
    }
    @:keep
    static public function roundTrip( _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>, _req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn> = _cc;
        var _ctx = (_req.context() : stdgo._internal.context.Context_Context.Context);
        var _cs = (stdgo.Go.setRef(({ _cc : _cc, _ctx : _ctx, _reqCancel : _req.cancel, _isHead : _req.method == (("HEAD" : stdgo.GoString)), _reqBody : _req.body, _reqBodyContentLength : stdgo._internal.net.http.Http__http2actualContentLength._http2actualContentLength(_req), _trace : stdgo._internal.net.http.httptrace.Httptrace_contextClientTrace.contextClientTrace(_ctx), _peerClosed : (new stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>(0, () -> ({} : stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError)) : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>), _abort : (new stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>(0, () -> ({} : stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError)) : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>), _respHeaderRecv : (new stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>(0, () -> ({} : stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError)) : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>), _donec : (new stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>(0, () -> ({} : stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError)) : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>) } : stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream)) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream>);
        stdgo.Go.routine(() -> _cs._doRequest(_req));
        var _waitDone = (function():stdgo.Error {
            {
                {
                    var __select__ = true;
                    while (__select__) {
                        if (_cs._donec != null && _cs._donec.__isGet__()) {
                            __select__ = false;
                            {
                                _cs._donec.__get__();
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
                        } else if (_cs._reqCancel != null && _cs._reqCancel.__isGet__()) {
                            __select__ = false;
                            {
                                _cs._reqCancel.__get__();
                                {
                                    return stdgo._internal.net.http.Http__http2errRequestCanceled._http2errRequestCanceled;
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
        var _handleResponseHeaders = (function():{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } {
            var _res = _cs._res;
            if ((_res.statusCode > (299 : stdgo.GoInt) : Bool)) {
                _cs._abortRequestBodyWrite();
            };
            _res.request = _req;
            _res.tls = _cc._tlsState;
            if (((stdgo.Go.toInterface(_res.body) == stdgo.Go.toInterface(stdgo._internal.net.http.Http__http2noBody._http2noBody)) && (stdgo._internal.net.http.Http__http2actualContentLength._http2actualContentLength(_req) == (0i64 : stdgo.GoInt64)) : Bool)) {
                {
                    var _err = (_waitDone() : stdgo.Error);
                    if (_err != null) {
                        return { _0 : null, _1 : _err };
                    };
                };
            };
            return { _0 : _res, _1 : (null : stdgo.Error) };
        } : () -> { var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; });
        var _cancelRequest = function(_cs:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream>, _err:stdgo.Error):stdgo.Error {
            _cs._cc._mu.lock();
            var _bodyClosed = _cs._reqBodyClosed;
            _cs._cc._mu.unlock();
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
                        if (_cs._respHeaderRecv != null && _cs._respHeaderRecv.__isGet__()) {
                            __select__ = false;
                            {
                                _cs._respHeaderRecv.__get__();
                                {
                                    return _handleResponseHeaders();
                                };
                            };
                        } else if (_cs._abort != null && _cs._abort.__isGet__()) {
                            __select__ = false;
                            {
                                _cs._abort.__get__();
                                {
                                    {
                                        {
                                            var __select__ = true;
                                            while (__select__) {
                                                if (_cs._respHeaderRecv != null && _cs._respHeaderRecv.__isGet__()) {
                                                    __select__ = false;
                                                    {
                                                        _cs._respHeaderRecv.__get__();
                                                        {
                                                            return _handleResponseHeaders();
                                                        };
                                                    };
                                                } else {
                                                    __select__ = false;
                                                    {
                                                        _waitDone();
                                                        return { _0 : null, _1 : _cs._abortErr };
                                                    };
                                                };
                                                #if !js Sys.sleep(0.01) #else null #end;
                                                stdgo._internal.internal.Async.tick();
                                            };
                                        };
                                        return { _0 : (null : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>), _1 : (null : stdgo.Error) };
                                    };
                                };
                            };
                        } else if (_ctx.done() != null && _ctx.done().__isGet__()) {
                            __select__ = false;
                            {
                                _ctx.done().__get__();
                                {
                                    var _err = (_ctx.err() : stdgo.Error);
                                    _cs._abortStream(_err);
                                    return { _0 : null, _1 : _cancelRequest(_cs, _err) };
                                };
                            };
                        } else if (_cs._reqCancel != null && _cs._reqCancel.__isGet__()) {
                            __select__ = false;
                            {
                                _cs._reqCancel.__get__();
                                {
                                    _cs._abortStream(stdgo._internal.net.http.Http__http2errRequestCanceled._http2errRequestCanceled);
                                    return { _0 : null, _1 : _cancelRequest(_cs, stdgo._internal.net.http.Http__http2errRequestCanceled._http2errRequestCanceled) };
                                };
                            };
                        };
                        #if !js Sys.sleep(0.01) #else null #end;
                        stdgo._internal.internal.Async.tick();
                    };
                };
                return { _0 : (null : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>), _1 : (null : stdgo.Error) };
            };
        };
    }
    @:keep
    static public function _decrStreamReservationsLocked( _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>):Void {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn> = _cc;
        if ((_cc._streamsReserved > (0 : stdgo.GoInt) : Bool)) {
            _cc._streamsReserved--;
        };
    }
    @:keep
    static public function _decrStreamReservations( _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>):Void {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn> = _cc;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _cc._mu.lock();
            {
                final __f__ = _cc._mu.unlock;
                __deferstack__.unshift(() -> __f__());
            };
            _cc._decrStreamReservationsLocked();
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
    static public function _responseHeaderTimeout( _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>):stdgo._internal.time.Time_Duration.Duration {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn> = _cc;
        if ((_cc._t._t1 != null && ((_cc._t._t1 : Dynamic).__nil__ == null || !(_cc._t._t1 : Dynamic).__nil__))) {
            return _cc._t._t1.responseHeaderTimeout;
        };
        return (0i64 : stdgo._internal.time.Time_Duration.Duration);
    }
    @:keep
    static public function _closeForLostPing( _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>):Void {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn> = _cc;
        var _err = (stdgo._internal.errors.Errors_new_.new_(("http2: client connection lost" : stdgo.GoString)) : stdgo.Error);
        {
            var _f = (_cc._t.countError : stdgo.GoString -> Void);
            if (_f != null) {
                _f(("conn_close_lost_ping" : stdgo.GoString));
            };
        };
        _cc._closeForError(_err);
    }
    @:keep
    static public function close( _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>):stdgo.Error {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn> = _cc;
        var _err = (stdgo._internal.errors.Errors_new_.new_(("http2: client connection force closed via ClientConn.Close" : stdgo.GoString)) : stdgo.Error);
        _cc._closeForError(_err);
        return (null : stdgo.Error);
    }
    @:keep
    static public function _closeForError( _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>, _err:stdgo.Error):Void {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn> = _cc;
        _cc._mu.lock();
        _cc._closed = true;
        for (__32122 => _cs in _cc._streams) {
            _cs._abortStreamLocked(_err);
        };
        _cc._cond.broadcast();
        _cc._mu.unlock();
        _cc._closeConn();
    }
    @:keep
    static public function _sendGoAway( _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>):stdgo.Error {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn> = _cc;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _cc._mu.lock();
            var _closing = (_cc._closing : Bool);
            _cc._closing = true;
            var _maxStreamID = (_cc._nextStreamID : stdgo.GoUInt32);
            _cc._mu.unlock();
            if (_closing) {
                return (null : stdgo.Error);
            };
            _cc._wmu.lock();
            {
                final __f__ = _cc._wmu.unlock;
                __deferstack__.unshift(() -> __f__());
            };
            {
                var _err = (_cc._fr.writeGoAway(_maxStreamID, (0u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode), (null : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Error);
                if (_err != null) {
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return _err;
                    };
                };
            };
            {
                var _err = (_cc._bw.flush() : stdgo.Error);
                if (_err != null) {
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return _err;
                    };
                };
            };
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
    static public function shutdown( _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>, _ctx:stdgo._internal.context.Context_Context.Context):stdgo.Error {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn> = _cc;
        {
            var _err = (_cc._sendGoAway() : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        var _done = (new stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>(0, () -> ({} : stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError)) : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>);
        var _cancelled = (false : Bool);
        stdgo.Go.routine(() -> ({
            var a = function():Void {
                var __deferstack__:Array<Void -> Void> = [];
                try {
                    _cc._mu.lock();
                    {
                        final __f__ = _cc._mu.unlock;
                        __deferstack__.unshift(() -> __f__());
                    };
                    while (true) {
                        if (((_cc._streams.length == (0 : stdgo.GoInt)) || _cc._closed : Bool)) {
                            _cc._closed = true;
                            if (_done != null) _done.__close__();
                            break;
                        };
                        if (_cancelled) {
                            break;
                        };
                        _cc._cond.wait_();
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
        }));
        stdgo._internal.net.http.Http__http2shutdownEnterWaitStateHook._http2shutdownEnterWaitStateHook();
        {
            {
                var __select__ = true;
                while (__select__) {
                    if (_done != null && _done.__isGet__()) {
                        __select__ = false;
                        {
                            _done.__get__();
                            {
                                _cc._closeConn();
                                return (null : stdgo.Error);
                            };
                        };
                    } else if (_ctx.done() != null && _ctx.done().__isGet__()) {
                        __select__ = false;
                        {
                            _ctx.done().__get__();
                            {
                                _cc._mu.lock();
                                _cancelled = true;
                                _cc._cond.broadcast();
                                _cc._mu.unlock();
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
    static public function _isDoNotReuseAndIdle( _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>):Bool {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn> = _cc;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _cc._mu.lock();
            {
                final __f__ = _cc._mu.unlock;
                __deferstack__.unshift(() -> __f__());
            };
            {
                final __ret__:Bool = (_cc._doNotReuse && (_cc._streams.length == (0 : stdgo.GoInt)) : Bool);
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
                return false;
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
            return false;
        };
    }
    @:keep
    static public function _closeIfIdle( _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>):Void {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn> = _cc;
        _cc._mu.lock();
        if ((((_cc._streams.length) > (0 : stdgo.GoInt) : Bool) || (_cc._streamsReserved > (0 : stdgo.GoInt) : Bool) : Bool)) {
            _cc._mu.unlock();
            return;
        };
        _cc._closed = true;
        var _nextID = (_cc._nextStreamID : stdgo.GoUInt32);
        _cc._mu.unlock();
        if (stdgo._internal.net.http.Http__http2VerboseLogs._http2VerboseLogs) {
            _cc._vlogf(("http2: Transport closing idle conn %p (forSingleUse=%v, maxStream=%v)" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_cc)), stdgo.Go.toInterface(_cc._singleUse), stdgo.Go.toInterface((_nextID - (2u32 : stdgo.GoUInt32) : stdgo.GoUInt32)));
        };
        _cc._closeConn();
    }
    @:keep
    static public function _forceCloseConn( _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>):Void {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn> = _cc;
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_cc._tconn) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>), _1 : false };
        }, _tc = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            return;
        };
        {
            var _nc = (stdgo._internal.net.http.Http__http2tlsUnderlyingConn._http2tlsUnderlyingConn(_tc) : stdgo._internal.net.Net_Conn.Conn);
            if (_nc != null) {
                _nc.close();
            };
        };
    }
    @:keep
    static public function _closeConn( _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>):Void {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn> = _cc;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _t = stdgo._internal.time.Time_afterFunc.afterFunc((250000000i64 : stdgo._internal.time.Time_Duration.Duration), _cc._forceCloseConn);
            {
                final __f__ = _t.stop;
                __deferstack__.unshift(() -> __f__());
            };
            _cc._tconn.close();
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
    static public function _onIdleTimeout( _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>):Void {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn> = _cc;
        _cc._closeIfIdle();
    }
    @:keep
    static public function _tooIdleLocked( _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>):Bool {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn> = _cc;
        return ((_cc._idleTimeout != ((0i64 : stdgo._internal.time.Time_Duration.Duration)) && !_cc._lastIdle.isZero() : Bool) && (stdgo._internal.time.Time_since.since(_cc._lastIdle.round((0i64 : stdgo._internal.time.Time_Duration.Duration))?.__copy__()) > _cc._idleTimeout : Bool) : Bool);
    }
    @:keep
    static public function _canTakeNewRequestLocked( _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>):Bool {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn> = _cc;
        var _st = (_cc._idleStateLocked()?.__copy__() : stdgo._internal.net.http.Http_T_http2clientConnIdleState.T_http2clientConnIdleState);
        return _st._canTakeNewRequest;
    }
    @:keep
    static public function _idleStateLocked( _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>):stdgo._internal.net.http.Http_T_http2clientConnIdleState.T_http2clientConnIdleState {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn> = _cc;
        var _st = ({} : stdgo._internal.net.http.Http_T_http2clientConnIdleState.T_http2clientConnIdleState);
        if ((_cc._singleUse && (_cc._nextStreamID > (1u32 : stdgo.GoUInt32) : Bool) : Bool)) {
            return _st;
        };
        var _maxConcurrentOkay:Bool = false;
        if (_cc._t.strictMaxConcurrentStreams) {
            _maxConcurrentOkay = true;
        } else {
            _maxConcurrentOkay = (((((_cc._streams.length) + _cc._streamsReserved : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt64) <= (_cc._maxConcurrentStreams : stdgo.GoInt64) : Bool);
        };
        _st._canTakeNewRequest = (((((((_cc._goAway == null || (_cc._goAway : Dynamic).__nil__) && !_cc._closed : Bool) && !_cc._closing : Bool) && _maxConcurrentOkay : Bool) && !_cc._doNotReuse : Bool) && (((_cc._nextStreamID : stdgo.GoInt64) + ((2i64 : stdgo.GoInt64) * (_cc._pendingRequests : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoInt64) < (2147483647i64 : stdgo.GoInt64) : Bool) : Bool) && !_cc._tooIdleLocked() : Bool);
        return _st;
    }
    @:keep
    static public function _idleState( _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>):stdgo._internal.net.http.Http_T_http2clientConnIdleState.T_http2clientConnIdleState {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn> = _cc;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _cc._mu.lock();
            {
                final __f__ = _cc._mu.unlock;
                __deferstack__.unshift(() -> __f__());
            };
            {
                final __ret__:stdgo._internal.net.http.Http_T_http2clientConnIdleState.T_http2clientConnIdleState = _cc._idleStateLocked()?.__copy__();
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:stdgo._internal.net.http.Http_T_http2clientConnIdleState.T_http2clientConnIdleState = ({} : stdgo._internal.net.http.Http_T_http2clientConnIdleState.T_http2clientConnIdleState);
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
            final __ret__:stdgo._internal.net.http.Http_T_http2clientConnIdleState.T_http2clientConnIdleState = ({} : stdgo._internal.net.http.Http_T_http2clientConnIdleState.T_http2clientConnIdleState);
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
    @:keep
    static public function state( _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>):stdgo._internal.net.http.Http_T_http2ClientConnState.T_http2ClientConnState {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn> = _cc;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _cc._wmu.lock();
            var _maxConcurrent = (_cc._maxConcurrentStreams : stdgo.GoUInt32);
            if (!_cc._seenSettings) {
                _maxConcurrent = (0u32 : stdgo.GoUInt32);
            };
            _cc._wmu.unlock();
            _cc._mu.lock();
            {
                final __f__ = _cc._mu.unlock;
                __deferstack__.unshift(() -> __f__());
            };
            {
                final __ret__:stdgo._internal.net.http.Http_T_http2ClientConnState.T_http2ClientConnState = ({ closed : _cc._closed, closing : (((_cc._closing || _cc._singleUse : Bool) || _cc._doNotReuse : Bool) || (_cc._goAway != null && ((_cc._goAway : Dynamic).__nil__ == null || !(_cc._goAway : Dynamic).__nil__)) : Bool), streamsActive : (_cc._streams.length), streamsReserved : _cc._streamsReserved, streamsPending : _cc._pendingRequests, lastIdle : _cc._lastIdle?.__copy__(), maxConcurrentStreams : _maxConcurrent } : stdgo._internal.net.http.Http_T_http2ClientConnState.T_http2ClientConnState);
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:stdgo._internal.net.http.Http_T_http2ClientConnState.T_http2ClientConnState = ({} : stdgo._internal.net.http.Http_T_http2ClientConnState.T_http2ClientConnState);
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
            final __ret__:stdgo._internal.net.http.Http_T_http2ClientConnState.T_http2ClientConnState = ({} : stdgo._internal.net.http.Http_T_http2ClientConnState.T_http2ClientConnState);
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
    @:keep
    static public function reserveNewRequest( _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>):Bool {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn> = _cc;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _cc._mu.lock();
            {
                final __f__ = _cc._mu.unlock;
                __deferstack__.unshift(() -> __f__());
            };
            {
                var _st = (_cc._idleStateLocked()?.__copy__() : stdgo._internal.net.http.Http_T_http2clientConnIdleState.T_http2clientConnIdleState);
                if (!_st._canTakeNewRequest) {
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return false;
                    };
                };
            };
            _cc._streamsReserved++;
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return true;
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return false;
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
            return false;
        };
    }
    @:keep
    static public function canTakeNewRequest( _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>):Bool {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn> = _cc;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _cc._mu.lock();
            {
                final __f__ = _cc._mu.unlock;
                __deferstack__.unshift(() -> __f__());
            };
            {
                final __ret__:Bool = _cc._canTakeNewRequestLocked();
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
                return false;
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
            return false;
        };
    }
    @:keep
    static public function _setGoAway( _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>, _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2GoAwayFrame.T_http2GoAwayFrame>):Void {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn> = _cc;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _cc._mu.lock();
            {
                final __f__ = _cc._mu.unlock;
                __deferstack__.unshift(() -> __f__());
            };
            var _old = _cc._goAway;
            _cc._goAway = _f;
            if (_cc._goAwayDebug == (stdgo.Go.str())) {
                _cc._goAwayDebug = (_f.debugData() : stdgo.GoString)?.__copy__();
            };
            if (((_old != null && ((_old : Dynamic).__nil__ == null || !(_old : Dynamic).__nil__)) && (_old.errCode != (0u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode)) : Bool)) {
                _cc._goAway.errCode = _old.errCode;
            };
            var _last = (_f.lastStreamID : stdgo.GoUInt32);
            for (_streamID => _cs in _cc._streams) {
                if ((_streamID > _last : Bool)) {
                    _cs._abortStreamLocked(stdgo._internal.net.http.Http__http2errClientConnGotGoAway._http2errClientConnGotGoAway);
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
    static public function setDoNotReuse( _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>):Void {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn> = _cc;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _cc._mu.lock();
            {
                final __f__ = _cc._mu.unlock;
                __deferstack__.unshift(() -> __f__());
            };
            _cc._doNotReuse = true;
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
    static public function _healthCheck( _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>):Void {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn> = _cc;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _pingTimeout = (_cc._t._pingTimeout() : stdgo._internal.time.Time_Duration.Duration);
            var __tmp__ = stdgo._internal.context.Context_withTimeout.withTimeout(stdgo._internal.context.Context_background.background(), _pingTimeout), _ctx:stdgo._internal.context.Context_Context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context_CancelFunc.CancelFunc = __tmp__._1;
            {
                final __f__ = _cancel;
                __deferstack__.unshift(() -> __f__());
            };
            _cc._vlogf(("http2: Transport sending health check" : stdgo.GoString));
            var _err = (_cc.ping(_ctx) : stdgo.Error);
            if (_err != null) {
                _cc._vlogf(("http2: Transport health check failure: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                _cc._closeForLostPing();
            } else {
                _cc._vlogf(("http2: Transport health check success" : stdgo.GoString));
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
}
