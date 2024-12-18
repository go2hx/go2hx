package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2clientStream_asInterface) class T_http2clientStream_static_extension {
    @:keep
    static public function _copyTrailers( _cs:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream>):Void {
        @:recv var _cs:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream> = _cs;
        for (_k => _vv in _cs._trailer) {
            var _t = _cs._resTrailer;
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
    static public function _awaitFlowControl( _cs:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream>, _maxBytes:stdgo.GoInt):{ var _0 : stdgo.GoInt32; var _1 : stdgo.Error; } {
        @:recv var _cs:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream> = _cs;
        var __deferstack__:Array<Void -> Void> = [];
        var _taken = (0 : stdgo.GoInt32), _err = (null : stdgo.Error);
        try {
            var _cc = _cs._cc;
            var _ctx = (_cs._ctx : stdgo._internal.context.Context_Context.Context);
            _cc._mu.lock();
            {
                final __f__ = _cc._mu.unlock;
                __deferstack__.unshift(() -> __f__());
            };
            while (true) {
                if (_cc._closed) {
                    {
                        final __ret__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.Error; } = {
                            final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt32), _1 : stdgo._internal.net.http.Http__http2errClientConnClosed._http2errClientConnClosed };
                            _taken = __tmp__._0;
                            _err = __tmp__._1;
                            __tmp__;
                        };
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return __ret__;
                    };
                };
                if (_cs._reqBodyClosed != null) {
                    {
                        final __ret__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.Error; } = {
                            final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt32), _1 : stdgo._internal.net.http.Http__http2errStopReqBodyWrite._http2errStopReqBodyWrite };
                            _taken = __tmp__._0;
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
                    var __select__ = true;
                    while (__select__) {
                        if (_cs._abort != null && _cs._abort.__isGet__()) {
                            __select__ = false;
                            {
                                _cs._abort.__get__();
                                {
                                    {
                                        final __ret__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.Error; } = {
                                            final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt32), _1 : _cs._abortErr };
                                            _taken = __tmp__._0;
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
                                            defer();
                                        };
                                        return __ret__;
                                    };
                                };
                            };
                        } else if (_cs._reqCancel != null && _cs._reqCancel.__isGet__()) {
                            __select__ = false;
                            {
                                _cs._reqCancel.__get__();
                                {
                                    {
                                        final __ret__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.Error; } = {
                                            final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt32), _1 : stdgo._internal.net.http.Http__http2errRequestCanceled._http2errRequestCanceled };
                                            _taken = __tmp__._0;
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
                        } else {
                            __select__ = false;
                            {};
                        };
                        #if !js Sys.sleep(0.01) #else null #end;
                        stdgo._internal.internal.Async.tick();
                    };
                };
                {
                    var _a = (_cs._flow._available() : stdgo.GoInt32);
                    if ((_a > (0 : stdgo.GoInt32) : Bool)) {
                        var _take = (_a : stdgo.GoInt32);
                        if (((_take : stdgo.GoInt) > _maxBytes : Bool)) {
                            _take = (_maxBytes : stdgo.GoInt32);
                        };
                        if ((_take > (_cc._maxFrameSize : stdgo.GoInt32) : Bool)) {
                            _take = (_cc._maxFrameSize : stdgo.GoInt32);
                        };
                        _cs._flow._take(_take);
                        {
                            final __ret__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.Error; } = { _0 : _take, _1 : (null : stdgo.Error) };
                                _taken = __tmp__._0;
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
                _cc._cond.wait_();
            };
            {
                final __ret__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.Error; } = { _0 : _taken, _1 : _err };
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
            final __ret__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.Error; } = { _0 : _taken, _1 : _err };
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
    @:keep
    static public function _writeRequestBody( _cs:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream>, _req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):stdgo.Error {
        @:recv var _cs:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream> = _cs;
        var __deferstack__:Array<Void -> Void> = [];
        var _err = (null : stdgo.Error);
        try {
            var _cc = _cs._cc;
            var _body = (_cs._reqBody : stdgo._internal.io.Io_ReadCloser.ReadCloser);
            var _sentEnd = (false : Bool);
            var _hasTrailers = (_req.trailer != null : Bool);
            var _remainLen = (_cs._reqBodyContentLength : stdgo.GoInt64);
            var _hasContentLen = (_remainLen != ((-1i64 : stdgo.GoInt64)) : Bool);
            _cc._mu.lock();
            var _maxFrameSize = (_cc._maxFrameSize : stdgo.GoInt);
            _cc._mu.unlock();
            var _scratchLen = (_cs._frameScratchBufferLen(_maxFrameSize) : stdgo.GoInt);
            var _buf:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo._internal.net.http.Http__http2bufPool._http2bufPool.get() : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>), _1 : false };
                }, _bp = __tmp__._0, _ok = __tmp__._1;
                if ((_ok && (((_bp : stdgo.Slice<stdgo.GoUInt8>).length) >= _scratchLen : Bool) : Bool)) {
                    {
                        var _a0 = _bp;
                        final __f__ = stdgo._internal.net.http.Http__http2bufPool._http2bufPool.put;
                        __deferstack__.unshift(() -> __f__(stdgo.Go.toInterface(_a0)));
                    };
                    _buf = (_bp : stdgo.Slice<stdgo.GoUInt8>);
                } else {
                    _buf = (new stdgo.Slice<stdgo.GoUInt8>((_scratchLen : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    {
                        var _a0 = (stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>);
                        final __f__ = stdgo._internal.net.http.Http__http2bufPool._http2bufPool.put;
                        __deferstack__.unshift(() -> __f__(stdgo.Go.toInterface(_a0)));
                    };
                };
            };
            var _sawEOF:Bool = false;
            while (!_sawEOF) {
                var __tmp__ = _body.read(_buf), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_hasContentLen) {
                    _remainLen = (_remainLen - ((_n : stdgo.GoInt64)) : stdgo.GoInt64);
                    if (((_remainLen == (0i64 : stdgo.GoInt64)) && (_err == null) : Bool)) {
                        var _scratch:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(1, 1, ...[for (i in 0 ... 1) (0 : stdgo.GoUInt8)]);
                        var _n1:stdgo.GoInt = (0 : stdgo.GoInt);
                        {
                            var __tmp__ = _body.read((_scratch.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
                            _n1 = __tmp__._0;
                            _err = __tmp__._1;
                        };
                        _remainLen = (_remainLen - ((_n1 : stdgo.GoInt64)) : stdgo.GoInt64);
                    };
                    if ((_remainLen < (0i64 : stdgo.GoInt64) : Bool)) {
                        _err = stdgo._internal.net.http.Http__http2errReqBodyTooLong._http2errReqBodyTooLong;
                        {
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return _err;
                        };
                    };
                };
                if (_err != null) {
                    _cc._mu.lock();
                    var _bodyClosed = (_cs._reqBodyClosed != null : Bool);
                    _cc._mu.unlock();
                    if (_bodyClosed) {
                        {
                            final __ret__:stdgo.Error = _err = stdgo._internal.net.http.Http__http2errStopReqBodyWrite._http2errStopReqBodyWrite;
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                    } else if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                        _sawEOF = true;
                        _err = (null : stdgo.Error);
                    } else {
                        {
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return _err;
                        };
                    };
                };
                var _remain = (_buf.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>);
                while ((((_remain.length) > (0 : stdgo.GoInt) : Bool) && (_err == null) : Bool)) {
                    var _allowed:stdgo.GoInt32 = (0 : stdgo.GoInt32);
                    {
                        var __tmp__ = _cs._awaitFlowControl((_remain.length));
                        _allowed = __tmp__._0;
                        _err = __tmp__._1;
                    };
                    if (_err != null) {
                        {
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return _err;
                        };
                    };
                    _cc._wmu.lock();
                    var _data = (_remain.__slice__(0, _allowed) : stdgo.Slice<stdgo.GoUInt8>);
                    _remain = (_remain.__slice__(_allowed) : stdgo.Slice<stdgo.GoUInt8>);
                    _sentEnd = ((_sawEOF && (_remain.length) == ((0 : stdgo.GoInt)) : Bool) && !_hasTrailers : Bool);
                    _err = _cc._fr.writeData(_cs.id, _sentEnd, _data);
                    if (_err == null) {
                        _err = _cc._bw.flush();
                    };
                    _cc._wmu.unlock();
                };
                if (_err != null) {
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return _err;
                    };
                };
            };
            if (_sentEnd) {
                {
                    final __ret__:stdgo.Error = _err = (null : stdgo.Error);
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            _cc._mu.lock();
            var _trailer = (_req.trailer : stdgo._internal.net.http.Http_Header.Header);
            _err = _cs._abortErr;
            _cc._mu.unlock();
            if (_err != null) {
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return _err;
                };
            };
            _cc._wmu.lock();
            {
                final __f__ = _cc._wmu.unlock;
                __deferstack__.unshift(() -> __f__());
            };
            var _trls:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
            if (((_trailer.length) > (0 : stdgo.GoInt) : Bool)) {
                {
                    var __tmp__ = _cc._encodeTrailers(_trailer);
                    _trls = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return _err;
                    };
                };
            };
            if (((_trls.length) > (0 : stdgo.GoInt) : Bool)) {
                _err = _cc._writeHeaders(_cs.id, true, _maxFrameSize, _trls);
            } else {
                _err = _cc._fr.writeData(_cs.id, true, (null : stdgo.Slice<stdgo.GoUInt8>));
            };
            {
                var _ferr = (_cc._bw.flush() : stdgo.Error);
                if (((_ferr != null) && (_err == null) : Bool)) {
                    _err = _ferr;
                };
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return _err;
            };
            {
                for (defer in __deferstack__) {
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
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return _err;
        };
    }
    @:keep
    static public function _frameScratchBufferLen( _cs:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream>, _maxFrameSize:stdgo.GoInt):stdgo.GoInt {
        @:recv var _cs:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream> = _cs;
        {};
        var _n = (_maxFrameSize : stdgo.GoInt64);
        if ((_n > (524288i64 : stdgo.GoInt64) : Bool)) {
            _n = (524288i64 : stdgo.GoInt64);
        };
        {
            var _cl = (_cs._reqBodyContentLength : stdgo.GoInt64);
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
    static public function _cleanupWriteRequest( _cs:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream>, _err:stdgo.Error):Void {
        @:recv var _cs:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream> = _cs;
        var _cc = _cs._cc;
        if (_cs.id == ((0u32 : stdgo.GoUInt32))) {
            _cc._decrStreamReservations();
        };
        _cc._mu.lock();
        var _mustCloseBody = (false : Bool);
        if (((_cs._reqBody != null) && (_cs._reqBodyClosed == null) : Bool)) {
            _mustCloseBody = true;
            _cs._reqBodyClosed = (new stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>(0, () -> ({} : stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError)) : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>);
        };
        var _bodyClosed = _cs._reqBodyClosed;
        _cc._mu.unlock();
        if (_mustCloseBody) {
            _cs._reqBody.close();
            if (_bodyClosed != null) _bodyClosed.__close__();
        };
        if (_bodyClosed != null) {
            _bodyClosed.__get__();
        };
        if (((_err != null) && _cs._sentEndStream : Bool)) {
            {
                var __select__ = true;
                while (__select__) {
                    if (_cs._peerClosed != null && _cs._peerClosed.__isGet__()) {
                        __select__ = false;
                        {
                            _cs._peerClosed.__get__();
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
            _cs._abortStream(_err);
            if (_cs._sentHeaders) {
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo._internal.net.http.Http_T_http2StreamError.T_http2StreamError)) : stdgo._internal.net.http.Http_T_http2StreamError.T_http2StreamError), _1 : true };
                    } catch(_) {
                        { _0 : ({} : stdgo._internal.net.http.Http_T_http2StreamError.T_http2StreamError), _1 : false };
                    }, _se = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        if (stdgo.Go.toInterface(_se.cause) != (stdgo.Go.toInterface(stdgo._internal.net.http.Http__http2errFromPeer._http2errFromPeer))) {
                            _cc._writeStreamReset(_cs.id, _se.code, _err);
                        };
                    } else {
                        _cc._writeStreamReset(_cs.id, (8u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode), _err);
                    };
                };
            };
            _cs._bufPipe.closeWithError(_err);
        } else {
            if ((_cs._sentHeaders && !_cs._sentEndStream : Bool)) {
                _cc._writeStreamReset(_cs.id, (0u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode), (null : stdgo.Error));
            };
            _cs._bufPipe.closeWithError(stdgo._internal.net.http.Http__http2errRequestCanceled._http2errRequestCanceled);
        };
        if (_cs.id != ((0u32 : stdgo.GoUInt32))) {
            _cc._forgetStreamID(_cs.id);
        };
        _cc._wmu.lock();
        var _werr = (_cc._werr : stdgo.Error);
        _cc._wmu.unlock();
        if (_werr != null) {
            _cc.close();
        };
        if (_cs._donec != null) _cs._donec.__close__();
    }
    @:keep
    static public function _encodeAndWriteHeaders( _cs:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream>, _req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):stdgo.Error {
        @:recv var _cs:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream> = _cs;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _cc = _cs._cc;
            var _ctx = (_cs._ctx : stdgo._internal.context.Context_Context.Context);
            _cc._wmu.lock();
            {
                final __f__ = _cc._wmu.unlock;
                __deferstack__.unshift(() -> __f__());
            };
            {
                var __select__ = true;
                while (__select__) {
                    if (_cs._abort != null && _cs._abort.__isGet__()) {
                        __select__ = false;
                        {
                            _cs._abort.__get__();
                            {
                                {
                                    final __ret__:stdgo.Error = _cs._abortErr;
                                    for (defer in __deferstack__) {
                                        defer();
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
                                        defer();
                                    };
                                    return __ret__;
                                };
                            };
                        };
                    } else if (_cs._reqCancel != null && _cs._reqCancel.__isGet__()) {
                        __select__ = false;
                        {
                            _cs._reqCancel.__get__();
                            {
                                {
                                    for (defer in __deferstack__) {
                                        defer();
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
                        defer();
                    };
                    return _err;
                };
            };
            var _hasTrailers = (_trailers != (stdgo.Go.str()) : Bool);
            var _contentLen = (stdgo._internal.net.http.Http__http2actualContentLength._http2actualContentLength(_req) : stdgo.GoInt64);
            var _hasBody = (_contentLen != ((0i64 : stdgo.GoInt64)) : Bool);
            var __tmp__ = _cc._encodeHeaders(_req, _cs._requestedGzip, _trailers?.__copy__(), _contentLen), _hdrs:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return _err;
                };
            };
            var _endStream = (!_hasBody && !_hasTrailers : Bool);
            _cs._sentHeaders = true;
            _err = _cc._writeHeaders(_cs.id, _endStream, (_cc._maxFrameSize : stdgo.GoInt), _hdrs);
            stdgo._internal.net.http.Http__http2traceWroteHeaders._http2traceWroteHeaders(_cs._trace);
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return _err;
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
    static public function _writeRequest( _cs:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream>, _req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):stdgo.Error {
        @:recv var _cs:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream> = _cs;
        var __deferstack__:Array<Void -> Void> = [];
        var _err = (null : stdgo.Error);
        try {
            var _cc = _cs._cc;
            var _ctx = (_cs._ctx : stdgo._internal.context.Context_Context.Context);
            {
                var _err = (stdgo._internal.net.http.Http__http2checkConnHeaders._http2checkConnHeaders(_req) : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
            if (_cc._reqHeaderMu == null) {
                throw stdgo.Go.toInterface(("RoundTrip on uninitialized ClientConn" : stdgo.GoString));
            };
            {
                var __select__ = true;
                while (__select__) {
                    if (_cc._reqHeaderMu != null && _cc._reqHeaderMu.__isSend__()) {
                        __select__ = false;
                        {
                            _cc._reqHeaderMu.__send__((new stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError() : stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError));
                            {};
                        };
                    } else if (_cs._reqCancel != null && _cs._reqCancel.__isGet__()) {
                        __select__ = false;
                        {
                            _cs._reqCancel.__get__();
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
            _cc._mu.lock();
            if ((_cc._idleTimer != null && ((_cc._idleTimer : Dynamic).__nil__ == null || !(_cc._idleTimer : Dynamic).__nil__))) {
                _cc._idleTimer.stop();
            };
            _cc._decrStreamReservationsLocked();
            {
                var _err = (_cc._awaitOpenSlotForStreamLocked(_cs) : stdgo.Error);
                if (_err != null) {
                    _cc._mu.unlock();
                    _cc._reqHeaderMu.__get__();
                    return _err;
                };
            };
            _cc._addStreamLocked(_cs);
            if (stdgo._internal.net.http.Http__http2isConnectionCloseRequest._http2isConnectionCloseRequest(_req)) {
                _cc._doNotReuse = true;
            };
            _cc._mu.unlock();
            if ((((!_cc._t._disableCompression() && _req.header.get(("Accept-Encoding" : stdgo.GoString)) == (stdgo.Go.str()) : Bool) && _req.header.get(("Range" : stdgo.GoString)) == (stdgo.Go.str()) : Bool) && !_cs._isHead : Bool)) {
                _cs._requestedGzip = true;
            };
            var _continueTimeout = (_cc._t._expectContinueTimeout() : stdgo._internal.time.Time_Duration.Duration);
            if (_continueTimeout != ((0i64 : stdgo._internal.time.Time_Duration.Duration))) {
                if (!_internal.golang_dot_org.x.net.http.httpguts.Httpguts_headerValuesContainsToken.headerValuesContainsToken((_req.header[("Expect" : stdgo.GoString)] ?? (null : stdgo.Slice<stdgo.GoString>)), ("100-continue" : stdgo.GoString))) {
                    _continueTimeout = (0i64 : stdgo._internal.time.Time_Duration.Duration);
                } else {
                    _cs._on100 = (new stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>((1 : stdgo.GoInt).toBasic(), () -> ({} : stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError)) : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>);
                };
            };
            _err = _cs._encodeAndWriteHeaders(_req);
            _cc._reqHeaderMu.__get__();
            if (_err != null) {
                return _err;
            };
            var _hasBody = (_cs._reqBodyContentLength != ((0i64 : stdgo.GoInt64)) : Bool);
            if (!_hasBody) {
                _cs._sentEndStream = true;
            } else {
                if (_continueTimeout != ((0i64 : stdgo._internal.time.Time_Duration.Duration))) {
                    stdgo._internal.net.http.Http__http2traceWait100Continue._http2traceWait100Continue(_cs._trace);
                    var _timer = stdgo._internal.time.Time_newTimer.newTimer(_continueTimeout);
                    {
                        var __select__ = true;
                        while (__select__) {
                            if (_timer.c != null && _timer.c.__isGet__()) {
                                __select__ = false;
                                {
                                    _timer.c.__get__();
                                    {
                                        _err = (null : stdgo.Error);
                                    };
                                };
                            } else if (_cs._on100 != null && _cs._on100.__isGet__()) {
                                __select__ = false;
                                {
                                    _cs._on100.__get__();
                                    {
                                        _err = (null : stdgo.Error);
                                    };
                                };
                            } else if (_cs._abort != null && _cs._abort.__isGet__()) {
                                __select__ = false;
                                {
                                    _cs._abort.__get__();
                                    {
                                        _err = _cs._abortErr;
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
                            } else if (_cs._reqCancel != null && _cs._reqCancel.__isGet__()) {
                                __select__ = false;
                                {
                                    _cs._reqCancel.__get__();
                                    {
                                        _err = stdgo._internal.net.http.Http__http2errRequestCanceled._http2errRequestCanceled;
                                    };
                                };
                            };
                            #if !js Sys.sleep(0.01) #else null #end;
                            stdgo._internal.internal.Async.tick();
                        };
                    };
                    _timer.stop();
                    if (_err != null) {
                        stdgo._internal.net.http.Http__http2traceWroteRequest._http2traceWroteRequest(_cs._trace, _err);
                        return _err;
                    };
                };
                {
                    _err = _cs._writeRequestBody(_req);
                    if (_err != null) {
                        if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.net.http.Http__http2errStopReqBodyWrite._http2errStopReqBodyWrite))) {
                            stdgo._internal.net.http.Http__http2traceWroteRequest._http2traceWroteRequest(_cs._trace, _err);
                            return _err;
                        };
                    } else {
                        _cs._sentEndStream = true;
                    };
                };
            };
            stdgo._internal.net.http.Http__http2traceWroteRequest._http2traceWroteRequest(_cs._trace, _err);
            var _respHeaderTimer:stdgo.Chan<stdgo._internal.time.Time_Time.Time> = (null : stdgo.Chan<stdgo._internal.time.Time_Time.Time>);
            var _respHeaderRecv:stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError> = (null : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>);
            {
                var _d = (_cc._responseHeaderTimeout() : stdgo._internal.time.Time_Duration.Duration);
                if (_d != ((0i64 : stdgo._internal.time.Time_Duration.Duration))) {
                    var _timer = stdgo._internal.time.Time_newTimer.newTimer(_d);
                    {
                        final __f__ = _timer.stop;
                        __deferstack__.unshift(() -> __f__());
                    };
                    _respHeaderTimer = _timer.c;
                    _respHeaderRecv = _cs._respHeaderRecv;
                };
            };
            while (true) {
                {
                    var __select__ = true;
                    while (__select__) {
                        if (_cs._peerClosed != null && _cs._peerClosed.__isGet__()) {
                            __select__ = false;
                            {
                                _cs._peerClosed.__get__();
                                {
                                    {
                                        final __ret__:stdgo.Error = _err = (null : stdgo.Error);
                                        for (defer in __deferstack__) {
                                            defer();
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
                                            defer();
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
                        } else if (_cs._abort != null && _cs._abort.__isGet__()) {
                            __select__ = false;
                            {
                                _cs._abort.__get__();
                                {
                                    {
                                        final __ret__:stdgo.Error = _err = _cs._abortErr;
                                        for (defer in __deferstack__) {
                                            defer();
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
                                            defer();
                                        };
                                        return __ret__;
                                    };
                                };
                            };
                        } else if (_cs._reqCancel != null && _cs._reqCancel.__isGet__()) {
                            __select__ = false;
                            {
                                _cs._reqCancel.__get__();
                                {
                                    {
                                        final __ret__:stdgo.Error = _err = stdgo._internal.net.http.Http__http2errRequestCanceled._http2errRequestCanceled;
                                        for (defer in __deferstack__) {
                                            defer();
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
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return _err;
        };
    }
    @:keep
    static public function _doRequest( _cs:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream>, _req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):Void {
        @:recv var _cs:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream> = _cs;
        var _err = (_cs._writeRequest(_req) : stdgo.Error);
        _cs._cleanupWriteRequest(_err);
    }
    @:keep
    static public function _closeReqBodyLocked( _cs:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream>):Void {
        @:recv var _cs:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream> = _cs;
        if (_cs._reqBodyClosed != null) {
            return;
        };
        _cs._reqBodyClosed = (new stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>(0, () -> ({} : stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError)) : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>);
        var _reqBodyClosed = _cs._reqBodyClosed;
        stdgo.Go.routine(() -> ({
            var a = function():Void {
                _cs._reqBody.close();
                if (_reqBodyClosed != null) _reqBodyClosed.__close__();
            };
            a();
        }));
    }
    @:keep
    static public function _abortRequestBodyWrite( _cs:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream>):Void {
        @:recv var _cs:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream> = _cs;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _cc = _cs._cc;
            _cc._mu.lock();
            {
                final __f__ = _cc._mu.unlock;
                __deferstack__.unshift(() -> __f__());
            };
            if (((_cs._reqBody != null) && (_cs._reqBodyClosed == null) : Bool)) {
                _cs._closeReqBodyLocked();
                _cc._cond.broadcast();
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
    static public function _abortStreamLocked( _cs:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream>, _err:stdgo.Error):Void {
        @:recv var _cs:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream> = _cs;
        _cs._abortOnce.do_(function():Void {
            _cs._abortErr = _err;
            if (_cs._abort != null) _cs._abort.__close__();
        });
        if (_cs._reqBody != null) {
            _cs._closeReqBodyLocked();
        };
        if ((_cs._cc._cond != null && ((_cs._cc._cond : Dynamic).__nil__ == null || !(_cs._cc._cond : Dynamic).__nil__))) {
            _cs._cc._cond.broadcast();
        };
    }
    @:keep
    static public function _abortStream( _cs:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream>, _err:stdgo.Error):Void {
        @:recv var _cs:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream> = _cs;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _cs._cc._mu.lock();
            {
                final __f__ = _cs._cc._mu.unlock;
                __deferstack__.unshift(() -> __f__());
            };
            _cs._abortStreamLocked(_err);
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
    static public function _get1xxTraceFunc( _cs:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream>):(stdgo.GoInt, stdgo._internal.net.textproto.Textproto_MIMEHeader.MIMEHeader) -> stdgo.Error {
        @:recv var _cs:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream> = _cs;
        {
            var _fn = (stdgo._internal.net.http.Http__http2got1xxFuncForTests._http2got1xxFuncForTests : (stdgo.GoInt, stdgo._internal.net.textproto.Textproto_MIMEHeader.MIMEHeader) -> stdgo.Error);
            if (_fn != null) {
                return _fn;
            };
        };
        return stdgo._internal.net.http.Http__http2traceGot1xxResponseFunc._http2traceGot1xxResponseFunc(_cs._trace);
    }
}
