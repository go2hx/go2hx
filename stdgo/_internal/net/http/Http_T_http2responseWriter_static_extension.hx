package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2responseWriter_asInterface) class T_http2responseWriter_static_extension {
    @:keep
    static public function push( _w:stdgo.Ref<stdgo._internal.net.http.Http_T_http2responseWriter.T_http2responseWriter>, _target:stdgo.GoString, _opts:stdgo.Ref<stdgo._internal.net.http.Http_PushOptions.PushOptions>):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_T_http2responseWriter.T_http2responseWriter> = _w;
        var _st = _w._rws._stream;
        var _sc = _st._sc;
        _sc._serveG._checkNotOn();
        if (_st._isPushed()) {
            return stdgo._internal.net.http.Http__http2ErrRecursivePush._http2ErrRecursivePush;
        };
        if (_opts == null || (_opts : Dynamic).__nil__) {
            _opts = (stdgo.Go.setRef(({} : stdgo._internal.net.http.Http_PushOptions.PushOptions)) : stdgo.Ref<stdgo._internal.net.http.Http_PushOptions.PushOptions>);
        };
        if (_opts.method == (stdgo.Go.str())) {
            _opts.method = ("GET" : stdgo.GoString);
        };
        if (_opts.header == null) {
            _opts.header = ({
                final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
                x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>);
        };
        var _wantScheme = ("http" : stdgo.GoString);
        if (_w._rws._req.tls != null && ((_w._rws._req.tls : Dynamic).__nil__ == null || !(_w._rws._req.tls : Dynamic).__nil__)) {
            _wantScheme = ("https" : stdgo.GoString);
        };
        var __tmp__ = stdgo._internal.net.url.Url_parse.parse(_target?.__copy__()), _u:stdgo.Ref<stdgo._internal.net.url.Url_URL.URL> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        if (_u.scheme == (stdgo.Go.str())) {
            if (!stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_target?.__copy__(), ("/" : stdgo.GoString))) {
                return stdgo._internal.fmt.Fmt_errorf.errorf(("target must be an absolute URL or an absolute path: %q" : stdgo.GoString), stdgo.Go.toInterface(_target));
            };
            _u.scheme = _wantScheme?.__copy__();
            _u.host = _w._rws._req.host?.__copy__();
        } else {
            if (_u.scheme != (_wantScheme)) {
                return stdgo._internal.fmt.Fmt_errorf.errorf(("cannot push URL with scheme %q from request with scheme %q" : stdgo.GoString), stdgo.Go.toInterface(_u.scheme), stdgo.Go.toInterface(_wantScheme));
            };
            if (_u.host == (stdgo.Go.str())) {
                return stdgo._internal.errors.Errors_new_.new_(("URL must have a host" : stdgo.GoString));
            };
        };
        for (_k => _ in _opts.header) {
            if (stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_k?.__copy__(), (":" : stdgo.GoString))) {
                return stdgo._internal.fmt.Fmt_errorf.errorf(("promised request headers cannot include pseudo header %q" : stdgo.GoString), stdgo.Go.toInterface(_k));
            };
            if ((((((stdgo._internal.net.http.Http__http2asciiEqualFold._http2asciiEqualFold(_k?.__copy__(), ("content-length" : stdgo.GoString)) || stdgo._internal.net.http.Http__http2asciiEqualFold._http2asciiEqualFold(_k?.__copy__(), ("content-encoding" : stdgo.GoString)) : Bool) || stdgo._internal.net.http.Http__http2asciiEqualFold._http2asciiEqualFold(_k?.__copy__(), ("trailer" : stdgo.GoString)) : Bool) || stdgo._internal.net.http.Http__http2asciiEqualFold._http2asciiEqualFold(_k?.__copy__(), ("te" : stdgo.GoString)) : Bool) || stdgo._internal.net.http.Http__http2asciiEqualFold._http2asciiEqualFold(_k?.__copy__(), ("expect" : stdgo.GoString)) : Bool) || stdgo._internal.net.http.Http__http2asciiEqualFold._http2asciiEqualFold(_k?.__copy__(), ("host" : stdgo.GoString)) : Bool)) {
                return stdgo._internal.fmt.Fmt_errorf.errorf(("promised request headers cannot include %q" : stdgo.GoString), stdgo.Go.toInterface(_k));
            };
        };
        {
            var _err = (stdgo._internal.net.http.Http__http2checkValidHTTP2RequestHeaders._http2checkValidHTTP2RequestHeaders(_opts.header) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        if (((_opts.method != ("GET" : stdgo.GoString)) && (_opts.method != ("HEAD" : stdgo.GoString)) : Bool)) {
            return stdgo._internal.fmt.Fmt_errorf.errorf(("method %q must be GET or HEAD" : stdgo.GoString), stdgo.Go.toInterface(_opts.method));
        };
        var _msg = (stdgo.Go.setRef(({ _parent : _st, _method : _opts.method?.__copy__(), _url : _u, _header : stdgo._internal.net.http.Http__http2cloneHeader._http2cloneHeader(_opts.header), _done : (stdgo.Go.typeAssert((stdgo._internal.net.http.Http__http2errChanPool._http2errChanPool.get() : stdgo.Chan<stdgo.Error>)) : stdgo.Chan<stdgo.Error>) } : stdgo._internal.net.http.Http_T_http2startPushRequest.T_http2startPushRequest)) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2startPushRequest.T_http2startPushRequest>);
        {
            var __select__ = true;
            while (__select__) {
                if (_sc._doneServing != null && _sc._doneServing.__isGet__()) {
                    __select__ = false;
                    {
                        _sc._doneServing.__get__();
                        {
                            return stdgo._internal.net.http.Http__http2errClientDisconnected._http2errClientDisconnected;
                        };
                    };
                } else if (_st._cw != null && _st._cw.__isGet__()) {
                    __select__ = false;
                    {
                        _st._cw.__get__();
                        {
                            return stdgo._internal.net.http.Http__http2errStreamClosed._http2errStreamClosed;
                        };
                    };
                } else if (_sc._serveMsgCh != null && _sc._serveMsgCh.__isSend__()) {
                    __select__ = false;
                    {
                        _sc._serveMsgCh.__send__(_msg);
                        {};
                    };
                };
                #if !js Sys.sleep(0.01) #else null #end;
                stdgo._internal.internal.Async.tick();
            };
        };
        {
            {
                var __select__ = true;
                while (__select__) {
                    if (_sc._doneServing != null && _sc._doneServing.__isGet__()) {
                        __select__ = false;
                        {
                            _sc._doneServing.__get__();
                            {
                                return stdgo._internal.net.http.Http__http2errClientDisconnected._http2errClientDisconnected;
                            };
                        };
                    } else if (_st._cw != null && _st._cw.__isGet__()) {
                        __select__ = false;
                        {
                            _st._cw.__get__();
                            {
                                return stdgo._internal.net.http.Http__http2errStreamClosed._http2errStreamClosed;
                            };
                        };
                    } else if (_msg._done != null && _msg._done.__isGet__()) {
                        __select__ = false;
                        {
                            var _err = _msg._done.__get__();
                            {
                                stdgo._internal.net.http.Http__http2errChanPool._http2errChanPool.put(stdgo.Go.toInterface(_msg._done));
                                return _err;
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
    static public function _handlerDone( _w:stdgo.Ref<stdgo._internal.net.http.Http_T_http2responseWriter.T_http2responseWriter>):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_T_http2responseWriter.T_http2responseWriter> = _w;
        var _rws = _w._rws;
        var _dirty = (_rws._dirty : Bool);
        _rws._handlerDone = true;
        _w.flush();
        _w._rws = null;
        if (!_dirty) {
            stdgo._internal.net.http.Http__http2responseWriterStatePool._http2responseWriterStatePool.put(stdgo.Go.toInterface(stdgo.Go.asInterface(_rws)));
        };
    }
    @:keep
    static public function _write( _w:stdgo.Ref<stdgo._internal.net.http.Http_T_http2responseWriter.T_http2responseWriter>, _lenData:stdgo.GoInt, _dataB:stdgo.Slice<stdgo.GoUInt8>, _dataS:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_T_http2responseWriter.T_http2responseWriter> = _w;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        var _rws = _w._rws;
        if (_rws == null || (_rws : Dynamic).__nil__) {
            throw stdgo.Go.toInterface(("Write called after Handler finished" : stdgo.GoString));
        };
        if (!_rws._wroteHeader) {
            _w.writeHeader((200 : stdgo.GoInt));
        };
        if (!stdgo._internal.net.http.Http__http2bodyAllowedForStatus._http2bodyAllowedForStatus(_rws._status)) {
            return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.net.http.Http_errBodyNotAllowed.errBodyNotAllowed };
        };
        _rws._wroteBytes = (_rws._wroteBytes + (((_dataB.length : stdgo.GoInt64) + (_dataS.length : stdgo.GoInt64) : stdgo.GoInt64)) : stdgo.GoInt64);
        if (((_rws._sentContentLen != (0i64 : stdgo.GoInt64)) && (_rws._wroteBytes > _rws._sentContentLen : Bool) : Bool)) {
            return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.errors.Errors_new_.new_(("http2: handler wrote more than declared Content-Length" : stdgo.GoString)) };
        };
        if (_dataB != null) {
            return _rws._bw.write(_dataB);
        } else {
            return _rws._bw.writeString(_dataS?.__copy__());
        };
    }
    @:keep
    static public function writeString( _w:stdgo.Ref<stdgo._internal.net.http.Http_T_http2responseWriter.T_http2responseWriter>, _s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_T_http2responseWriter.T_http2responseWriter> = _w;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        return _w._write((_s.length), (null : stdgo.Slice<stdgo.GoUInt8>), _s?.__copy__());
    }
    @:keep
    static public function write( _w:stdgo.Ref<stdgo._internal.net.http.Http_T_http2responseWriter.T_http2responseWriter>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_T_http2responseWriter.T_http2responseWriter> = _w;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        return _w._write((_p.length), _p, stdgo.Go.str()?.__copy__());
    }
    @:keep
    static public function writeHeader( _w:stdgo.Ref<stdgo._internal.net.http.Http_T_http2responseWriter.T_http2responseWriter>, _code:stdgo.GoInt):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_T_http2responseWriter.T_http2responseWriter> = _w;
        var _rws = _w._rws;
        if (_rws == null || (_rws : Dynamic).__nil__) {
            throw stdgo.Go.toInterface(("WriteHeader called after Handler finished" : stdgo.GoString));
        };
        _rws._writeHeader(_code);
    }
    @:keep
    static public function header( _w:stdgo.Ref<stdgo._internal.net.http.Http_T_http2responseWriter.T_http2responseWriter>):stdgo._internal.net.http.Http_Header.Header {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_T_http2responseWriter.T_http2responseWriter> = _w;
        var _rws = _w._rws;
        if (_rws == null || (_rws : Dynamic).__nil__) {
            throw stdgo.Go.toInterface(("Header called after Handler finished" : stdgo.GoString));
        };
        if (_rws._handlerHeader == null) {
            _rws._handlerHeader = (({
                final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
                x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.http.Http_Header.Header);
        };
        return _rws._handlerHeader;
    }
    @:keep
    static public function closeNotify( _w:stdgo.Ref<stdgo._internal.net.http.Http_T_http2responseWriter.T_http2responseWriter>):stdgo.Chan<Bool> {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_T_http2responseWriter.T_http2responseWriter> = _w;
        var _rws = _w._rws;
        if (_rws == null || (_rws : Dynamic).__nil__) {
            throw stdgo.Go.toInterface(("CloseNotify called after Handler finished" : stdgo.GoString));
        };
        _rws._closeNotifierMu.lock();
        var _ch = _rws._closeNotifierCh;
        if (_ch == null) {
            _ch = (new stdgo.Chan<Bool>((1 : stdgo.GoInt).toBasic(), () -> false) : stdgo.Chan<Bool>);
            _rws._closeNotifierCh = _ch;
            var _cw = (_rws._stream._cw : stdgo._internal.net.http.Http_T_http2closeWaiter.T_http2closeWaiter);
            stdgo.Go.routine(() -> {
                var a = function():Void {
                    _cw.wait_();
                    _ch.__send__(true);
                };
                a();
            });
        };
        _rws._closeNotifierMu.unlock();
        return _ch;
    }
    @:keep
    static public function flushError( _w:stdgo.Ref<stdgo._internal.net.http.Http_T_http2responseWriter.T_http2responseWriter>):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_T_http2responseWriter.T_http2responseWriter> = _w;
        var _rws = _w._rws;
        if (_rws == null || (_rws : Dynamic).__nil__) {
            throw stdgo.Go.toInterface(("Header called after Handler finished" : stdgo.GoString));
        };
        var _err:stdgo.Error = (null : stdgo.Error);
        if ((_rws._bw.buffered() > (0 : stdgo.GoInt) : Bool)) {
            _err = _rws._bw.flush();
        } else {
            {
                var __tmp__ = (new stdgo._internal.net.http.Http_T_http2chunkWriter.T_http2chunkWriter(_rws) : stdgo._internal.net.http.Http_T_http2chunkWriter.T_http2chunkWriter).write((null : stdgo.Slice<stdgo.GoUInt8>));
                _err = __tmp__._1;
            };
            if (_err == null) {
                {
                    var __select__ = true;
                    while (__select__) {
                        if (_rws._stream._cw != null && _rws._stream._cw.__isGet__()) {
                            __select__ = false;
                            {
                                _rws._stream._cw.__get__();
                                {
                                    _err = _rws._stream._closeErr;
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
        };
        return _err;
    }
    @:keep
    static public function flush( _w:stdgo.Ref<stdgo._internal.net.http.Http_T_http2responseWriter.T_http2responseWriter>):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_T_http2responseWriter.T_http2responseWriter> = _w;
        _w.flushError();
    }
    @:keep
    static public function setWriteDeadline( _w:stdgo.Ref<stdgo._internal.net.http.Http_T_http2responseWriter.T_http2responseWriter>, _deadline:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_T_http2responseWriter.T_http2responseWriter> = _w;
        var _st = _w._rws._stream;
        if ((!_deadline.isZero() && _deadline.before(stdgo._internal.time.Time_now.now()?.__copy__()) : Bool)) {
            _st._onWriteTimeout();
            return (null : stdgo.Error);
        };
        _w._rws._conn._sendServeMsg(stdgo.Go.toInterface(function(_sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn>):Void {
            if (_st._writeDeadline != null && ((_st._writeDeadline : Dynamic).__nil__ == null || !(_st._writeDeadline : Dynamic).__nil__)) {
                if (!_st._writeDeadline.stop()) {
                    return;
                };
            };
            if (_deadline.isZero()) {
                _st._writeDeadline = null;
            } else if (_st._writeDeadline == null || (_st._writeDeadline : Dynamic).__nil__) {
                _st._writeDeadline = stdgo._internal.time.Time_afterFunc.afterFunc(_deadline.sub(stdgo._internal.time.Time_now.now()?.__copy__()), _st._onWriteTimeout);
            } else {
                _st._writeDeadline.reset(_deadline.sub(stdgo._internal.time.Time_now.now()?.__copy__()));
            };
        }));
        return (null : stdgo.Error);
    }
    @:keep
    static public function setReadDeadline( _w:stdgo.Ref<stdgo._internal.net.http.Http_T_http2responseWriter.T_http2responseWriter>, _deadline:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_T_http2responseWriter.T_http2responseWriter> = _w;
        var _st = _w._rws._stream;
        if ((!_deadline.isZero() && _deadline.before(stdgo._internal.time.Time_now.now()?.__copy__()) : Bool)) {
            _st._onReadTimeout();
            return (null : stdgo.Error);
        };
        _w._rws._conn._sendServeMsg(stdgo.Go.toInterface(function(_sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn>):Void {
            if (_st._readDeadline != null && ((_st._readDeadline : Dynamic).__nil__ == null || !(_st._readDeadline : Dynamic).__nil__)) {
                if (!_st._readDeadline.stop()) {
                    return;
                };
            };
            if (_deadline.isZero()) {
                _st._readDeadline = null;
            } else if (_st._readDeadline == null || (_st._readDeadline : Dynamic).__nil__) {
                _st._readDeadline = stdgo._internal.time.Time_afterFunc.afterFunc(_deadline.sub(stdgo._internal.time.Time_now.now()?.__copy__()), _st._onReadTimeout);
            } else {
                _st._readDeadline.reset(_deadline.sub(stdgo._internal.time.Time_now.now()?.__copy__()));
            };
        }));
        return (null : stdgo.Error);
    }
}
