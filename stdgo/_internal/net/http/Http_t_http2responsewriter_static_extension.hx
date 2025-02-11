package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2responseWriter_asInterface) class T_http2responseWriter_static_extension {
    @:keep
    @:tdfield
    static public function push( _w:stdgo.Ref<stdgo._internal.net.http.Http_t_http2responsewriter.T_http2responseWriter>, _target:stdgo.GoString, _opts:stdgo.Ref<stdgo._internal.net.http.Http_pushoptions.PushOptions>):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_t_http2responsewriter.T_http2responseWriter> = _w;
        var _st = (@:checkr (@:checkr _w ?? throw "null pointer dereference")._rws ?? throw "null pointer dereference")._stream;
        var _sc = (@:checkr _st ?? throw "null pointer dereference")._sc;
        (@:checkr _sc ?? throw "null pointer dereference")._serveG._checkNotOn();
        if (@:check2r _st._isPushed()) {
            return stdgo._internal.net.http.Http__http2errrecursivepush._http2ErrRecursivePush;
        };
        if ((_opts == null || (_opts : Dynamic).__nil__)) {
            _opts = stdgo._internal.net.http.Http_new_.new_(stdgo._internal.net.http.Http_stdgo._internal.net.http.http_pushoptions_static_extension.pushoptions_static_extension.stdgo._internal.net.http.Http_pushoptions_static_extension.PushOptions_static_extension);
        };
        if ((@:checkr _opts ?? throw "null pointer dereference").method == ((stdgo.Go.str() : stdgo.GoString))) {
            (@:checkr _opts ?? throw "null pointer dereference").method = ("GET" : stdgo.GoString);
        };
        if ((@:checkr _opts ?? throw "null pointer dereference").header == null) {
            (@:checkr _opts ?? throw "null pointer dereference").header = (({
                final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
                x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.http.Http_header.Header);
        };
        var _wantScheme = (("http" : stdgo.GoString) : stdgo.GoString);
        if (((@:checkr (@:checkr (@:checkr _w ?? throw "null pointer dereference")._rws ?? throw "null pointer dereference")._req ?? throw "null pointer dereference").tLS != null && (((@:checkr (@:checkr (@:checkr _w ?? throw "null pointer dereference")._rws ?? throw "null pointer dereference")._req ?? throw "null pointer dereference").tLS : Dynamic).__nil__ == null || !((@:checkr (@:checkr (@:checkr _w ?? throw "null pointer dereference")._rws ?? throw "null pointer dereference")._req ?? throw "null pointer dereference").tLS : Dynamic).__nil__))) {
            _wantScheme = ("https" : stdgo.GoString);
        };
        var __tmp__ = stdgo._internal.net.http.Http__url._url.parse(_target?.__copy__()), _u:stdgo.Ref<stdgo._internal.net.url.Url_url.URL> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        if ((@:checkr _u ?? throw "null pointer dereference").scheme == ((stdgo.Go.str() : stdgo.GoString))) {
            if (!stdgo._internal.net.http.Http__strings._strings.hasPrefix(_target?.__copy__(), ("/" : stdgo.GoString))) {
                return stdgo._internal.net.http.Http__fmt._fmt.errorf(("target must be an absolute URL or an absolute path: %q" : stdgo.GoString), stdgo.Go.toInterface(_target));
            };
            (@:checkr _u ?? throw "null pointer dereference").scheme = _wantScheme?.__copy__();
            (@:checkr _u ?? throw "null pointer dereference").host = (@:checkr (@:checkr (@:checkr _w ?? throw "null pointer dereference")._rws ?? throw "null pointer dereference")._req ?? throw "null pointer dereference").host?.__copy__();
        } else {
            if ((@:checkr _u ?? throw "null pointer dereference").scheme != (_wantScheme)) {
                return stdgo._internal.net.http.Http__fmt._fmt.errorf(("cannot push URL with scheme %q from request with scheme %q" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _u ?? throw "null pointer dereference").scheme), stdgo.Go.toInterface(_wantScheme));
            };
            if ((@:checkr _u ?? throw "null pointer dereference").host == ((stdgo.Go.str() : stdgo.GoString))) {
                return stdgo._internal.net.http.Http__errors._errors.new_(("URL must have a host" : stdgo.GoString));
            };
        };
        for (_k => _ in (@:checkr _opts ?? throw "null pointer dereference").header) {
            if (stdgo._internal.net.http.Http__strings._strings.hasPrefix(_k?.__copy__(), (":" : stdgo.GoString))) {
                return stdgo._internal.net.http.Http__fmt._fmt.errorf(("promised request headers cannot include pseudo header %q" : stdgo.GoString), stdgo.Go.toInterface(_k));
            };
            if ((((((stdgo._internal.net.http.Http__http2asciiequalfold._http2asciiEqualFold(_k?.__copy__(), ("content-length" : stdgo.GoString)) || stdgo._internal.net.http.Http__http2asciiequalfold._http2asciiEqualFold(_k?.__copy__(), ("content-encoding" : stdgo.GoString)) : Bool) || stdgo._internal.net.http.Http__http2asciiequalfold._http2asciiEqualFold(_k?.__copy__(), ("trailer" : stdgo.GoString)) : Bool) || stdgo._internal.net.http.Http__http2asciiequalfold._http2asciiEqualFold(_k?.__copy__(), ("te" : stdgo.GoString)) : Bool) || stdgo._internal.net.http.Http__http2asciiequalfold._http2asciiEqualFold(_k?.__copy__(), ("expect" : stdgo.GoString)) : Bool) || stdgo._internal.net.http.Http__http2asciiequalfold._http2asciiEqualFold(_k?.__copy__(), ("host" : stdgo.GoString)) : Bool)) {
                return stdgo._internal.net.http.Http__fmt._fmt.errorf(("promised request headers cannot include %q" : stdgo.GoString), stdgo.Go.toInterface(_k));
            };
        };
        {
            var _err = (stdgo._internal.net.http.Http__http2checkvalidhttp2requestheaders._http2checkValidHTTP2RequestHeaders((@:checkr _opts ?? throw "null pointer dereference").header) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        if ((((@:checkr _opts ?? throw "null pointer dereference").method != ("GET" : stdgo.GoString)) && ((@:checkr _opts ?? throw "null pointer dereference").method != ("HEAD" : stdgo.GoString)) : Bool)) {
            return stdgo._internal.net.http.Http__fmt._fmt.errorf(("method %q must be GET or HEAD" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _opts ?? throw "null pointer dereference").method));
        };
        var _msg = (stdgo.Go.setRef(({ _parent : _st, _method : (@:checkr _opts ?? throw "null pointer dereference").method?.__copy__(), _url : _u, _header : stdgo._internal.net.http.Http__http2cloneheader._http2cloneHeader((@:checkr _opts ?? throw "null pointer dereference").header), _done : (stdgo.Go.typeAssert((stdgo._internal.net.http.Http__http2errchanpool._http2errChanPool.get() : stdgo.Chan<stdgo.Error>)) : stdgo.Chan<stdgo.Error>) } : stdgo._internal.net.http.Http_t_http2startpushrequest.T_http2startPushRequest)) : stdgo.Ref<stdgo._internal.net.http.Http_t_http2startpushrequest.T_http2startPushRequest>);
        {
            var __select__ = true;
            while (__select__) {
                if ((@:checkr _sc ?? throw "null pointer dereference")._doneServing != null && (@:checkr _sc ?? throw "null pointer dereference")._doneServing.__isGet__()) {
                    __select__ = false;
                    {
                        (@:checkr _sc ?? throw "null pointer dereference")._doneServing.__get__();
                        {
                            return stdgo._internal.net.http.Http__http2errclientdisconnected._http2errClientDisconnected;
                        };
                    };
                } else if ((@:checkr _st ?? throw "null pointer dereference")._cw != null && (@:checkr _st ?? throw "null pointer dereference")._cw.__isGet__()) {
                    __select__ = false;
                    {
                        (@:checkr _st ?? throw "null pointer dereference")._cw.__get__();
                        {
                            return stdgo._internal.net.http.Http__http2errstreamclosed._http2errStreamClosed;
                        };
                    };
                } else if ((@:checkr _sc ?? throw "null pointer dereference")._serveMsgCh != null && (@:checkr _sc ?? throw "null pointer dereference")._serveMsgCh.__isSend__()) {
                    __select__ = false;
                    {
                        (@:checkr _sc ?? throw "null pointer dereference")._serveMsgCh.__send__(_msg);
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
                    if ((@:checkr _sc ?? throw "null pointer dereference")._doneServing != null && (@:checkr _sc ?? throw "null pointer dereference")._doneServing.__isGet__()) {
                        __select__ = false;
                        {
                            (@:checkr _sc ?? throw "null pointer dereference")._doneServing.__get__();
                            {
                                return stdgo._internal.net.http.Http__http2errclientdisconnected._http2errClientDisconnected;
                            };
                        };
                    } else if ((@:checkr _st ?? throw "null pointer dereference")._cw != null && (@:checkr _st ?? throw "null pointer dereference")._cw.__isGet__()) {
                        __select__ = false;
                        {
                            (@:checkr _st ?? throw "null pointer dereference")._cw.__get__();
                            {
                                return stdgo._internal.net.http.Http__http2errstreamclosed._http2errStreamClosed;
                            };
                        };
                    } else if ((@:checkr _msg ?? throw "null pointer dereference")._done != null && (@:checkr _msg ?? throw "null pointer dereference")._done.__isGet__()) {
                        __select__ = false;
                        {
                            var _err = (@:checkr _msg ?? throw "null pointer dereference")._done.__get__();
                            {
                                stdgo._internal.net.http.Http__http2errchanpool._http2errChanPool.put(stdgo.Go.toInterface((@:checkr _msg ?? throw "null pointer dereference")._done));
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
    @:tdfield
    static public function writeString( _w:stdgo.Ref<stdgo._internal.net.http.Http_t_http2responsewriter.T_http2responseWriter>, _s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_t_http2responsewriter.T_http2responseWriter> = _w;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        return {
            final __tmp__ = @:check2r _w._write((_s.length), (null : stdgo.Slice<stdgo.GoUInt8>), _s?.__copy__());
            _n = __tmp__._0;
            _err = __tmp__._1;
            { _0 : _n, _1 : _err };
        };
    }
    @:keep
    @:tdfield
    static public function write( _w:stdgo.Ref<stdgo._internal.net.http.Http_t_http2responsewriter.T_http2responseWriter>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_t_http2responsewriter.T_http2responseWriter> = _w;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        return {
            final __tmp__ = @:check2r _w._write((_p.length), _p, (stdgo.Go.str() : stdgo.GoString)?.__copy__());
            _n = __tmp__._0;
            _err = __tmp__._1;
            { _0 : _n, _1 : _err };
        };
    }
    @:keep
    @:tdfield
    static public function writeHeader( _w:stdgo.Ref<stdgo._internal.net.http.Http_t_http2responsewriter.T_http2responseWriter>, _code:stdgo.GoInt):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_t_http2responsewriter.T_http2responseWriter> = _w;
        var _rws = (@:checkr _w ?? throw "null pointer dereference")._rws;
        if ((_rws == null || (_rws : Dynamic).__nil__)) {
            throw stdgo.Go.toInterface(("WriteHeader called after Handler finished" : stdgo.GoString));
        };
        @:check2r _rws._writeHeader(_code);
    }
    @:keep
    @:tdfield
    static public function header( _w:stdgo.Ref<stdgo._internal.net.http.Http_t_http2responsewriter.T_http2responseWriter>):stdgo._internal.net.http.Http_header.Header {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_t_http2responsewriter.T_http2responseWriter> = _w;
        var _rws = (@:checkr _w ?? throw "null pointer dereference")._rws;
        if ((_rws == null || (_rws : Dynamic).__nil__)) {
            throw stdgo.Go.toInterface(("Header called after Handler finished" : stdgo.GoString));
        };
        if ((@:checkr _rws ?? throw "null pointer dereference")._handlerHeader == null) {
            (@:checkr _rws ?? throw "null pointer dereference")._handlerHeader = (({
                final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
                x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.http.Http_header.Header);
        };
        return (@:checkr _rws ?? throw "null pointer dereference")._handlerHeader;
    }
    @:keep
    @:tdfield
    static public function closeNotify( _w:stdgo.Ref<stdgo._internal.net.http.Http_t_http2responsewriter.T_http2responseWriter>):stdgo.Chan<Bool> {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_t_http2responsewriter.T_http2responseWriter> = _w;
        var _rws = (@:checkr _w ?? throw "null pointer dereference")._rws;
        if ((_rws == null || (_rws : Dynamic).__nil__)) {
            throw stdgo.Go.toInterface(("CloseNotify called after Handler finished" : stdgo.GoString));
        };
        @:check2 (@:checkr _rws ?? throw "null pointer dereference")._closeNotifierMu.lock();
        var _ch = (@:checkr _rws ?? throw "null pointer dereference")._closeNotifierCh;
        if (_ch == null) {
            _ch = (new stdgo.Chan<Bool>((1 : stdgo.GoInt).toBasic(), () -> false) : stdgo.Chan<Bool>);
            (@:checkr _rws ?? throw "null pointer dereference")._closeNotifierCh = _ch;
            var _cw = ((@:checkr (@:checkr _rws ?? throw "null pointer dereference")._stream ?? throw "null pointer dereference")._cw : stdgo._internal.net.http.Http_t_http2closewaiter.T_http2closeWaiter);
            stdgo.Go.routine(() -> ({
                var a = function():Void {
                    _cw.wait_();
                    _ch.__send__(true);
                };
                a();
            }));
        };
        @:check2 (@:checkr _rws ?? throw "null pointer dereference")._closeNotifierMu.unlock();
        return _ch;
    }
    @:keep
    @:tdfield
    static public function flushError( _w:stdgo.Ref<stdgo._internal.net.http.Http_t_http2responsewriter.T_http2responseWriter>):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_t_http2responsewriter.T_http2responseWriter> = _w;
        var _rws = (@:checkr _w ?? throw "null pointer dereference")._rws;
        if ((_rws == null || (_rws : Dynamic).__nil__)) {
            throw stdgo.Go.toInterface(("Header called after Handler finished" : stdgo.GoString));
        };
        var _err:stdgo.Error = (null : stdgo.Error);
        if ((@:check2r (@:checkr _rws ?? throw "null pointer dereference")._bw.buffered() > (0 : stdgo.GoInt) : Bool)) {
            _err = @:check2r (@:checkr _rws ?? throw "null pointer dereference")._bw.flush();
        } else {
            {
                var __tmp__ = (new stdgo._internal.net.http.Http_t_http2chunkwriter.T_http2chunkWriter(_rws) : stdgo._internal.net.http.Http_t_http2chunkwriter.T_http2chunkWriter).write((null : stdgo.Slice<stdgo.GoUInt8>));
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err == null) {
                {
                    var __select__ = true;
                    while (__select__) {
                        if ((@:checkr (@:checkr _rws ?? throw "null pointer dereference")._stream ?? throw "null pointer dereference")._cw != null && (@:checkr (@:checkr _rws ?? throw "null pointer dereference")._stream ?? throw "null pointer dereference")._cw.__isGet__()) {
                            __select__ = false;
                            {
                                (@:checkr (@:checkr _rws ?? throw "null pointer dereference")._stream ?? throw "null pointer dereference")._cw.__get__();
                                {
                                    _err = (@:checkr (@:checkr _rws ?? throw "null pointer dereference")._stream ?? throw "null pointer dereference")._closeErr;
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
    @:tdfield
    static public function flush( _w:stdgo.Ref<stdgo._internal.net.http.Http_t_http2responsewriter.T_http2responseWriter>):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_t_http2responsewriter.T_http2responseWriter> = _w;
        @:check2r _w.flushError();
    }
    @:keep
    @:tdfield
    static public function setWriteDeadline( _w:stdgo.Ref<stdgo._internal.net.http.Http_t_http2responsewriter.T_http2responseWriter>, _deadline:stdgo._internal.time.Time_time.Time):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_t_http2responsewriter.T_http2responseWriter> = _w;
        var _st = (@:checkr (@:checkr _w ?? throw "null pointer dereference")._rws ?? throw "null pointer dereference")._stream;
        if ((!_deadline.isZero() && _deadline.before(stdgo._internal.net.http.Http__time._time.now()?.__copy__()) : Bool)) {
            @:check2r _st._onWriteTimeout();
            return (null : stdgo.Error);
        };
        @:check2r (@:checkr (@:checkr _w ?? throw "null pointer dereference")._rws ?? throw "null pointer dereference")._conn._sendServeMsg(stdgo.Go.toInterface(function(_sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn>):Void {
            if (((@:checkr _st ?? throw "null pointer dereference")._writeDeadline != null && (((@:checkr _st ?? throw "null pointer dereference")._writeDeadline : Dynamic).__nil__ == null || !((@:checkr _st ?? throw "null pointer dereference")._writeDeadline : Dynamic).__nil__))) {
                if (!@:check2r (@:checkr _st ?? throw "null pointer dereference")._writeDeadline.stop()) {
                    return;
                };
            };
            if (_deadline.isZero()) {
                (@:checkr _st ?? throw "null pointer dereference")._writeDeadline = null;
            } else if (((@:checkr _st ?? throw "null pointer dereference")._writeDeadline == null || ((@:checkr _st ?? throw "null pointer dereference")._writeDeadline : Dynamic).__nil__)) {
                (@:checkr _st ?? throw "null pointer dereference")._writeDeadline = stdgo._internal.net.http.Http__time._time.afterFunc(_deadline.sub(stdgo._internal.net.http.Http__time._time.now()?.__copy__()), @:check2r _st._onWriteTimeout);
            } else {
                @:check2r (@:checkr _st ?? throw "null pointer dereference")._writeDeadline.reset(_deadline.sub(stdgo._internal.net.http.Http__time._time.now()?.__copy__()));
            };
        }));
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function setReadDeadline( _w:stdgo.Ref<stdgo._internal.net.http.Http_t_http2responsewriter.T_http2responseWriter>, _deadline:stdgo._internal.time.Time_time.Time):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_t_http2responsewriter.T_http2responseWriter> = _w;
        var _st = (@:checkr (@:checkr _w ?? throw "null pointer dereference")._rws ?? throw "null pointer dereference")._stream;
        if ((!_deadline.isZero() && _deadline.before(stdgo._internal.net.http.Http__time._time.now()?.__copy__()) : Bool)) {
            @:check2r _st._onReadTimeout();
            return (null : stdgo.Error);
        };
        @:check2r (@:checkr (@:checkr _w ?? throw "null pointer dereference")._rws ?? throw "null pointer dereference")._conn._sendServeMsg(stdgo.Go.toInterface(function(_sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn>):Void {
            if (((@:checkr _st ?? throw "null pointer dereference")._readDeadline != null && (((@:checkr _st ?? throw "null pointer dereference")._readDeadline : Dynamic).__nil__ == null || !((@:checkr _st ?? throw "null pointer dereference")._readDeadline : Dynamic).__nil__))) {
                if (!@:check2r (@:checkr _st ?? throw "null pointer dereference")._readDeadline.stop()) {
                    return;
                };
            };
            if (_deadline.isZero()) {
                (@:checkr _st ?? throw "null pointer dereference")._readDeadline = null;
            } else if (((@:checkr _st ?? throw "null pointer dereference")._readDeadline == null || ((@:checkr _st ?? throw "null pointer dereference")._readDeadline : Dynamic).__nil__)) {
                (@:checkr _st ?? throw "null pointer dereference")._readDeadline = stdgo._internal.net.http.Http__time._time.afterFunc(_deadline.sub(stdgo._internal.net.http.Http__time._time.now()?.__copy__()), @:check2r _st._onReadTimeout);
            } else {
                @:check2r (@:checkr _st ?? throw "null pointer dereference")._readDeadline.reset(_deadline.sub(stdgo._internal.net.http.Http__time._time.now()?.__copy__()));
            };
        }));
        return (null : stdgo.Error);
    }
}
