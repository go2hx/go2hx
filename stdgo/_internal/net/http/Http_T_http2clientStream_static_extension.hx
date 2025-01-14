package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2clientStream_asInterface) class T_http2clientStream_static_extension {
    @:keep
    @:tdfield
    static public function _copyTrailers( _cs:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream>):Void {
        @:recv var _cs:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream> = _cs;
        for (_k => _vv in (@:checkr _cs ?? throw "null pointer dereference")._trailer) {
            var _t = (@:checkr _cs ?? throw "null pointer dereference")._resTrailer;
            if ((_t : stdgo._internal.net.http.Http_Header.Header) == null) {
                (_t : stdgo._internal.net.http.Http_Header.Header).__setData__((({
                    final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
                    x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
                    {};
                    x;
                } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.http.Http_Header.Header));
            };
            ((_t : stdgo._internal.net.http.Http_Header.Header))[_k] = _vv;
        };
    }
    @:keep
    @:tdfield
    static public function _awaitFlowControl( _cs:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream>, _maxBytes:stdgo.GoInt):{ var _0 : stdgo.GoInt32; var _1 : stdgo.Error; } {
        @:recv var _cs:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream> = _cs;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _taken = (0 : stdgo.GoInt32), _err = (null : stdgo.Error);
        try {
            var _cc = (@:checkr _cs ?? throw "null pointer dereference")._cc;
            var _ctx = ((@:checkr _cs ?? throw "null pointer dereference")._ctx : stdgo._internal.context.Context_Context.Context);
            @:check2 (@:checkr _cc ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = @:check2 (@:checkr _cc ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            while (true) {
                if ((@:checkr _cc ?? throw "null pointer dereference")._closed) {
                    {
                        final __ret__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.Error; } = {
                            final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt32), _1 : stdgo._internal.net.http.Http__http2errClientConnClosed._http2errClientConnClosed };
                            _taken = __tmp__._0;
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
                if ((@:checkr _cs ?? throw "null pointer dereference")._reqBodyClosed != null) {
                    {
                        final __ret__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.Error; } = {
                            final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt32), _1 : stdgo._internal.net.http.Http__http2errStopReqBodyWrite._http2errStopReqBodyWrite };
                            _taken = __tmp__._0;
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
                {
                    var __select__ = true;
                    while (__select__) {
                        if ((@:checkr _cs ?? throw "null pointer dereference")._abort != null && (@:checkr _cs ?? throw "null pointer dereference")._abort.__isGet__()) {
                            __select__ = false;
                            {
                                (@:checkr _cs ?? throw "null pointer dereference")._abort.__get__();
                                {
                                    {
                                        final __ret__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.Error; } = {
                                            final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt32), _1 : (@:checkr _cs ?? throw "null pointer dereference")._abortErr };
                                            _taken = __tmp__._0;
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
                        } else if (_ctx.done() != null && _ctx.done().__isGet__()) {
                            __select__ = false;
                            {
                                _ctx.done().__get__();
                                {
                                    {
                                        final __ret__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.Error; } = {
                                            final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt32), _1 : _ctx.err() };
                                            _taken = __tmp__._0;
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
                        } else if ((@:checkr _cs ?? throw "null pointer dereference")._reqCancel != null && (@:checkr _cs ?? throw "null pointer dereference")._reqCancel.__isGet__()) {
                            __select__ = false;
                            {
                                (@:checkr _cs ?? throw "null pointer dereference")._reqCancel.__get__();
                                {
                                    {
                                        final __ret__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.Error; } = {
                                            final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt32), _1 : stdgo._internal.net.http.Http__http2errRequestCanceled._http2errRequestCanceled };
                                            _taken = __tmp__._0;
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
                        } else {
                            __select__ = false;
                            {};
                        };
                        #if !js Sys.sleep(0.01) #else null #end;
                        stdgo._internal.internal.Async.tick();
                    };
                };
                {
                    var _a = (@:check2 (@:checkr _cs ?? throw "null pointer dereference")._flow._available() : stdgo.GoInt32);
                    if ((_a > (0 : stdgo.GoInt32) : Bool)) {
                        var _take = (_a : stdgo.GoInt32);
                        if (((_take : stdgo.GoInt) > _maxBytes : Bool)) {
                            _take = (_maxBytes : stdgo.GoInt32);
                        };
                        if ((_take > ((@:checkr _cc ?? throw "null pointer dereference")._maxFrameSize : stdgo.GoInt32) : Bool)) {
                            _take = ((@:checkr _cc ?? throw "null pointer dereference")._maxFrameSize : stdgo.GoInt32);
                        };
                        @:check2 (@:checkr _cs ?? throw "null pointer dereference")._flow._take(_take);
                        {
                            final __ret__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.Error; } = { _0 : _take, _1 : (null : stdgo.Error) };
                                _taken = __tmp__._0;
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
                @:check2r (@:checkr _cc ?? throw "null pointer dereference")._cond.wait_();
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return { _0 : _taken, _1 : _err };
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
                return { _0 : _taken, _1 : _err };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _writeRequestBody( _cs:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream>, _req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):stdgo.Error {
        @:recv var _cs:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream> = _cs;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _err = (null : stdgo.Error);
        try {
            var _cc = (@:checkr _cs ?? throw "null pointer dereference")._cc;
            var _body = ((@:checkr _cs ?? throw "null pointer dereference")._reqBody : stdgo._internal.io.Io_ReadCloser.ReadCloser);
            var _sentEnd = (false : Bool);
            var _hasTrailers = ((@:checkr _req ?? throw "null pointer dereference").trailer != null : Bool);
            var _remainLen = ((@:checkr _cs ?? throw "null pointer dereference")._reqBodyContentLength : stdgo.GoInt64);
            var _hasContentLen = (_remainLen != ((-1i64 : stdgo.GoInt64)) : Bool);
            @:check2 (@:checkr _cc ?? throw "null pointer dereference")._mu.lock();
            var _maxFrameSize = ((@:checkr _cc ?? throw "null pointer dereference")._maxFrameSize : stdgo.GoInt);
            @:check2 (@:checkr _cc ?? throw "null pointer dereference")._mu.unlock();
            var _scratchLen = (@:check2r _cs._frameScratchBufferLen(_maxFrameSize) : stdgo.GoInt);
            var _buf:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((@:check2 stdgo._internal.net.http.Http__http2bufPool._http2bufPool.get() : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>), _1 : false };
                }, _bp = __tmp__._0, _ok = __tmp__._1;
                if ((_ok && (((_bp : stdgo.Slice<stdgo.GoUInt8>).length) >= _scratchLen : Bool) : Bool)) {
                    {
                        var _a0 = _bp;
                        final __f__ = @:check2 stdgo._internal.net.http.Http__http2bufPool._http2bufPool.put;
                        __deferstack__.unshift({ ran : false, f : () -> __f__(stdgo.Go.toInterface(_a0)) });
                    };
                    _buf = (_bp : stdgo.Slice<stdgo.GoUInt8>);
                } else {
                    _buf = (new stdgo.Slice<stdgo.GoUInt8>((_scratchLen : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    {
                        var _a0 = (stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>);
                        final __f__ = @:check2 stdgo._internal.net.http.Http__http2bufPool._http2bufPool.put;
                        __deferstack__.unshift({ ran : false, f : () -> __f__(stdgo.Go.toInterface(_a0)) });
                    };
                };
            };
            var _sawEOF:Bool = false;
            while (!_sawEOF) {
                var __tmp__ = _body.read(_buf), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_hasContentLen) {
                    _remainLen = (_remainLen - ((_n : stdgo.GoInt64)) : stdgo.GoInt64);
                    if (((_remainLen == (0i64 : stdgo.GoInt64)) && (_err == null) : Bool)) {
                        var _scratch:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(1, 1).__setNumber32__();
                        var _n1:stdgo.GoInt = (0 : stdgo.GoInt);
                        {
                            var __tmp__ = _body.read((_scratch.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
                            _n1 = @:tmpset0 __tmp__._0;
                            _err = @:tmpset0 __tmp__._1;
                        };
                        _remainLen = (_remainLen - ((_n1 : stdgo.GoInt64)) : stdgo.GoInt64);
                    };
                    if ((_remainLen < (0i64 : stdgo.GoInt64) : Bool)) {
                        _err = stdgo._internal.net.http.Http__http2errReqBodyTooLong._http2errReqBodyTooLong;
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
                if (_err != null) {
                    @:check2 (@:checkr _cc ?? throw "null pointer dereference")._mu.lock();
                    var _bodyClosed = ((@:checkr _cs ?? throw "null pointer dereference")._reqBodyClosed != null : Bool);
                    @:check2 (@:checkr _cc ?? throw "null pointer dereference")._mu.unlock();
                    if (_bodyClosed) {
                        {
                            final __ret__:stdgo.Error = _err = stdgo._internal.net.http.Http__http2errStopReqBodyWrite._http2errStopReqBodyWrite;
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                    } else if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eOF.eOF))) {
                        _sawEOF = true;
                        _err = (null : stdgo.Error);
                    } else {
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
                var _remain = (_buf.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>);
                while ((((_remain.length) > (0 : stdgo.GoInt) : Bool) && (_err == null) : Bool)) {
                    var _allowed:stdgo.GoInt32 = (0 : stdgo.GoInt32);
                    {
                        var __tmp__ = @:check2r _cs._awaitFlowControl((_remain.length));
                        _allowed = @:tmpset0 __tmp__._0;
                        _err = @:tmpset0 __tmp__._1;
                    };
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
                    @:check2 (@:checkr _cc ?? throw "null pointer dereference")._wmu.lock();
                    var _data = (_remain.__slice__(0, _allowed) : stdgo.Slice<stdgo.GoUInt8>);
                    _remain = (_remain.__slice__(_allowed) : stdgo.Slice<stdgo.GoUInt8>);
                    _sentEnd = ((_sawEOF && (_remain.length) == ((0 : stdgo.GoInt)) : Bool) && !_hasTrailers : Bool);
                    _err = @:check2r (@:checkr _cc ?? throw "null pointer dereference")._fr.writeData((@:checkr _cs ?? throw "null pointer dereference").iD, _sentEnd, _data);
                    if (_err == null) {
                        _err = @:check2r (@:checkr _cc ?? throw "null pointer dereference")._bw.flush();
                    };
                    @:check2 (@:checkr _cc ?? throw "null pointer dereference")._wmu.unlock();
                };
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
            if (_sentEnd) {
                {
                    final __ret__:stdgo.Error = _err = (null : stdgo.Error);
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            @:check2 (@:checkr _cc ?? throw "null pointer dereference")._mu.lock();
            var _trailer = ((@:checkr _req ?? throw "null pointer dereference").trailer : stdgo._internal.net.http.Http_Header.Header);
            _err = (@:checkr _cs ?? throw "null pointer dereference")._abortErr;
            @:check2 (@:checkr _cc ?? throw "null pointer dereference")._mu.unlock();
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
            @:check2 (@:checkr _cc ?? throw "null pointer dereference")._wmu.lock();
            {
                final __f__ = @:check2 (@:checkr _cc ?? throw "null pointer dereference")._wmu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            var _trls:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
            if (((_trailer.length) > (0 : stdgo.GoInt) : Bool)) {
                {
                    var __tmp__ = @:check2r _cc._encodeTrailers(_trailer);
                    _trls = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
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
            if (((_trls.length) > (0 : stdgo.GoInt) : Bool)) {
                _err = @:check2r _cc._writeHeaders((@:checkr _cs ?? throw "null pointer dereference").iD, true, _maxFrameSize, _trls);
            } else {
                _err = @:check2r (@:checkr _cc ?? throw "null pointer dereference")._fr.writeData((@:checkr _cs ?? throw "null pointer dereference").iD, true, (null : stdgo.Slice<stdgo.GoUInt8>));
            };
            {
                var _ferr = (@:check2r (@:checkr _cc ?? throw "null pointer dereference")._bw.flush() : stdgo.Error);
                if (((_ferr != null) && (_err == null) : Bool)) {
                    _err = _ferr;
                };
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return _err;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return _err;
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
                return _err;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _frameScratchBufferLen( _cs:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream>, _maxFrameSize:stdgo.GoInt):stdgo.GoInt {
        @:recv var _cs:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream> = _cs;
        {};
        var _n = (_maxFrameSize : stdgo.GoInt64);
        if ((_n > (524288i64 : stdgo.GoInt64) : Bool)) {
            _n = (524288i64 : stdgo.GoInt64);
        };
        {
            var _cl = ((@:checkr _cs ?? throw "null pointer dereference")._reqBodyContentLength : stdgo.GoInt64);
            if (((_cl != (-1i64 : stdgo.GoInt64)) && ((_cl + (1i64 : stdgo.GoInt64) : stdgo.GoInt64) < _n : Bool) : Bool)) {
                _n = (_cl + (1i64 : stdgo.GoInt64) : stdgo.GoInt64);
            };
        };
        if ((_n < (1i64 : stdgo.GoInt64) : Bool)) {
            return (1 : stdgo.GoInt);
        };
        return (_n : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _cleanupWriteRequest( _cs:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream>, _err:stdgo.Error):Void {
        @:recv var _cs:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream> = _cs;
        var _cc = (@:checkr _cs ?? throw "null pointer dereference")._cc;
        if ((@:checkr _cs ?? throw "null pointer dereference").iD == ((0u32 : stdgo.GoUInt32))) {
            @:check2r _cc._decrStreamReservations();
        };
        @:check2 (@:checkr _cc ?? throw "null pointer dereference")._mu.lock();
        var _mustCloseBody = (false : Bool);
        if ((((@:checkr _cs ?? throw "null pointer dereference")._reqBody != null) && ((@:checkr _cs ?? throw "null pointer dereference")._reqBodyClosed == null) : Bool)) {
            _mustCloseBody = true;
            (@:checkr _cs ?? throw "null pointer dereference")._reqBodyClosed = (new stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>(0, () -> ({} : stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError)) : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>);
        };
        var _bodyClosed = (@:checkr _cs ?? throw "null pointer dereference")._reqBodyClosed;
        @:check2 (@:checkr _cc ?? throw "null pointer dereference")._mu.unlock();
        if (_mustCloseBody) {
            (@:checkr _cs ?? throw "null pointer dereference")._reqBody.close();
            if (_bodyClosed != null) _bodyClosed.__close__();
        };
        if (_bodyClosed != null) {
            _bodyClosed.__get__();
        };
        if (((_err != null) && (@:checkr _cs ?? throw "null pointer dereference")._sentEndStream : Bool)) {
            {
                var __select__ = true;
                while (__select__) {
                    if ((@:checkr _cs ?? throw "null pointer dereference")._peerClosed != null && (@:checkr _cs ?? throw "null pointer dereference")._peerClosed.__isGet__()) {
                        __select__ = false;
                        {
                            (@:checkr _cs ?? throw "null pointer dereference")._peerClosed.__get__();
                            {
                                _err = (null : stdgo.Error);
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
        if (_err != null) {
            @:check2r _cs._abortStream(_err);
            if ((@:checkr _cs ?? throw "null pointer dereference")._sentHeaders) {
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo._internal.net.http.Http_T_http2StreamError.T_http2StreamError)) : stdgo._internal.net.http.Http_T_http2StreamError.T_http2StreamError), _1 : true };
                    } catch(_) {
                        { _0 : ({} : stdgo._internal.net.http.Http_T_http2StreamError.T_http2StreamError), _1 : false };
                    }, _se = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        if (stdgo.Go.toInterface(_se.cause) != (stdgo.Go.toInterface(stdgo._internal.net.http.Http__http2errFromPeer._http2errFromPeer))) {
                            @:check2r _cc._writeStreamReset((@:checkr _cs ?? throw "null pointer dereference").iD, _se.code, _err);
                        };
                    } else {
                        @:check2r _cc._writeStreamReset((@:checkr _cs ?? throw "null pointer dereference").iD, (8u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode), _err);
                    };
                };
            };
            @:check2 (@:checkr _cs ?? throw "null pointer dereference")._bufPipe.closeWithError(_err);
        } else {
            if (((@:checkr _cs ?? throw "null pointer dereference")._sentHeaders && !(@:checkr _cs ?? throw "null pointer dereference")._sentEndStream : Bool)) {
                @:check2r _cc._writeStreamReset((@:checkr _cs ?? throw "null pointer dereference").iD, (0u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode), (null : stdgo.Error));
            };
            @:check2 (@:checkr _cs ?? throw "null pointer dereference")._bufPipe.closeWithError(stdgo._internal.net.http.Http__http2errRequestCanceled._http2errRequestCanceled);
        };
        if ((@:checkr _cs ?? throw "null pointer dereference").iD != ((0u32 : stdgo.GoUInt32))) {
            @:check2r _cc._forgetStreamID((@:checkr _cs ?? throw "null pointer dereference").iD);
        };
        @:check2 (@:checkr _cc ?? throw "null pointer dereference")._wmu.lock();
        var _werr = ((@:checkr _cc ?? throw "null pointer dereference")._werr : stdgo.Error);
        @:check2 (@:checkr _cc ?? throw "null pointer dereference")._wmu.unlock();
        if (_werr != null) {
            @:check2r _cc.close();
        };
        if ((@:checkr _cs ?? throw "null pointer dereference")._donec != null) (@:checkr _cs ?? throw "null pointer dereference")._donec.__close__();
    }
    @:keep
    @:tdfield
    static public function _encodeAndWriteHeaders( _cs:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream>, _req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):stdgo.Error {
        @:recv var _cs:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream> = _cs;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _cc = (@:checkr _cs ?? throw "null pointer dereference")._cc;
            var _ctx = ((@:checkr _cs ?? throw "null pointer dereference")._ctx : stdgo._internal.context.Context_Context.Context);
            @:check2 (@:checkr _cc ?? throw "null pointer dereference")._wmu.lock();
            {
                final __f__ = @:check2 (@:checkr _cc ?? throw "null pointer dereference")._wmu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            {
                var __select__ = true;
                while (__select__) {
                    if ((@:checkr _cs ?? throw "null pointer dereference")._abort != null && (@:checkr _cs ?? throw "null pointer dereference")._abort.__isGet__()) {
                        __select__ = false;
                        {
                            (@:checkr _cs ?? throw "null pointer dereference")._abort.__get__();
                            {
                                {
                                    final __ret__:stdgo.Error = (@:checkr _cs ?? throw "null pointer dereference")._abortErr;
                                    for (defer in __deferstack__) {
                                        if (defer.ran) continue;
                                        defer.ran = true;
                                        defer.f();
                                    };
                                    return __ret__;
                                };
                            };
                        };
                    } else if (_ctx.done() != null && _ctx.done().__isGet__()) {
                        __select__ = false;
                        {
                            _ctx.done().__get__();
                            {
                                {
                                    final __ret__:stdgo.Error = _ctx.err();
                                    for (defer in __deferstack__) {
                                        if (defer.ran) continue;
                                        defer.ran = true;
                                        defer.f();
                                    };
                                    return __ret__;
                                };
                            };
                        };
                    } else if ((@:checkr _cs ?? throw "null pointer dereference")._reqCancel != null && (@:checkr _cs ?? throw "null pointer dereference")._reqCancel.__isGet__()) {
                        __select__ = false;
                        {
                            (@:checkr _cs ?? throw "null pointer dereference")._reqCancel.__get__();
                            {
                                {
                                    for (defer in __deferstack__) {
                                        if (defer.ran) continue;
                                        defer.ran = true;
                                        defer.f();
                                    };
                                    return stdgo._internal.net.http.Http__http2errRequestCanceled._http2errRequestCanceled;
                                };
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
            var __tmp__ = stdgo._internal.net.http.Http__http2commaSeparatedTrailers._http2commaSeparatedTrailers(_req), _trailers:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
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
            var _hasTrailers = (_trailers != (stdgo.Go.str()) : Bool);
            var _contentLen = (stdgo._internal.net.http.Http__http2actualContentLength._http2actualContentLength(_req) : stdgo.GoInt64);
            var _hasBody = (_contentLen != ((0i64 : stdgo.GoInt64)) : Bool);
            var __tmp__ = @:check2r _cc._encodeHeaders(_req, (@:checkr _cs ?? throw "null pointer dereference")._requestedGzip, _trailers?.__copy__(), _contentLen), _hdrs:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
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
            var _endStream = (!_hasBody && !_hasTrailers : Bool);
            (@:checkr _cs ?? throw "null pointer dereference")._sentHeaders = true;
            _err = @:check2r _cc._writeHeaders((@:checkr _cs ?? throw "null pointer dereference").iD, _endStream, ((@:checkr _cc ?? throw "null pointer dereference")._maxFrameSize : stdgo.GoInt), _hdrs);
            stdgo._internal.net.http.Http__http2traceWroteHeaders._http2traceWroteHeaders((@:checkr _cs ?? throw "null pointer dereference")._trace);
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return _err;
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
    static public function _writeRequest( _cs:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream>, _req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):stdgo.Error {
        @:recv var _cs:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream> = _cs;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _err = (null : stdgo.Error);
        try {
            var _cc = (@:checkr _cs ?? throw "null pointer dereference")._cc;
            var _ctx = ((@:checkr _cs ?? throw "null pointer dereference")._ctx : stdgo._internal.context.Context_Context.Context);
            {
                var _err = (stdgo._internal.net.http.Http__http2checkConnHeaders._http2checkConnHeaders(_req) : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
            if ((@:checkr _cc ?? throw "null pointer dereference")._reqHeaderMu == null) {
                throw stdgo.Go.toInterface(("RoundTrip on uninitialized ClientConn" : stdgo.GoString));
            };
            {
                var __select__ = true;
                while (__select__) {
                    if ((@:checkr _cc ?? throw "null pointer dereference")._reqHeaderMu != null && (@:checkr _cc ?? throw "null pointer dereference")._reqHeaderMu.__isSend__()) {
                        __select__ = false;
                        {
                            (@:checkr _cc ?? throw "null pointer dereference")._reqHeaderMu.__send__((new stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError() : stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError));
                            {};
                        };
                    } else if ((@:checkr _cs ?? throw "null pointer dereference")._reqCancel != null && (@:checkr _cs ?? throw "null pointer dereference")._reqCancel.__isGet__()) {
                        __select__ = false;
                        {
                            (@:checkr _cs ?? throw "null pointer dereference")._reqCancel.__get__();
                            {
                                return _err = stdgo._internal.net.http.Http__http2errRequestCanceled._http2errRequestCanceled;
                            };
                        };
                    } else if (_ctx.done() != null && _ctx.done().__isGet__()) {
                        __select__ = false;
                        {
                            _ctx.done().__get__();
                            {
                                return _err = _ctx.err();
                            };
                        };
                    };
                    #if !js Sys.sleep(0.01) #else null #end;
                    stdgo._internal.internal.Async.tick();
                };
            };
            @:check2 (@:checkr _cc ?? throw "null pointer dereference")._mu.lock();
            if (((@:checkr _cc ?? throw "null pointer dereference")._idleTimer != null && (((@:checkr _cc ?? throw "null pointer dereference")._idleTimer : Dynamic).__nil__ == null || !((@:checkr _cc ?? throw "null pointer dereference")._idleTimer : Dynamic).__nil__))) {
                @:check2r (@:checkr _cc ?? throw "null pointer dereference")._idleTimer.stop();
            };
            @:check2r _cc._decrStreamReservationsLocked();
            {
                var _err = (@:check2r _cc._awaitOpenSlotForStreamLocked(_cs) : stdgo.Error);
                if (_err != null) {
                    @:check2 (@:checkr _cc ?? throw "null pointer dereference")._mu.unlock();
                    (@:checkr _cc ?? throw "null pointer dereference")._reqHeaderMu.__get__();
                    return _err;
                };
            };
            @:check2r _cc._addStreamLocked(_cs);
            if (stdgo._internal.net.http.Http__http2isConnectionCloseRequest._http2isConnectionCloseRequest(_req)) {
                (@:checkr _cc ?? throw "null pointer dereference")._doNotReuse = true;
            };
            @:check2 (@:checkr _cc ?? throw "null pointer dereference")._mu.unlock();
            if ((((!@:check2r (@:checkr _cc ?? throw "null pointer dereference")._t._disableCompression() && (@:checkr _req ?? throw "null pointer dereference").header.get(("Accept-Encoding" : stdgo.GoString)) == (stdgo.Go.str()) : Bool) && (@:checkr _req ?? throw "null pointer dereference").header.get(("Range" : stdgo.GoString)) == (stdgo.Go.str()) : Bool) && !(@:checkr _cs ?? throw "null pointer dereference")._isHead : Bool)) {
                (@:checkr _cs ?? throw "null pointer dereference")._requestedGzip = true;
            };
            var _continueTimeout = (@:check2r (@:checkr _cc ?? throw "null pointer dereference")._t._expectContinueTimeout() : stdgo._internal.time.Time_Duration.Duration);
            if (_continueTimeout != ((0i64 : stdgo._internal.time.Time_Duration.Duration))) {
                if (!_internal.golang_dot_org.x.net.http.httpguts.Httpguts_headerValuesContainsToken.headerValuesContainsToken(((@:checkr _req ?? throw "null pointer dereference").header[("Expect" : stdgo.GoString)] ?? (null : stdgo.Slice<stdgo.GoString>)), ("100-continue" : stdgo.GoString))) {
                    _continueTimeout = (0i64 : stdgo._internal.time.Time_Duration.Duration);
                } else {
                    (@:checkr _cs ?? throw "null pointer dereference")._on100 = (new stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>((1 : stdgo.GoInt).toBasic(), () -> ({} : stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError)) : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>);
                };
            };
            _err = @:check2r _cs._encodeAndWriteHeaders(_req);
            (@:checkr _cc ?? throw "null pointer dereference")._reqHeaderMu.__get__();
            if (_err != null) {
                return _err;
            };
            var _hasBody = ((@:checkr _cs ?? throw "null pointer dereference")._reqBodyContentLength != ((0i64 : stdgo.GoInt64)) : Bool);
            if (!_hasBody) {
                (@:checkr _cs ?? throw "null pointer dereference")._sentEndStream = true;
            } else {
                if (_continueTimeout != ((0i64 : stdgo._internal.time.Time_Duration.Duration))) {
                    stdgo._internal.net.http.Http__http2traceWait100Continue._http2traceWait100Continue((@:checkr _cs ?? throw "null pointer dereference")._trace);
                    var _timer = stdgo._internal.time.Time_newTimer.newTimer(_continueTimeout);
                    {
                        var __select__ = true;
                        while (__select__) {
                            if ((@:checkr _timer ?? throw "null pointer dereference").c != null && (@:checkr _timer ?? throw "null pointer dereference").c.__isGet__()) {
                                __select__ = false;
                                {
                                    (@:checkr _timer ?? throw "null pointer dereference").c.__get__();
                                    {
                                        _err = (null : stdgo.Error);
                                    };
                                };
                            } else if ((@:checkr _cs ?? throw "null pointer dereference")._on100 != null && (@:checkr _cs ?? throw "null pointer dereference")._on100.__isGet__()) {
                                __select__ = false;
                                {
                                    (@:checkr _cs ?? throw "null pointer dereference")._on100.__get__();
                                    {
                                        _err = (null : stdgo.Error);
                                    };
                                };
                            } else if ((@:checkr _cs ?? throw "null pointer dereference")._abort != null && (@:checkr _cs ?? throw "null pointer dereference")._abort.__isGet__()) {
                                __select__ = false;
                                {
                                    (@:checkr _cs ?? throw "null pointer dereference")._abort.__get__();
                                    {
                                        _err = (@:checkr _cs ?? throw "null pointer dereference")._abortErr;
                                    };
                                };
                            } else if (_ctx.done() != null && _ctx.done().__isGet__()) {
                                __select__ = false;
                                {
                                    _ctx.done().__get__();
                                    {
                                        _err = _ctx.err();
                                    };
                                };
                            } else if ((@:checkr _cs ?? throw "null pointer dereference")._reqCancel != null && (@:checkr _cs ?? throw "null pointer dereference")._reqCancel.__isGet__()) {
                                __select__ = false;
                                {
                                    (@:checkr _cs ?? throw "null pointer dereference")._reqCancel.__get__();
                                    {
                                        _err = stdgo._internal.net.http.Http__http2errRequestCanceled._http2errRequestCanceled;
                                    };
                                };
                            };
                            #if !js Sys.sleep(0.01) #else null #end;
                            stdgo._internal.internal.Async.tick();
                        };
                    };
                    @:check2r _timer.stop();
                    if (_err != null) {
                        stdgo._internal.net.http.Http__http2traceWroteRequest._http2traceWroteRequest((@:checkr _cs ?? throw "null pointer dereference")._trace, _err);
                        return _err;
                    };
                };
                {
                    _err = @:check2r _cs._writeRequestBody(_req);
                    if (_err != null) {
                        if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.net.http.Http__http2errStopReqBodyWrite._http2errStopReqBodyWrite))) {
                            stdgo._internal.net.http.Http__http2traceWroteRequest._http2traceWroteRequest((@:checkr _cs ?? throw "null pointer dereference")._trace, _err);
                            return _err;
                        };
                    } else {
                        (@:checkr _cs ?? throw "null pointer dereference")._sentEndStream = true;
                    };
                };
            };
            stdgo._internal.net.http.Http__http2traceWroteRequest._http2traceWroteRequest((@:checkr _cs ?? throw "null pointer dereference")._trace, _err);
            var _respHeaderTimer:stdgo.Chan<stdgo._internal.time.Time_Time.Time> = (null : stdgo.Chan<stdgo._internal.time.Time_Time.Time>);
            var _respHeaderRecv:stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError> = (null : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>);
            {
                var _d = (@:check2r _cc._responseHeaderTimeout() : stdgo._internal.time.Time_Duration.Duration);
                if (_d != ((0i64 : stdgo._internal.time.Time_Duration.Duration))) {
                    var _timer = stdgo._internal.time.Time_newTimer.newTimer(_d);
                    {
                        final __f__ = @:check2r _timer.stop;
                        __deferstack__.unshift({ ran : false, f : () -> __f__() });
                    };
                    _respHeaderTimer = (@:checkr _timer ?? throw "null pointer dereference").c;
                    _respHeaderRecv = (@:checkr _cs ?? throw "null pointer dereference")._respHeaderRecv;
                };
            };
            while (true) {
                {
                    var __select__ = true;
                    while (__select__) {
                        if ((@:checkr _cs ?? throw "null pointer dereference")._peerClosed != null && (@:checkr _cs ?? throw "null pointer dereference")._peerClosed.__isGet__()) {
                            __select__ = false;
                            {
                                (@:checkr _cs ?? throw "null pointer dereference")._peerClosed.__get__();
                                {
                                    {
                                        final __ret__:stdgo.Error = _err = (null : stdgo.Error);
                                        for (defer in __deferstack__) {
                                            if (defer.ran) continue;
                                            defer.ran = true;
                                            defer.f();
                                        };
                                        return __ret__;
                                    };
                                };
                            };
                        } else if (_respHeaderTimer != null && _respHeaderTimer.__isGet__()) {
                            __select__ = false;
                            {
                                _respHeaderTimer.__get__();
                                {
                                    {
                                        final __ret__:stdgo.Error = _err = stdgo._internal.net.http.Http__http2errTimeout._http2errTimeout;
                                        for (defer in __deferstack__) {
                                            if (defer.ran) continue;
                                            defer.ran = true;
                                            defer.f();
                                        };
                                        return __ret__;
                                    };
                                };
                            };
                        } else if (_respHeaderRecv != null && _respHeaderRecv.__isGet__()) {
                            __select__ = false;
                            {
                                _respHeaderRecv.__get__();
                                {
                                    _respHeaderRecv = (null : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>);
                                    _respHeaderTimer = (null : stdgo.Chan<stdgo._internal.time.Time_Time.Time>);
                                };
                            };
                        } else if ((@:checkr _cs ?? throw "null pointer dereference")._abort != null && (@:checkr _cs ?? throw "null pointer dereference")._abort.__isGet__()) {
                            __select__ = false;
                            {
                                (@:checkr _cs ?? throw "null pointer dereference")._abort.__get__();
                                {
                                    {
                                        final __ret__:stdgo.Error = _err = (@:checkr _cs ?? throw "null pointer dereference")._abortErr;
                                        for (defer in __deferstack__) {
                                            if (defer.ran) continue;
                                            defer.ran = true;
                                            defer.f();
                                        };
                                        return __ret__;
                                    };
                                };
                            };
                        } else if (_ctx.done() != null && _ctx.done().__isGet__()) {
                            __select__ = false;
                            {
                                _ctx.done().__get__();
                                {
                                    {
                                        final __ret__:stdgo.Error = _err = _ctx.err();
                                        for (defer in __deferstack__) {
                                            if (defer.ran) continue;
                                            defer.ran = true;
                                            defer.f();
                                        };
                                        return __ret__;
                                    };
                                };
                            };
                        } else if ((@:checkr _cs ?? throw "null pointer dereference")._reqCancel != null && (@:checkr _cs ?? throw "null pointer dereference")._reqCancel.__isGet__()) {
                            __select__ = false;
                            {
                                (@:checkr _cs ?? throw "null pointer dereference")._reqCancel.__get__();
                                {
                                    {
                                        final __ret__:stdgo.Error = _err = stdgo._internal.net.http.Http__http2errRequestCanceled._http2errRequestCanceled;
                                        for (defer in __deferstack__) {
                                            if (defer.ran) continue;
                                            defer.ran = true;
                                            defer.f();
                                        };
                                        return __ret__;
                                    };
                                };
                            };
                        };
                        #if !js Sys.sleep(0.01) #else null #end;
                        stdgo._internal.internal.Async.tick();
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
                return _err;
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
                return _err;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _doRequest( _cs:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream>, _req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):Void {
        @:recv var _cs:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream> = _cs;
        var _err = (@:check2r _cs._writeRequest(_req) : stdgo.Error);
        @:check2r _cs._cleanupWriteRequest(_err);
    }
    @:keep
    @:tdfield
    static public function _closeReqBodyLocked( _cs:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream>):Void {
        @:recv var _cs:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream> = _cs;
        if ((@:checkr _cs ?? throw "null pointer dereference")._reqBodyClosed != null) {
            return;
        };
        (@:checkr _cs ?? throw "null pointer dereference")._reqBodyClosed = (new stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>(0, () -> ({} : stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError)) : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>);
        var _reqBodyClosed = (@:checkr _cs ?? throw "null pointer dereference")._reqBodyClosed;
        stdgo.Go.routine(() -> ({
            var a = function():Void {
                (@:checkr _cs ?? throw "null pointer dereference")._reqBody.close();
                if (_reqBodyClosed != null) _reqBodyClosed.__close__();
            };
            a();
        }));
    }
    @:keep
    @:tdfield
    static public function _abortRequestBodyWrite( _cs:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream>):Void {
        @:recv var _cs:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream> = _cs;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _cc = (@:checkr _cs ?? throw "null pointer dereference")._cc;
            @:check2 (@:checkr _cc ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = @:check2 (@:checkr _cc ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            if ((((@:checkr _cs ?? throw "null pointer dereference")._reqBody != null) && ((@:checkr _cs ?? throw "null pointer dereference")._reqBodyClosed == null) : Bool)) {
                @:check2r _cs._closeReqBodyLocked();
                @:check2r (@:checkr _cc ?? throw "null pointer dereference")._cond.broadcast();
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
    static public function _abortStreamLocked( _cs:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream>, _err:stdgo.Error):Void {
        @:recv var _cs:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream> = _cs;
        @:check2 (@:checkr _cs ?? throw "null pointer dereference")._abortOnce.do_(function():Void {
            (@:checkr _cs ?? throw "null pointer dereference")._abortErr = _err;
            if ((@:checkr _cs ?? throw "null pointer dereference")._abort != null) (@:checkr _cs ?? throw "null pointer dereference")._abort.__close__();
        });
        if ((@:checkr _cs ?? throw "null pointer dereference")._reqBody != null) {
            @:check2r _cs._closeReqBodyLocked();
        };
        if (((@:checkr (@:checkr _cs ?? throw "null pointer dereference")._cc ?? throw "null pointer dereference")._cond != null && (((@:checkr (@:checkr _cs ?? throw "null pointer dereference")._cc ?? throw "null pointer dereference")._cond : Dynamic).__nil__ == null || !((@:checkr (@:checkr _cs ?? throw "null pointer dereference")._cc ?? throw "null pointer dereference")._cond : Dynamic).__nil__))) {
            @:check2r (@:checkr (@:checkr _cs ?? throw "null pointer dereference")._cc ?? throw "null pointer dereference")._cond.broadcast();
        };
    }
    @:keep
    @:tdfield
    static public function _abortStream( _cs:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream>, _err:stdgo.Error):Void {
        @:recv var _cs:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream> = _cs;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            @:check2 (@:checkr (@:checkr _cs ?? throw "null pointer dereference")._cc ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = @:check2 (@:checkr (@:checkr _cs ?? throw "null pointer dereference")._cc ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            @:check2r _cs._abortStreamLocked(_err);
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
    static public function _get1xxTraceFunc( _cs:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream>):(stdgo.GoInt, stdgo._internal.net.textproto.Textproto_MIMEHeader.MIMEHeader) -> stdgo.Error {
        @:recv var _cs:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream> = _cs;
        {
            var _fn = (stdgo._internal.net.http.Http__http2got1xxFuncForTests._http2got1xxFuncForTests : (stdgo.GoInt, stdgo._internal.net.textproto.Textproto_MIMEHeader.MIMEHeader) -> stdgo.Error);
            if (_fn != null) {
                return _fn;
            };
        };
        return stdgo._internal.net.http.Http__http2traceGot1xxResponseFunc._http2traceGot1xxResponseFunc((@:checkr _cs ?? throw "null pointer dereference")._trace);
    }
}
