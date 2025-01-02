package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_transferWriter_asInterface) class T_transferWriter_static_extension {
    @:keep
    @:tdfield
    static public function _unwrapBody( _t:stdgo.Ref<stdgo._internal.net.http.Http_T_transferWriter.T_transferWriter>):stdgo._internal.io.Io_Reader.Reader {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_T_transferWriter.T_transferWriter> = _t;
        {
            var __tmp__ = stdgo._internal.net.http.Http__unwrapNopCloser._unwrapNopCloser((@:checkr _t ?? throw "null pointer dereference").body), _r:stdgo._internal.io.Io_Reader.Reader = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                return _r;
            };
        };
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _t ?? throw "null pointer dereference").body) : stdgo.Ref<stdgo._internal.net.http.Http_T_readTrackingBody.T_readTrackingBody>)) : stdgo.Ref<stdgo._internal.net.http.Http_T_readTrackingBody.T_readTrackingBody>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.net.http.Http_T_readTrackingBody.T_readTrackingBody>), _1 : false };
            }, _r = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                (@:checkr _r ?? throw "null pointer dereference")._didRead = true;
                return (@:checkr _r ?? throw "null pointer dereference").readCloser;
            };
        };
        return (@:checkr _t ?? throw "null pointer dereference").body;
    }
    @:keep
    @:tdfield
    static public function _doBodyCopy( _t:stdgo.Ref<stdgo._internal.net.http.Http_T_transferWriter.T_transferWriter>, _dst:stdgo._internal.io.Io_Writer.Writer, _src:stdgo._internal.io.Io_Reader.Reader):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_T_transferWriter.T_transferWriter> = _t;
        var _n = (0 : stdgo.GoInt64), _err = (null : stdgo.Error);
        {
            var __tmp__ = stdgo._internal.io.Io_copy.copy(_dst, _src);
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if (((_err != null) && (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo._internal.io.Io_eOF.eOF)) : Bool)) {
            (@:checkr _t ?? throw "null pointer dereference")._bodyReadError = _err;
        };
        return { _0 : _n, _1 : _err };
    }
    @:keep
    @:tdfield
    static public function _writeBody( _t:stdgo.Ref<stdgo._internal.net.http.Http_T_transferWriter.T_transferWriter>, _w:stdgo._internal.io.Io_Writer.Writer):stdgo.Error {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_T_transferWriter.T_transferWriter> = _t;
        var __deferstack__:Array<Void -> Void> = [];
        var _err = (null : stdgo.Error);
        try {
            var _ncopy:stdgo.GoInt64 = (0 : stdgo.GoInt64);
            var _closed = (false : Bool);
            {
                __deferstack__.unshift(() -> ({
                    var a = function():Void {
                        if ((_closed || ((@:checkr _t ?? throw "null pointer dereference").bodyCloser == null) : Bool)) {
                            return;
                        };
                        {
                            var _closeErr = ((@:checkr _t ?? throw "null pointer dereference").bodyCloser.close() : stdgo.Error);
                            if (((_closeErr != null) && (_err == null) : Bool)) {
                                _err = _closeErr;
                            };
                        };
                    };
                    a();
                }));
            };
            if ((@:checkr _t ?? throw "null pointer dereference").body != null) {
                var _body = @:check2r _t._unwrapBody();
                if (stdgo._internal.net.http.Http__chunked._chunked((@:checkr _t ?? throw "null pointer dereference").transferEncoding)) {
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_w) : stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>)) : stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>), _1 : false };
                        }, _bw = __tmp__._0, _ok = __tmp__._1;
                        if ((_ok && !(@:checkr _t ?? throw "null pointer dereference").isResponse : Bool)) {
                            _w = stdgo.Go.asInterface((stdgo.Go.setRef(({ writer : _bw } : stdgo._internal.net.http.internal.Internal_FlushAfterChunkWriter.FlushAfterChunkWriter)) : stdgo.Ref<stdgo._internal.net.http.internal.Internal_FlushAfterChunkWriter.FlushAfterChunkWriter>));
                        };
                    };
                    var _cw = (stdgo._internal.net.http.internal.Internal_newChunkedWriter.newChunkedWriter(_w) : stdgo._internal.io.Io_WriteCloser.WriteCloser);
                    {
                        var __tmp__ = @:check2r _t._doBodyCopy(_cw, _body);
                        _err = __tmp__._1;
                    };
                    if (_err == null) {
                        _err = _cw.close();
                    };
                } else if ((@:checkr _t ?? throw "null pointer dereference").contentLength == ((-1i64 : stdgo.GoInt64))) {
                    var _dst = (_w : stdgo._internal.io.Io_Writer.Writer);
                    if ((@:checkr _t ?? throw "null pointer dereference").method == (("CONNECT" : stdgo.GoString))) {
                        _dst = stdgo.Go.asInterface((new stdgo._internal.net.http.Http_T_bufioFlushWriter.T_bufioFlushWriter(_dst) : stdgo._internal.net.http.Http_T_bufioFlushWriter.T_bufioFlushWriter));
                    };
                    {
                        var __tmp__ = @:check2r _t._doBodyCopy(_dst, _body);
                        _ncopy = __tmp__._0;
                        _err = __tmp__._1;
                    };
                } else {
                    {
                        var __tmp__ = @:check2r _t._doBodyCopy(_w, stdgo._internal.io.Io_limitReader.limitReader(_body, (@:checkr _t ?? throw "null pointer dereference").contentLength));
                        _ncopy = __tmp__._0;
                        _err = __tmp__._1;
                    };
                    if (_err != null) {
                        {
                            for (defer in __deferstack__) {
                                __deferstack__.remove(defer);
                                defer();
                            };
                            return _err;
                        };
                    };
                    var _nextra:stdgo.GoInt64 = (0 : stdgo.GoInt64);
                    {
                        var __tmp__ = @:check2r _t._doBodyCopy(stdgo._internal.io.Io_discard.discard, _body);
                        _nextra = __tmp__._0;
                        _err = __tmp__._1;
                    };
                    _ncopy = (_ncopy + (_nextra) : stdgo.GoInt64);
                };
                if (_err != null) {
                    {
                        for (defer in __deferstack__) {
                            __deferstack__.remove(defer);
                            defer();
                        };
                        return _err;
                    };
                };
            };
            if ((@:checkr _t ?? throw "null pointer dereference").bodyCloser != null) {
                _closed = true;
                {
                    var _err = ((@:checkr _t ?? throw "null pointer dereference").bodyCloser.close() : stdgo.Error);
                    if (_err != null) {
                        {
                            for (defer in __deferstack__) {
                                __deferstack__.remove(defer);
                                defer();
                            };
                            return _err;
                        };
                    };
                };
            };
            if (((!(@:checkr _t ?? throw "null pointer dereference").responseToHEAD && (@:checkr _t ?? throw "null pointer dereference").contentLength != ((-1i64 : stdgo.GoInt64)) : Bool) && ((@:checkr _t ?? throw "null pointer dereference").contentLength != _ncopy) : Bool)) {
                {
                    final __ret__:stdgo.Error = _err = stdgo._internal.fmt.Fmt_errorf.errorf(("http: ContentLength=%d with Body length %d" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _t ?? throw "null pointer dereference").contentLength), stdgo.Go.toInterface(_ncopy));
                    for (defer in __deferstack__) {
                        __deferstack__.remove(defer);
                        defer();
                    };
                    return __ret__;
                };
            };
            if (stdgo._internal.net.http.Http__chunked._chunked((@:checkr _t ?? throw "null pointer dereference").transferEncoding)) {
                if ((@:checkr _t ?? throw "null pointer dereference").trailer != null) {
                    {
                        var _err = ((@:checkr _t ?? throw "null pointer dereference").trailer.write(_w) : stdgo.Error);
                        if (_err != null) {
                            {
                                for (defer in __deferstack__) {
                                    __deferstack__.remove(defer);
                                    defer();
                                };
                                return _err;
                            };
                        };
                    };
                };
                {
                    var __tmp__ = stdgo._internal.io.Io_writeString.writeString(_w, ("\r\n" : stdgo.GoString));
                    _err = __tmp__._1;
                };
            };
            {
                for (defer in __deferstack__) {
                    __deferstack__.remove(defer);
                    defer();
                };
                return _err;
            };
            {
                for (defer in __deferstack__) {
                    __deferstack__.remove(defer);
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return _err;
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
                __deferstack__.remove(defer);
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return _err;
        };
    }
    @:keep
    @:tdfield
    static public function _writeHeader( _t:stdgo.Ref<stdgo._internal.net.http.Http_T_transferWriter.T_transferWriter>, _w:stdgo._internal.io.Io_Writer.Writer, _trace:stdgo.Ref<stdgo._internal.net.http.httptrace.Httptrace_ClientTrace.ClientTrace>):stdgo.Error {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_T_transferWriter.T_transferWriter> = _t;
        if (((@:checkr _t ?? throw "null pointer dereference").close && !stdgo._internal.net.http.Http__hasToken._hasToken((@:checkr _t ?? throw "null pointer dereference").header._get(("Connection" : stdgo.GoString))?.__copy__(), ("close" : stdgo.GoString)) : Bool)) {
            {
                var __tmp__ = stdgo._internal.io.Io_writeString.writeString(_w, ("Connection: close\r\n" : stdgo.GoString)), __35337:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
            };
            if (((_trace != null && ((_trace : Dynamic).__nil__ == null || !(_trace : Dynamic).__nil__)) && ((@:checkr _trace ?? throw "null pointer dereference").wroteHeaderField != null) : Bool)) {
                (@:checkr _trace ?? throw "null pointer dereference").wroteHeaderField(("Connection" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("close" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>));
            };
        };
        if (@:check2r _t._shouldSendContentLength()) {
            {
                var __tmp__ = stdgo._internal.io.Io_writeString.writeString(_w, ("Content-Length: " : stdgo.GoString)), __35337:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
            };
            {
                var __tmp__ = stdgo._internal.io.Io_writeString.writeString(_w, (stdgo._internal.strconv.Strconv_formatInt.formatInt((@:checkr _t ?? throw "null pointer dereference").contentLength, (10 : stdgo.GoInt)) + ("\r\n" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__()), __35338:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
            };
            if (((_trace != null && ((_trace : Dynamic).__nil__ == null || !(_trace : Dynamic).__nil__)) && ((@:checkr _trace ?? throw "null pointer dereference").wroteHeaderField != null) : Bool)) {
                (@:checkr _trace ?? throw "null pointer dereference").wroteHeaderField(("Content-Length" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(1, 1, ...[stdgo._internal.strconv.Strconv_formatInt.formatInt((@:checkr _t ?? throw "null pointer dereference").contentLength, (10 : stdgo.GoInt))?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>));
            };
        } else if (stdgo._internal.net.http.Http__chunked._chunked((@:checkr _t ?? throw "null pointer dereference").transferEncoding)) {
            {
                var __tmp__ = stdgo._internal.io.Io_writeString.writeString(_w, ("Transfer-Encoding: chunked\r\n" : stdgo.GoString)), __35337:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
            };
            if (((_trace != null && ((_trace : Dynamic).__nil__ == null || !(_trace : Dynamic).__nil__)) && ((@:checkr _trace ?? throw "null pointer dereference").wroteHeaderField != null) : Bool)) {
                (@:checkr _trace ?? throw "null pointer dereference").wroteHeaderField(("Transfer-Encoding" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("chunked" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>));
            };
        };
        if ((@:checkr _t ?? throw "null pointer dereference").trailer != null) {
            var _keys = (new stdgo.Slice<stdgo.GoString>((0 : stdgo.GoInt).toBasic(), ((@:checkr _t ?? throw "null pointer dereference").trailer.length)).__setString__() : stdgo.Slice<stdgo.GoString>);
            for (_k => _ in (@:checkr _t ?? throw "null pointer dereference").trailer) {
                _k = stdgo._internal.net.http.Http_canonicalHeaderKey.canonicalHeaderKey(_k?.__copy__())?.__copy__();
                {
                    final __value__ = _k;
                    if (__value__ == (("Transfer-Encoding" : stdgo.GoString)) || __value__ == (("Trailer" : stdgo.GoString)) || __value__ == (("Content-Length" : stdgo.GoString))) {
                        return stdgo._internal.net.http.Http__badStringError._badStringError(("invalid Trailer key" : stdgo.GoString), _k?.__copy__());
                    };
                };
                _keys = (_keys.__append__(_k?.__copy__()));
            };
            if (((_keys.length) > (0 : stdgo.GoInt) : Bool)) {
                stdgo._internal.sort.Sort_strings.strings(_keys);
                {
                    var __tmp__ = stdgo._internal.io.Io_writeString.writeString(_w, ((("Trailer: " : stdgo.GoString) + stdgo._internal.strings.Strings_join.join(_keys, ("," : stdgo.GoString))?.__copy__() : stdgo.GoString) + ("\r\n" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__()), __35337:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        return _err;
                    };
                };
                if (((_trace != null && ((_trace : Dynamic).__nil__ == null || !(_trace : Dynamic).__nil__)) && ((@:checkr _trace ?? throw "null pointer dereference").wroteHeaderField != null) : Bool)) {
                    (@:checkr _trace ?? throw "null pointer dereference").wroteHeaderField(("Trailer" : stdgo.GoString), _keys);
                };
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _shouldSendContentLength( _t:stdgo.Ref<stdgo._internal.net.http.Http_T_transferWriter.T_transferWriter>):Bool {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_T_transferWriter.T_transferWriter> = _t;
        if (stdgo._internal.net.http.Http__chunked._chunked((@:checkr _t ?? throw "null pointer dereference").transferEncoding)) {
            return false;
        };
        if (((@:checkr _t ?? throw "null pointer dereference").contentLength > (0i64 : stdgo.GoInt64) : Bool)) {
            return true;
        };
        if (((@:checkr _t ?? throw "null pointer dereference").contentLength < (0i64 : stdgo.GoInt64) : Bool)) {
            return false;
        };
        if ((((@:checkr _t ?? throw "null pointer dereference").method == (("POST" : stdgo.GoString)) || (@:checkr _t ?? throw "null pointer dereference").method == (("PUT" : stdgo.GoString)) : Bool) || ((@:checkr _t ?? throw "null pointer dereference").method == ("PATCH" : stdgo.GoString)) : Bool)) {
            return true;
        };
        if ((((@:checkr _t ?? throw "null pointer dereference").contentLength == (0i64 : stdgo.GoInt64)) && stdgo._internal.net.http.Http__isIdentity._isIdentity((@:checkr _t ?? throw "null pointer dereference").transferEncoding) : Bool)) {
            if ((((@:checkr _t ?? throw "null pointer dereference").method == ("GET" : stdgo.GoString)) || ((@:checkr _t ?? throw "null pointer dereference").method == ("HEAD" : stdgo.GoString)) : Bool)) {
                return false;
            };
            return true;
        };
        return false;
    }
    @:keep
    @:tdfield
    static public function _probeRequestBody( _t:stdgo.Ref<stdgo._internal.net.http.Http_T_transferWriter.T_transferWriter>):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_T_transferWriter.T_transferWriter> = _t;
        (@:checkr _t ?? throw "null pointer dereference").byteReadCh = (new stdgo.Chan<stdgo._internal.net.http.Http_T_readResult.T_readResult>((1 : stdgo.GoInt).toBasic(), () -> ({} : stdgo._internal.net.http.Http_T_readResult.T_readResult)) : stdgo.Chan<stdgo._internal.net.http.Http_T_readResult.T_readResult>);
        stdgo.Go.routine(() -> ({
            var a = function(_body:stdgo._internal.io.Io_Reader.Reader):Void {
                var _buf:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(1, 1, ...[for (i in 0 ... 1) (0 : stdgo.GoUInt8)]);
                var _rres:stdgo._internal.net.http.Http_T_readResult.T_readResult = ({} : stdgo._internal.net.http.Http_T_readResult.T_readResult);
                {
                    var __tmp__ = _body.read((_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
                    _rres._n = __tmp__._0;
                    _rres._err = __tmp__._1;
                };
                if (_rres._n == ((1 : stdgo.GoInt))) {
                    _rres._b = _buf[(0 : stdgo.GoInt)];
                };
                (@:checkr _t ?? throw "null pointer dereference").byteReadCh.__send__(_rres);
                if ((@:checkr _t ?? throw "null pointer dereference").byteReadCh != null) (@:checkr _t ?? throw "null pointer dereference").byteReadCh.__close__();
            };
            a((@:checkr _t ?? throw "null pointer dereference").body);
        }));
        var _timer = stdgo._internal.time.Time_newTimer.newTimer((200000000i64 : stdgo._internal.time.Time_Duration.Duration));
        {
            var __select__ = true;
            while (__select__) {
                if ((@:checkr _t ?? throw "null pointer dereference").byteReadCh != null && (@:checkr _t ?? throw "null pointer dereference").byteReadCh.__isGet__()) {
                    __select__ = false;
                    {
                        var _rres = (@:checkr _t ?? throw "null pointer dereference").byteReadCh.__get__();
                        {
                            @:check2r _timer.stop();
                            if (((_rres._n == (0 : stdgo.GoInt)) && (stdgo.Go.toInterface(_rres._err) == stdgo.Go.toInterface(stdgo._internal.io.Io_eOF.eOF)) : Bool)) {
                                (@:checkr _t ?? throw "null pointer dereference").body = (null : stdgo._internal.io.Io_Reader.Reader);
                                (@:checkr _t ?? throw "null pointer dereference").contentLength = (0i64 : stdgo.GoInt64);
                            } else if (_rres._n == ((1 : stdgo.GoInt))) {
                                if (_rres._err != null) {
                                    (@:checkr _t ?? throw "null pointer dereference").body = stdgo._internal.io.Io_multiReader.multiReader(stdgo.Go.asInterface((stdgo.Go.setRef(({ _b : _rres._b } : stdgo._internal.net.http.Http_T_byteReader.T_byteReader)) : stdgo.Ref<stdgo._internal.net.http.Http_T_byteReader.T_byteReader>)), stdgo.Go.asInterface((new stdgo._internal.net.http.Http_T_errorReader.T_errorReader(_rres._err) : stdgo._internal.net.http.Http_T_errorReader.T_errorReader)));
                                } else {
                                    (@:checkr _t ?? throw "null pointer dereference").body = stdgo._internal.io.Io_multiReader.multiReader(stdgo.Go.asInterface((stdgo.Go.setRef(({ _b : _rres._b } : stdgo._internal.net.http.Http_T_byteReader.T_byteReader)) : stdgo.Ref<stdgo._internal.net.http.Http_T_byteReader.T_byteReader>)), (@:checkr _t ?? throw "null pointer dereference").body);
                                };
                            } else if (_rres._err != null) {
                                (@:checkr _t ?? throw "null pointer dereference").body = stdgo.Go.asInterface((new stdgo._internal.net.http.Http_T_errorReader.T_errorReader(_rres._err) : stdgo._internal.net.http.Http_T_errorReader.T_errorReader));
                            };
                        };
                    };
                } else if ((@:checkr _timer ?? throw "null pointer dereference").c != null && (@:checkr _timer ?? throw "null pointer dereference").c.__isGet__()) {
                    __select__ = false;
                    {
                        (@:checkr _timer ?? throw "null pointer dereference").c.__get__();
                        {
                            (@:checkr _t ?? throw "null pointer dereference").body = stdgo._internal.io.Io_multiReader.multiReader(stdgo.Go.asInterface((new stdgo._internal.net.http.Http_T_finishAsyncByteRead.T_finishAsyncByteRead(_t) : stdgo._internal.net.http.Http_T_finishAsyncByteRead.T_finishAsyncByteRead)), (@:checkr _t ?? throw "null pointer dereference").body);
                            (@:checkr _t ?? throw "null pointer dereference").flushHeaders = true;
                        };
                    };
                };
                #if !js Sys.sleep(0.01) #else null #end;
                stdgo._internal.internal.Async.tick();
            };
        };
    }
    @:keep
    @:tdfield
    static public function _shouldSendChunkedRequestBody( _t:stdgo.Ref<stdgo._internal.net.http.Http_T_transferWriter.T_transferWriter>):Bool {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_T_transferWriter.T_transferWriter> = _t;
        if ((((@:checkr _t ?? throw "null pointer dereference").contentLength >= (0i64 : stdgo.GoInt64) : Bool) || ((@:checkr _t ?? throw "null pointer dereference").body == null) : Bool)) {
            return false;
        };
        if ((@:checkr _t ?? throw "null pointer dereference").method == (("CONNECT" : stdgo.GoString))) {
            return false;
        };
        if (stdgo._internal.net.http.Http__requestMethodUsuallyLacksBody._requestMethodUsuallyLacksBody((@:checkr _t ?? throw "null pointer dereference").method?.__copy__())) {
            @:check2r _t._probeRequestBody();
            return (@:checkr _t ?? throw "null pointer dereference").body != null;
        };
        return true;
    }
}
