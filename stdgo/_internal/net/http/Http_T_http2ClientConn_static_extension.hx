package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2ClientConn_asInterface) class T_http2ClientConn_static_extension {
    @:keep
    @:tdfield
    static public function _vlogf( _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn> = _cc;
        @:check2r (@:checkr _cc ?? throw "null pointer dereference")._t._vlogf(_format?.__copy__(), ...(_args : Array<stdgo.AnyInterface>));
    }
    @:keep
    @:tdfield
    static public function _logf( _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn> = _cc;
        @:check2r (@:checkr _cc ?? throw "null pointer dereference")._t._logf(_format?.__copy__(), ...(_args : Array<stdgo.AnyInterface>));
    }
    @:keep
    @:tdfield
    static public function _writeStreamReset( _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>, _streamID:stdgo.GoUInt32, _code:stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode, _err:stdgo.Error):Void {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn> = _cc;
        @:check2 (@:checkr _cc ?? throw "null pointer dereference")._wmu.lock();
        @:check2r (@:checkr _cc ?? throw "null pointer dereference")._fr.writeRSTStream(_streamID, _code);
        @:check2r (@:checkr _cc ?? throw "null pointer dereference")._bw.flush();
        @:check2 (@:checkr _cc ?? throw "null pointer dereference")._wmu.unlock();
    }
    @:keep
    @:tdfield
    static public function ping( _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>, _ctx:stdgo._internal.context.Context_Context.Context):stdgo.Error {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn> = _cc;
        var _c = (new stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>(0, () -> ({} : stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError)) : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>);
        var _p:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(8, 8).__setNumber32__();
        while (true) {
            {
                var __tmp__ = stdgo._internal.math.rand.Rand_read.read((_p.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)), __32097:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
            };
            @:check2 (@:checkr _cc ?? throw "null pointer dereference")._mu.lock();
            {
                var __tmp__ = ((@:checkr _cc ?? throw "null pointer dereference")._pings != null && (@:checkr _cc ?? throw "null pointer dereference")._pings.exists(_p?.__copy__()) ? { _0 : (@:checkr _cc ?? throw "null pointer dereference")._pings[_p?.__copy__()], _1 : true } : { _0 : (null : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>), _1 : false }), __32128:stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError> = __tmp__._0, _found:Bool = __tmp__._1;
                if (!_found) {
                    (@:checkr _cc ?? throw "null pointer dereference")._pings[_p] = _c;
                    @:check2 (@:checkr _cc ?? throw "null pointer dereference")._mu.unlock();
                    break;
                };
            };
            @:check2 (@:checkr _cc ?? throw "null pointer dereference")._mu.unlock();
        };
        var _errc = (new stdgo.Chan<stdgo.Error>((1 : stdgo.GoInt).toBasic(), () -> (null : stdgo.Error)) : stdgo.Chan<stdgo.Error>);
        stdgo.Go.routine(() -> ({
            var a = function():Void {
                var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
                try {
                    @:check2 (@:checkr _cc ?? throw "null pointer dereference")._wmu.lock();
                    {
                        final __f__ = @:check2 (@:checkr _cc ?? throw "null pointer dereference")._wmu.unlock;
                        __deferstack__.unshift({ ran : false, f : () -> __f__() });
                    };
                    {
                        var _err = (@:check2r (@:checkr _cc ?? throw "null pointer dereference")._fr.writePing(false, _p?.__copy__()) : stdgo.Error);
                        if (_err != null) {
                            _errc.__send__(_err);
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                                return;
                            };
                        };
                    };
                    {
                        var _err = (@:check2r (@:checkr _cc ?? throw "null pointer dereference")._bw.flush() : stdgo.Error);
                        if (_err != null) {
                            _errc.__send__(_err);
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                                return;
                            };
                        };
                    };
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                        return;
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
                        return;
                    };
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
                    } else if ((@:checkr _cc ?? throw "null pointer dereference")._readerDone != null && (@:checkr _cc ?? throw "null pointer dereference")._readerDone.__isGet__()) {
                        __select__ = false;
                        {
                            (@:checkr _cc ?? throw "null pointer dereference")._readerDone.__get__();
                            {
                                return (@:checkr _cc ?? throw "null pointer dereference")._readerErr;
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
    static public function _countReadFrameError( _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>, _err:stdgo.Error):Void {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn> = _cc;
        var _f = ((@:checkr (@:checkr _cc ?? throw "null pointer dereference")._t ?? throw "null pointer dereference").countError : stdgo.GoString -> Void);
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
        if (stdgo._internal.errors.Errors_is_.is_(_err, stdgo._internal.io.Io_eOF.eOF)) {
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
    @:tdfield
    static public function _readLoop( _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>):Void {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn> = _cc;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _rl = (stdgo.Go.setRef(({ _cc : _cc } : stdgo._internal.net.http.Http_T_http2clientConnReadLoop.T_http2clientConnReadLoop)) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientConnReadLoop.T_http2clientConnReadLoop>);
            {
                final __f__ = @:check2r _rl._cleanup;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            (@:checkr _cc ?? throw "null pointer dereference")._readerErr = @:check2r _rl._run();
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _cc ?? throw "null pointer dereference")._readerErr) : stdgo._internal.net.http.Http_T_http2ConnectionError.T_http2ConnectionError)) : stdgo._internal.net.http.Http_T_http2ConnectionError.T_http2ConnectionError), _1 : true };
                } catch(_) {
                    { _0 : ((0 : stdgo.GoUInt32) : stdgo._internal.net.http.Http_T_http2ConnectionError.T_http2ConnectionError), _1 : false };
                }, _ce = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    @:check2 (@:checkr _cc ?? throw "null pointer dereference")._wmu.lock();
                    @:check2r (@:checkr _cc ?? throw "null pointer dereference")._fr.writeGoAway((0u32 : stdgo.GoUInt32), (_ce : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode), (null : stdgo.Slice<stdgo.GoUInt8>));
                    @:check2 (@:checkr _cc ?? throw "null pointer dereference")._wmu.unlock();
                };
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
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
                return;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _forgetStreamID( _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>, _id:stdgo.GoUInt32):Void {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn> = _cc;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            @:check2 (@:checkr _cc ?? throw "null pointer dereference")._mu.lock();
            var _slen = ((@:checkr _cc ?? throw "null pointer dereference")._streams.length : stdgo.GoInt);
            if ((@:checkr _cc ?? throw "null pointer dereference")._streams != null) (@:checkr _cc ?? throw "null pointer dereference")._streams.remove(_id);
            if (((@:checkr _cc ?? throw "null pointer dereference")._streams.length) != ((_slen - (1 : stdgo.GoInt) : stdgo.GoInt))) {
                throw stdgo.Go.toInterface(("forgetting unknown stream id" : stdgo.GoString));
            };
            (@:checkr _cc ?? throw "null pointer dereference")._lastActive = stdgo._internal.time.Time_now.now()?.__copy__();
            if ((((@:checkr _cc ?? throw "null pointer dereference")._streams.length == (0 : stdgo.GoInt)) && ((@:checkr _cc ?? throw "null pointer dereference")._idleTimer != null && (((@:checkr _cc ?? throw "null pointer dereference")._idleTimer : Dynamic).__nil__ == null || !((@:checkr _cc ?? throw "null pointer dereference")._idleTimer : Dynamic).__nil__)) : Bool)) {
                @:check2r (@:checkr _cc ?? throw "null pointer dereference")._idleTimer.reset((@:checkr _cc ?? throw "null pointer dereference")._idleTimeout);
                (@:checkr _cc ?? throw "null pointer dereference")._lastIdle = stdgo._internal.time.Time_now.now()?.__copy__();
            };
            @:check2r (@:checkr _cc ?? throw "null pointer dereference")._cond.broadcast();
            var _closeOnIdle = ((((@:checkr _cc ?? throw "null pointer dereference")._singleUse || (@:checkr _cc ?? throw "null pointer dereference")._doNotReuse : Bool) || @:check2r (@:checkr _cc ?? throw "null pointer dereference")._t._disableKeepAlives() : Bool) || ((@:checkr _cc ?? throw "null pointer dereference")._goAway != null && (((@:checkr _cc ?? throw "null pointer dereference")._goAway : Dynamic).__nil__ == null || !((@:checkr _cc ?? throw "null pointer dereference")._goAway : Dynamic).__nil__)) : Bool);
            if (((_closeOnIdle && (@:checkr _cc ?? throw "null pointer dereference")._streamsReserved == ((0 : stdgo.GoInt)) : Bool) && ((@:checkr _cc ?? throw "null pointer dereference")._streams.length == (0 : stdgo.GoInt)) : Bool)) {
                if (stdgo._internal.net.http.Http__http2VerboseLogs._http2VerboseLogs) {
                    @:check2r _cc._vlogf(("http2: Transport closing idle conn %p (forSingleUse=%v, maxStream=%v)" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_cc)), stdgo.Go.toInterface((@:checkr _cc ?? throw "null pointer dereference")._singleUse), stdgo.Go.toInterface(((@:checkr _cc ?? throw "null pointer dereference")._nextStreamID - (2u32 : stdgo.GoUInt32) : stdgo.GoUInt32)));
                };
                (@:checkr _cc ?? throw "null pointer dereference")._closed = true;
                {
                    final __f__ = @:check2r _cc._closeConn;
                    __deferstack__.unshift({ ran : false, f : () -> __f__() });
                };
            };
            @:check2 (@:checkr _cc ?? throw "null pointer dereference")._mu.unlock();
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
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
                return;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _addStreamLocked( _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>, _cs:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream>):Void {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn> = _cc;
        @:check2 (@:checkr _cs ?? throw "null pointer dereference")._flow._add(((@:checkr _cc ?? throw "null pointer dereference")._initialWindowSize : stdgo.GoInt32));
        @:check2 (@:checkr _cs ?? throw "null pointer dereference")._flow._setConnFlow((stdgo.Go.setRef((@:checkr _cc ?? throw "null pointer dereference")._flow) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2outflow.T_http2outflow>));
        @:check2 (@:checkr _cs ?? throw "null pointer dereference")._inflow._init((4194304 : stdgo.GoInt32));
        (@:checkr _cs ?? throw "null pointer dereference").iD = (@:checkr _cc ?? throw "null pointer dereference")._nextStreamID;
        (@:checkr _cc ?? throw "null pointer dereference")._nextStreamID = ((@:checkr _cc ?? throw "null pointer dereference")._nextStreamID + ((2u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
        (@:checkr _cc ?? throw "null pointer dereference")._streams[(@:checkr _cs ?? throw "null pointer dereference").iD] = _cs;
        if ((@:checkr _cs ?? throw "null pointer dereference").iD == ((0u32 : stdgo.GoUInt32))) {
            throw stdgo.Go.toInterface(("assigned stream ID 0" : stdgo.GoString));
        };
    }
    @:keep
    @:tdfield
    static public function _writeHeader( _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>, _name:stdgo.GoString, _value:stdgo.GoString):Void {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn> = _cc;
        if (stdgo._internal.net.http.Http__http2VerboseLogs._http2VerboseLogs) {
            stdgo._internal.log.Log_printf.printf(("http2: Transport encoding header %q = %q" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_value));
        };
        @:check2r (@:checkr _cc ?? throw "null pointer dereference")._henc.writeField(({ name : _name?.__copy__(), value : _value?.__copy__() } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField));
    }
    @:keep
    @:tdfield
    static public function _encodeTrailers( _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>, _trailer:stdgo._internal.net.http.Http_Header.Header):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn> = _cc;
        @:check2 (@:checkr _cc ?? throw "null pointer dereference")._hbuf.reset();
        var _hlSize = ((0i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        for (_k => _vv in _trailer) {
            for (__32107 => _v in _vv) {
                var _hf = ({ name : _k?.__copy__(), value : _v?.__copy__() } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField);
                _hlSize = (_hlSize + ((_hf.size() : stdgo.GoUInt64)) : stdgo.GoUInt64);
            };
        };
        if ((_hlSize > (@:checkr _cc ?? throw "null pointer dereference")._peerMaxHeaderListSize : Bool)) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.net.http.Http__http2errRequestHeaderListSize._http2errRequestHeaderListSize };
        };
        for (_k => _vv in _trailer) {
            var __tmp__ = stdgo._internal.net.http.Http__http2lowerHeader._http2lowerHeader(_k?.__copy__()), _lowKey:stdgo.GoString = __tmp__._0, _ascii:Bool = __tmp__._1;
            if (!_ascii) {
                continue;
            };
            for (__32117 => _v in _vv) {
                @:check2r _cc._writeHeader(_lowKey?.__copy__(), _v?.__copy__());
            };
        };
        return { _0 : @:check2 (@:checkr _cc ?? throw "null pointer dereference")._hbuf.bytes(), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _encodeHeaders( _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>, _req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, _addGzipHeader:Bool, _trailers:stdgo.GoString, _contentLength:stdgo.GoInt64):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn> = _cc;
        @:check2 (@:checkr _cc ?? throw "null pointer dereference")._hbuf.reset();
        if (((@:checkr _req ?? throw "null pointer dereference").uRL == null || ((@:checkr _req ?? throw "null pointer dereference").uRL : Dynamic).__nil__)) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.net.http.Http__http2errNilRequestURL._http2errNilRequestURL };
        };
        var _host = ((@:checkr _req ?? throw "null pointer dereference").host?.__copy__() : stdgo.GoString);
        if (_host == (stdgo.Go.str())) {
            _host = (@:checkr (@:checkr _req ?? throw "null pointer dereference").uRL ?? throw "null pointer dereference").host?.__copy__();
        };
        var __tmp__ = _internal.golang_dot_org.x.net.http.httpguts.Httpguts_punycodeHostPort.punycodeHostPort(_host?.__copy__()), _host:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        if (!_internal.golang_dot_org.x.net.http.httpguts.Httpguts_validHostHeader.validHostHeader(_host?.__copy__())) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("http2: invalid Host header" : stdgo.GoString)) };
        };
        var _path:stdgo.GoString = ("" : stdgo.GoString);
        if ((@:checkr _req ?? throw "null pointer dereference").method != (("CONNECT" : stdgo.GoString))) {
            _path = @:check2r (@:checkr _req ?? throw "null pointer dereference").uRL.requestURI()?.__copy__();
            if (!stdgo._internal.net.http.Http__http2validPseudoPath._http2validPseudoPath(_path?.__copy__())) {
                var _orig = (_path?.__copy__() : stdgo.GoString);
                _path = stdgo._internal.strings.Strings_trimPrefix.trimPrefix(_path?.__copy__(), (((@:checkr (@:checkr _req ?? throw "null pointer dereference").uRL ?? throw "null pointer dereference").scheme + ("://" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _host?.__copy__() : stdgo.GoString)?.__copy__())?.__copy__();
                if (!stdgo._internal.net.http.Http__http2validPseudoPath._http2validPseudoPath(_path?.__copy__())) {
                    if ((@:checkr (@:checkr _req ?? throw "null pointer dereference").uRL ?? throw "null pointer dereference").opaque != (stdgo.Go.str())) {
                        return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("invalid request :path %q from URL.Opaque = %q" : stdgo.GoString), stdgo.Go.toInterface(_orig), stdgo.Go.toInterface((@:checkr (@:checkr _req ?? throw "null pointer dereference").uRL ?? throw "null pointer dereference").opaque)) };
                    } else {
                        return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("invalid request :path %q" : stdgo.GoString), stdgo.Go.toInterface(_orig)) };
                    };
                };
            };
        };
        for (_k => _vv in (@:checkr _req ?? throw "null pointer dereference").header) {
            if (!_internal.golang_dot_org.x.net.http.httpguts.Httpguts_validHeaderFieldName.validHeaderFieldName(_k?.__copy__())) {
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("invalid HTTP header name %q" : stdgo.GoString), stdgo.Go.toInterface(_k)) };
            };
            for (__32107 => _v in _vv) {
                if (!_internal.golang_dot_org.x.net.http.httpguts.Httpguts_validHeaderFieldValue.validHeaderFieldValue(_v?.__copy__())) {
                    return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("invalid HTTP header value for header %q" : stdgo.GoString), stdgo.Go.toInterface(_k)) };
                };
            };
        };
        var _enumerateHeaders = (function(_f:(stdgo.GoString, stdgo.GoString) -> Void):Void {
            _f((":authority" : stdgo.GoString), _host?.__copy__());
            var _m = ((@:checkr _req ?? throw "null pointer dereference").method?.__copy__() : stdgo.GoString);
            if (_m == (stdgo.Go.str())) {
                _m = ("GET" : stdgo.GoString);
            };
            _f((":method" : stdgo.GoString), _m?.__copy__());
            if ((@:checkr _req ?? throw "null pointer dereference").method != (("CONNECT" : stdgo.GoString))) {
                _f((":path" : stdgo.GoString), _path?.__copy__());
                _f((":scheme" : stdgo.GoString), (@:checkr (@:checkr _req ?? throw "null pointer dereference").uRL ?? throw "null pointer dereference").scheme?.__copy__());
            };
            if (_trailers != (stdgo.Go.str())) {
                _f(("trailer" : stdgo.GoString), _trailers?.__copy__());
            };
            var _didUA:Bool = false;
            for (_k => _vv in (@:checkr _req ?? throw "null pointer dereference").header) {
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
                    for (__32107 => _v in _vv) {
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
                for (__32107 => _v in _vv) {
                    _f(_k?.__copy__(), _v?.__copy__());
                };
            };
            if (stdgo._internal.net.http.Http__http2shouldSendReqContentLength._http2shouldSendReqContentLength((@:checkr _req ?? throw "null pointer dereference").method?.__copy__(), _contentLength)) {
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
        if ((_hlSize > (@:checkr _cc ?? throw "null pointer dereference")._peerMaxHeaderListSize : Bool)) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.net.http.Http__http2errRequestHeaderListSize._http2errRequestHeaderListSize };
        };
        var _trace = stdgo._internal.net.http.httptrace.Httptrace_contextClientTrace.contextClientTrace(@:check2r _req.context());
        var _traceHeaders = (stdgo._internal.net.http.Http__http2traceHasWroteHeaderField._http2traceHasWroteHeaderField(_trace) : Bool);
        _enumerateHeaders(function(_name:stdgo.GoString, _value:stdgo.GoString):Void {
            var __tmp__ = stdgo._internal.net.http.Http__http2lowerHeader._http2lowerHeader(_name?.__copy__()), _name:stdgo.GoString = __tmp__._0, _ascii:Bool = __tmp__._1;
            if (!_ascii) {
                return;
            };
            @:check2r _cc._writeHeader(_name?.__copy__(), _value?.__copy__());
            if (_traceHeaders) {
                stdgo._internal.net.http.Http__http2traceWroteHeaderField._http2traceWroteHeaderField(_trace, _name?.__copy__(), _value?.__copy__());
            };
        });
        return { _0 : @:check2 (@:checkr _cc ?? throw "null pointer dereference")._hbuf.bytes(), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _writeHeaders( _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>, _streamID:stdgo.GoUInt32, _endStream:Bool, _maxFrameSize:stdgo.GoInt, _hdrs:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn> = _cc;
        var _first = (true : Bool);
        while ((((_hdrs.length) > (0 : stdgo.GoInt) : Bool) && ((@:checkr _cc ?? throw "null pointer dereference")._werr == null) : Bool)) {
            var _chunk = _hdrs;
            if (((_chunk.length) > _maxFrameSize : Bool)) {
                _chunk = (_chunk.__slice__(0, _maxFrameSize) : stdgo.Slice<stdgo.GoUInt8>);
            };
            _hdrs = (_hdrs.__slice__((_chunk.length)) : stdgo.Slice<stdgo.GoUInt8>);
            var _endHeaders = ((_hdrs.length) == ((0 : stdgo.GoInt)) : Bool);
            if (_first) {
                @:check2r (@:checkr _cc ?? throw "null pointer dereference")._fr.writeHeaders(({ streamID : _streamID, blockFragment : _chunk, endStream : _endStream, endHeaders : _endHeaders } : stdgo._internal.net.http.Http_T_http2HeadersFrameParam.T_http2HeadersFrameParam));
                _first = false;
            } else {
                @:check2r (@:checkr _cc ?? throw "null pointer dereference")._fr.writeContinuation(_streamID, _endHeaders, _chunk);
            };
        };
        @:check2r (@:checkr _cc ?? throw "null pointer dereference")._bw.flush();
        return (@:checkr _cc ?? throw "null pointer dereference")._werr;
    }
    @:keep
    @:tdfield
    static public function _awaitOpenSlotForStreamLocked( _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>, _cs:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream>):stdgo.Error {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn> = _cc;
        while (true) {
            (@:checkr _cc ?? throw "null pointer dereference")._lastActive = stdgo._internal.time.Time_now.now()?.__copy__();
            if (((@:checkr _cc ?? throw "null pointer dereference")._closed || !@:check2r _cc._canTakeNewRequestLocked() : Bool)) {
                return stdgo._internal.net.http.Http__http2errClientConnUnusable._http2errClientConnUnusable;
            };
            (@:checkr _cc ?? throw "null pointer dereference")._lastIdle = (new stdgo._internal.time.Time_Time.Time() : stdgo._internal.time.Time_Time.Time);
            if ((((@:checkr _cc ?? throw "null pointer dereference")._streams.length : stdgo.GoInt64) < ((@:checkr _cc ?? throw "null pointer dereference")._maxConcurrentStreams : stdgo.GoInt64) : Bool)) {
                return (null : stdgo.Error);
            };
            (@:checkr _cc ?? throw "null pointer dereference")._pendingRequests++;
            @:check2r (@:checkr _cc ?? throw "null pointer dereference")._cond.wait_();
            (@:checkr _cc ?? throw "null pointer dereference")._pendingRequests--;
            {
                var __select__ = true;
                while (__select__) {
                    if ((@:checkr _cs ?? throw "null pointer dereference")._abort != null && (@:checkr _cs ?? throw "null pointer dereference")._abort.__isGet__()) {
                        __select__ = false;
                        {
                            (@:checkr _cs ?? throw "null pointer dereference")._abort.__get__();
                            {
                                return (@:checkr _cs ?? throw "null pointer dereference")._abortErr;
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
    @:tdfield
    static public function roundTrip( _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>, _req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn> = _cc;
        var _ctx = (@:check2r _req.context() : stdgo._internal.context.Context_Context.Context);
        var _cs = (stdgo.Go.setRef(({ _cc : _cc, _ctx : _ctx, _reqCancel : (@:checkr _req ?? throw "null pointer dereference").cancel, _isHead : (@:checkr _req ?? throw "null pointer dereference").method == (("HEAD" : stdgo.GoString)), _reqBody : (@:checkr _req ?? throw "null pointer dereference").body, _reqBodyContentLength : stdgo._internal.net.http.Http__http2actualContentLength._http2actualContentLength(_req), _trace : stdgo._internal.net.http.httptrace.Httptrace_contextClientTrace.contextClientTrace(_ctx), _peerClosed : (new stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>(0, () -> ({} : stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError)) : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>), _abort : (new stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>(0, () -> ({} : stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError)) : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>), _respHeaderRecv : (new stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>(0, () -> ({} : stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError)) : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>), _donec : (new stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>(0, () -> ({} : stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError)) : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>) } : stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream)) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream>);
        stdgo.Go.routine(() -> @:check2r _cs._doRequest(_req));
        var _waitDone = (function():stdgo.Error {
            {
                {
                    var __select__ = true;
                    while (__select__) {
                        if ((@:checkr _cs ?? throw "null pointer dereference")._donec != null && (@:checkr _cs ?? throw "null pointer dereference")._donec.__isGet__()) {
                            __select__ = false;
                            {
                                (@:checkr _cs ?? throw "null pointer dereference")._donec.__get__();
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
                        } else if ((@:checkr _cs ?? throw "null pointer dereference")._reqCancel != null && (@:checkr _cs ?? throw "null pointer dereference")._reqCancel.__isGet__()) {
                            __select__ = false;
                            {
                                (@:checkr _cs ?? throw "null pointer dereference")._reqCancel.__get__();
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
            var _res = (@:checkr _cs ?? throw "null pointer dereference")._res;
            if (((@:checkr _res ?? throw "null pointer dereference").statusCode > (299 : stdgo.GoInt) : Bool)) {
                @:check2r _cs._abortRequestBodyWrite();
            };
            (@:checkr _res ?? throw "null pointer dereference").request = _req;
            (@:checkr _res ?? throw "null pointer dereference").tLS = (@:checkr _cc ?? throw "null pointer dereference")._tlsState;
            if (((stdgo.Go.toInterface((@:checkr _res ?? throw "null pointer dereference").body) == stdgo.Go.toInterface(stdgo._internal.net.http.Http__http2noBody._http2noBody)) && (stdgo._internal.net.http.Http__http2actualContentLength._http2actualContentLength(_req) == (0i64 : stdgo.GoInt64)) : Bool)) {
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
            @:check2 (@:checkr (@:checkr _cs ?? throw "null pointer dereference")._cc ?? throw "null pointer dereference")._mu.lock();
            var _bodyClosed = (@:checkr _cs ?? throw "null pointer dereference")._reqBodyClosed;
            @:check2 (@:checkr (@:checkr _cs ?? throw "null pointer dereference")._cc ?? throw "null pointer dereference")._mu.unlock();
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
                        if ((@:checkr _cs ?? throw "null pointer dereference")._respHeaderRecv != null && (@:checkr _cs ?? throw "null pointer dereference")._respHeaderRecv.__isGet__()) {
                            __select__ = false;
                            {
                                (@:checkr _cs ?? throw "null pointer dereference")._respHeaderRecv.__get__();
                                {
                                    return _handleResponseHeaders();
                                };
                            };
                        } else if ((@:checkr _cs ?? throw "null pointer dereference")._abort != null && (@:checkr _cs ?? throw "null pointer dereference")._abort.__isGet__()) {
                            __select__ = false;
                            {
                                (@:checkr _cs ?? throw "null pointer dereference")._abort.__get__();
                                {
                                    {
                                        {
                                            var __select__ = true;
                                            while (__select__) {
                                                if ((@:checkr _cs ?? throw "null pointer dereference")._respHeaderRecv != null && (@:checkr _cs ?? throw "null pointer dereference")._respHeaderRecv.__isGet__()) {
                                                    __select__ = false;
                                                    {
                                                        (@:checkr _cs ?? throw "null pointer dereference")._respHeaderRecv.__get__();
                                                        {
                                                            return _handleResponseHeaders();
                                                        };
                                                    };
                                                } else {
                                                    __select__ = false;
                                                    {
                                                        _waitDone();
                                                        return { _0 : null, _1 : (@:checkr _cs ?? throw "null pointer dereference")._abortErr };
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
                                    @:check2r _cs._abortStream(_err);
                                    return { _0 : null, _1 : _cancelRequest(_cs, _err) };
                                };
                            };
                        } else if ((@:checkr _cs ?? throw "null pointer dereference")._reqCancel != null && (@:checkr _cs ?? throw "null pointer dereference")._reqCancel.__isGet__()) {
                            __select__ = false;
                            {
                                (@:checkr _cs ?? throw "null pointer dereference")._reqCancel.__get__();
                                {
                                    @:check2r _cs._abortStream(stdgo._internal.net.http.Http__http2errRequestCanceled._http2errRequestCanceled);
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
    @:tdfield
    static public function _decrStreamReservationsLocked( _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>):Void {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn> = _cc;
        if (((@:checkr _cc ?? throw "null pointer dereference")._streamsReserved > (0 : stdgo.GoInt) : Bool)) {
            (@:checkr _cc ?? throw "null pointer dereference")._streamsReserved--;
        };
    }
    @:keep
    @:tdfield
    static public function _decrStreamReservations( _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>):Void {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn> = _cc;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            @:check2 (@:checkr _cc ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = @:check2 (@:checkr _cc ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            @:check2r _cc._decrStreamReservationsLocked();
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
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
                return;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _responseHeaderTimeout( _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>):stdgo._internal.time.Time_Duration.Duration {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn> = _cc;
        if (((@:checkr (@:checkr _cc ?? throw "null pointer dereference")._t ?? throw "null pointer dereference")._t1 != null && (((@:checkr (@:checkr _cc ?? throw "null pointer dereference")._t ?? throw "null pointer dereference")._t1 : Dynamic).__nil__ == null || !((@:checkr (@:checkr _cc ?? throw "null pointer dereference")._t ?? throw "null pointer dereference")._t1 : Dynamic).__nil__))) {
            return (@:checkr (@:checkr (@:checkr _cc ?? throw "null pointer dereference")._t ?? throw "null pointer dereference")._t1 ?? throw "null pointer dereference").responseHeaderTimeout;
        };
        return (0i64 : stdgo._internal.time.Time_Duration.Duration);
    }
    @:keep
    @:tdfield
    static public function _closeForLostPing( _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>):Void {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn> = _cc;
        var _err = (stdgo._internal.errors.Errors_new_.new_(("http2: client connection lost" : stdgo.GoString)) : stdgo.Error);
        {
            var _f = ((@:checkr (@:checkr _cc ?? throw "null pointer dereference")._t ?? throw "null pointer dereference").countError : stdgo.GoString -> Void);
            if (_f != null) {
                _f(("conn_close_lost_ping" : stdgo.GoString));
            };
        };
        @:check2r _cc._closeForError(_err);
    }
    @:keep
    @:tdfield
    static public function close( _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>):stdgo.Error {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn> = _cc;
        var _err = (stdgo._internal.errors.Errors_new_.new_(("http2: client connection force closed via ClientConn.Close" : stdgo.GoString)) : stdgo.Error);
        @:check2r _cc._closeForError(_err);
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _closeForError( _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>, _err:stdgo.Error):Void {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn> = _cc;
        @:check2 (@:checkr _cc ?? throw "null pointer dereference")._mu.lock();
        (@:checkr _cc ?? throw "null pointer dereference")._closed = true;
        for (__32127 => _cs in (@:checkr _cc ?? throw "null pointer dereference")._streams) {
            @:check2r _cs._abortStreamLocked(_err);
        };
        @:check2r (@:checkr _cc ?? throw "null pointer dereference")._cond.broadcast();
        @:check2 (@:checkr _cc ?? throw "null pointer dereference")._mu.unlock();
        @:check2r _cc._closeConn();
    }
    @:keep
    @:tdfield
    static public function _sendGoAway( _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>):stdgo.Error {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn> = _cc;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            @:check2 (@:checkr _cc ?? throw "null pointer dereference")._mu.lock();
            var _closing = ((@:checkr _cc ?? throw "null pointer dereference")._closing : Bool);
            (@:checkr _cc ?? throw "null pointer dereference")._closing = true;
            var _maxStreamID = ((@:checkr _cc ?? throw "null pointer dereference")._nextStreamID : stdgo.GoUInt32);
            @:check2 (@:checkr _cc ?? throw "null pointer dereference")._mu.unlock();
            if (_closing) {
                return (null : stdgo.Error);
            };
            @:check2 (@:checkr _cc ?? throw "null pointer dereference")._wmu.lock();
            {
                final __f__ = @:check2 (@:checkr _cc ?? throw "null pointer dereference")._wmu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            {
                var _err = (@:check2r (@:checkr _cc ?? throw "null pointer dereference")._fr.writeGoAway(_maxStreamID, (0u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode), (null : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Error);
                if (_err != null) {
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return _err;
                    };
                };
            };
            {
                var _err = (@:check2r (@:checkr _cc ?? throw "null pointer dereference")._bw.flush() : stdgo.Error);
                if (_err != null) {
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return _err;
                    };
                };
            };
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
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return (null : stdgo.Error);
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
                return (null : stdgo.Error);
            };
        };
    }
    @:keep
    @:tdfield
    static public function shutdown( _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>, _ctx:stdgo._internal.context.Context_Context.Context):stdgo.Error {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn> = _cc;
        {
            var _err = (@:check2r _cc._sendGoAway() : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        var _done = (new stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>(0, () -> ({} : stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError)) : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>);
        var _cancelled = (false : Bool);
        stdgo.Go.routine(() -> ({
            var a = function():Void {
                var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
                try {
                    @:check2 (@:checkr _cc ?? throw "null pointer dereference")._mu.lock();
                    {
                        final __f__ = @:check2 (@:checkr _cc ?? throw "null pointer dereference")._mu.unlock;
                        __deferstack__.unshift({ ran : false, f : () -> __f__() });
                    };
                    while (true) {
                        if ((((@:checkr _cc ?? throw "null pointer dereference")._streams.length == (0 : stdgo.GoInt)) || (@:checkr _cc ?? throw "null pointer dereference")._closed : Bool)) {
                            (@:checkr _cc ?? throw "null pointer dereference")._closed = true;
                            if (_done != null) _done.__close__();
                            break;
                        };
                        if (_cancelled) {
                            break;
                        };
                        @:check2r (@:checkr _cc ?? throw "null pointer dereference")._cond.wait_();
                    };
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                        return;
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
                        return;
                    };
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
                                @:check2r _cc._closeConn();
                                return (null : stdgo.Error);
                            };
                        };
                    } else if (_ctx.done() != null && _ctx.done().__isGet__()) {
                        __select__ = false;
                        {
                            _ctx.done().__get__();
                            {
                                @:check2 (@:checkr _cc ?? throw "null pointer dereference")._mu.lock();
                                _cancelled = true;
                                @:check2r (@:checkr _cc ?? throw "null pointer dereference")._cond.broadcast();
                                @:check2 (@:checkr _cc ?? throw "null pointer dereference")._mu.unlock();
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
    @:tdfield
    static public function _isDoNotReuseAndIdle( _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>):Bool {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn> = _cc;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            @:check2 (@:checkr _cc ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = @:check2 (@:checkr _cc ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            {
                final __ret__:Bool = ((@:checkr _cc ?? throw "null pointer dereference")._doNotReuse && ((@:checkr _cc ?? throw "null pointer dereference")._streams.length == (0 : stdgo.GoInt)) : Bool);
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
                return false;
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
                return false;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _closeIfIdle( _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>):Void {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn> = _cc;
        @:check2 (@:checkr _cc ?? throw "null pointer dereference")._mu.lock();
        if (((((@:checkr _cc ?? throw "null pointer dereference")._streams.length) > (0 : stdgo.GoInt) : Bool) || ((@:checkr _cc ?? throw "null pointer dereference")._streamsReserved > (0 : stdgo.GoInt) : Bool) : Bool)) {
            @:check2 (@:checkr _cc ?? throw "null pointer dereference")._mu.unlock();
            return;
        };
        (@:checkr _cc ?? throw "null pointer dereference")._closed = true;
        var _nextID = ((@:checkr _cc ?? throw "null pointer dereference")._nextStreamID : stdgo.GoUInt32);
        @:check2 (@:checkr _cc ?? throw "null pointer dereference")._mu.unlock();
        if (stdgo._internal.net.http.Http__http2VerboseLogs._http2VerboseLogs) {
            @:check2r _cc._vlogf(("http2: Transport closing idle conn %p (forSingleUse=%v, maxStream=%v)" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_cc)), stdgo.Go.toInterface((@:checkr _cc ?? throw "null pointer dereference")._singleUse), stdgo.Go.toInterface((_nextID - (2u32 : stdgo.GoUInt32) : stdgo.GoUInt32)));
        };
        @:check2r _cc._closeConn();
    }
    @:keep
    @:tdfield
    static public function _forceCloseConn( _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>):Void {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn> = _cc;
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _cc ?? throw "null pointer dereference")._tconn) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>), _1 : true };
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
    @:tdfield
    static public function _closeConn( _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>):Void {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn> = _cc;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _t = stdgo._internal.time.Time_afterFunc.afterFunc((250000000i64 : stdgo._internal.time.Time_Duration.Duration), @:check2r _cc._forceCloseConn);
            {
                final __f__ = @:check2r _t.stop;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            (@:checkr _cc ?? throw "null pointer dereference")._tconn.close();
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
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
                return;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _onIdleTimeout( _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>):Void {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn> = _cc;
        @:check2r _cc._closeIfIdle();
    }
    @:keep
    @:tdfield
    static public function _tooIdleLocked( _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>):Bool {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn> = _cc;
        return (((@:checkr _cc ?? throw "null pointer dereference")._idleTimeout != ((0i64 : stdgo._internal.time.Time_Duration.Duration)) && !(@:checkr _cc ?? throw "null pointer dereference")._lastIdle.isZero() : Bool) && (stdgo._internal.time.Time_since.since((@:checkr _cc ?? throw "null pointer dereference")._lastIdle.round((0i64 : stdgo._internal.time.Time_Duration.Duration))?.__copy__()) > (@:checkr _cc ?? throw "null pointer dereference")._idleTimeout : Bool) : Bool);
    }
    @:keep
    @:tdfield
    static public function _canTakeNewRequestLocked( _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>):Bool {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn> = _cc;
        var _st = (@:check2r _cc._idleStateLocked()?.__copy__() : stdgo._internal.net.http.Http_T_http2clientConnIdleState.T_http2clientConnIdleState);
        return _st._canTakeNewRequest;
    }
    @:keep
    @:tdfield
    static public function _idleStateLocked( _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>):stdgo._internal.net.http.Http_T_http2clientConnIdleState.T_http2clientConnIdleState {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn> = _cc;
        var _st = ({} : stdgo._internal.net.http.Http_T_http2clientConnIdleState.T_http2clientConnIdleState);
        if (((@:checkr _cc ?? throw "null pointer dereference")._singleUse && ((@:checkr _cc ?? throw "null pointer dereference")._nextStreamID > (1u32 : stdgo.GoUInt32) : Bool) : Bool)) {
            return _st;
        };
        var _maxConcurrentOkay:Bool = false;
        if ((@:checkr (@:checkr _cc ?? throw "null pointer dereference")._t ?? throw "null pointer dereference").strictMaxConcurrentStreams) {
            _maxConcurrentOkay = true;
        } else {
            _maxConcurrentOkay = ((((((@:checkr _cc ?? throw "null pointer dereference")._streams.length) + (@:checkr _cc ?? throw "null pointer dereference")._streamsReserved : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt64) <= ((@:checkr _cc ?? throw "null pointer dereference")._maxConcurrentStreams : stdgo.GoInt64) : Bool);
        };
        _st._canTakeNewRequest = ((((((((@:checkr _cc ?? throw "null pointer dereference")._goAway == null || ((@:checkr _cc ?? throw "null pointer dereference")._goAway : Dynamic).__nil__) && !(@:checkr _cc ?? throw "null pointer dereference")._closed : Bool) && !(@:checkr _cc ?? throw "null pointer dereference")._closing : Bool) && _maxConcurrentOkay : Bool) && !(@:checkr _cc ?? throw "null pointer dereference")._doNotReuse : Bool) && ((((@:checkr _cc ?? throw "null pointer dereference")._nextStreamID : stdgo.GoInt64) + ((2i64 : stdgo.GoInt64) * ((@:checkr _cc ?? throw "null pointer dereference")._pendingRequests : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoInt64) < (2147483647i64 : stdgo.GoInt64) : Bool) : Bool) && !@:check2r _cc._tooIdleLocked() : Bool);
        return _st;
    }
    @:keep
    @:tdfield
    static public function _idleState( _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>):stdgo._internal.net.http.Http_T_http2clientConnIdleState.T_http2clientConnIdleState {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn> = _cc;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            @:check2 (@:checkr _cc ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = @:check2 (@:checkr _cc ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            {
                final __ret__:stdgo._internal.net.http.Http_T_http2clientConnIdleState.T_http2clientConnIdleState = @:check2r _cc._idleStateLocked()?.__copy__();
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
                return ({} : stdgo._internal.net.http.Http_T_http2clientConnIdleState.T_http2clientConnIdleState);
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
                return ({} : stdgo._internal.net.http.Http_T_http2clientConnIdleState.T_http2clientConnIdleState);
            };
        };
    }
    @:keep
    @:tdfield
    static public function state( _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>):stdgo._internal.net.http.Http_T_http2ClientConnState.T_http2ClientConnState {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn> = _cc;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            @:check2 (@:checkr _cc ?? throw "null pointer dereference")._wmu.lock();
            var _maxConcurrent = ((@:checkr _cc ?? throw "null pointer dereference")._maxConcurrentStreams : stdgo.GoUInt32);
            if (!(@:checkr _cc ?? throw "null pointer dereference")._seenSettings) {
                _maxConcurrent = (0u32 : stdgo.GoUInt32);
            };
            @:check2 (@:checkr _cc ?? throw "null pointer dereference")._wmu.unlock();
            @:check2 (@:checkr _cc ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = @:check2 (@:checkr _cc ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            {
                final __ret__:stdgo._internal.net.http.Http_T_http2ClientConnState.T_http2ClientConnState = ({ closed : (@:checkr _cc ?? throw "null pointer dereference")._closed, closing : ((((@:checkr _cc ?? throw "null pointer dereference")._closing || (@:checkr _cc ?? throw "null pointer dereference")._singleUse : Bool) || (@:checkr _cc ?? throw "null pointer dereference")._doNotReuse : Bool) || ((@:checkr _cc ?? throw "null pointer dereference")._goAway != null && (((@:checkr _cc ?? throw "null pointer dereference")._goAway : Dynamic).__nil__ == null || !((@:checkr _cc ?? throw "null pointer dereference")._goAway : Dynamic).__nil__)) : Bool), streamsActive : ((@:checkr _cc ?? throw "null pointer dereference")._streams.length), streamsReserved : (@:checkr _cc ?? throw "null pointer dereference")._streamsReserved, streamsPending : (@:checkr _cc ?? throw "null pointer dereference")._pendingRequests, lastIdle : (@:checkr _cc ?? throw "null pointer dereference")._lastIdle?.__copy__(), maxConcurrentStreams : _maxConcurrent } : stdgo._internal.net.http.Http_T_http2ClientConnState.T_http2ClientConnState);
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
                return ({} : stdgo._internal.net.http.Http_T_http2ClientConnState.T_http2ClientConnState);
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
                return ({} : stdgo._internal.net.http.Http_T_http2ClientConnState.T_http2ClientConnState);
            };
        };
    }
    @:keep
    @:tdfield
    static public function reserveNewRequest( _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>):Bool {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn> = _cc;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            @:check2 (@:checkr _cc ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = @:check2 (@:checkr _cc ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            {
                var _st = (@:check2r _cc._idleStateLocked()?.__copy__() : stdgo._internal.net.http.Http_T_http2clientConnIdleState.T_http2clientConnIdleState);
                if (!_st._canTakeNewRequest) {
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return false;
                    };
                };
            };
            (@:checkr _cc ?? throw "null pointer dereference")._streamsReserved++;
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return true;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return false;
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
                return false;
            };
        };
    }
    @:keep
    @:tdfield
    static public function canTakeNewRequest( _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>):Bool {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn> = _cc;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            @:check2 (@:checkr _cc ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = @:check2 (@:checkr _cc ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            {
                final __ret__:Bool = @:check2r _cc._canTakeNewRequestLocked();
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
                return false;
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
                return false;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _setGoAway( _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>, _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2GoAwayFrame.T_http2GoAwayFrame>):Void {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn> = _cc;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            @:check2 (@:checkr _cc ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = @:check2 (@:checkr _cc ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            var _old = (@:checkr _cc ?? throw "null pointer dereference")._goAway;
            (@:checkr _cc ?? throw "null pointer dereference")._goAway = _f;
            if ((@:checkr _cc ?? throw "null pointer dereference")._goAwayDebug == (stdgo.Go.str())) {
                (@:checkr _cc ?? throw "null pointer dereference")._goAwayDebug = (@:check2r _f.debugData() : stdgo.GoString)?.__copy__();
            };
            if (((_old != null && ((_old : Dynamic).__nil__ == null || !(_old : Dynamic).__nil__)) && ((@:checkr _old ?? throw "null pointer dereference").errCode != (0u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode)) : Bool)) {
                (@:checkr (@:checkr _cc ?? throw "null pointer dereference")._goAway ?? throw "null pointer dereference").errCode = (@:checkr _old ?? throw "null pointer dereference").errCode;
            };
            var _last = ((@:checkr _f ?? throw "null pointer dereference").lastStreamID : stdgo.GoUInt32);
            for (_streamID => _cs in (@:checkr _cc ?? throw "null pointer dereference")._streams) {
                if ((_streamID > _last : Bool)) {
                    @:check2r _cs._abortStreamLocked(stdgo._internal.net.http.Http__http2errClientConnGotGoAway._http2errClientConnGotGoAway);
                };
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
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
                return;
            };
        };
    }
    @:keep
    @:tdfield
    static public function setDoNotReuse( _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>):Void {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn> = _cc;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            @:check2 (@:checkr _cc ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = @:check2 (@:checkr _cc ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            (@:checkr _cc ?? throw "null pointer dereference")._doNotReuse = true;
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
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
                return;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _healthCheck( _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>):Void {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn> = _cc;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _pingTimeout = (@:check2r (@:checkr _cc ?? throw "null pointer dereference")._t._pingTimeout() : stdgo._internal.time.Time_Duration.Duration);
            var __tmp__ = stdgo._internal.context.Context_withTimeout.withTimeout(stdgo._internal.context.Context_background.background(), _pingTimeout), _ctx:stdgo._internal.context.Context_Context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context_CancelFunc.CancelFunc = __tmp__._1;
            {
                final __f__ = _cancel;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            @:check2r _cc._vlogf(("http2: Transport sending health check" : stdgo.GoString));
            var _err = (@:check2r _cc.ping(_ctx) : stdgo.Error);
            if (_err != null) {
                @:check2r _cc._vlogf(("http2: Transport health check failure: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                @:check2r _cc._closeForLostPing();
            } else {
                @:check2r _cc._vlogf(("http2: Transport health check success" : stdgo.GoString));
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
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
                return;
            };
        };
    }
}
