package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_response_asInterface) class T_response_static_extension {
    @:keep
    static public function closeNotify( _w:stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response>):stdgo.Chan<Bool> {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response> = _w;
        if (_w._handlerDone.load()) {
            throw stdgo.Go.toInterface(("net/http: CloseNotify called after ServeHTTP finished" : stdgo.GoString));
        };
        return _w._closeNotifyCh;
    }
    @:keep
    static public function hijack( _w:stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response>):{ var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Ref<stdgo._internal.bufio.Bufio_ReadWriter.ReadWriter>; var _2 : stdgo.Error; } {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response> = _w;
        var __deferstack__:Array<Void -> Void> = [];
        var _rwc = (null : stdgo._internal.net.Net_Conn.Conn), _buf = (null : stdgo.Ref<stdgo._internal.bufio.Bufio_ReadWriter.ReadWriter>), _err = (null : stdgo.Error);
        try {
            if (_w._handlerDone.load()) {
                throw stdgo.Go.toInterface(("net/http: Hijack called after ServeHTTP finished" : stdgo.GoString));
            };
            if (_w._wroteHeader) {
                _w._cw._flush();
            };
            var _c = _w._conn;
            _c._mu.lock();
            __deferstack__.unshift(() -> _c._mu.unlock());
            {
                var __tmp__ = _c._hijackLocked();
                _rwc = __tmp__._0;
                _buf = __tmp__._1;
                _err = __tmp__._2;
            };
            if (_err == null) {
                stdgo._internal.net.http.Http__putBufioWriter._putBufioWriter(_w._w);
                _w._w = null;
            };
            {
                final __ret__:{ var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Ref<stdgo._internal.bufio.Bufio_ReadWriter.ReadWriter>; var _2 : stdgo.Error; } = { _0 : _rwc, _1 : _buf, _2 : _err };
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:{ var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Ref<stdgo._internal.bufio.Bufio_ReadWriter.ReadWriter>; var _2 : stdgo.Error; } = { _0 : _rwc, _1 : _buf, _2 : _err };
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
            final __ret__:{ var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Ref<stdgo._internal.bufio.Bufio_ReadWriter.ReadWriter>; var _2 : stdgo.Error; } = { _0 : _rwc, _1 : _buf, _2 : _err };
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
    @:keep
    static public function _sendExpectationFailed( _w:stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response>):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response> = _w;
        _w._req.header().set(("Connection" : stdgo.GoString), ("close" : stdgo.GoString));
        _w.writeHeader((417 : stdgo.GoInt));
        _w._finishRequest();
    }
    @:keep
    static public function flushError( _w:stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response>):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response> = _w;
        if (!_w._wroteHeader) {
            _w.writeHeader((200 : stdgo.GoInt));
        };
        var _err = (_w._w.flush() : stdgo.Error);
        var _e2 = (_w._cw._flush() : stdgo.Error);
        if (_err == null) {
            _err = _e2;
        };
        return _err;
    }
    @:keep
    static public function flush( _w:stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response>):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response> = _w;
        _w.flushError();
    }
    @:keep
    static public function _closedRequestBodyEarly( _w:stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response>):Bool {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response> = _w;
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_w._req.body) : stdgo.Ref<stdgo._internal.net.http.Http_T_body.T_body>)) : stdgo.Ref<stdgo._internal.net.http.Http_T_body.T_body>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.net.http.Http_T_body.T_body>), _1 : false };
        }, _body = __tmp__._0, _ok = __tmp__._1;
        return (_ok && _body._didEarlyClose() : Bool);
    }
    @:keep
    static public function _shouldReuseConnection( _w:stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response>):Bool {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response> = _w;
        if (_w._closeAfterReply) {
            return false;
        };
        if ((((_w._req.method != (("HEAD" : stdgo.GoString)) && _w._contentLength != ((-1i64 : stdgo.GoInt64)) : Bool) && _w._bodyAllowed() : Bool) && (_w._contentLength != _w._written) : Bool)) {
            return false;
        };
        if (_w._conn._werr != null) {
            return false;
        };
        if (_w._closedRequestBodyEarly()) {
            return false;
        };
        return true;
    }
    @:keep
    static public function _finishRequest( _w:stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response>):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response> = _w;
        _w._handlerDone.store(true);
        if (!_w._wroteHeader) {
            _w.writeHeader((200 : stdgo.GoInt));
        };
        _w._w.flush();
        stdgo._internal.net.http.Http__putBufioWriter._putBufioWriter(_w._w);
        _w._cw._close();
        _w._conn._bufw.flush();
        _w._conn._r._abortPendingRead();
        _w._reqBody.close();
        if (_w._req.multipartForm != null && ((_w._req.multipartForm : Dynamic).__nil__ == null || !(_w._req.multipartForm : Dynamic).__nil__)) {
            _w._req.multipartForm.removeAll();
        };
    }
    @:keep
    static public function _write( _w:stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response>, _lenData:stdgo.GoInt, _dataB:stdgo.Slice<stdgo.GoUInt8>, _dataS:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response> = _w;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if (_w._conn._hijacked()) {
            if ((_lenData > (0 : stdgo.GoInt) : Bool)) {
                var _caller = (stdgo._internal.net.http.Http__relevantCaller._relevantCaller()?.__copy__() : stdgo._internal.runtime.Runtime_Frame.Frame);
                _w._conn._server._logf(("http: response.Write on hijacked connection from %s (%s:%d)" : stdgo.GoString), stdgo.Go.toInterface(_caller.function_), stdgo.Go.toInterface(stdgo._internal.path.Path_base.base(_caller.file?.__copy__())), stdgo.Go.toInterface(_caller.line));
            };
            return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.net.http.Http_errHijacked.errHijacked };
        };
        if (_w._canWriteContinue.load()) {
            _w._writeContinueMu.lock();
            _w._canWriteContinue.store(false);
            _w._writeContinueMu.unlock();
        };
        if (!_w._wroteHeader) {
            _w.writeHeader((200 : stdgo.GoInt));
        };
        if (_lenData == ((0 : stdgo.GoInt))) {
            return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Error) };
        };
        if (!_w._bodyAllowed()) {
            return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.net.http.Http_errBodyNotAllowed.errBodyNotAllowed };
        };
        _w._written = (_w._written + ((_lenData : stdgo.GoInt64)) : stdgo.GoInt64);
        if (((_w._contentLength != (-1i64 : stdgo.GoInt64)) && (_w._written > _w._contentLength : Bool) : Bool)) {
            return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.net.http.Http_errContentLength.errContentLength };
        };
        if (_dataB != null) {
            return _w._w.write(_dataB);
        } else {
            return _w._w.writeString(_dataS?.__copy__());
        };
    }
    @:keep
    static public function writeString( _w:stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response>, _data:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response> = _w;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        return _w._write((_data.length), (null : stdgo.Slice<stdgo.GoUInt8>), _data?.__copy__());
    }
    @:keep
    static public function write( _w:stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response>, _data:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response> = _w;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        return _w._write((_data.length), _data, stdgo.Go.str()?.__copy__());
    }
    @:keep
    static public function _bodyAllowed( _w:stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response>):Bool {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response> = _w;
        if (!_w._wroteHeader) {
            throw stdgo.Go.toInterface(stdgo.Go.str());
        };
        return stdgo._internal.net.http.Http__bodyAllowedForStatus._bodyAllowedForStatus(_w._status);
    }
    @:keep
    static public function writeHeader( _w:stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response>, _code:stdgo.GoInt):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response> = _w;
        if (_w._conn._hijacked()) {
            var _caller = (stdgo._internal.net.http.Http__relevantCaller._relevantCaller()?.__copy__() : stdgo._internal.runtime.Runtime_Frame.Frame);
            _w._conn._server._logf(("http: response.WriteHeader on hijacked connection from %s (%s:%d)" : stdgo.GoString), stdgo.Go.toInterface(_caller.function_), stdgo.Go.toInterface(stdgo._internal.path.Path_base.base(_caller.file?.__copy__())), stdgo.Go.toInterface(_caller.line));
            return;
        };
        if (_w._wroteHeader) {
            var _caller = (stdgo._internal.net.http.Http__relevantCaller._relevantCaller()?.__copy__() : stdgo._internal.runtime.Runtime_Frame.Frame);
            _w._conn._server._logf(("http: superfluous response.WriteHeader call from %s (%s:%d)" : stdgo.GoString), stdgo.Go.toInterface(_caller.function_), stdgo.Go.toInterface(stdgo._internal.path.Path_base.base(_caller.file?.__copy__())), stdgo.Go.toInterface(_caller.line));
            return;
        };
        stdgo._internal.net.http.Http__checkWriteHeaderCode._checkWriteHeaderCode(_code);
        if ((((_code >= (100 : stdgo.GoInt) : Bool) && (_code <= (199 : stdgo.GoInt) : Bool) : Bool) && (_code != (101 : stdgo.GoInt)) : Bool)) {
            if (((_code == (100 : stdgo.GoInt)) && _w._canWriteContinue.load() : Bool)) {
                _w._writeContinueMu.lock();
                _w._canWriteContinue.store(false);
                _w._writeContinueMu.unlock();
            };
            stdgo._internal.net.http.Http__writeStatusLine._writeStatusLine(_w._conn._bufw, _w._req.protoAtLeast((1 : stdgo.GoInt), (1 : stdgo.GoInt)), _code, (_w._statusBuf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
            _w._handlerHeader.writeSubset(stdgo.Go.asInterface(_w._conn._bufw), stdgo._internal.net.http.Http__excludedHeadersNoBody._excludedHeadersNoBody);
            _w._conn._bufw.write(stdgo._internal.net.http.Http__crlf._crlf);
            _w._conn._bufw.flush();
            return;
        };
        _w._wroteHeader = true;
        _w._status = _code;
        if ((_w._calledHeader && (_w._cw._header == null) : Bool)) {
            _w._cw._header = _w._handlerHeader.clone();
        };
        {
            var _cl = (_w._handlerHeader._get(("Content-Length" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            if (_cl != (stdgo.Go.str())) {
                var __tmp__ = stdgo._internal.strconv.Strconv_parseInt.parseInt(_cl?.__copy__(), (10 : stdgo.GoInt), (64 : stdgo.GoInt)), _v:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (((_err == null) && (_v >= (0i64 : stdgo.GoInt64) : Bool) : Bool)) {
                    _w._contentLength = _v;
                } else {
                    _w._conn._server._logf(("http: invalid Content-Length of %q" : stdgo.GoString), stdgo.Go.toInterface(_cl));
                    _w._handlerHeader.del(("Content-Length" : stdgo.GoString));
                };
            };
        };
    }
    @:keep
    static public function header( _w:stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response>):stdgo._internal.net.http.Http_Header.Header {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response> = _w;
        if (((_w._cw._header == null && _w._wroteHeader : Bool) && !_w._cw._wroteHeader : Bool)) {
            _w._cw._header = _w._handlerHeader.clone();
        };
        _w._calledHeader = true;
        return _w._handlerHeader;
    }
    @:keep
    static public function readFrom( _w:stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response>, _src:stdgo._internal.io.Io_Reader.Reader):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response> = _w;
        var __deferstack__:Array<Void -> Void> = [];
        var _n = (0 : stdgo.GoInt64), _err = (null : stdgo.Error);
        try {
            var _bufp = (stdgo.Go.typeAssert((stdgo._internal.net.http.Http__copyBufPool._copyBufPool.get() : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>);
            var _buf = (_bufp : stdgo.Slice<stdgo.GoUInt8>);
            {
                var _a0 = _bufp;
                __deferstack__.unshift(() -> stdgo._internal.net.http.Http__copyBufPool._copyBufPool.put(stdgo.Go.toInterface(_a0)));
            };
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_w._conn._rwc) : stdgo._internal.io.Io_ReaderFrom.ReaderFrom)) : stdgo._internal.io.Io_ReaderFrom.ReaderFrom), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.io.Io_ReaderFrom.ReaderFrom), _1 : false };
            }, _rf = __tmp__._0, _ok = __tmp__._1;
            if (!_ok) {
                {
                    final __ret__:{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } = stdgo._internal.io.Io_copyBuffer.copyBuffer(stdgo.Go.asInterface((new stdgo._internal.net.http.Http_T_writerOnly.T_writerOnly(stdgo.Go.asInterface(_w)) : stdgo._internal.net.http.Http_T_writerOnly.T_writerOnly)), _src, _buf);
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            if (!_w._cw._wroteHeader) {
                var __tmp__ = stdgo._internal.io.Io_copyBuffer.copyBuffer(stdgo.Go.asInterface((new stdgo._internal.net.http.Http_T_writerOnly.T_writerOnly(stdgo.Go.asInterface(_w)) : stdgo._internal.net.http.Http_T_writerOnly.T_writerOnly)), stdgo._internal.io.Io_limitReader.limitReader(_src, (512i64 : stdgo.GoInt64)), _buf), _n0:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                _n = (_n + (_n0) : stdgo.GoInt64);
                if (((_err != null) || (_n0 < (512i64 : stdgo.GoInt64) : Bool) : Bool)) {
                    {
                        final __ret__:{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : _err };
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return __ret__;
                    };
                };
            };
            _w._w.flush();
            _w._cw._flush();
            if ((!_w._cw._chunking && _w._bodyAllowed() : Bool)) {
                var __tmp__ = _rf.readFrom(_src), _n0:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                _n = (_n + (_n0) : stdgo.GoInt64);
                _w._written = (_w._written + (_n0) : stdgo.GoInt64);
                {
                    final __ret__:{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : _err };
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            var __tmp__ = stdgo._internal.io.Io_copyBuffer.copyBuffer(stdgo.Go.asInterface((new stdgo._internal.net.http.Http_T_writerOnly.T_writerOnly(stdgo.Go.asInterface(_w)) : stdgo._internal.net.http.Http_T_writerOnly.T_writerOnly)), _src, _buf), _n0:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            _n = (_n + (_n0) : stdgo.GoInt64);
            {
                final __ret__:{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : _err };
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : _err };
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
            final __ret__:{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : _err };
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
    @:keep
    static public function _requestTooLarge( _w:stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response>):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response> = _w;
        _w._closeAfterReply = true;
        _w._requestBodyLimitHit = true;
        if (!_w._wroteHeader) {
            _w._req.header().set(("Connection" : stdgo.GoString), ("close" : stdgo.GoString));
        };
    }
    @:keep
    static public function _declareTrailer( _w:stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response>, _k:stdgo.GoString):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response> = _w;
        _k = stdgo._internal.net.http.Http_canonicalHeaderKey.canonicalHeaderKey(_k?.__copy__())?.__copy__();
        if (!_internal.golang_dot_org.x.net.http.httpguts.Httpguts_validTrailerHeader.validTrailerHeader(_k?.__copy__())) {
            return;
        };
        _w._trailers = (_w._trailers.__append__(_k?.__copy__()));
    }
    @:keep
    static public function _finalTrailers( _w:stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response>):stdgo._internal.net.http.Http_Header.Header {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response> = _w;
        var _t:stdgo._internal.net.http.Http_Header.Header = (null : stdgo._internal.net.http.Http_Header.Header);
        for (_k => _vv in _w._handlerHeader) {
            {
                var __tmp__ = stdgo._internal.strings.Strings_cutPrefix.cutPrefix(_k?.__copy__(), ("Trailer:" : stdgo.GoString)), _kk:stdgo.GoString = __tmp__._0, _found:Bool = __tmp__._1;
                if (_found) {
                    if (_t == null) {
                        _t = (({
                            final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
                            x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
                            {};
                            x;
                        } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.http.Http_Header.Header);
                    };
                    _t[_kk] = _vv;
                };
            };
        };
        for (__34251 => _k in _w._trailers) {
            if (_t == null) {
                _t = (({
                    final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
                    x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
                    {};
                    x;
                } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.http.Http_Header.Header);
            };
            for (__34286 => _v in (_w._handlerHeader[_k] ?? (null : stdgo.Slice<stdgo.GoString>))) {
                _t.add(_k?.__copy__(), _v?.__copy__());
            };
        };
        return _t;
    }
    @:keep
    static public function enableFullDuplex( _c:stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response> = _c;
        _c._fullDuplex = true;
        return (null : stdgo.Error);
    }
    @:keep
    static public function setWriteDeadline( _c:stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response>, _deadline:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response> = _c;
        return _c._conn._rwc.setWriteDeadline(_deadline?.__copy__());
    }
    @:keep
    static public function setReadDeadline( _c:stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response>, _deadline:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response> = _c;
        return _c._conn._rwc.setReadDeadline(_deadline?.__copy__());
    }
}
