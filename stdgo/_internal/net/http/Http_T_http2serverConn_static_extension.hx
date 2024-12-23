package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2serverConn_asInterface) class T_http2serverConn_static_extension {
    @:keep
    static public function _countError( _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn>, _name:stdgo.GoString, _err:stdgo.Error):stdgo.Error {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn> = _sc;
        if (((_sc == null || (_sc : Dynamic).__nil__) || (_sc._srv == null || (_sc._srv : Dynamic).__nil__) : Bool)) {
            return _err;
        };
        var _f = (_sc._srv.countError : stdgo.GoString -> Void);
        if (_f == null) {
            return _err;
        };
        var _typ:stdgo.GoString = ("" : stdgo.GoString);
        var _code:stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode = ((0 : stdgo.GoUInt32) : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode);
        {
            final __type__ = _err;
            if (stdgo.Go.typeEquals((__type__ : stdgo._internal.net.http.Http_T_http2ConnectionError.T_http2ConnectionError))) {
                var _e:stdgo._internal.net.http.Http_T_http2ConnectionError.T_http2ConnectionError = __type__ == null ? ((0 : stdgo.GoUInt32) : stdgo._internal.net.http.Http_T_http2ConnectionError.T_http2ConnectionError) : __type__.__underlying__() == null ? ((0 : stdgo.GoUInt32) : stdgo._internal.net.http.Http_T_http2ConnectionError.T_http2ConnectionError) : __type__ == null ? ((0 : stdgo.GoUInt32) : stdgo._internal.net.http.Http_T_http2ConnectionError.T_http2ConnectionError) : __type__.__underlying__().value;
                _typ = ("conn" : stdgo.GoString);
                _code = (_e : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.net.http.Http_T_http2StreamError.T_http2StreamError))) {
                var _e:stdgo._internal.net.http.Http_T_http2StreamError.T_http2StreamError = __type__ == null ? ({} : stdgo._internal.net.http.Http_T_http2StreamError.T_http2StreamError) : __type__.__underlying__() == null ? ({} : stdgo._internal.net.http.Http_T_http2StreamError.T_http2StreamError) : __type__ == null ? ({} : stdgo._internal.net.http.Http_T_http2StreamError.T_http2StreamError) : __type__.__underlying__().value;
                _typ = ("stream" : stdgo.GoString);
                _code = (_e.code : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode);
            } else {
                var _e:stdgo.Error = __type__ == null ? (null : stdgo.Error) : cast __type__;
                return _err;
            };
        };
        var _codeStr = ((stdgo._internal.net.http.Http__http2errCodeName._http2errCodeName[_code] ?? ("" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        if (_codeStr == (stdgo.Go.str())) {
            _codeStr = stdgo._internal.strconv.Strconv_itoa.itoa((_code : stdgo.GoInt))?.__copy__();
        };
        _f(stdgo._internal.fmt.Fmt_sprintf.sprintf(("%s_%s_%s" : stdgo.GoString), stdgo.Go.toInterface(_typ), stdgo.Go.toInterface(_codeStr), stdgo.Go.toInterface(_name))?.__copy__());
        return _err;
    }
    @:keep
    static public function _startPush( _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn>, _msg:stdgo.Ref<stdgo._internal.net.http.Http_T_http2startPushRequest.T_http2startPushRequest>):Void {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn> = _sc;
        _sc._serveG._check();
        if (((_msg._parent._state != (1 : stdgo._internal.net.http.Http_T_http2streamState.T_http2streamState)) && (_msg._parent._state != (3 : stdgo._internal.net.http.Http_T_http2streamState.T_http2streamState)) : Bool)) {
            _msg._done.__send__(stdgo._internal.net.http.Http__http2errStreamClosed._http2errStreamClosed);
            return;
        };
        if (!_sc._pushEnabled) {
            _msg._done.__send__(stdgo._internal.net.http.Http_errNotSupported.errNotSupported);
            return;
        };
        var _allocatePromisedID = (function():{ var _0 : stdgo.GoUInt32; var _1 : stdgo.Error; } {
            _sc._serveG._check();
            if (!_sc._pushEnabled) {
                return { _0 : (0u32 : stdgo.GoUInt32), _1 : stdgo.Go.asInterface(stdgo._internal.net.http.Http_errNotSupported.errNotSupported) };
            };
            if (((_sc._curPushedStreams + (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) > _sc._clientMaxStreams : Bool)) {
                return { _0 : (0u32 : stdgo.GoUInt32), _1 : stdgo._internal.net.http.Http__http2ErrPushLimitReached._http2ErrPushLimitReached };
            };
            if (((_sc._maxPushPromiseID + (2u32 : stdgo.GoUInt32) : stdgo.GoUInt32) >= (-2147483648u32 : stdgo.GoUInt32) : Bool)) {
                _sc._startGracefulShutdownInternal();
                return { _0 : (0u32 : stdgo.GoUInt32), _1 : stdgo._internal.net.http.Http__http2ErrPushLimitReached._http2ErrPushLimitReached };
            };
            _sc._maxPushPromiseID = (_sc._maxPushPromiseID + ((2u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
            var _promisedID = (_sc._maxPushPromiseID : stdgo.GoUInt32);
            var _promised = _sc._newStream(_promisedID, _msg._parent._id, (3 : stdgo._internal.net.http.Http_T_http2streamState.T_http2streamState));
            var __tmp__ = _sc._newWriterAndRequestNoBody(_promised, ({ _method : _msg._method?.__copy__(), _scheme : _msg._url.scheme?.__copy__(), _authority : _msg._url.host?.__copy__(), _path : _msg._url.requestURI()?.__copy__(), _header : stdgo._internal.net.http.Http__http2cloneHeader._http2cloneHeader(_msg._header) } : stdgo._internal.net.http.Http_T_http2requestParam.T_http2requestParam)), _rw:stdgo.Ref<stdgo._internal.net.http.Http_T_http2responseWriter.T_http2responseWriter> = __tmp__._0, _req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (_err != null) {
                throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("newWriterAndRequestNoBody(%+v): %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_msg._url)), stdgo.Go.toInterface(_err)));
            };
            stdgo.Go.routine(() -> _sc._runHandler(_rw, _req, _sc._handler.serveHTTP));
            return { _0 : _promisedID, _1 : (null : stdgo.Error) };
        } : () -> { var _0 : stdgo.GoUInt32; var _1 : stdgo.Error; });
        _sc._writeFrame(({ _write : stdgo.Go.asInterface((stdgo.Go.setRef(({ _streamID : _msg._parent._id, _method : _msg._method?.__copy__(), _url : _msg._url, _h : _msg._header, _allocatePromisedID : _allocatePromisedID } : stdgo._internal.net.http.Http_T_http2writePushPromise.T_http2writePushPromise)) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2writePushPromise.T_http2writePushPromise>)), _stream : _msg._parent, _done : _msg._done } : stdgo._internal.net.http.Http_T_http2FrameWriteRequest.T_http2FrameWriteRequest));
    }
    @:keep
    static public function _sendWindowUpdate( _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn>, _st:stdgo.Ref<stdgo._internal.net.http.Http_T_http2stream.T_http2stream>, _n:stdgo.GoInt):Void {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn> = _sc;
        _sc._serveG._check();
        var _streamID:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _send:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        if ((_st == null || (_st : Dynamic).__nil__)) {
            _send = _sc._inflow._add(_n);
        } else {
            _streamID = _st._id;
            _send = _st._inflow._add(_n);
        };
        if (_send == ((0 : stdgo.GoInt32))) {
            return;
        };
        _sc._writeFrame(({ _write : stdgo.Go.asInterface(({ _streamID : _streamID, _n : (_send : stdgo.GoUInt32) } : stdgo._internal.net.http.Http_T_http2writeWindowUpdate.T_http2writeWindowUpdate)), _stream : _st } : stdgo._internal.net.http.Http_T_http2FrameWriteRequest.T_http2FrameWriteRequest));
    }
    @:keep
    static public function _sendWindowUpdate32( _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn>, _st:stdgo.Ref<stdgo._internal.net.http.Http_T_http2stream.T_http2stream>, _n:stdgo.GoInt32):Void {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn> = _sc;
        _sc._sendWindowUpdate(_st, (_n : stdgo.GoInt));
    }
    @:keep
    static public function _noteBodyRead( _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn>, _st:stdgo.Ref<stdgo._internal.net.http.Http_T_http2stream.T_http2stream>, _n:stdgo.GoInt):Void {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn> = _sc;
        _sc._serveG._check();
        _sc._sendWindowUpdate(null, _n);
        if (((_st._state != (3 : stdgo._internal.net.http.Http_T_http2streamState.T_http2streamState)) && (_st._state != (4 : stdgo._internal.net.http.Http_T_http2streamState.T_http2streamState)) : Bool)) {
            _sc._sendWindowUpdate(_st, _n);
        };
    }
    @:keep
    static public function _noteBodyReadFromHandler( _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn>, _st:stdgo.Ref<stdgo._internal.net.http.Http_T_http2stream.T_http2stream>, _n:stdgo.GoInt, _err:stdgo.Error):Void {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn> = _sc;
        _sc._serveG._checkNotOn();
        if ((_n > (0 : stdgo.GoInt) : Bool)) {
            {
                var __select__ = true;
                while (__select__) {
                    if (_sc._bodyReadCh != null && _sc._bodyReadCh.__isSend__()) {
                        __select__ = false;
                        {
                            _sc._bodyReadCh.__send__((new stdgo._internal.net.http.Http_T_http2bodyReadMsg.T_http2bodyReadMsg(_st, _n) : stdgo._internal.net.http.Http_T_http2bodyReadMsg.T_http2bodyReadMsg));
                            {};
                        };
                    } else if (_sc._doneServing != null && _sc._doneServing.__isGet__()) {
                        __select__ = false;
                        {
                            _sc._doneServing.__get__();
                            {};
                        };
                    };
                    #if !js Sys.sleep(0.01) #else null #end;
                    stdgo._internal.internal.Async.tick();
                };
            };
        };
    }
    @:keep
    static public function _write100ContinueHeaders( _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn>, _st:stdgo.Ref<stdgo._internal.net.http.Http_T_http2stream.T_http2stream>):Void {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn> = _sc;
        _sc._writeFrameFromHandler(({ _write : stdgo.Go.asInterface((new stdgo._internal.net.http.Http_T_http2write100ContinueHeadersFrame.T_http2write100ContinueHeadersFrame(_st._id) : stdgo._internal.net.http.Http_T_http2write100ContinueHeadersFrame.T_http2write100ContinueHeadersFrame)), _stream : _st } : stdgo._internal.net.http.Http_T_http2FrameWriteRequest.T_http2FrameWriteRequest));
    }
    @:keep
    static public function _writeHeaders( _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn>, _st:stdgo.Ref<stdgo._internal.net.http.Http_T_http2stream.T_http2stream>, _headerData:stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeResHeaders.T_http2writeResHeaders>):stdgo.Error {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn> = _sc;
        _sc._serveG._checkNotOn();
        var _errc:stdgo.Chan<stdgo.Error> = (null : stdgo.Chan<stdgo.Error>);
        if (_headerData._h != null) {
            _errc = (stdgo.Go.typeAssert((stdgo._internal.net.http.Http__http2errChanPool._http2errChanPool.get() : stdgo.Chan<stdgo.Error>)) : stdgo.Chan<stdgo.Error>);
        };
        {
            var _err = (_sc._writeFrameFromHandler(({ _write : stdgo.Go.asInterface(_headerData), _stream : _st, _done : _errc } : stdgo._internal.net.http.Http_T_http2FrameWriteRequest.T_http2FrameWriteRequest)) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        if (_errc != null) {
            {
                {
                    var __select__ = true;
                    while (__select__) {
                        if (_errc != null && _errc.__isGet__()) {
                            __select__ = false;
                            {
                                var _err = _errc.__get__();
                                {
                                    stdgo._internal.net.http.Http__http2errChanPool._http2errChanPool.put(stdgo.Go.toInterface(_errc));
                                    return _err;
                                };
                            };
                        } else if (_sc._doneServing != null && _sc._doneServing.__isGet__()) {
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
                        };
                        #if !js Sys.sleep(0.01) #else null #end;
                        stdgo._internal.internal.Async.tick();
                    };
                };
                return (null : stdgo.Error);
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function _runHandler( _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn>, _rw:stdgo.Ref<stdgo._internal.net.http.Http_T_http2responseWriter.T_http2responseWriter>, _req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, _handler:(stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>) -> Void):Void {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn> = _sc;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {
                var _a0 = stdgo._internal.net.http.Http__http2handlerDoneMsg._http2handlerDoneMsg;
                final __f__ = _sc._sendServeMsg;
                __deferstack__.unshift(() -> __f__(stdgo.Go.toInterface(_a0)));
            };
            var _didPanic = (true : Bool);
            {
                __deferstack__.unshift(() -> ({
                    var a = function():Void {
                        _rw._rws._stream._cancelCtx();
                        if ((_req.multipartForm != null && ((_req.multipartForm : Dynamic).__nil__ == null || !(_req.multipartForm : Dynamic).__nil__))) {
                            _req.multipartForm.removeAll();
                        };
                        if (_didPanic) {
                            var _e = ({
                                final r = stdgo.Go.recover_exception;
                                stdgo.Go.recover_exception = null;
                                r;
                            } : stdgo.AnyInterface);
                            _sc._writeFrameFromHandler(({ _write : stdgo.Go.asInterface((new stdgo._internal.net.http.Http_T_http2handlerPanicRST.T_http2handlerPanicRST(_rw._rws._stream._id) : stdgo._internal.net.http.Http_T_http2handlerPanicRST.T_http2handlerPanicRST)), _stream : _rw._rws._stream } : stdgo._internal.net.http.Http_T_http2FrameWriteRequest.T_http2FrameWriteRequest));
                            if (((_e != null) && (_e != stdgo.Go.toInterface(stdgo._internal.net.http.Http_errAbortHandler.errAbortHandler)) : Bool)) {
                                {};
                                var _buf = (new stdgo.Slice<stdgo.GoUInt8>((65536 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                                _buf = (_buf.__slice__(0, stdgo._internal.runtime.Runtime_stack.stack(_buf, false)) : stdgo.Slice<stdgo.GoUInt8>);
                                _sc._logf(("http2: panic serving %v: %v\n%s" : stdgo.GoString), stdgo.Go.toInterface(_sc._conn.remoteAddr()), _e, stdgo.Go.toInterface(_buf));
                            };
                            return;
                        };
                        _rw._handlerDone();
                    };
                    a();
                }));
            };
            _handler(stdgo.Go.asInterface(_rw), _req);
            _didPanic = false;
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
    static public function _handlerDone( _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn>):Void {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn> = _sc;
        _sc._serveG._check();
        _sc._curHandlers--;
        var _i = (0 : stdgo.GoInt);
        var _maxHandlers = (_sc._advMaxStreams : stdgo.GoUInt32);
        while ((_i < (_sc._unstartedHandlers.length) : Bool)) {
            var _u = (_sc._unstartedHandlers[(_i : stdgo.GoInt)] : stdgo._internal.net.http.Http_T_http2unstartedHandler.T_http2unstartedHandler);
if (((_sc._streams[_u._streamID] ?? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2stream.T_http2stream>)) == null || (_sc._streams[_u._streamID] ?? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2stream.T_http2stream>) : Dynamic).__nil__)) {
                {
                    _i++;
                    continue;
                };
            };
if ((_sc._curHandlers >= _maxHandlers : Bool)) {
                break;
            };
_sc._curHandlers++;
stdgo.Go.routine(() -> _sc._runHandler(_u._rw, _u._req, _u._handler));
_sc._unstartedHandlers[(_i : stdgo.GoInt)] = (new stdgo._internal.net.http.Http_T_http2unstartedHandler.T_http2unstartedHandler() : stdgo._internal.net.http.Http_T_http2unstartedHandler.T_http2unstartedHandler);
            _i++;
        };
        _sc._unstartedHandlers = (_sc._unstartedHandlers.__slice__(_i) : stdgo.Slice<stdgo._internal.net.http.Http_T_http2unstartedHandler.T_http2unstartedHandler>);
        if ((_sc._unstartedHandlers.length) == ((0 : stdgo.GoInt))) {
            _sc._unstartedHandlers = (null : stdgo.Slice<stdgo._internal.net.http.Http_T_http2unstartedHandler.T_http2unstartedHandler>);
        };
    }
    @:keep
    static public function _scheduleHandler( _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn>, _streamID:stdgo.GoUInt32, _rw:stdgo.Ref<stdgo._internal.net.http.Http_T_http2responseWriter.T_http2responseWriter>, _req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, _handler:(stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>) -> Void):stdgo.Error {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn> = _sc;
        _sc._serveG._check();
        var _maxHandlers = (_sc._advMaxStreams : stdgo.GoUInt32);
        if ((_sc._curHandlers < _maxHandlers : Bool)) {
            _sc._curHandlers++;
            stdgo.Go.routine(() -> _sc._runHandler(_rw, _req, _handler));
            return (null : stdgo.Error);
        };
        if (((_sc._unstartedHandlers.length) > (((4u32 : stdgo.GoUInt32) * _sc._advMaxStreams : stdgo.GoUInt32) : stdgo.GoInt) : Bool)) {
            return _sc._countError(("too_many_early_resets" : stdgo.GoString), stdgo.Go.asInterface(((11u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode) : stdgo._internal.net.http.Http_T_http2ConnectionError.T_http2ConnectionError)));
        };
        _sc._unstartedHandlers = (_sc._unstartedHandlers.__append__(({ _streamID : _streamID, _rw : _rw, _req : _req, _handler : _handler } : stdgo._internal.net.http.Http_T_http2unstartedHandler.T_http2unstartedHandler)));
        return (null : stdgo.Error);
    }
    @:keep
    static public function _newResponseWriter( _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn>, _st:stdgo.Ref<stdgo._internal.net.http.Http_T_http2stream.T_http2stream>, _req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):stdgo.Ref<stdgo._internal.net.http.Http_T_http2responseWriter.T_http2responseWriter> {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn> = _sc;
        var _rws = (stdgo.Go.typeAssert((stdgo._internal.net.http.Http__http2responseWriterStatePool._http2responseWriterStatePool.get() : stdgo.Ref<stdgo._internal.net.http.Http_T_http2responseWriterState.T_http2responseWriterState>)) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2responseWriterState.T_http2responseWriterState>);
        var _bwSave = _rws._bw;
        {
            var __tmp__ = (new stdgo._internal.net.http.Http_T_http2responseWriterState.T_http2responseWriterState() : stdgo._internal.net.http.Http_T_http2responseWriterState.T_http2responseWriterState);
            var x = (_rws : stdgo._internal.net.http.Http_T_http2responseWriterState.T_http2responseWriterState);
            x._stream = __tmp__._stream;
            x._req = __tmp__._req;
            x._conn = __tmp__._conn;
            x._bw = __tmp__._bw;
            x._handlerHeader = __tmp__._handlerHeader;
            x._snapHeader = __tmp__._snapHeader;
            x._trailers = __tmp__._trailers;
            x._status = __tmp__._status;
            x._wroteHeader = __tmp__._wroteHeader;
            x._sentHeader = __tmp__._sentHeader;
            x._handlerDone = __tmp__._handlerDone;
            x._dirty = __tmp__._dirty;
            x._sentContentLen = __tmp__._sentContentLen;
            x._wroteBytes = __tmp__._wroteBytes;
            x._closeNotifierMu = __tmp__._closeNotifierMu;
            x._closeNotifierCh = __tmp__._closeNotifierCh;
        };
        _rws._conn = _sc;
        _rws._bw = _bwSave;
        _rws._bw.reset(stdgo.Go.asInterface((new stdgo._internal.net.http.Http_T_http2chunkWriter.T_http2chunkWriter(_rws) : stdgo._internal.net.http.Http_T_http2chunkWriter.T_http2chunkWriter)));
        _rws._stream = _st;
        _rws._req = _req;
        return (stdgo.Go.setRef(({ _rws : _rws } : stdgo._internal.net.http.Http_T_http2responseWriter.T_http2responseWriter)) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2responseWriter.T_http2responseWriter>);
    }
    @:keep
    static public function _newWriterAndRequestNoBody( _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn>, _st:stdgo.Ref<stdgo._internal.net.http.Http_T_http2stream.T_http2stream>, _rp:stdgo._internal.net.http.Http_T_http2requestParam.T_http2requestParam):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_http2responseWriter.T_http2responseWriter>; var _1 : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>; var _2 : stdgo.Error; } {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn> = _sc;
        _sc._serveG._check();
        var _tlsState:stdgo.Ref<stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState>);
        if (_rp._scheme == (("https" : stdgo.GoString))) {
            _tlsState = _sc._tlsState;
        };
        var _needsContinue = (_internal.golang_dot_org.x.net.http.httpguts.Httpguts_headerValuesContainsToken.headerValuesContainsToken((_rp._header[("Expect" : stdgo.GoString)] ?? (null : stdgo.Slice<stdgo.GoString>)), ("100-continue" : stdgo.GoString)) : Bool);
        if (_needsContinue) {
            _rp._header.del(("Expect" : stdgo.GoString));
        };
        {
            var _cookies = (_rp._header[("Cookie" : stdgo.GoString)] ?? (null : stdgo.Slice<stdgo.GoString>));
            if (((_cookies.length) > (1 : stdgo.GoInt) : Bool)) {
                _rp._header.set(("Cookie" : stdgo.GoString), stdgo._internal.strings.Strings_join.join(_cookies, ("; " : stdgo.GoString))?.__copy__());
            };
        };
        var _trailer:stdgo._internal.net.http.Http_Header.Header = (null : stdgo._internal.net.http.Http_Header.Header);
        for (__31592 => _v in (_rp._header[("Trailer" : stdgo.GoString)] ?? (null : stdgo.Slice<stdgo.GoString>))) {
            for (__31593 => _key in stdgo._internal.strings.Strings_split.split(_v?.__copy__(), ("," : stdgo.GoString))) {
                _key = stdgo._internal.net.http.Http_canonicalHeaderKey.canonicalHeaderKey(stdgo._internal.net.textproto.Textproto_trimString.trimString(_key?.__copy__())?.__copy__())?.__copy__();
                {
                    final __value__ = _key;
                    if (__value__ == (("Transfer-Encoding" : stdgo.GoString)) || __value__ == (("Trailer" : stdgo.GoString)) || __value__ == (("Content-Length" : stdgo.GoString))) {} else {
                        if (_trailer == null) {
                            _trailer = (({
                                final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
                                x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
                                {};
                                x;
                            } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.http.Http_Header.Header);
                        };
                        _trailer[_key] = (null : stdgo.Slice<stdgo.GoString>);
                    };
                };
            };
        };
        if (_rp._header != null) _rp._header.remove(("Trailer" : stdgo.GoString));
        var _url_:stdgo.Ref<stdgo._internal.net.url.Url_URL.URL> = (null : stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>);
        var _requestURI:stdgo.GoString = ("" : stdgo.GoString);
        if (_rp._method == (("CONNECT" : stdgo.GoString))) {
            _url_ = (stdgo.Go.setRef(({ host : _rp._authority?.__copy__() } : stdgo._internal.net.url.Url_URL.URL)) : stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>);
            _requestURI = _rp._authority?.__copy__();
        } else {
            var _err:stdgo.Error = (null : stdgo.Error);
            {
                var __tmp__ = stdgo._internal.net.url.Url_parseRequestURI.parseRequestURI(_rp._path?.__copy__());
                _url_ = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : null, _1 : null, _2 : _sc._countError(("bad_path" : stdgo.GoString), stdgo.Go.asInterface(stdgo._internal.net.http.Http__http2streamError._http2streamError(_st._id, (1u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode)))) };
            };
            _requestURI = _rp._path?.__copy__();
        };
        var _body = (stdgo.Go.setRef(({ _conn : _sc, _stream : _st, _needsContinue : _needsContinue } : stdgo._internal.net.http.Http_T_http2requestBody.T_http2requestBody)) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2requestBody.T_http2requestBody>);
        var _req = (stdgo.Go.setRef(({ method : _rp._method?.__copy__(), url : _url_, remoteAddr : _sc._remoteAddrStr?.__copy__(), header : _rp._header, requestURI : _requestURI?.__copy__(), proto : ("HTTP/2.0" : stdgo.GoString), protoMajor : (2 : stdgo.GoInt), protoMinor : (0 : stdgo.GoInt), tls : _tlsState, host : _rp._authority?.__copy__(), body : stdgo.Go.asInterface(_body), trailer : _trailer } : stdgo._internal.net.http.Http_Request.Request)) : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>);
        _req = _req.withContext(_st._ctx);
        var _rw = _sc._newResponseWriter(_st, _req);
        return { _0 : _rw, _1 : _req, _2 : (null : stdgo.Error) };
    }
    @:keep
    static public function _newWriterAndRequest( _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn>, _st:stdgo.Ref<stdgo._internal.net.http.Http_T_http2stream.T_http2stream>, _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2MetaHeadersFrame.T_http2MetaHeadersFrame>):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_http2responseWriter.T_http2responseWriter>; var _1 : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>; var _2 : stdgo.Error; } {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn> = _sc;
        _sc._serveG._check();
        var _rp = ({ _method : _f.pseudoValue(("method" : stdgo.GoString))?.__copy__(), _scheme : _f.pseudoValue(("scheme" : stdgo.GoString))?.__copy__(), _authority : _f.pseudoValue(("authority" : stdgo.GoString))?.__copy__(), _path : _f.pseudoValue(("path" : stdgo.GoString))?.__copy__() } : stdgo._internal.net.http.Http_T_http2requestParam.T_http2requestParam);
        var _isConnect = (_rp._method == (("CONNECT" : stdgo.GoString)) : Bool);
        if (_isConnect) {
            if (((_rp._path != (stdgo.Go.str()) || _rp._scheme != (stdgo.Go.str()) : Bool) || (_rp._authority == stdgo.Go.str()) : Bool)) {
                return { _0 : null, _1 : null, _2 : _sc._countError(("bad_connect" : stdgo.GoString), stdgo.Go.asInterface(stdgo._internal.net.http.Http__http2streamError._http2streamError(_f._http2HeadersFrame._http2FrameHeader.streamID, (1u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode)))) };
            };
        } else if (((_rp._method == (stdgo.Go.str()) || _rp._path == (stdgo.Go.str()) : Bool) || (((_rp._scheme != ("https" : stdgo.GoString)) && (_rp._scheme != ("http" : stdgo.GoString)) : Bool)) : Bool)) {
            return { _0 : null, _1 : null, _2 : _sc._countError(("bad_path_method" : stdgo.GoString), stdgo.Go.asInterface(stdgo._internal.net.http.Http__http2streamError._http2streamError(_f._http2HeadersFrame._http2FrameHeader.streamID, (1u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode)))) };
        };
        _rp._header = (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
            x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.http.Http_Header.Header);
        for (__31592 => _hf in _f.regularFields()) {
            _rp._header.add(_sc._canonicalHeader(_hf.name?.__copy__())?.__copy__(), _hf.value?.__copy__());
        };
        if (_rp._authority == (stdgo.Go.str())) {
            _rp._authority = _rp._header.get(("Host" : stdgo.GoString))?.__copy__();
        };
        var __tmp__ = _sc._newWriterAndRequestNoBody(_st, _rp?.__copy__()), _rw:stdgo.Ref<stdgo._internal.net.http.Http_T_http2responseWriter.T_http2responseWriter> = __tmp__._0, _req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return { _0 : null, _1 : null, _2 : _err };
        };
        var _bodyOpen = (!_f.streamEnded() : Bool);
        if (_bodyOpen) {
            {
                var __tmp__ = (_rp._header != null && _rp._header.exists(("Content-Length" : stdgo.GoString)) ? { _0 : _rp._header[("Content-Length" : stdgo.GoString)], _1 : true } : { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : false }), _vv:stdgo.Slice<stdgo.GoString> = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    {
                        var __tmp__ = stdgo._internal.strconv.Strconv_parseUint.parseUint(_vv[(0 : stdgo.GoInt)]?.__copy__(), (10 : stdgo.GoInt), (63 : stdgo.GoInt)), _cl:stdgo.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err == null) {
                            _req.contentLength = (_cl : stdgo.GoInt64);
                        } else {
                            _req.contentLength = (0i64 : stdgo.GoInt64);
                        };
                    };
                } else {
                    _req.contentLength = (-1i64 : stdgo.GoInt64);
                };
            };
            (stdgo.Go.typeAssert((stdgo.Go.toInterface(_req.body) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2requestBody.T_http2requestBody>)) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2requestBody.T_http2requestBody>)._pipe = (stdgo.Go.setRef(({ _b : stdgo.Go.asInterface((stdgo.Go.setRef(({ _expected : _req.contentLength } : stdgo._internal.net.http.Http_T_http2dataBuffer.T_http2dataBuffer)) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2dataBuffer.T_http2dataBuffer>)) } : stdgo._internal.net.http.Http_T_http2pipe.T_http2pipe)) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2pipe.T_http2pipe>);
        };
        return { _0 : _rw, _1 : _req, _2 : (null : stdgo.Error) };
    }
    @:keep
    static public function _newStream( _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn>, _id:stdgo.GoUInt32, _pusherID:stdgo.GoUInt32, _state:stdgo._internal.net.http.Http_T_http2streamState.T_http2streamState):stdgo.Ref<stdgo._internal.net.http.Http_T_http2stream.T_http2stream> {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn> = _sc;
        _sc._serveG._check();
        if (_id == ((0u32 : stdgo.GoUInt32))) {
            throw stdgo.Go.toInterface(("internal error: cannot create stream with id 0" : stdgo.GoString));
        };
        var __tmp__ = stdgo._internal.context.Context_withCancel.withCancel(_sc._baseCtx), _ctx:stdgo._internal.context.Context_Context.Context = __tmp__._0, _cancelCtx:stdgo._internal.context.Context_CancelFunc.CancelFunc = __tmp__._1;
        var _st = (stdgo.Go.setRef(({ _sc : _sc, _id : _id, _state : _state, _ctx : _ctx, _cancelCtx : _cancelCtx } : stdgo._internal.net.http.Http_T_http2stream.T_http2stream)) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2stream.T_http2stream>);
        _st._cw.init();
        _st._flow._conn = (stdgo.Go.setRef(_sc._flow) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2outflow.T_http2outflow>);
        _st._flow._add(_sc._initialStreamSendWindowSize);
        _st._inflow._init(_sc._srv._initialStreamRecvWindowSize());
        if (_sc._hs.writeTimeout != ((0i64 : stdgo._internal.time.Time_Duration.Duration))) {
            _st._writeDeadline = stdgo._internal.time.Time_afterFunc.afterFunc(_sc._hs.writeTimeout, _st._onWriteTimeout);
        };
        _sc._streams[_id] = _st;
        _sc._writeSched.openStream(_st._id, ({ pusherID : _pusherID } : stdgo._internal.net.http.Http_T_http2OpenStreamOptions.T_http2OpenStreamOptions));
        if (_st._isPushed()) {
            _sc._curPushedStreams++;
        } else {
            _sc._curClientStreams++;
        };
        if (_sc._curOpenStreams() == ((1u32 : stdgo.GoUInt32))) {
            _sc._setConnState((1 : stdgo._internal.net.http.Http_ConnState.ConnState));
        };
        return _st;
    }
    @:keep
    static public function _processPriority( _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn>, _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2PriorityFrame.T_http2PriorityFrame>):stdgo.Error {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn> = _sc;
        {
            var _err = (_sc._checkPriority(_f._http2FrameHeader.streamID, _f._http2PriorityParam?.__copy__()) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        _sc._writeSched.adjustStream(_f._http2FrameHeader.streamID, _f._http2PriorityParam?.__copy__());
        return (null : stdgo.Error);
    }
    @:keep
    static public function _checkPriority( _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn>, _streamID:stdgo.GoUInt32, _p:stdgo._internal.net.http.Http_T_http2PriorityParam.T_http2PriorityParam):stdgo.Error {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn> = _sc;
        if (_streamID == (_p.streamDep)) {
            return _sc._countError(("priority" : stdgo.GoString), stdgo.Go.asInterface(stdgo._internal.net.http.Http__http2streamError._http2streamError(_streamID, (1u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode))));
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function _upgradeRequest( _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn>, _req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):Void {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn> = _sc;
        _sc._serveG._check();
        var _id = ((1u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
        _sc._maxClientStreamID = _id;
        var _st = _sc._newStream(_id, (0u32 : stdgo.GoUInt32), (3 : stdgo._internal.net.http.Http_T_http2streamState.T_http2streamState));
        _st._reqTrailer = _req.trailer;
        if (_st._reqTrailer != null) {
            _st._trailer = (({
                final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
                x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.http.Http_Header.Header);
        };
        var _rw = _sc._newResponseWriter(_st, _req);
        if (_sc._hs.readTimeout != ((0i64 : stdgo._internal.time.Time_Duration.Duration))) {
            _sc._conn.setReadDeadline((new stdgo._internal.time.Time_Time.Time() : stdgo._internal.time.Time_Time.Time));
        };
        _sc._curHandlers++;
        stdgo.Go.routine(() -> _sc._runHandler(_rw, _req, _sc._handler.serveHTTP));
    }
    @:keep
    static public function _processHeaders( _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn>, _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2MetaHeadersFrame.T_http2MetaHeadersFrame>):stdgo.Error {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn> = _sc;
        _sc._serveG._check();
        var _id = (_f._http2HeadersFrame._http2FrameHeader.streamID : stdgo.GoUInt32);
        if ((_id % (2u32 : stdgo.GoUInt32) : stdgo.GoUInt32) != ((1u32 : stdgo.GoUInt32))) {
            return _sc._countError(("headers_even" : stdgo.GoString), stdgo.Go.asInterface(((1u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode) : stdgo._internal.net.http.Http_T_http2ConnectionError.T_http2ConnectionError)));
        };
        {
            var _st = (_sc._streams[_f._http2HeadersFrame._http2FrameHeader.streamID] ?? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2stream.T_http2stream>));
            if ((_st != null && ((_st : Dynamic).__nil__ == null || !(_st : Dynamic).__nil__))) {
                if (_st._resetQueued) {
                    return (null : stdgo.Error);
                };
                if (_st._state == ((3 : stdgo._internal.net.http.Http_T_http2streamState.T_http2streamState))) {
                    return _sc._countError(("headers_half_closed" : stdgo.GoString), stdgo.Go.asInterface(stdgo._internal.net.http.Http__http2streamError._http2streamError(_id, (5u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode))));
                };
                return _st._processTrailerHeaders(_f);
            };
        };
        if ((_id <= _sc._maxClientStreamID : Bool)) {
            return _sc._countError(("stream_went_down" : stdgo.GoString), stdgo.Go.asInterface(((1u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode) : stdgo._internal.net.http.Http_T_http2ConnectionError.T_http2ConnectionError)));
        };
        _sc._maxClientStreamID = _id;
        if ((_sc._idleTimer != null && ((_sc._idleTimer : Dynamic).__nil__ == null || !(_sc._idleTimer : Dynamic).__nil__))) {
            _sc._idleTimer.stop();
        };
        if (((_sc._curClientStreams + (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) > _sc._advMaxStreams : Bool)) {
            if (_sc._unackedSettings == ((0 : stdgo.GoInt))) {
                return _sc._countError(("over_max_streams" : stdgo.GoString), stdgo.Go.asInterface(stdgo._internal.net.http.Http__http2streamError._http2streamError(_id, (1u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode))));
            };
            return _sc._countError(("over_max_streams_race" : stdgo.GoString), stdgo.Go.asInterface(stdgo._internal.net.http.Http__http2streamError._http2streamError(_id, (7u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode))));
        };
        var _initialState = (1 : stdgo._internal.net.http.Http_T_http2streamState.T_http2streamState);
        if (_f.streamEnded()) {
            _initialState = (3 : stdgo._internal.net.http.Http_T_http2streamState.T_http2streamState);
        };
        var _st = _sc._newStream(_id, (0u32 : stdgo.GoUInt32), _initialState);
        if (_f.hasPriority()) {
            {
                var _err = (_sc._checkPriority(_f._http2HeadersFrame._http2FrameHeader.streamID, _f._http2HeadersFrame.priority?.__copy__()) : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
            _sc._writeSched.adjustStream(_st._id, _f._http2HeadersFrame.priority?.__copy__());
        };
        var __tmp__ = _sc._newWriterAndRequest(_st, _f), _rw:stdgo.Ref<stdgo._internal.net.http.Http_T_http2responseWriter.T_http2responseWriter> = __tmp__._0, _req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return _err;
        };
        _st._reqTrailer = _req.trailer;
        if (_st._reqTrailer != null) {
            _st._trailer = (({
                final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
                x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.http.Http_Header.Header);
        };
        _st._body = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_req.body) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2requestBody.T_http2requestBody>)) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2requestBody.T_http2requestBody>)._pipe;
        _st._declBodyBytes = _req.contentLength;
        var _handler = _sc._handler.serveHTTP;
        if (_f.truncated) {
            _handler = stdgo._internal.net.http.Http__http2handleHeaderListTooLong._http2handleHeaderListTooLong;
        } else {
            var _err = (stdgo._internal.net.http.Http__http2checkValidHTTP2RequestHeaders._http2checkValidHTTP2RequestHeaders(_req.header) : stdgo.Error);
            if (_err != null) {
                _handler = stdgo._internal.net.http.Http__http2new400Handler._http2new400Handler(_err);
            };
        };
        if (_sc._hs.readTimeout != ((0i64 : stdgo._internal.time.Time_Duration.Duration))) {
            _sc._conn.setReadDeadline((new stdgo._internal.time.Time_Time.Time() : stdgo._internal.time.Time_Time.Time));
            if ((_st._body != null && ((_st._body : Dynamic).__nil__ == null || !(_st._body : Dynamic).__nil__))) {
                _st._readDeadline = stdgo._internal.time.Time_afterFunc.afterFunc(_sc._hs.readTimeout, _st._onReadTimeout);
            };
        };
        return _sc._scheduleHandler(_id, _rw, _req, _handler);
    }
    @:keep
    static public function _processGoAway( _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn>, _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2GoAwayFrame.T_http2GoAwayFrame>):stdgo.Error {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn> = _sc;
        _sc._serveG._check();
        if (_f.errCode != ((0u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode))) {
            _sc._logf(("http2: received GOAWAY %+v, starting graceful shutdown" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_f)));
        } else {
            _sc._vlogf(("http2: received GOAWAY %+v, starting graceful shutdown" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_f)));
        };
        _sc._startGracefulShutdownInternal();
        _sc._pushEnabled = false;
        return (null : stdgo.Error);
    }
    @:keep
    static public function _processData( _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn>, _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2DataFrame.T_http2DataFrame>):stdgo.Error {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn> = _sc;
        _sc._serveG._check();
        var _id = (_f.header().streamID : stdgo.GoUInt32);
        var _data = _f.data();
        var __tmp__ = _sc._state(_id), _state:stdgo._internal.net.http.Http_T_http2streamState.T_http2streamState = __tmp__._0, _st:stdgo.Ref<stdgo._internal.net.http.Http_T_http2stream.T_http2stream> = __tmp__._1;
        if (((_id == (0u32 : stdgo.GoUInt32)) || (_state == (0 : stdgo._internal.net.http.Http_T_http2streamState.T_http2streamState)) : Bool)) {
            return _sc._countError(("data_on_idle" : stdgo.GoString), stdgo.Go.asInterface(((1u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode) : stdgo._internal.net.http.Http_T_http2ConnectionError.T_http2ConnectionError)));
        };
        if (((((_st == null || (_st : Dynamic).__nil__) || _state != ((1 : stdgo._internal.net.http.Http_T_http2streamState.T_http2streamState)) : Bool) || _st._gotTrailerHeader : Bool) || _st._resetQueued : Bool)) {
            if (!_sc._inflow._take(_f._http2FrameHeader.length_)) {
                return _sc._countError(("data_flow" : stdgo.GoString), stdgo.Go.asInterface(stdgo._internal.net.http.Http__http2streamError._http2streamError(_id, (3u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode))));
            };
            _sc._sendWindowUpdate(null, (_f._http2FrameHeader.length_ : stdgo.GoInt));
            if (((_st != null && ((_st : Dynamic).__nil__ == null || !(_st : Dynamic).__nil__)) && _st._resetQueued : Bool)) {
                return (null : stdgo.Error);
            };
            return _sc._countError(("closed" : stdgo.GoString), stdgo.Go.asInterface(stdgo._internal.net.http.Http__http2streamError._http2streamError(_id, (5u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode))));
        };
        if ((_st._body == null || (_st._body : Dynamic).__nil__)) {
            throw stdgo.Go.toInterface(("internal error: should have a body in this state" : stdgo.GoString));
        };
        if (((_st._declBodyBytes != (-1i64 : stdgo.GoInt64)) && ((_st._bodyBytes + (_data.length : stdgo.GoInt64) : stdgo.GoInt64) > _st._declBodyBytes : Bool) : Bool)) {
            if (!_sc._inflow._take(_f._http2FrameHeader.length_)) {
                return _sc._countError(("data_flow" : stdgo.GoString), stdgo.Go.asInterface(stdgo._internal.net.http.Http__http2streamError._http2streamError(_id, (3u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode))));
            };
            _sc._sendWindowUpdate(null, (_f._http2FrameHeader.length_ : stdgo.GoInt));
            _st._body.closeWithError(stdgo._internal.fmt.Fmt_errorf.errorf(("sender tried to send more than declared Content-Length of %d bytes" : stdgo.GoString), stdgo.Go.toInterface(_st._declBodyBytes)));
            return _sc._countError(("send_too_much" : stdgo.GoString), stdgo.Go.asInterface(stdgo._internal.net.http.Http__http2streamError._http2streamError(_id, (1u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode))));
        };
        if ((_f._http2FrameHeader.length_ > (0u32 : stdgo.GoUInt32) : Bool)) {
            if (!stdgo._internal.net.http.Http__http2takeInflows._http2takeInflows((stdgo.Go.setRef(_sc._inflow) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2inflow.T_http2inflow>), (stdgo.Go.setRef(_st._inflow) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2inflow.T_http2inflow>), _f._http2FrameHeader.length_)) {
                return _sc._countError(("flow_on_data_length" : stdgo.GoString), stdgo.Go.asInterface(stdgo._internal.net.http.Http__http2streamError._http2streamError(_id, (3u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode))));
            };
            if (((_data.length) > (0 : stdgo.GoInt) : Bool)) {
                _st._bodyBytes = (_st._bodyBytes + ((_data.length : stdgo.GoInt64)) : stdgo.GoInt64);
                var __tmp__ = _st._body.write(_data), _wrote:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _sc._sendWindowUpdate(null, ((_f._http2FrameHeader.length_ : stdgo.GoInt) - _wrote : stdgo.GoInt));
                    return (null : stdgo.Error);
                };
                if (_wrote != ((_data.length))) {
                    throw stdgo.Go.toInterface(("internal error: bad Writer" : stdgo.GoString));
                };
            };
            var _pad = ((_f._http2FrameHeader.length_ : stdgo.GoInt32) - (_data.length : stdgo.GoInt32) : stdgo.GoInt32);
            _sc._sendWindowUpdate32(null, _pad);
            _sc._sendWindowUpdate32(_st, _pad);
        };
        if (_f.streamEnded()) {
            _st._endStream();
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function _processSettingInitialWindowSize( _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn>, _val:stdgo.GoUInt32):stdgo.Error {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn> = _sc;
        _sc._serveG._check();
        var _old = (_sc._initialStreamSendWindowSize : stdgo.GoInt32);
        _sc._initialStreamSendWindowSize = (_val : stdgo.GoInt32);
        var _growth = ((_val : stdgo.GoInt32) - _old : stdgo.GoInt32);
        for (__31652 => _st in _sc._streams) {
            if (!_st._flow._add(_growth)) {
                return _sc._countError(("setting_win_size" : stdgo.GoString), stdgo.Go.asInterface(((3u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode) : stdgo._internal.net.http.Http_T_http2ConnectionError.T_http2ConnectionError)));
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function _processSetting( _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn>, _s:stdgo._internal.net.http.Http_T_http2Setting.T_http2Setting):stdgo.Error {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn> = _sc;
        _sc._serveG._check();
        {
            var _err = (_s.valid() : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        if (stdgo._internal.net.http.Http__http2VerboseLogs._http2VerboseLogs) {
            _sc._vlogf(("http2: server processing setting %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_s)));
        };
        {
            final __value__ = _s.id;
            if (__value__ == ((1 : stdgo._internal.net.http.Http_T_http2SettingID.T_http2SettingID))) {
                _sc._hpackEncoder.setMaxDynamicTableSize(_s.val);
            } else if (__value__ == ((2 : stdgo._internal.net.http.Http_T_http2SettingID.T_http2SettingID))) {
                _sc._pushEnabled = _s.val != ((0u32 : stdgo.GoUInt32));
            } else if (__value__ == ((3 : stdgo._internal.net.http.Http_T_http2SettingID.T_http2SettingID))) {
                _sc._clientMaxStreams = _s.val;
            } else if (__value__ == ((4 : stdgo._internal.net.http.Http_T_http2SettingID.T_http2SettingID))) {
                return _sc._processSettingInitialWindowSize(_s.val);
            } else if (__value__ == ((5 : stdgo._internal.net.http.Http_T_http2SettingID.T_http2SettingID))) {
                _sc._maxFrameSize = (_s.val : stdgo.GoInt32);
            } else if (__value__ == ((6 : stdgo._internal.net.http.Http_T_http2SettingID.T_http2SettingID))) {
                _sc._peerMaxHeaderListSize = _s.val;
            } else {
                if (stdgo._internal.net.http.Http__http2VerboseLogs._http2VerboseLogs) {
                    _sc._vlogf(("http2: server ignoring unknown setting %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_s)));
                };
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function _processSettings( _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn>, _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2SettingsFrame.T_http2SettingsFrame>):stdgo.Error {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn> = _sc;
        _sc._serveG._check();
        if (_f.isAck()) {
            _sc._unackedSettings--;
            if ((_sc._unackedSettings < (0 : stdgo.GoInt) : Bool)) {
                return _sc._countError(("ack_mystery" : stdgo.GoString), stdgo.Go.asInterface(((1u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode) : stdgo._internal.net.http.Http_T_http2ConnectionError.T_http2ConnectionError)));
            };
            return (null : stdgo.Error);
        };
        if (((_f.numSettings() > (100 : stdgo.GoInt) : Bool) || _f.hasDuplicates() : Bool)) {
            return _sc._countError(("settings_big_or_dups" : stdgo.GoString), stdgo.Go.asInterface(((1u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode) : stdgo._internal.net.http.Http_T_http2ConnectionError.T_http2ConnectionError)));
        };
        {
            var _err = (_f.foreachSetting(_sc._processSetting) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        _sc._needToSendSettingsAck = true;
        _sc._scheduleFrameWrite();
        return (null : stdgo.Error);
    }
    @:keep
    static public function _closeStream( _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn>, _st:stdgo.Ref<stdgo._internal.net.http.Http_T_http2stream.T_http2stream>, _err:stdgo.Error):Void {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn> = _sc;
        _sc._serveG._check();
        if (((_st._state == (0 : stdgo._internal.net.http.Http_T_http2streamState.T_http2streamState)) || (_st._state == (4 : stdgo._internal.net.http.Http_T_http2streamState.T_http2streamState)) : Bool)) {
            throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("invariant; can\'t close stream in state %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_st._state))));
        };
        _st._state = (4 : stdgo._internal.net.http.Http_T_http2streamState.T_http2streamState);
        if ((_st._readDeadline != null && ((_st._readDeadline : Dynamic).__nil__ == null || !(_st._readDeadline : Dynamic).__nil__))) {
            _st._readDeadline.stop();
        };
        if ((_st._writeDeadline != null && ((_st._writeDeadline : Dynamic).__nil__ == null || !(_st._writeDeadline : Dynamic).__nil__))) {
            _st._writeDeadline.stop();
        };
        if (_st._isPushed()) {
            _sc._curPushedStreams--;
        } else {
            _sc._curClientStreams--;
        };
        if (_sc._streams != null) _sc._streams.remove(_st._id);
        if ((_sc._streams.length) == ((0 : stdgo.GoInt))) {
            _sc._setConnState((2 : stdgo._internal.net.http.Http_ConnState.ConnState));
            if (_sc._srv.idleTimeout != ((0i64 : stdgo._internal.time.Time_Duration.Duration))) {
                _sc._idleTimer.reset(_sc._srv.idleTimeout);
            };
            if (stdgo._internal.net.http.Http__http2h1ServerKeepAlivesDisabled._http2h1ServerKeepAlivesDisabled(_sc._hs)) {
                _sc._startGracefulShutdownInternal();
            };
        };
        {
            var _p = _st._body;
            if ((_p != null && ((_p : Dynamic).__nil__ == null || !(_p : Dynamic).__nil__))) {
                _sc._sendWindowUpdate(null, _p.len());
                _p.closeWithError(_err);
            };
        };
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo._internal.net.http.Http_T_http2StreamError.T_http2StreamError)) : stdgo._internal.net.http.Http_T_http2StreamError.T_http2StreamError), _1 : true };
            } catch(_) {
                { _0 : ({} : stdgo._internal.net.http.Http_T_http2StreamError.T_http2StreamError), _1 : false };
            }, _e = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                if (_e.cause != null) {
                    _err = _e.cause;
                } else {
                    _err = stdgo._internal.net.http.Http__http2errStreamClosed._http2errStreamClosed;
                };
            };
        };
        _st._closeErr = _err;
        _st._cw.close();
        _sc._writeSched.closeStream(_st._id);
    }
    @:keep
    static public function _processResetStream( _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn>, _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2RSTStreamFrame.T_http2RSTStreamFrame>):stdgo.Error {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn> = _sc;
        _sc._serveG._check();
        var __tmp__ = _sc._state(_f._http2FrameHeader.streamID), _state:stdgo._internal.net.http.Http_T_http2streamState.T_http2streamState = __tmp__._0, _st:stdgo.Ref<stdgo._internal.net.http.Http_T_http2stream.T_http2stream> = __tmp__._1;
        if (_state == ((0 : stdgo._internal.net.http.Http_T_http2streamState.T_http2streamState))) {
            return _sc._countError(("reset_idle_stream" : stdgo.GoString), stdgo.Go.asInterface(((1u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode) : stdgo._internal.net.http.Http_T_http2ConnectionError.T_http2ConnectionError)));
        };
        if ((_st != null && ((_st : Dynamic).__nil__ == null || !(_st : Dynamic).__nil__))) {
            _st._cancelCtx();
            _sc._closeStream(_st, stdgo.Go.asInterface(stdgo._internal.net.http.Http__http2streamError._http2streamError(_f._http2FrameHeader.streamID, _f.errCode)));
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function _processWindowUpdate( _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn>, _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2WindowUpdateFrame.T_http2WindowUpdateFrame>):stdgo.Error {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn> = _sc;
        _sc._serveG._check();
        if (_f._http2FrameHeader.streamID != ((0u32 : stdgo.GoUInt32))) {
            var __tmp__ = _sc._state(_f._http2FrameHeader.streamID), _state:stdgo._internal.net.http.Http_T_http2streamState.T_http2streamState = __tmp__._0, _st:stdgo.Ref<stdgo._internal.net.http.Http_T_http2stream.T_http2stream> = __tmp__._1;
            if (_state == ((0 : stdgo._internal.net.http.Http_T_http2streamState.T_http2streamState))) {
                return _sc._countError(("stream_idle" : stdgo.GoString), stdgo.Go.asInterface(((1u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode) : stdgo._internal.net.http.Http_T_http2ConnectionError.T_http2ConnectionError)));
            };
            if ((_st == null || (_st : Dynamic).__nil__)) {
                return (null : stdgo.Error);
            };
            if (!_st._flow._add((_f.increment : stdgo.GoInt32))) {
                return _sc._countError(("bad_flow" : stdgo.GoString), stdgo.Go.asInterface(stdgo._internal.net.http.Http__http2streamError._http2streamError(_f._http2FrameHeader.streamID, (3u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode))));
            };
        } else {
            if (!_sc._flow._add((_f.increment : stdgo.GoInt32))) {
                return stdgo.Go.asInterface((new stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError() : stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError));
            };
        };
        _sc._scheduleFrameWrite();
        return (null : stdgo.Error);
    }
    @:keep
    static public function _processPing( _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn>, _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2PingFrame.T_http2PingFrame>):stdgo.Error {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn> = _sc;
        _sc._serveG._check();
        if (_f.isAck()) {
            return (null : stdgo.Error);
        };
        if (_f._http2FrameHeader.streamID != ((0u32 : stdgo.GoUInt32))) {
            return _sc._countError(("ping_on_stream" : stdgo.GoString), stdgo.Go.asInterface(((1u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode) : stdgo._internal.net.http.Http_T_http2ConnectionError.T_http2ConnectionError)));
        };
        _sc._writeFrame(({ _write : stdgo.Go.asInterface((new stdgo._internal.net.http.Http_T_http2writePingAck.T_http2writePingAck(_f) : stdgo._internal.net.http.Http_T_http2writePingAck.T_http2writePingAck)) } : stdgo._internal.net.http.Http_T_http2FrameWriteRequest.T_http2FrameWriteRequest));
        return (null : stdgo.Error);
    }
    @:keep
    static public function _processFrame( _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn>, _f:stdgo._internal.net.http.Http_T_http2Frame.T_http2Frame):stdgo.Error {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn> = _sc;
        _sc._serveG._check();
        if (!_sc._sawFirstSettings) {
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_f) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2SettingsFrame.T_http2SettingsFrame>)) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2SettingsFrame.T_http2SettingsFrame>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2SettingsFrame.T_http2SettingsFrame>), _1 : false };
                }, __31612 = __tmp__._0, _ok = __tmp__._1;
                if (!_ok) {
                    return _sc._countError(("first_settings" : stdgo.GoString), stdgo.Go.asInterface(((1u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode) : stdgo._internal.net.http.Http_T_http2ConnectionError.T_http2ConnectionError)));
                };
            };
            _sc._sawFirstSettings = true;
        };
        if ((_sc._inGoAway && (((_sc._goAwayCode != (0u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode)) || (_f.header().streamID > _sc._maxClientStreamID : Bool) : Bool)) : Bool)) {
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_f) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2DataFrame.T_http2DataFrame>)) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2DataFrame.T_http2DataFrame>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2DataFrame.T_http2DataFrame>), _1 : false };
                }, _f = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    if (!_sc._inflow._take(_f._http2FrameHeader.length_)) {
                        return _sc._countError(("data_flow" : stdgo.GoString), stdgo.Go.asInterface(stdgo._internal.net.http.Http__http2streamError._http2streamError(_f.header().streamID, (3u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode))));
                    };
                    _sc._sendWindowUpdate(null, (_f._http2FrameHeader.length_ : stdgo.GoInt));
                };
            };
            return (null : stdgo.Error);
        };
        {
            final __type__ = _f;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.net.http.Http_T_http2SettingsFrame.T_http2SettingsFrame>))) {
                var _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2SettingsFrame.T_http2SettingsFrame> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2SettingsFrame.T_http2SettingsFrame>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2SettingsFrame.T_http2SettingsFrame>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2SettingsFrame.T_http2SettingsFrame>) : __type__.__underlying__().value;
                return _sc._processSettings(_f);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.net.http.Http_T_http2MetaHeadersFrame.T_http2MetaHeadersFrame>))) {
                var _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2MetaHeadersFrame.T_http2MetaHeadersFrame> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2MetaHeadersFrame.T_http2MetaHeadersFrame>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2MetaHeadersFrame.T_http2MetaHeadersFrame>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2MetaHeadersFrame.T_http2MetaHeadersFrame>) : __type__.__underlying__().value;
                return _sc._processHeaders(_f);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.net.http.Http_T_http2WindowUpdateFrame.T_http2WindowUpdateFrame>))) {
                var _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2WindowUpdateFrame.T_http2WindowUpdateFrame> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2WindowUpdateFrame.T_http2WindowUpdateFrame>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2WindowUpdateFrame.T_http2WindowUpdateFrame>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2WindowUpdateFrame.T_http2WindowUpdateFrame>) : __type__.__underlying__().value;
                return _sc._processWindowUpdate(_f);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.net.http.Http_T_http2PingFrame.T_http2PingFrame>))) {
                var _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2PingFrame.T_http2PingFrame> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2PingFrame.T_http2PingFrame>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2PingFrame.T_http2PingFrame>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2PingFrame.T_http2PingFrame>) : __type__.__underlying__().value;
                return _sc._processPing(_f);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.net.http.Http_T_http2DataFrame.T_http2DataFrame>))) {
                var _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2DataFrame.T_http2DataFrame> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2DataFrame.T_http2DataFrame>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2DataFrame.T_http2DataFrame>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2DataFrame.T_http2DataFrame>) : __type__.__underlying__().value;
                return _sc._processData(_f);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.net.http.Http_T_http2RSTStreamFrame.T_http2RSTStreamFrame>))) {
                var _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2RSTStreamFrame.T_http2RSTStreamFrame> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2RSTStreamFrame.T_http2RSTStreamFrame>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2RSTStreamFrame.T_http2RSTStreamFrame>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2RSTStreamFrame.T_http2RSTStreamFrame>) : __type__.__underlying__().value;
                return _sc._processResetStream(_f);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.net.http.Http_T_http2PriorityFrame.T_http2PriorityFrame>))) {
                var _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2PriorityFrame.T_http2PriorityFrame> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2PriorityFrame.T_http2PriorityFrame>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2PriorityFrame.T_http2PriorityFrame>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2PriorityFrame.T_http2PriorityFrame>) : __type__.__underlying__().value;
                return _sc._processPriority(_f);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.net.http.Http_T_http2GoAwayFrame.T_http2GoAwayFrame>))) {
                var _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2GoAwayFrame.T_http2GoAwayFrame> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2GoAwayFrame.T_http2GoAwayFrame>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2GoAwayFrame.T_http2GoAwayFrame>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2GoAwayFrame.T_http2GoAwayFrame>) : __type__.__underlying__().value;
                return _sc._processGoAway(_f);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.net.http.Http_T_http2PushPromiseFrame.T_http2PushPromiseFrame>))) {
                var _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2PushPromiseFrame.T_http2PushPromiseFrame> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2PushPromiseFrame.T_http2PushPromiseFrame>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2PushPromiseFrame.T_http2PushPromiseFrame>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2PushPromiseFrame.T_http2PushPromiseFrame>) : __type__.__underlying__().value;
                return _sc._countError(("push_promise" : stdgo.GoString), stdgo.Go.asInterface(((1u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode) : stdgo._internal.net.http.Http_T_http2ConnectionError.T_http2ConnectionError)));
            } else {
                var _f:stdgo._internal.net.http.Http_T_http2Frame.T_http2Frame = __type__ == null ? (null : stdgo._internal.net.http.Http_T_http2Frame.T_http2Frame) : cast __type__;
                _sc._vlogf(("http2: server ignoring frame: %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_f.header())));
                return (null : stdgo.Error);
            };
        };
    }
    @:keep
    static public function _processFrameFromReader( _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn>, _res:stdgo._internal.net.http.Http_T_http2readFrameResult.T_http2readFrameResult):Bool {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn> = _sc;
        _sc._serveG._check();
        var _err = (_res._err : stdgo.Error);
        if (_err != null) {
            if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.net.http.Http__http2ErrFrameTooLarge._http2ErrFrameTooLarge))) {
                _sc._goAway((6u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode));
                return true;
            };
            var _clientGone = ((stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof)) || stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_errUnexpectedEOF.errUnexpectedEOF)) : Bool) || stdgo._internal.net.http.Http__http2isClosedConnError._http2isClosedConnError(_err) : Bool);
            if (_clientGone) {
                return false;
            };
        } else {
            var _f = (_res._f : stdgo._internal.net.http.Http_T_http2Frame.T_http2Frame);
            if (stdgo._internal.net.http.Http__http2VerboseLogs._http2VerboseLogs) {
                _sc._vlogf(("http2: server read frame %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.net.http.Http__http2summarizeFrame._http2summarizeFrame(_f)));
            };
            _err = _sc._processFrame(_f);
            if (_err == null) {
                return true;
            };
        };
        {
            final __type__ = _err;
            if (stdgo.Go.typeEquals((__type__ : stdgo._internal.net.http.Http_T_http2StreamError.T_http2StreamError))) {
                var _ev:stdgo._internal.net.http.Http_T_http2StreamError.T_http2StreamError = __type__ == null ? ({} : stdgo._internal.net.http.Http_T_http2StreamError.T_http2StreamError) : __type__.__underlying__() == null ? ({} : stdgo._internal.net.http.Http_T_http2StreamError.T_http2StreamError) : __type__ == null ? ({} : stdgo._internal.net.http.Http_T_http2StreamError.T_http2StreamError) : __type__.__underlying__().value;
                _sc._resetStream(_ev?.__copy__());
                return true;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError))) {
                var _ev:stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError = __type__ == null ? ({} : stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError) : __type__.__underlying__() == null ? ({} : stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError) : __type__ == null ? ({} : stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError) : __type__.__underlying__().value;
                _sc._goAway((3u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode));
                return true;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.net.http.Http_T_http2ConnectionError.T_http2ConnectionError))) {
                var _ev:stdgo._internal.net.http.Http_T_http2ConnectionError.T_http2ConnectionError = __type__ == null ? ((0 : stdgo.GoUInt32) : stdgo._internal.net.http.Http_T_http2ConnectionError.T_http2ConnectionError) : __type__.__underlying__() == null ? ((0 : stdgo.GoUInt32) : stdgo._internal.net.http.Http_T_http2ConnectionError.T_http2ConnectionError) : __type__ == null ? ((0 : stdgo.GoUInt32) : stdgo._internal.net.http.Http_T_http2ConnectionError.T_http2ConnectionError) : __type__.__underlying__().value;
                _sc._logf(("http2: server connection error from %v: %v" : stdgo.GoString), stdgo.Go.toInterface(_sc._conn.remoteAddr()), stdgo.Go.toInterface(stdgo.Go.asInterface(_ev)));
                _sc._goAway((_ev : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode));
                return true;
            } else {
                var _ev:stdgo.Error = __type__ == null ? (null : stdgo.Error) : cast __type__;
                if (_res._err != null) {
                    _sc._vlogf(("http2: server closing client connection; error reading frame from client %s: %v" : stdgo.GoString), stdgo.Go.toInterface(_sc._conn.remoteAddr()), stdgo.Go.toInterface(_err));
                } else {
                    _sc._logf(("http2: server closing client connection: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                };
                return false;
            };
        };
    }
    @:keep
    static public function _resetStream( _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn>, _se:stdgo._internal.net.http.Http_T_http2StreamError.T_http2StreamError):Void {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn> = _sc;
        _sc._serveG._check();
        _sc._writeFrame(({ _write : stdgo.Go.asInterface(_se) } : stdgo._internal.net.http.Http_T_http2FrameWriteRequest.T_http2FrameWriteRequest));
        {
            var __tmp__ = (_sc._streams != null && _sc._streams.exists(_se.streamID) ? { _0 : _sc._streams[_se.streamID], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2stream.T_http2stream>), _1 : false }), _st:stdgo.Ref<stdgo._internal.net.http.Http_T_http2stream.T_http2stream> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                _st._resetQueued = true;
            };
        };
    }
    @:keep
    static public function _shutDownIn( _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn>, _d:stdgo._internal.time.Time_Duration.Duration):Void {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn> = _sc;
        _sc._serveG._check();
        _sc._shutdownTimer = stdgo._internal.time.Time_afterFunc.afterFunc(_d, _sc._onShutdownTimer);
    }
    @:keep
    static public function _goAway( _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn>, _code:stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode):Void {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn> = _sc;
        _sc._serveG._check();
        if (_sc._inGoAway) {
            if (_sc._goAwayCode == ((0u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode))) {
                _sc._goAwayCode = _code;
            };
            return;
        };
        _sc._inGoAway = true;
        _sc._needToSendGoAway = true;
        _sc._goAwayCode = _code;
        _sc._scheduleFrameWrite();
    }
    @:keep
    static public function _startGracefulShutdownInternal( _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn>):Void {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn> = _sc;
        _sc._goAway((0u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode));
    }
    @:keep
    static public function _startGracefulShutdown( _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn>):Void {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn> = _sc;
        _sc._serveG._checkNotOn();
        _sc._shutdownOnce.do_(function():Void {
            _sc._sendServeMsg(stdgo.Go.toInterface(stdgo._internal.net.http.Http__http2gracefulShutdownMsg._http2gracefulShutdownMsg));
        });
    }
    @:keep
    static public function _scheduleFrameWrite( _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn>):Void {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn> = _sc;
        _sc._serveG._check();
        if ((_sc._writingFrame || _sc._inFrameScheduleLoop : Bool)) {
            return;
        };
        _sc._inFrameScheduleLoop = true;
        while (!_sc._writingFrameAsync) {
            if (_sc._needToSendGoAway) {
                _sc._needToSendGoAway = false;
                _sc._startFrameWrite(({ _write : stdgo.Go.asInterface((stdgo.Go.setRef(({ _maxStreamID : _sc._maxClientStreamID, _code : _sc._goAwayCode } : stdgo._internal.net.http.Http_T_http2writeGoAway.T_http2writeGoAway)) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeGoAway.T_http2writeGoAway>)) } : stdgo._internal.net.http.Http_T_http2FrameWriteRequest.T_http2FrameWriteRequest));
                continue;
            };
            if (_sc._needToSendSettingsAck) {
                _sc._needToSendSettingsAck = false;
                _sc._startFrameWrite(({ _write : stdgo.Go.asInterface((new stdgo._internal.net.http.Http_T_http2writeSettingsAck.T_http2writeSettingsAck() : stdgo._internal.net.http.Http_T_http2writeSettingsAck.T_http2writeSettingsAck)) } : stdgo._internal.net.http.Http_T_http2FrameWriteRequest.T_http2FrameWriteRequest));
                continue;
            };
            if ((!_sc._inGoAway || (_sc._goAwayCode == (0u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode)) : Bool)) {
                {
                    var __tmp__ = _sc._writeSched.pop(), _wr:stdgo._internal.net.http.Http_T_http2FrameWriteRequest.T_http2FrameWriteRequest = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (_ok) {
                        if (_wr._isControl()) {
                            _sc._queuedControlFrames--;
                        };
                        _sc._startFrameWrite(_wr?.__copy__());
                        continue;
                    };
                };
            };
            if (_sc._needsFrameFlush) {
                _sc._startFrameWrite(({ _write : stdgo.Go.asInterface((new stdgo._internal.net.http.Http_T_http2flushFrameWriter.T_http2flushFrameWriter() : stdgo._internal.net.http.Http_T_http2flushFrameWriter.T_http2flushFrameWriter)) } : stdgo._internal.net.http.Http_T_http2FrameWriteRequest.T_http2FrameWriteRequest));
                _sc._needsFrameFlush = false;
                continue;
            };
            break;
        };
        _sc._inFrameScheduleLoop = false;
    }
    @:keep
    static public function _wroteFrame( _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn>, _res:stdgo._internal.net.http.Http_T_http2frameWriteResult.T_http2frameWriteResult):Void {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn> = _sc;
        _sc._serveG._check();
        if (!_sc._writingFrame) {
            throw stdgo.Go.toInterface(("internal error: expected to be already writing a frame" : stdgo.GoString));
        };
        _sc._writingFrame = false;
        _sc._writingFrameAsync = false;
        var _wr = (_res._wr?.__copy__() : stdgo._internal.net.http.Http_T_http2FrameWriteRequest.T_http2FrameWriteRequest);
        if (stdgo._internal.net.http.Http__http2writeEndsStream._http2writeEndsStream(_wr._write)) {
            var _st = _wr._stream;
            if ((_st == null || (_st : Dynamic).__nil__)) {
                throw stdgo.Go.toInterface(("internal error: expecting non-nil stream" : stdgo.GoString));
            };
            {
                final __value__ = _st._state;
                if (__value__ == ((1 : stdgo._internal.net.http.Http_T_http2streamState.T_http2streamState))) {
                    _st._state = (2 : stdgo._internal.net.http.Http_T_http2streamState.T_http2streamState);
                    _sc._resetStream(stdgo._internal.net.http.Http__http2streamError._http2streamError(_st._id, (0u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode))?.__copy__());
                } else if (__value__ == ((3 : stdgo._internal.net.http.Http_T_http2streamState.T_http2streamState))) {
                    _sc._closeStream(_st, stdgo._internal.net.http.Http__http2errHandlerComplete._http2errHandlerComplete);
                };
            };
        } else {
            {
                final __type__ = _wr._write;
                if (stdgo.Go.typeEquals((__type__ : stdgo._internal.net.http.Http_T_http2StreamError.T_http2StreamError))) {
                    var _v:stdgo._internal.net.http.Http_T_http2StreamError.T_http2StreamError = __type__ == null ? ({} : stdgo._internal.net.http.Http_T_http2StreamError.T_http2StreamError) : __type__.__underlying__() == null ? ({} : stdgo._internal.net.http.Http_T_http2StreamError.T_http2StreamError) : __type__ == null ? ({} : stdgo._internal.net.http.Http_T_http2StreamError.T_http2StreamError) : __type__.__underlying__().value;
                    {
                        var __tmp__ = (_sc._streams != null && _sc._streams.exists(_v.streamID) ? { _0 : _sc._streams[_v.streamID], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2stream.T_http2stream>), _1 : false }), _st:stdgo.Ref<stdgo._internal.net.http.Http_T_http2stream.T_http2stream> = __tmp__._0, _ok:Bool = __tmp__._1;
                        if (_ok) {
                            _sc._closeStream(_st, stdgo.Go.asInterface(_v));
                        };
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.net.http.Http_T_http2handlerPanicRST.T_http2handlerPanicRST))) {
                    var _v:stdgo._internal.net.http.Http_T_http2handlerPanicRST.T_http2handlerPanicRST = __type__ == null ? ({} : stdgo._internal.net.http.Http_T_http2handlerPanicRST.T_http2handlerPanicRST) : __type__.__underlying__() == null ? ({} : stdgo._internal.net.http.Http_T_http2handlerPanicRST.T_http2handlerPanicRST) : __type__ == null ? ({} : stdgo._internal.net.http.Http_T_http2handlerPanicRST.T_http2handlerPanicRST) : __type__.__underlying__().value;
                    _sc._closeStream(_wr._stream, stdgo._internal.net.http.Http__http2errHandlerPanicked._http2errHandlerPanicked);
                };
            };
        };
        _wr._replyToWriter(_res._err);
        _sc._scheduleFrameWrite();
    }
    @:keep
    static public function _startFrameWrite( _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn>, _wr:stdgo._internal.net.http.Http_T_http2FrameWriteRequest.T_http2FrameWriteRequest):Void {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn> = _sc;
        _sc._serveG._check();
        if (_sc._writingFrame) {
            throw stdgo.Go.toInterface(("internal error: can only be writing one frame at a time" : stdgo.GoString));
        };
        var _st = _wr._stream;
        if ((_st != null && ((_st : Dynamic).__nil__ == null || !(_st : Dynamic).__nil__))) {
            {
                final __value__ = _st._state;
                if (__value__ == ((2 : stdgo._internal.net.http.Http_T_http2streamState.T_http2streamState))) {
                    {
                        final __type__ = _wr._write;
                        if (stdgo.Go.typeEquals((__type__ : stdgo._internal.net.http.Http_T_http2StreamError.T_http2StreamError)) || stdgo.Go.typeEquals((__type__ : stdgo._internal.net.http.Http_T_http2handlerPanicRST.T_http2handlerPanicRST)) || stdgo.Go.typeEquals((__type__ : stdgo._internal.net.http.Http_T_http2writeWindowUpdate.T_http2writeWindowUpdate))) {} else {
                            throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("internal error: attempt to send frame on a half-closed-local stream: %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_wr))));
                        };
                    };
                } else if (__value__ == ((4 : stdgo._internal.net.http.Http_T_http2streamState.T_http2streamState))) {
                    throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("internal error: attempt to send frame on a closed stream: %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_wr))));
                };
            };
        };
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_wr._write) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2writePushPromise.T_http2writePushPromise>)) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2writePushPromise.T_http2writePushPromise>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2writePushPromise.T_http2writePushPromise>), _1 : false };
            }, _wpp = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                var _err:stdgo.Error = (null : stdgo.Error);
                {
                    var __tmp__ = _wpp._allocatePromisedID();
                    _wpp._promisedID = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    _sc._writingFrameAsync = false;
                    _wr._replyToWriter(_err);
                    return;
                };
            };
        };
        _sc._writingFrame = true;
        _sc._needsFrameFlush = true;
        if (_wr._write._staysWithinBuffer(_sc._bw.available())) {
            _sc._writingFrameAsync = false;
            var _err = (_wr._write._writeFrame(stdgo.Go.asInterface(_sc)) : stdgo.Error);
            _sc._wroteFrame(({ _wr : _wr?.__copy__(), _err : _err } : stdgo._internal.net.http.Http_T_http2frameWriteResult.T_http2frameWriteResult));
        } else {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_wr._write) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeData.T_http2writeData>)) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeData.T_http2writeData>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeData.T_http2writeData>), _1 : false };
            }, _wd = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                _sc._framer._startWriteDataPadded(_wd._streamID, _wd._endStream, _wd._p, (null : stdgo.Slice<stdgo.GoUInt8>));
                _sc._writingFrameAsync = true;
                stdgo.Go.routine(() -> _sc._writeFrameAsync(_wr?.__copy__(), _wd));
            } else {
                _sc._writingFrameAsync = true;
                stdgo.Go.routine(() -> _sc._writeFrameAsync(_wr?.__copy__(), null));
            };
        };
    }
    @:keep
    static public function _writeFrame( _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn>, _wr:stdgo._internal.net.http.Http_T_http2FrameWriteRequest.T_http2FrameWriteRequest):Void {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn> = _sc;
        _sc._serveG._check();
        var _ignoreWrite:Bool = false;
        if (_wr.streamID() != ((0u32 : stdgo.GoUInt32))) {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_wr._write) : stdgo._internal.net.http.Http_T_http2StreamError.T_http2StreamError)) : stdgo._internal.net.http.Http_T_http2StreamError.T_http2StreamError), _1 : true };
            } catch(_) {
                { _0 : ({} : stdgo._internal.net.http.Http_T_http2StreamError.T_http2StreamError), _1 : false };
            }, __31592 = __tmp__._0, _isReset = __tmp__._1;
            {
                var __tmp__ = _sc._state(_wr.streamID()), _state:stdgo._internal.net.http.Http_T_http2streamState.T_http2streamState = __tmp__._0, __31613:stdgo.Ref<stdgo._internal.net.http.Http_T_http2stream.T_http2stream> = __tmp__._1;
                if (((_state == (4 : stdgo._internal.net.http.Http_T_http2streamState.T_http2streamState)) && !_isReset : Bool)) {
                    _ignoreWrite = true;
                };
            };
        };
        {
            final __type__ = _wr._write;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeResHeaders.T_http2writeResHeaders>))) {
                _wr._stream._wroteHeaders = true;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.net.http.Http_T_http2write100ContinueHeadersFrame.T_http2write100ContinueHeadersFrame))) {
                if (_wr._stream._wroteHeaders) {
                    if (_wr._done != null) {
                        throw stdgo.Go.toInterface(("wr.done != nil for write100ContinueHeadersFrame" : stdgo.GoString));
                    };
                    _ignoreWrite = true;
                };
            };
        };
        if (!_ignoreWrite) {
            if (_wr._isControl()) {
                _sc._queuedControlFrames++;
                if ((_sc._queuedControlFrames < (0 : stdgo.GoInt) : Bool)) {
                    _sc._conn.close();
                };
            };
            _sc._writeSched.push(_wr?.__copy__());
        };
        _sc._scheduleFrameWrite();
    }
    @:keep
    static public function _writeFrameFromHandler( _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn>, _wr:stdgo._internal.net.http.Http_T_http2FrameWriteRequest.T_http2FrameWriteRequest):stdgo.Error {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn> = _sc;
        _sc._serveG._checkNotOn();
        {
            {
                var __select__ = true;
                while (__select__) {
                    if (_sc._wantWriteFrameCh != null && _sc._wantWriteFrameCh.__isSend__()) {
                        __select__ = false;
                        {
                            _sc._wantWriteFrameCh.__send__(_wr);
                            {
                                return (null : stdgo.Error);
                            };
                        };
                    } else if (_sc._doneServing != null && _sc._doneServing.__isGet__()) {
                        __select__ = false;
                        {
                            _sc._doneServing.__get__();
                            {
                                return stdgo._internal.net.http.Http__http2errClientDisconnected._http2errClientDisconnected;
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
    static public function _writeDataFromHandler( _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn>, _stream:stdgo.Ref<stdgo._internal.net.http.Http_T_http2stream.T_http2stream>, _data:stdgo.Slice<stdgo.GoUInt8>, _endStream:Bool):stdgo.Error {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn> = _sc;
        var _ch = (stdgo.Go.typeAssert((stdgo._internal.net.http.Http__http2errChanPool._http2errChanPool.get() : stdgo.Chan<stdgo.Error>)) : stdgo.Chan<stdgo.Error>);
        var _writeArg = (stdgo.Go.typeAssert((stdgo._internal.net.http.Http__http2writeDataPool._http2writeDataPool.get() : stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeData.T_http2writeData>)) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeData.T_http2writeData>);
        {
            var __tmp__ = (new stdgo._internal.net.http.Http_T_http2writeData.T_http2writeData(_stream._id, _data, _endStream) : stdgo._internal.net.http.Http_T_http2writeData.T_http2writeData);
            var x = (_writeArg : stdgo._internal.net.http.Http_T_http2writeData.T_http2writeData);
            x._streamID = __tmp__._streamID;
            x._p = __tmp__._p;
            x._endStream = __tmp__._endStream;
        };
        var _err = (_sc._writeFrameFromHandler(({ _write : stdgo.Go.asInterface(_writeArg), _stream : _stream, _done : _ch } : stdgo._internal.net.http.Http_T_http2FrameWriteRequest.T_http2FrameWriteRequest)) : stdgo.Error);
        if (_err != null) {
            return _err;
        };
        var _frameWriteDone:Bool = false;
        {
            var __select__ = true;
            while (__select__) {
                if (_ch != null && _ch.__isGet__()) {
                    __select__ = false;
                    {
                        var _err = _ch.__get__();
                        {
                            _frameWriteDone = true;
                        };
                    };
                } else if (_sc._doneServing != null && _sc._doneServing.__isGet__()) {
                    __select__ = false;
                    {
                        _sc._doneServing.__get__();
                        {
                            return stdgo._internal.net.http.Http__http2errClientDisconnected._http2errClientDisconnected;
                        };
                    };
                } else if (_stream._cw != null && _stream._cw.__isGet__()) {
                    __select__ = false;
                    {
                        _stream._cw.__get__();
                        {
                            {
                                var __select__ = true;
                                while (__select__) {
                                    if (_ch != null && _ch.__isGet__()) {
                                        __select__ = false;
                                        {
                                            var _err = _ch.__get__();
                                            {
                                                _frameWriteDone = true;
                                            };
                                        };
                                    } else {
                                        __select__ = false;
                                        {
                                            return stdgo._internal.net.http.Http__http2errStreamClosed._http2errStreamClosed;
                                        };
                                    };
                                    #if !js Sys.sleep(0.01) #else null #end;
                                    stdgo._internal.internal.Async.tick();
                                };
                            };
                        };
                    };
                };
                #if !js Sys.sleep(0.01) #else null #end;
                stdgo._internal.internal.Async.tick();
            };
        };
        stdgo._internal.net.http.Http__http2errChanPool._http2errChanPool.put(stdgo.Go.toInterface(_ch));
        if (_frameWriteDone) {
            stdgo._internal.net.http.Http__http2writeDataPool._http2writeDataPool.put(stdgo.Go.toInterface(stdgo.Go.asInterface(_writeArg)));
        };
        return _err;
    }
    @:keep
    static public function _readPreface( _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn>):stdgo.Error {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn> = _sc;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if (_sc._sawClientPreface) {
                return (null : stdgo.Error);
            };
            var _errc = (new stdgo.Chan<stdgo.Error>((1 : stdgo.GoInt).toBasic(), () -> (null : stdgo.Error)) : stdgo.Chan<stdgo.Error>);
            stdgo.Go.routine(() -> ({
                var a = function():Void {
                    var _buf = (new stdgo.Slice<stdgo.GoUInt8>((("PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n" : stdgo.GoString).length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    {
                        var __tmp__ = stdgo._internal.io.Io_readFull.readFull(_sc._conn, _buf), __31612:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err != null) {
                            _errc.__send__(_err);
                        } else if (!stdgo._internal.bytes.Bytes_equal.equal(_buf, stdgo._internal.net.http.Http__http2clientPreface._http2clientPreface)) {
                            _errc.__send__(stdgo._internal.fmt.Fmt_errorf.errorf(("bogus greeting %q" : stdgo.GoString), stdgo.Go.toInterface(_buf)));
                        } else {
                            _errc.__send__(null);
                        };
                    };
                };
                a();
            }));
            var _timer = stdgo._internal.time.Time_newTimer.newTimer((10000000000i64 : stdgo._internal.time.Time_Duration.Duration));
            {
                final __f__ = _timer.stop;
                __deferstack__.unshift(() -> __f__());
            };
            {
                {
                    var __select__ = true;
                    while (__select__) {
                        if (_timer.c != null && _timer.c.__isGet__()) {
                            __select__ = false;
                            {
                                _timer.c.__get__();
                                {
                                    {
                                        for (defer in __deferstack__) {
                                            defer();
                                        };
                                        return stdgo._internal.net.http.Http__http2errPrefaceTimeout._http2errPrefaceTimeout;
                                    };
                                };
                            };
                        } else if (_errc != null && _errc.__isGet__()) {
                            __select__ = false;
                            {
                                var _err = _errc.__get__();
                                {
                                    if (_err == null) {
                                        if (stdgo._internal.net.http.Http__http2VerboseLogs._http2VerboseLogs) {
                                            _sc._vlogf(("http2: server: client %v said hello" : stdgo.GoString), stdgo.Go.toInterface(_sc._conn.remoteAddr()));
                                        };
                                    };
                                    {
                                        for (defer in __deferstack__) {
                                            defer();
                                        };
                                        return _err;
                                    };
                                };
                            };
                        };
                        #if !js Sys.sleep(0.01) #else null #end;
                        stdgo._internal.internal.Async.tick();
                    };
                };
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return (null : stdgo.Error);
                };
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
    static public function _sendServeMsg( _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn>, _msg:stdgo.AnyInterface):Void {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn> = _sc;
        _sc._serveG._checkNotOn();
        {
            var __select__ = true;
            while (__select__) {
                if (_sc._serveMsgCh != null && _sc._serveMsgCh.__isSend__()) {
                    __select__ = false;
                    {
                        _sc._serveMsgCh.__send__(_msg);
                        {};
                    };
                } else if (_sc._doneServing != null && _sc._doneServing.__isGet__()) {
                    __select__ = false;
                    {
                        _sc._doneServing.__get__();
                        {};
                    };
                };
                #if !js Sys.sleep(0.01) #else null #end;
                stdgo._internal.internal.Async.tick();
            };
        };
    }
    @:keep
    static public function _onShutdownTimer( _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn>):Void {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn> = _sc;
        _sc._sendServeMsg(stdgo.Go.toInterface(stdgo._internal.net.http.Http__http2shutdownTimerMsg._http2shutdownTimerMsg));
    }
    @:keep
    static public function _onIdleTimer( _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn>):Void {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn> = _sc;
        _sc._sendServeMsg(stdgo.Go.toInterface(stdgo._internal.net.http.Http__http2idleTimerMsg._http2idleTimerMsg));
    }
    @:keep
    static public function _onSettingsTimer( _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn>):Void {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn> = _sc;
        _sc._sendServeMsg(stdgo.Go.toInterface(stdgo._internal.net.http.Http__http2settingsTimerMsg._http2settingsTimerMsg));
    }
    @:keep
    static public function _awaitGracefulShutdown( _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn>, _sharedCh:stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>, _privateCh:stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>):Void {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn> = _sc;
        {
            var __select__ = true;
            while (__select__) {
                if (_sc._doneServing != null && _sc._doneServing.__isGet__()) {
                    __select__ = false;
                    {
                        _sc._doneServing.__get__();
                        {};
                    };
                } else if (_sharedCh != null && _sharedCh.__isGet__()) {
                    __select__ = false;
                    {
                        _sharedCh.__get__();
                        {
                            if (_privateCh != null) _privateCh.__close__();
                        };
                    };
                };
                #if !js Sys.sleep(0.01) #else null #end;
                stdgo._internal.internal.Async.tick();
            };
        };
    }
    @:keep
    static public function _serve( _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn>):Void {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn> = _sc;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _sc._serveG._check();
            {
                final __f__ = _sc._notePanic;
                __deferstack__.unshift(() -> __f__());
            };
            {
                final __f__ = _sc._conn.close;
                __deferstack__.unshift(() -> __f__());
            };
            {
                final __f__ = _sc._closeAllStreamsOnConnClose;
                __deferstack__.unshift(() -> __f__());
            };
            {
                final __f__ = _sc._stopShutdownTimer;
                __deferstack__.unshift(() -> __f__());
            };
            {
                var _a0 = _sc._doneServing;
                __deferstack__.unshift(() -> if (_a0 != null) _a0.__close__());
            };
            if (stdgo._internal.net.http.Http__http2VerboseLogs._http2VerboseLogs) {
                _sc._vlogf(("http2: server connection from %v on %p" : stdgo.GoString), stdgo.Go.toInterface(_sc._conn.remoteAddr()), stdgo.Go.toInterface(stdgo.Go.asInterface(_sc._hs)));
            };
            _sc._writeFrame(({ _write : stdgo.Go.asInterface((new stdgo.Slice<stdgo._internal.net.http.Http_T_http2Setting.T_http2Setting>(5, 5, ...[(new stdgo._internal.net.http.Http_T_http2Setting.T_http2Setting((5 : stdgo._internal.net.http.Http_T_http2SettingID.T_http2SettingID), _sc._srv._maxReadFrameSize()) : stdgo._internal.net.http.Http_T_http2Setting.T_http2Setting), (new stdgo._internal.net.http.Http_T_http2Setting.T_http2Setting((3 : stdgo._internal.net.http.Http_T_http2SettingID.T_http2SettingID), _sc._advMaxStreams) : stdgo._internal.net.http.Http_T_http2Setting.T_http2Setting), (new stdgo._internal.net.http.Http_T_http2Setting.T_http2Setting((6 : stdgo._internal.net.http.Http_T_http2SettingID.T_http2SettingID), _sc._maxHeaderListSize()) : stdgo._internal.net.http.Http_T_http2Setting.T_http2Setting), (new stdgo._internal.net.http.Http_T_http2Setting.T_http2Setting((1 : stdgo._internal.net.http.Http_T_http2SettingID.T_http2SettingID), _sc._srv._maxDecoderHeaderTableSize()) : stdgo._internal.net.http.Http_T_http2Setting.T_http2Setting), (new stdgo._internal.net.http.Http_T_http2Setting.T_http2Setting((4 : stdgo._internal.net.http.Http_T_http2SettingID.T_http2SettingID), (_sc._srv._initialStreamRecvWindowSize() : stdgo.GoUInt32)) : stdgo._internal.net.http.Http_T_http2Setting.T_http2Setting)].concat([for (i in 5 ... (5 > 5 ? 5 : 5 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.net.http.Http_T_http2Setting.T_http2Setting)])) : stdgo._internal.net.http.Http_T_http2writeSettings.T_http2writeSettings)) } : stdgo._internal.net.http.Http_T_http2FrameWriteRequest.T_http2FrameWriteRequest));
            _sc._unackedSettings++;
            {
                var _diff = (_sc._srv._initialConnRecvWindowSize() - (65535 : stdgo.GoInt32) : stdgo.GoInt32);
                if ((_diff > (0 : stdgo.GoInt32) : Bool)) {
                    _sc._sendWindowUpdate(null, (_diff : stdgo.GoInt));
                };
            };
            {
                var _err = (_sc._readPreface() : stdgo.Error);
                if (_err != null) {
                    _sc._condlogf(_err, ("http2: server: error reading preface from client %v: %v" : stdgo.GoString), stdgo.Go.toInterface(_sc._conn.remoteAddr()), stdgo.Go.toInterface(_err));
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return;
                    };
                };
            };
            _sc._setConnState((1 : stdgo._internal.net.http.Http_ConnState.ConnState));
            _sc._setConnState((2 : stdgo._internal.net.http.Http_ConnState.ConnState));
            if (_sc._srv.idleTimeout != ((0i64 : stdgo._internal.time.Time_Duration.Duration))) {
                _sc._idleTimer = stdgo._internal.time.Time_afterFunc.afterFunc(_sc._srv.idleTimeout, _sc._onIdleTimer);
                {
                    final __f__ = _sc._idleTimer.stop;
                    __deferstack__.unshift(() -> __f__());
                };
            };
            stdgo.Go.routine(() -> _sc._readFrames());
            var _settingsTimer = stdgo._internal.time.Time_afterFunc.afterFunc((2000000000i64 : stdgo._internal.time.Time_Duration.Duration), _sc._onSettingsTimer);
            {
                final __f__ = _settingsTimer.stop;
                __deferstack__.unshift(() -> __f__());
            };
            var _loopNum = (0 : stdgo.GoInt);
            while (true) {
                _loopNum++;
                {
                    var __select__ = true;
                    while (__select__) {
                        if (_sc._wantWriteFrameCh != null && _sc._wantWriteFrameCh.__isGet__()) {
                            __select__ = false;
                            {
                                var _wr = _sc._wantWriteFrameCh.__get__();
                                {
                                    {
                                        var __tmp__ = try {
                                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_wr._write) : stdgo._internal.net.http.Http_T_http2StreamError.T_http2StreamError)) : stdgo._internal.net.http.Http_T_http2StreamError.T_http2StreamError), _1 : true };
                                        } catch(_) {
                                            { _0 : ({} : stdgo._internal.net.http.Http_T_http2StreamError.T_http2StreamError), _1 : false };
                                        }, _se = __tmp__._0, _ok = __tmp__._1;
                                        if (_ok) {
                                            _sc._resetStream(_se?.__copy__());
                                            break;
                                        };
                                    };
                                    _sc._writeFrame(_wr?.__copy__());
                                };
                            };
                        } else if (_sc._wroteFrameCh != null && _sc._wroteFrameCh.__isGet__()) {
                            __select__ = false;
                            {
                                var _res = _sc._wroteFrameCh.__get__();
                                {
                                    _sc._wroteFrame(_res?.__copy__());
                                };
                            };
                        } else if (_sc._readFrameCh != null && _sc._readFrameCh.__isGet__()) {
                            __select__ = false;
                            {
                                var _res = _sc._readFrameCh.__get__();
                                {
                                    if (_sc._writingFrameAsync) {
                                        {
                                            var __select__ = true;
                                            while (__select__) {
                                                if (_sc._wroteFrameCh != null && _sc._wroteFrameCh.__isGet__()) {
                                                    __select__ = false;
                                                    {
                                                        var _wroteRes = _sc._wroteFrameCh.__get__();
                                                        {
                                                            _sc._wroteFrame(_wroteRes?.__copy__());
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
                                    if (!_sc._processFrameFromReader(_res?.__copy__())) {
                                        {
                                            for (defer in __deferstack__) {
                                                defer();
                                            };
                                            return;
                                        };
                                    };
                                    _res._readMore();
                                    if ((_settingsTimer != null && ((_settingsTimer : Dynamic).__nil__ == null || !(_settingsTimer : Dynamic).__nil__))) {
                                        _settingsTimer.stop();
                                        _settingsTimer = null;
                                    };
                                };
                            };
                        } else if (_sc._bodyReadCh != null && _sc._bodyReadCh.__isGet__()) {
                            __select__ = false;
                            {
                                var _m = _sc._bodyReadCh.__get__();
                                {
                                    _sc._noteBodyRead(_m._st, _m._n);
                                };
                            };
                        } else if (_sc._serveMsgCh != null && _sc._serveMsgCh.__isGet__()) {
                            __select__ = false;
                            {
                                var _msg = _sc._serveMsgCh.__get__();
                                {
                                    {
                                        final __type__ = _msg;
                                        if (stdgo.Go.typeEquals((__type__ : stdgo.GoInt -> Void))) {
                                            var _v:stdgo.GoInt -> Void = __type__ == null ? null : __type__.__underlying__() == null ? null : __type__ == null ? null : __type__.__underlying__().value;
                                            _v(_loopNum);
                                        } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo._internal.net.http.Http_T_http2serverMessage.T_http2serverMessage>))) {
                                            var _v:stdgo.Pointer<stdgo._internal.net.http.Http_T_http2serverMessage.T_http2serverMessage> = __type__ == null ? (null : stdgo.Pointer<stdgo._internal.net.http.Http_T_http2serverMessage.T_http2serverMessage>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo._internal.net.http.Http_T_http2serverMessage.T_http2serverMessage>) : __type__ == null ? (null : stdgo.Pointer<stdgo._internal.net.http.Http_T_http2serverMessage.T_http2serverMessage>) : __type__.__underlying__().value;
                                            {
                                                final __value__ = _v;
                                                if (__value__ == (stdgo._internal.net.http.Http__http2settingsTimerMsg._http2settingsTimerMsg)) {
                                                    _sc._logf(("timeout waiting for SETTINGS frames from %v" : stdgo.GoString), stdgo.Go.toInterface(_sc._conn.remoteAddr()));
                                                    {
                                                        for (defer in __deferstack__) {
                                                            defer();
                                                        };
                                                        return;
                                                    };
                                                } else if (__value__ == (stdgo._internal.net.http.Http__http2idleTimerMsg._http2idleTimerMsg)) {
                                                    _sc._vlogf(("connection is idle" : stdgo.GoString));
                                                    _sc._goAway((0u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode));
                                                } else if (__value__ == (stdgo._internal.net.http.Http__http2shutdownTimerMsg._http2shutdownTimerMsg)) {
                                                    _sc._vlogf(("GOAWAY close timer fired; closing conn from %v" : stdgo.GoString), stdgo.Go.toInterface(_sc._conn.remoteAddr()));
                                                    {
                                                        for (defer in __deferstack__) {
                                                            defer();
                                                        };
                                                        return;
                                                    };
                                                } else if (__value__ == (stdgo._internal.net.http.Http__http2gracefulShutdownMsg._http2gracefulShutdownMsg)) {
                                                    _sc._startGracefulShutdownInternal();
                                                } else if (__value__ == (stdgo._internal.net.http.Http__http2handlerDoneMsg._http2handlerDoneMsg)) {
                                                    _sc._handlerDone();
                                                } else {
                                                    throw stdgo.Go.toInterface(("unknown timer" : stdgo.GoString));
                                                };
                                            };
                                        } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.net.http.Http_T_http2startPushRequest.T_http2startPushRequest>))) {
                                            var _v:stdgo.Ref<stdgo._internal.net.http.Http_T_http2startPushRequest.T_http2startPushRequest> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2startPushRequest.T_http2startPushRequest>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2startPushRequest.T_http2startPushRequest>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2startPushRequest.T_http2startPushRequest>) : __type__.__underlying__().value;
                                            _sc._startPush(_v);
                                        } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn> -> Void))) {
                                            var _v:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn> -> Void = __type__ == null ? null : __type__.__underlying__() == null ? null : __type__ == null ? null : __type__.__underlying__().value;
                                            _v(_sc);
                                        } else {
                                            var _v:stdgo.AnyInterface = __type__?.__underlying__();
                                            throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("unexpected type %T" : stdgo.GoString), _v));
                                        };
                                    };
                                };
                            };
                        };
                        #if !js Sys.sleep(0.01) #else null #end;
                        stdgo._internal.internal.Async.tick();
                    };
                };
                if ((_sc._queuedControlFrames > _sc._srv._maxQueuedControlFrames() : Bool)) {
                    _sc._vlogf(("http2: too many control frames in send queue, closing connection" : stdgo.GoString));
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return;
                    };
                };
                var _sentGoAway = ((_sc._inGoAway && !_sc._needToSendGoAway : Bool) && !_sc._writingFrame : Bool);
                var _gracefulShutdownComplete = ((_sc._goAwayCode == (0u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode)) && (_sc._curOpenStreams() == (0u32 : stdgo.GoUInt32)) : Bool);
                if (((_sentGoAway && (_sc._shutdownTimer == null || (_sc._shutdownTimer : Dynamic).__nil__) : Bool) && (((_sc._goAwayCode != (0u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode)) || _gracefulShutdownComplete : Bool)) : Bool)) {
                    _sc._shutDownIn(stdgo._internal.net.http.Http__http2goAwayTimeout._http2goAwayTimeout);
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
    static public function _notePanic( _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn>):Void {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn> = _sc;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if ((stdgo._internal.net.http.Http__http2testHookOnPanicMu._http2testHookOnPanicMu != null && ((stdgo._internal.net.http.Http__http2testHookOnPanicMu._http2testHookOnPanicMu : Dynamic).__nil__ == null || !(stdgo._internal.net.http.Http__http2testHookOnPanicMu._http2testHookOnPanicMu : Dynamic).__nil__))) {
                stdgo._internal.net.http.Http__http2testHookOnPanicMu._http2testHookOnPanicMu.lock();
                {
                    final __f__ = stdgo._internal.net.http.Http__http2testHookOnPanicMu._http2testHookOnPanicMu.unlock;
                    __deferstack__.unshift(() -> __f__());
                };
            };
            if (stdgo._internal.net.http.Http__http2testHookOnPanic._http2testHookOnPanic != null) {
                {
                    var _e = ({
                        final r = stdgo.Go.recover_exception;
                        stdgo.Go.recover_exception = null;
                        r;
                    } : stdgo.AnyInterface);
                    if (_e != null) {
                        if (stdgo._internal.net.http.Http__http2testHookOnPanic._http2testHookOnPanic(_sc, _e)) {
                            throw stdgo.Go.toInterface(_e);
                        };
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
    }
    @:keep
    static public function _stopShutdownTimer( _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn>):Void {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn> = _sc;
        _sc._serveG._check();
        {
            var _t = _sc._shutdownTimer;
            if ((_t != null && ((_t : Dynamic).__nil__ == null || !(_t : Dynamic).__nil__))) {
                _t.stop();
            };
        };
    }
    @:keep
    static public function _closeAllStreamsOnConnClose( _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn>):Void {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn> = _sc;
        _sc._serveG._check();
        for (__31612 => _st in _sc._streams) {
            _sc._closeStream(_st, stdgo._internal.net.http.Http__http2errClientDisconnected._http2errClientDisconnected);
        };
    }
    @:keep
    static public function _writeFrameAsync( _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn>, _wr:stdgo._internal.net.http.Http_T_http2FrameWriteRequest.T_http2FrameWriteRequest, _wd:stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeData.T_http2writeData>):Void {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn> = _sc;
        var _err:stdgo.Error = (null : stdgo.Error);
        if ((_wd == null || (_wd : Dynamic).__nil__)) {
            _err = _wr._write._writeFrame(stdgo.Go.asInterface(_sc));
        } else {
            _err = _sc._framer._endWrite();
        };
        _sc._wroteFrameCh.__send__(({ _wr : _wr?.__copy__(), _err : _err } : stdgo._internal.net.http.Http_T_http2frameWriteResult.T_http2frameWriteResult));
    }
    @:keep
    static public function _readFrames( _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn>):Void {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn> = _sc;
        var _gate = (new stdgo._internal.net.http.Http_T_http2gate.T_http2gate(0, () -> ({} : stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError)) : stdgo._internal.net.http.Http_T_http2gate.T_http2gate);
        var _gateDone = (_gate.done : () -> Void);
        while (true) {
            var __tmp__ = _sc._framer.readFrame(), _f:stdgo._internal.net.http.Http_T_http2Frame.T_http2Frame = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            {
                var __select__ = true;
                while (__select__) {
                    if (_sc._readFrameCh != null && _sc._readFrameCh.__isSend__()) {
                        __select__ = false;
                        {
                            _sc._readFrameCh.__send__((new stdgo._internal.net.http.Http_T_http2readFrameResult.T_http2readFrameResult(_f, _err, _gateDone) : stdgo._internal.net.http.Http_T_http2readFrameResult.T_http2readFrameResult));
                            {};
                        };
                    } else if (_sc._doneServing != null && _sc._doneServing.__isGet__()) {
                        __select__ = false;
                        {
                            _sc._doneServing.__get__();
                            {
                                return;
                            };
                        };
                    };
                    #if !js Sys.sleep(0.01) #else null #end;
                    stdgo._internal.internal.Async.tick();
                };
            };
            {
                var __select__ = true;
                while (__select__) {
                    if (_gate != null && _gate.__isGet__()) {
                        __select__ = false;
                        {
                            _gate.__get__();
                            {};
                        };
                    } else if (_sc._doneServing != null && _sc._doneServing.__isGet__()) {
                        __select__ = false;
                        {
                            _sc._doneServing.__get__();
                            {
                                return;
                            };
                        };
                    };
                    #if !js Sys.sleep(0.01) #else null #end;
                    stdgo._internal.internal.Async.tick();
                };
            };
            if (stdgo._internal.net.http.Http__http2terminalReadFrameError._http2terminalReadFrameError(_err)) {
                return;
            };
        };
    }
    @:keep
    static public function _canonicalHeader( _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn>, _v:stdgo.GoString):stdgo.GoString {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn> = _sc;
        _sc._serveG._check();
        stdgo._internal.net.http.Http__http2buildCommonHeaderMapsOnce._http2buildCommonHeaderMapsOnce();
        var __tmp__ = (stdgo._internal.net.http.Http__http2commonCanonHeader._http2commonCanonHeader != null && stdgo._internal.net.http.Http__http2commonCanonHeader._http2commonCanonHeader.exists(_v?.__copy__()) ? { _0 : stdgo._internal.net.http.Http__http2commonCanonHeader._http2commonCanonHeader[_v?.__copy__()], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false }), _cv:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
        if (_ok) {
            return _cv?.__copy__();
        };
        {
            var __tmp__ = (_sc._canonHeader != null && _sc._canonHeader.exists(_v?.__copy__()) ? { _0 : _sc._canonHeader[_v?.__copy__()], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false });
            _cv = __tmp__._0?.__copy__();
            _ok = __tmp__._1;
        };
        if (_ok) {
            return _cv?.__copy__();
        };
        if (_sc._canonHeader == null) {
            _sc._canonHeader = ({
                final x = new stdgo.GoMap.GoStringMap<stdgo.GoString>();
                x.__defaultValue__ = () -> ("" : stdgo.GoString);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
        };
        _cv = stdgo._internal.net.http.Http_canonicalHeaderKey.canonicalHeaderKey(_v?.__copy__())?.__copy__();
        var _size = ((100 : stdgo.GoInt) + ((_v.length) * (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
        if (((_sc._canonHeaderKeysSize + _size : stdgo.GoInt) <= (2048 : stdgo.GoInt) : Bool)) {
            _sc._canonHeader[_v] = _cv?.__copy__();
            _sc._canonHeaderKeysSize = (_sc._canonHeaderKeysSize + (_size) : stdgo.GoInt);
        };
        return _cv?.__copy__();
    }
    @:keep
    static public function _condlogf( _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn>, _err:stdgo.Error, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn> = _sc;
        if (_err == null) {
            return;
        };
        if ((((stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof)) || stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_errUnexpectedEOF.errUnexpectedEOF)) : Bool) || stdgo._internal.net.http.Http__http2isClosedConnError._http2isClosedConnError(_err) : Bool) || (stdgo.Go.toInterface(_err) == stdgo.Go.toInterface(stdgo._internal.net.http.Http__http2errPrefaceTimeout._http2errPrefaceTimeout)) : Bool)) {
            _sc._vlogf(_format?.__copy__(), ...(_args : Array<stdgo.AnyInterface>));
        } else {
            _sc._logf(_format?.__copy__(), ...(_args : Array<stdgo.AnyInterface>));
        };
    }
    @:keep
    static public function _logf( _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn>, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn> = _sc;
        {
            var _lg = _sc._hs.errorLog;
            if ((_lg != null && ((_lg : Dynamic).__nil__ == null || !(_lg : Dynamic).__nil__))) {
                _lg.printf(_format?.__copy__(), ...(_args : Array<stdgo.AnyInterface>));
            } else {
                stdgo._internal.log.Log_printf.printf(_format?.__copy__(), ...(_args : Array<stdgo.AnyInterface>));
            };
        };
    }
    @:keep
    static public function _vlogf( _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn>, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn> = _sc;
        if (stdgo._internal.net.http.Http__http2VerboseLogs._http2VerboseLogs) {
            _sc._logf(_format?.__copy__(), ...(_args : Array<stdgo.AnyInterface>));
        };
    }
    @:keep
    static public function _setConnState( _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn>, _state:stdgo._internal.net.http.Http_ConnState.ConnState):Void {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn> = _sc;
        if (_sc._hs.connState != null) {
            _sc._hs.connState(_sc._conn, _state);
        };
    }
    @:keep
    static public function _state( _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn>, _streamID:stdgo.GoUInt32):{ var _0 : stdgo._internal.net.http.Http_T_http2streamState.T_http2streamState; var _1 : stdgo.Ref<stdgo._internal.net.http.Http_T_http2stream.T_http2stream>; } {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn> = _sc;
        _sc._serveG._check();
        {
            var __tmp__ = (_sc._streams != null && _sc._streams.exists(_streamID) ? { _0 : _sc._streams[_streamID], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2stream.T_http2stream>), _1 : false }), _st:stdgo.Ref<stdgo._internal.net.http.Http_T_http2stream.T_http2stream> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                return { _0 : _st._state, _1 : _st };
            };
        };
        if ((_streamID % (2u32 : stdgo.GoUInt32) : stdgo.GoUInt32) == ((1u32 : stdgo.GoUInt32))) {
            if ((_streamID <= _sc._maxClientStreamID : Bool)) {
                return { _0 : (4 : stdgo._internal.net.http.Http_T_http2streamState.T_http2streamState), _1 : null };
            };
        } else {
            if ((_streamID <= _sc._maxPushPromiseID : Bool)) {
                return { _0 : (4 : stdgo._internal.net.http.Http_T_http2streamState.T_http2streamState), _1 : null };
            };
        };
        return { _0 : (0 : stdgo._internal.net.http.Http_T_http2streamState.T_http2streamState), _1 : null };
    }
    @:keep
    static public function headerEncoder( _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn>):{ var _0 : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_Encoder.Encoder>; var _1 : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>; } {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn> = _sc;
        return { _0 : _sc._hpackEncoder, _1 : (stdgo.Go.setRef(_sc._headerWriteBuf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>) };
    }
    @:keep
    static public function flush( _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn>):stdgo.Error {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn> = _sc;
        return _sc._bw.flush();
    }
    @:keep
    static public function closeConn( _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn>):stdgo.Error {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn> = _sc;
        return _sc._conn.close();
    }
    @:keep
    static public function framer( _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn>):stdgo.Ref<stdgo._internal.net.http.Http_T_http2Framer.T_http2Framer> {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn> = _sc;
        return _sc._framer;
    }
    @:keep
    static public function _curOpenStreams( _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn>):stdgo.GoUInt32 {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn> = _sc;
        _sc._serveG._check();
        return (_sc._curClientStreams + _sc._curPushedStreams : stdgo.GoUInt32);
    }
    @:keep
    static public function _maxHeaderListSize( _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn>):stdgo.GoUInt32 {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn> = _sc;
        var _n = (_sc._hs.maxHeaderBytes : stdgo.GoInt);
        if ((_n <= (0 : stdgo.GoInt) : Bool)) {
            _n = (1048576 : stdgo.GoInt);
        };
        {};
        {};
        return ((_n + (320 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt32);
    }
    @:keep
    static public function _rejectConn( _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn>, _err:stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode, _debug:stdgo.GoString):Void {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn> = _sc;
        _sc._vlogf(("http2: server rejecting conn: %v, %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_err)), stdgo.Go.toInterface(_debug));
        _sc._framer.writeGoAway((0u32 : stdgo.GoUInt32), _err, (_debug : stdgo.Slice<stdgo.GoUInt8>));
        _sc._bw.flush();
        _sc._conn.close();
    }
}
