package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_response_asInterface) class T_response_static_extension {
    @:keep
    @:tdfield
    static public function closeNotify( _w:stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response>):stdgo.Chan<Bool> {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response> = _w;
        if (@:check2 (@:checkr _w ?? throw "null pointer dereference")._handlerDone.load()) {
            throw stdgo.Go.toInterface(("net/http: CloseNotify called after ServeHTTP finished" : stdgo.GoString));
        };
        return (@:checkr _w ?? throw "null pointer dereference")._closeNotifyCh;
    }
    @:keep
    @:tdfield
    static public function hijack( _w:stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response>):{ var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Ref<stdgo._internal.bufio.Bufio_ReadWriter.ReadWriter>; var _2 : stdgo.Error; } {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response> = _w;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _rwc = (null : stdgo._internal.net.Net_Conn.Conn), _buf = (null : stdgo.Ref<stdgo._internal.bufio.Bufio_ReadWriter.ReadWriter>), _err = (null : stdgo.Error);
        try {
            if (@:check2 (@:checkr _w ?? throw "null pointer dereference")._handlerDone.load()) {
                throw stdgo.Go.toInterface(("net/http: Hijack called after ServeHTTP finished" : stdgo.GoString));
            };
            if ((@:checkr _w ?? throw "null pointer dereference")._wroteHeader) {
                @:check2 (@:checkr _w ?? throw "null pointer dereference")._cw._flush();
            };
            var _c = (@:checkr _w ?? throw "null pointer dereference")._conn;
            @:check2 (@:checkr _c ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = @:check2 (@:checkr _c ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            {
                var __tmp__ = @:check2r _c._hijackLocked();
                _rwc = @:tmpset0 __tmp__._0;
                _buf = @:tmpset0 __tmp__._1;
                _err = @:tmpset0 __tmp__._2;
            };
            if (_err == null) {
                stdgo._internal.net.http.Http__putBufioWriter._putBufioWriter((@:checkr _w ?? throw "null pointer dereference")._w);
                (@:checkr _w ?? throw "null pointer dereference")._w = null;
            };
            {
                final __ret__:{ var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Ref<stdgo._internal.bufio.Bufio_ReadWriter.ReadWriter>; var _2 : stdgo.Error; } = {
                    final __tmp__:{ var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Ref<stdgo._internal.bufio.Bufio_ReadWriter.ReadWriter>; var _2 : stdgo.Error; } = { _0 : _rwc, _1 : _buf, _2 : _err };
                    _rwc = __tmp__._0;
                    _buf = __tmp__._1;
                    _err = __tmp__._2;
                    __tmp__;
                };
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
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return { _0 : _rwc, _1 : _buf, _2 : _err };
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
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
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return { _0 : _rwc, _1 : _buf, _2 : _err };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _sendExpectationFailed( _w:stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response>):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response> = _w;
        @:check2r _w.header().set(("Connection" : stdgo.GoString), ("close" : stdgo.GoString));
        @:check2r _w.writeHeader((417 : stdgo.GoInt));
        @:check2r _w._finishRequest();
    }
    @:keep
    @:tdfield
    static public function flushError( _w:stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response>):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response> = _w;
        if (!(@:checkr _w ?? throw "null pointer dereference")._wroteHeader) {
            @:check2r _w.writeHeader((200 : stdgo.GoInt));
        };
        var _err = (@:check2r (@:checkr _w ?? throw "null pointer dereference")._w.flush() : stdgo.Error);
        var _e2 = (@:check2 (@:checkr _w ?? throw "null pointer dereference")._cw._flush() : stdgo.Error);
        if (_err == null) {
            _err = _e2;
        };
        return _err;
    }
    @:keep
    @:tdfield
    static public function flush( _w:stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response>):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response> = _w;
        @:check2r _w.flushError();
    }
    @:keep
    @:tdfield
    static public function _closedRequestBodyEarly( _w:stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response>):Bool {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response> = _w;
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr (@:checkr _w ?? throw "null pointer dereference")._req ?? throw "null pointer dereference").body) : stdgo.Ref<stdgo._internal.net.http.Http_T_body.T_body>)) : stdgo.Ref<stdgo._internal.net.http.Http_T_body.T_body>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.net.http.Http_T_body.T_body>), _1 : false };
        }, _body = __tmp__._0, _ok = __tmp__._1;
        return (_ok && @:check2r _body._didEarlyClose() : Bool);
    }
    @:keep
    @:tdfield
    static public function _shouldReuseConnection( _w:stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response>):Bool {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response> = _w;
        if ((@:checkr _w ?? throw "null pointer dereference")._closeAfterReply) {
            return false;
        };
        if (((((@:checkr (@:checkr _w ?? throw "null pointer dereference")._req ?? throw "null pointer dereference").method != (("HEAD" : stdgo.GoString)) && (@:checkr _w ?? throw "null pointer dereference")._contentLength != ((-1i64 : stdgo.GoInt64)) : Bool) && @:check2r _w._bodyAllowed() : Bool) && ((@:checkr _w ?? throw "null pointer dereference")._contentLength != (@:checkr _w ?? throw "null pointer dereference")._written) : Bool)) {
            return false;
        };
        if ((@:checkr (@:checkr _w ?? throw "null pointer dereference")._conn ?? throw "null pointer dereference")._werr != null) {
            return false;
        };
        if (@:check2r _w._closedRequestBodyEarly()) {
            return false;
        };
        return true;
    }
    @:keep
    @:tdfield
    static public function _finishRequest( _w:stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response>):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response> = _w;
        @:check2 (@:checkr _w ?? throw "null pointer dereference")._handlerDone.store(true);
        if (!(@:checkr _w ?? throw "null pointer dereference")._wroteHeader) {
            @:check2r _w.writeHeader((200 : stdgo.GoInt));
        };
        @:check2r (@:checkr _w ?? throw "null pointer dereference")._w.flush();
        stdgo._internal.net.http.Http__putBufioWriter._putBufioWriter((@:checkr _w ?? throw "null pointer dereference")._w);
        @:check2 (@:checkr _w ?? throw "null pointer dereference")._cw._close();
        @:check2r (@:checkr (@:checkr _w ?? throw "null pointer dereference")._conn ?? throw "null pointer dereference")._bufw.flush();
        @:check2r (@:checkr (@:checkr _w ?? throw "null pointer dereference")._conn ?? throw "null pointer dereference")._r._abortPendingRead();
        (@:checkr _w ?? throw "null pointer dereference")._reqBody.close();
        if (((@:checkr (@:checkr _w ?? throw "null pointer dereference")._req ?? throw "null pointer dereference").multipartForm != null && (((@:checkr (@:checkr _w ?? throw "null pointer dereference")._req ?? throw "null pointer dereference").multipartForm : Dynamic).__nil__ == null || !((@:checkr (@:checkr _w ?? throw "null pointer dereference")._req ?? throw "null pointer dereference").multipartForm : Dynamic).__nil__))) {
            @:check2r (@:checkr (@:checkr _w ?? throw "null pointer dereference")._req ?? throw "null pointer dereference").multipartForm.removeAll();
        };
    }
    @:keep
    @:tdfield
    static public function _write( _w:stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response>, _lenData:stdgo.GoInt, _dataB:stdgo.Slice<stdgo.GoUInt8>, _dataS:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response> = _w;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if (@:check2r (@:checkr _w ?? throw "null pointer dereference")._conn._hijacked()) {
            if ((_lenData > (0 : stdgo.GoInt) : Bool)) {
                var _caller = (stdgo._internal.net.http.Http__relevantCaller._relevantCaller()?.__copy__() : stdgo._internal.runtime.Runtime_Frame.Frame);
                @:check2r (@:checkr (@:checkr _w ?? throw "null pointer dereference")._conn ?? throw "null pointer dereference")._server._logf(("http: response.Write on hijacked connection from %s (%s:%d)" : stdgo.GoString), stdgo.Go.toInterface(_caller.function_), stdgo.Go.toInterface(stdgo._internal.path.Path_base.base(_caller.file?.__copy__())), stdgo.Go.toInterface(_caller.line));
            };
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.net.http.Http_errHijacked.errHijacked };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        if (@:check2 (@:checkr _w ?? throw "null pointer dereference")._canWriteContinue.load()) {
            @:check2 (@:checkr _w ?? throw "null pointer dereference")._writeContinueMu.lock();
            @:check2 (@:checkr _w ?? throw "null pointer dereference")._canWriteContinue.store(false);
            @:check2 (@:checkr _w ?? throw "null pointer dereference")._writeContinueMu.unlock();
        };
        if (!(@:checkr _w ?? throw "null pointer dereference")._wroteHeader) {
            @:check2r _w.writeHeader((200 : stdgo.GoInt));
        };
        if (_lenData == ((0 : stdgo.GoInt))) {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Error) };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        if (!@:check2r _w._bodyAllowed()) {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.net.http.Http_errBodyNotAllowed.errBodyNotAllowed };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        (@:checkr _w ?? throw "null pointer dereference")._written = ((@:checkr _w ?? throw "null pointer dereference")._written + ((_lenData : stdgo.GoInt64)) : stdgo.GoInt64);
        if ((((@:checkr _w ?? throw "null pointer dereference")._contentLength != (-1i64 : stdgo.GoInt64)) && ((@:checkr _w ?? throw "null pointer dereference")._written > (@:checkr _w ?? throw "null pointer dereference")._contentLength : Bool) : Bool)) {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.net.http.Http_errContentLength.errContentLength };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        if (_dataB != null) {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = @:check2r (@:checkr _w ?? throw "null pointer dereference")._w.write(_dataB);
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        } else {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = @:check2r (@:checkr _w ?? throw "null pointer dereference")._w.writeString(_dataS?.__copy__());
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
    }
    @:keep
    @:tdfield
    static public function writeString( _w:stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response>, _data:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response> = _w;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        return {
            final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = @:check2r _w._write((_data.length), (null : stdgo.Slice<stdgo.GoUInt8>), _data?.__copy__());
            _n = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function write( _w:stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response>, _data:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response> = _w;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        return {
            final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = @:check2r _w._write((_data.length), _data, stdgo.Go.str()?.__copy__());
            _n = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _bodyAllowed( _w:stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response>):Bool {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response> = _w;
        if (!(@:checkr _w ?? throw "null pointer dereference")._wroteHeader) {
            throw stdgo.Go.toInterface(stdgo.Go.str());
        };
        return stdgo._internal.net.http.Http__bodyAllowedForStatus._bodyAllowedForStatus((@:checkr _w ?? throw "null pointer dereference")._status);
    }
    @:keep
    @:tdfield
    static public function writeHeader( _w:stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response>, _code:stdgo.GoInt):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response> = _w;
        if (@:check2r (@:checkr _w ?? throw "null pointer dereference")._conn._hijacked()) {
            var _caller = (stdgo._internal.net.http.Http__relevantCaller._relevantCaller()?.__copy__() : stdgo._internal.runtime.Runtime_Frame.Frame);
            @:check2r (@:checkr (@:checkr _w ?? throw "null pointer dereference")._conn ?? throw "null pointer dereference")._server._logf(("http: response.WriteHeader on hijacked connection from %s (%s:%d)" : stdgo.GoString), stdgo.Go.toInterface(_caller.function_), stdgo.Go.toInterface(stdgo._internal.path.Path_base.base(_caller.file?.__copy__())), stdgo.Go.toInterface(_caller.line));
            return;
        };
        if ((@:checkr _w ?? throw "null pointer dereference")._wroteHeader) {
            var _caller = (stdgo._internal.net.http.Http__relevantCaller._relevantCaller()?.__copy__() : stdgo._internal.runtime.Runtime_Frame.Frame);
            @:check2r (@:checkr (@:checkr _w ?? throw "null pointer dereference")._conn ?? throw "null pointer dereference")._server._logf(("http: superfluous response.WriteHeader call from %s (%s:%d)" : stdgo.GoString), stdgo.Go.toInterface(_caller.function_), stdgo.Go.toInterface(stdgo._internal.path.Path_base.base(_caller.file?.__copy__())), stdgo.Go.toInterface(_caller.line));
            return;
        };
        stdgo._internal.net.http.Http__checkWriteHeaderCode._checkWriteHeaderCode(_code);
        if ((((_code >= (100 : stdgo.GoInt) : Bool) && (_code <= (199 : stdgo.GoInt) : Bool) : Bool) && (_code != (101 : stdgo.GoInt)) : Bool)) {
            if (((_code == (100 : stdgo.GoInt)) && @:check2 (@:checkr _w ?? throw "null pointer dereference")._canWriteContinue.load() : Bool)) {
                @:check2 (@:checkr _w ?? throw "null pointer dereference")._writeContinueMu.lock();
                @:check2 (@:checkr _w ?? throw "null pointer dereference")._canWriteContinue.store(false);
                @:check2 (@:checkr _w ?? throw "null pointer dereference")._writeContinueMu.unlock();
            };
            stdgo._internal.net.http.Http__writeStatusLine._writeStatusLine((@:checkr (@:checkr _w ?? throw "null pointer dereference")._conn ?? throw "null pointer dereference")._bufw, @:check2r (@:checkr _w ?? throw "null pointer dereference")._req.protoAtLeast((1 : stdgo.GoInt), (1 : stdgo.GoInt)), _code, ((@:checkr _w ?? throw "null pointer dereference")._statusBuf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
            (@:checkr _w ?? throw "null pointer dereference")._handlerHeader.writeSubset(stdgo.Go.asInterface((@:checkr (@:checkr _w ?? throw "null pointer dereference")._conn ?? throw "null pointer dereference")._bufw), stdgo._internal.net.http.Http__excludedHeadersNoBody._excludedHeadersNoBody);
            @:check2r (@:checkr (@:checkr _w ?? throw "null pointer dereference")._conn ?? throw "null pointer dereference")._bufw.write(stdgo._internal.net.http.Http__crlf._crlf);
            @:check2r (@:checkr (@:checkr _w ?? throw "null pointer dereference")._conn ?? throw "null pointer dereference")._bufw.flush();
            return;
        };
        (@:checkr _w ?? throw "null pointer dereference")._wroteHeader = true;
        (@:checkr _w ?? throw "null pointer dereference")._status = _code;
        if (((@:checkr _w ?? throw "null pointer dereference")._calledHeader && ((@:checkr _w ?? throw "null pointer dereference")._cw._header == null) : Bool)) {
            (@:checkr _w ?? throw "null pointer dereference")._cw._header = (@:checkr _w ?? throw "null pointer dereference")._handlerHeader.clone();
        };
        {
            var _cl = ((@:checkr _w ?? throw "null pointer dereference")._handlerHeader._get(("Content-Length" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            if (_cl != (stdgo.Go.str())) {
                var __tmp__ = stdgo._internal.strconv.Strconv_parseInt.parseInt(_cl?.__copy__(), (10 : stdgo.GoInt), (64 : stdgo.GoInt)), _v:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (((_err == null) && (_v >= (0i64 : stdgo.GoInt64) : Bool) : Bool)) {
                    (@:checkr _w ?? throw "null pointer dereference")._contentLength = _v;
                } else {
                    @:check2r (@:checkr (@:checkr _w ?? throw "null pointer dereference")._conn ?? throw "null pointer dereference")._server._logf(("http: invalid Content-Length of %q" : stdgo.GoString), stdgo.Go.toInterface(_cl));
                    (@:checkr _w ?? throw "null pointer dereference")._handlerHeader.del(("Content-Length" : stdgo.GoString));
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function header( _w:stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response>):stdgo._internal.net.http.Http_Header.Header {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response> = _w;
        if ((((@:checkr _w ?? throw "null pointer dereference")._cw._header == null && (@:checkr _w ?? throw "null pointer dereference")._wroteHeader : Bool) && !(@:checkr _w ?? throw "null pointer dereference")._cw._wroteHeader : Bool)) {
            (@:checkr _w ?? throw "null pointer dereference")._cw._header = (@:checkr _w ?? throw "null pointer dereference")._handlerHeader.clone();
        };
        (@:checkr _w ?? throw "null pointer dereference")._calledHeader = true;
        return (@:checkr _w ?? throw "null pointer dereference")._handlerHeader;
    }
    @:keep
    @:tdfield
    static public function readFrom( _w:stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response>, _src:stdgo._internal.io.Io_Reader.Reader):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response> = _w;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _n = (0 : stdgo.GoInt64), _err = (null : stdgo.Error);
        try {
            var _bufp = (stdgo.Go.typeAssert((@:check2 stdgo._internal.net.http.Http__copyBufPool._copyBufPool.get() : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>);
            var _buf = (_bufp : stdgo.Slice<stdgo.GoUInt8>);
            {
                var _a0 = _bufp;
                final __f__ = @:check2 stdgo._internal.net.http.Http__copyBufPool._copyBufPool.put;
                __deferstack__.unshift({ ran : false, f : () -> __f__(stdgo.Go.toInterface(_a0)) });
            };
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr (@:checkr _w ?? throw "null pointer dereference")._conn ?? throw "null pointer dereference")._rwc) : stdgo._internal.io.Io_ReaderFrom.ReaderFrom)) : stdgo._internal.io.Io_ReaderFrom.ReaderFrom), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.io.Io_ReaderFrom.ReaderFrom), _1 : false };
            }, _rf = __tmp__._0, _ok = __tmp__._1;
            if (!_ok) {
                {
                    final __ret__:{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } = {
                        final __tmp__:{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } = stdgo._internal.io.Io_copyBuffer.copyBuffer(stdgo.Go.asInterface((new stdgo._internal.net.http.Http_T_writerOnly.T_writerOnly(stdgo.Go.asInterface(_w)) : stdgo._internal.net.http.Http_T_writerOnly.T_writerOnly)), _src, _buf);
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            if (!(@:checkr _w ?? throw "null pointer dereference")._cw._wroteHeader) {
                var __tmp__ = stdgo._internal.io.Io_copyBuffer.copyBuffer(stdgo.Go.asInterface((new stdgo._internal.net.http.Http_T_writerOnly.T_writerOnly(stdgo.Go.asInterface(_w)) : stdgo._internal.net.http.Http_T_writerOnly.T_writerOnly)), stdgo._internal.io.Io_limitReader.limitReader(_src, (512i64 : stdgo.GoInt64)), _buf), _n0:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                _n = (_n + (_n0) : stdgo.GoInt64);
                if (((_err != null) || (_n0 < (512i64 : stdgo.GoInt64) : Bool) : Bool)) {
                    {
                        final __ret__:{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } = {
                            final __tmp__:{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : _err };
                            _n = __tmp__._0;
                            _err = __tmp__._1;
                            __tmp__;
                        };
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
            };
            @:check2r (@:checkr _w ?? throw "null pointer dereference")._w.flush();
            @:check2 (@:checkr _w ?? throw "null pointer dereference")._cw._flush();
            if ((!(@:checkr _w ?? throw "null pointer dereference")._cw._chunking && @:check2r _w._bodyAllowed() : Bool)) {
                var __tmp__ = _rf.readFrom(_src), _n0:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                _n = (_n + (_n0) : stdgo.GoInt64);
                (@:checkr _w ?? throw "null pointer dereference")._written = ((@:checkr _w ?? throw "null pointer dereference")._written + (_n0) : stdgo.GoInt64);
                {
                    final __ret__:{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } = {
                        final __tmp__:{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : _err };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            var __tmp__ = stdgo._internal.io.Io_copyBuffer.copyBuffer(stdgo.Go.asInterface((new stdgo._internal.net.http.Http_T_writerOnly.T_writerOnly(stdgo.Go.asInterface(_w)) : stdgo._internal.net.http.Http_T_writerOnly.T_writerOnly)), _src, _buf), _n0:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            _n = (_n + (_n0) : stdgo.GoInt64);
            {
                final __ret__:{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } = {
                    final __tmp__:{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : _err };
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
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
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return { _0 : _n, _1 : _err };
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
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
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return { _0 : _n, _1 : _err };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _requestTooLarge( _w:stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response>):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response> = _w;
        (@:checkr _w ?? throw "null pointer dereference")._closeAfterReply = true;
        (@:checkr _w ?? throw "null pointer dereference")._requestBodyLimitHit = true;
        if (!(@:checkr _w ?? throw "null pointer dereference")._wroteHeader) {
            @:check2r _w.header().set(("Connection" : stdgo.GoString), ("close" : stdgo.GoString));
        };
    }
    @:keep
    @:tdfield
    static public function _declareTrailer( _w:stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response>, _k:stdgo.GoString):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response> = _w;
        _k = stdgo._internal.net.http.Http_canonicalHeaderKey.canonicalHeaderKey(_k?.__copy__())?.__copy__();
        if (!_internal.golang_dot_org.x.net.http.httpguts.Httpguts_validTrailerHeader.validTrailerHeader(_k?.__copy__())) {
            return;
        };
        (@:checkr _w ?? throw "null pointer dereference")._trailers = ((@:checkr _w ?? throw "null pointer dereference")._trailers.__append__(_k?.__copy__()));
    }
    @:keep
    @:tdfield
    static public function _finalTrailers( _w:stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response>):stdgo._internal.net.http.Http_Header.Header {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response> = _w;
        var _t:stdgo._internal.net.http.Http_Header.Header = (null : stdgo._internal.net.http.Http_Header.Header);
        for (_k => _vv in (@:checkr _w ?? throw "null pointer dereference")._handlerHeader) {
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
        for (__34245 => _k in (@:checkr _w ?? throw "null pointer dereference")._trailers) {
            if (_t == null) {
                _t = (({
                    final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
                    x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
                    {};
                    x;
                } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.http.Http_Header.Header);
            };
            for (__34280 => _v in ((@:checkr _w ?? throw "null pointer dereference")._handlerHeader[_k] ?? (null : stdgo.Slice<stdgo.GoString>))) {
                _t.add(_k?.__copy__(), _v?.__copy__());
            };
        };
        return _t;
    }
    @:keep
    @:tdfield
    static public function enableFullDuplex( _c:stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response> = _c;
        (@:checkr _c ?? throw "null pointer dereference")._fullDuplex = true;
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function setWriteDeadline( _c:stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response>, _deadline:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response> = _c;
        return (@:checkr (@:checkr _c ?? throw "null pointer dereference")._conn ?? throw "null pointer dereference")._rwc.setWriteDeadline(_deadline?.__copy__());
    }
    @:keep
    @:tdfield
    static public function setReadDeadline( _c:stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response>, _deadline:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response> = _c;
        return (@:checkr (@:checkr _c ?? throw "null pointer dereference")._conn ?? throw "null pointer dereference")._rwc.setReadDeadline(_deadline?.__copy__());
    }
}
