package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2clientConnReadLoop_asInterface) class T_http2clientConnReadLoop_static_extension {
    @:keep
    static public function _processPushPromise( _rl:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientConnReadLoop.T_http2clientConnReadLoop>, _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2PushPromiseFrame.T_http2PushPromiseFrame>):stdgo.Error {
        @:recv var _rl:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientConnReadLoop.T_http2clientConnReadLoop> = _rl;
        return stdgo.Go.asInterface(((1u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode) : stdgo._internal.net.http.Http_T_http2ConnectionError.T_http2ConnectionError));
    }
    @:keep
    static public function _processPing( _rl:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientConnReadLoop.T_http2clientConnReadLoop>, _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2PingFrame.T_http2PingFrame>):stdgo.Error {
        @:recv var _rl:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientConnReadLoop.T_http2clientConnReadLoop> = _rl;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if (_f.isAck()) {
                var _cc = _rl._cc;
                _cc._mu.lock();
                {
                    final __f__ = _cc._mu.unlock;
                    __deferstack__.unshift(() -> __f__());
                };
                {
                    var __tmp__ = (_cc._pings != null && _cc._pings.exists(_f.data?.__copy__()) ? { _0 : _cc._pings[_f.data?.__copy__()], _1 : true } : { _0 : (null : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>), _1 : false }), _c:stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError> = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (_ok) {
                        if (_c != null) _c.__close__();
                        if (_cc._pings != null) _cc._pings.remove(_f.data);
                    };
                };
                {
                    final __ret__:stdgo.Error = (null : stdgo.Error);
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            var _cc = _rl._cc;
            _cc._wmu.lock();
            {
                final __f__ = _cc._wmu.unlock;
                __deferstack__.unshift(() -> __f__());
            };
            {
                var _err = (_cc._fr.writePing(true, _f.data?.__copy__()) : stdgo.Error);
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
                final __ret__:stdgo.Error = _cc._bw.flush();
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
    static public function _processResetStream( _rl:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientConnReadLoop.T_http2clientConnReadLoop>, _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2RSTStreamFrame.T_http2RSTStreamFrame>):stdgo.Error {
        @:recv var _rl:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientConnReadLoop.T_http2clientConnReadLoop> = _rl;
        var _cs = _rl._streamByID(_f._http2FrameHeader.streamID);
        if ((_cs == null || (_cs : Dynamic).__nil__)) {
            return (null : stdgo.Error);
        };
        var _serr = (stdgo._internal.net.http.Http__http2streamError._http2streamError(_cs.id, _f.errCode)?.__copy__() : stdgo._internal.net.http.Http_T_http2StreamError.T_http2StreamError);
        _serr.cause = stdgo._internal.net.http.Http__http2errFromPeer._http2errFromPeer;
        if (_f.errCode == ((1u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode))) {
            _rl._cc.setDoNotReuse();
        };
        {
            var _fn = (_cs._cc._t.countError : stdgo.GoString -> Void);
            if (_fn != null) {
                _fn((("recv_rststream_" : stdgo.GoString) + _f.errCode._stringToken()?.__copy__() : stdgo.GoString)?.__copy__());
            };
        };
        _cs._abortStream(stdgo.Go.asInterface(_serr));
        _cs._bufPipe.closeWithError(stdgo.Go.asInterface(_serr));
        return (null : stdgo.Error);
    }
    @:keep
    static public function _processWindowUpdate( _rl:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientConnReadLoop.T_http2clientConnReadLoop>, _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2WindowUpdateFrame.T_http2WindowUpdateFrame>):stdgo.Error {
        @:recv var _rl:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientConnReadLoop.T_http2clientConnReadLoop> = _rl;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _cc = _rl._cc;
            var _cs = _rl._streamByID(_f._http2FrameHeader.streamID);
            if (((_f._http2FrameHeader.streamID != (0u32 : stdgo.GoUInt32)) && (_cs == null || (_cs : Dynamic).__nil__) : Bool)) {
                return (null : stdgo.Error);
            };
            _cc._mu.lock();
            {
                final __f__ = _cc._mu.unlock;
                __deferstack__.unshift(() -> __f__());
            };
            var _fl = (stdgo.Go.setRef(_cc._flow) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2outflow.T_http2outflow>);
            if ((_cs != null && ((_cs : Dynamic).__nil__ == null || !(_cs : Dynamic).__nil__))) {
                _fl = (stdgo.Go.setRef(_cs._flow) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2outflow.T_http2outflow>);
            };
            if (!_fl._add((_f.increment : stdgo.GoInt32))) {
                {
                    final __ret__:stdgo.Error = stdgo.Go.asInterface(((3u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode) : stdgo._internal.net.http.Http_T_http2ConnectionError.T_http2ConnectionError));
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            _cc._cond.broadcast();
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
    static public function _processSettingsNoWrite( _rl:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientConnReadLoop.T_http2clientConnReadLoop>, _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2SettingsFrame.T_http2SettingsFrame>):stdgo.Error {
        @:recv var _rl:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientConnReadLoop.T_http2clientConnReadLoop> = _rl;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _cc = _rl._cc;
            _cc._mu.lock();
            {
                final __f__ = _cc._mu.unlock;
                __deferstack__.unshift(() -> __f__());
            };
            if (_f.isAck()) {
                if (_cc._wantSettingsAck) {
                    _cc._wantSettingsAck = false;
                    {
                        final __ret__:stdgo.Error = (null : stdgo.Error);
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return __ret__;
                    };
                };
                {
                    final __ret__:stdgo.Error = stdgo.Go.asInterface(((1u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode) : stdgo._internal.net.http.Http_T_http2ConnectionError.T_http2ConnectionError));
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            var _seenMaxConcurrentStreams:Bool = false;
            var _err = (_f.foreachSetting(function(_s:stdgo._internal.net.http.Http_T_http2Setting.T_http2Setting):stdgo.Error {
                {
                    final __value__ = _s.id;
                    if (__value__ == ((5 : stdgo._internal.net.http.Http_T_http2SettingID.T_http2SettingID))) {
                        _cc._maxFrameSize = _s.val;
                    } else if (__value__ == ((3 : stdgo._internal.net.http.Http_T_http2SettingID.T_http2SettingID))) {
                        _cc._maxConcurrentStreams = _s.val;
                        _seenMaxConcurrentStreams = true;
                    } else if (__value__ == ((6 : stdgo._internal.net.http.Http_T_http2SettingID.T_http2SettingID))) {
                        _cc._peerMaxHeaderListSize = (_s.val : stdgo.GoUInt64);
                    } else if (__value__ == ((4 : stdgo._internal.net.http.Http_T_http2SettingID.T_http2SettingID))) {
                        if ((_s.val > (2147483647u32 : stdgo.GoUInt32) : Bool)) {
                            return stdgo.Go.asInterface(((3u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode) : stdgo._internal.net.http.Http_T_http2ConnectionError.T_http2ConnectionError));
                        };
                        var _delta = ((_s.val : stdgo.GoInt32) - (_cc._initialWindowSize : stdgo.GoInt32) : stdgo.GoInt32);
                        for (__32464 => _cs in _cc._streams) {
                            _cs._flow._add(_delta);
                        };
                        _cc._cond.broadcast();
                        _cc._initialWindowSize = _s.val;
                    } else if (__value__ == ((1 : stdgo._internal.net.http.Http_T_http2SettingID.T_http2SettingID))) {
                        _cc._henc.setMaxDynamicTableSize(_s.val);
                        _cc._peerMaxHeaderTableSize = _s.val;
                    } else {
                        _cc._vlogf(("Unhandled Setting: %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_s)));
                    };
                };
                return (null : stdgo.Error);
            }) : stdgo.Error);
            if (_err != null) {
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return _err;
                };
            };
            if (!_cc._seenSettings) {
                if (!_seenMaxConcurrentStreams) {
                    _cc._maxConcurrentStreams = (1000u32 : stdgo.GoUInt32);
                };
                _cc._seenSettings = true;
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
    static public function _processSettings( _rl:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientConnReadLoop.T_http2clientConnReadLoop>, _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2SettingsFrame.T_http2SettingsFrame>):stdgo.Error {
        @:recv var _rl:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientConnReadLoop.T_http2clientConnReadLoop> = _rl;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _cc = _rl._cc;
            _cc._wmu.lock();
            {
                final __f__ = _cc._wmu.unlock;
                __deferstack__.unshift(() -> __f__());
            };
            {
                var _err = (_rl._processSettingsNoWrite(_f) : stdgo.Error);
                if (_err != null) {
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return _err;
                    };
                };
            };
            if (!_f.isAck()) {
                _cc._fr.writeSettingsAck();
                _cc._bw.flush();
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
    static public function _processGoAway( _rl:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientConnReadLoop.T_http2clientConnReadLoop>, _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2GoAwayFrame.T_http2GoAwayFrame>):stdgo.Error {
        @:recv var _rl:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientConnReadLoop.T_http2clientConnReadLoop> = _rl;
        var _cc = _rl._cc;
        _cc._t._connPool().markDead(_cc);
        if (_f.errCode != ((0u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode))) {
            _cc._vlogf(("transport got GOAWAY with error code = %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_f.errCode)));
            {
                var _fn = (_cc._t.countError : stdgo.GoString -> Void);
                if (_fn != null) {
                    _fn((("recv_goaway_" : stdgo.GoString) + _f.errCode._stringToken()?.__copy__() : stdgo.GoString)?.__copy__());
                };
            };
        };
        _cc._setGoAway(_f);
        return (null : stdgo.Error);
    }
    @:keep
    static public function _streamByID( _rl:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientConnReadLoop.T_http2clientConnReadLoop>, _id:stdgo.GoUInt32):stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream> {
        @:recv var _rl:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientConnReadLoop.T_http2clientConnReadLoop> = _rl;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _rl._cc._mu.lock();
            {
                final __f__ = _rl._cc._mu.unlock;
                __deferstack__.unshift(() -> __f__());
            };
            var _cs = (_rl._cc._streams[_id] ?? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream>));
            if (((_cs != null && ((_cs : Dynamic).__nil__ == null || !(_cs : Dynamic).__nil__)) && !_cs._readAborted : Bool)) {
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return _cs;
                };
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return null;
            };
            {
                final __ret__:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream> = (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream>);
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
            final __ret__:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream> = (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream>);
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
    @:keep
    static public function _endStreamError( _rl:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientConnReadLoop.T_http2clientConnReadLoop>, _cs:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream>, _err:stdgo.Error):Void {
        @:recv var _rl:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientConnReadLoop.T_http2clientConnReadLoop> = _rl;
        _cs._readAborted = true;
        _cs._abortStream(_err);
    }
    @:keep
    static public function _endStream( _rl:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientConnReadLoop.T_http2clientConnReadLoop>, _cs:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream>):Void {
        @:recv var _rl:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientConnReadLoop.T_http2clientConnReadLoop> = _rl;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if (!_cs._readClosed) {
                _cs._readClosed = true;
                _rl._cc._mu.lock();
                {
                    final __f__ = _rl._cc._mu.unlock;
                    __deferstack__.unshift(() -> __f__());
                };
                _cs._bufPipe._closeWithErrorAndCode(stdgo._internal.io.Io_eof.eof, _cs._copyTrailers);
                if (_cs._peerClosed != null) _cs._peerClosed.__close__();
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
    static public function _processData( _rl:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientConnReadLoop.T_http2clientConnReadLoop>, _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2DataFrame.T_http2DataFrame>):stdgo.Error {
        @:recv var _rl:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientConnReadLoop.T_http2clientConnReadLoop> = _rl;
        var _cc = _rl._cc;
        var _cs = _rl._streamByID(_f._http2FrameHeader.streamID);
        var _data = _f.data();
        if ((_cs == null || (_cs : Dynamic).__nil__)) {
            _cc._mu.lock();
            var _neverSent = (_cc._nextStreamID : stdgo.GoUInt32);
            _cc._mu.unlock();
            if ((_f._http2FrameHeader.streamID >= _neverSent : Bool)) {
                _cc._logf(("http2: Transport received unsolicited DATA frame; closing connection" : stdgo.GoString));
                return stdgo.Go.asInterface(((1u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode) : stdgo._internal.net.http.Http_T_http2ConnectionError.T_http2ConnectionError));
            };
            if ((_f._http2FrameHeader.length_ > (0u32 : stdgo.GoUInt32) : Bool)) {
                _cc._mu.lock();
                var _ok = (_cc._inflow._take(_f._http2FrameHeader.length_) : Bool);
                var _connAdd = (_cc._inflow._add((_f._http2FrameHeader.length_ : stdgo.GoInt)) : stdgo.GoInt32);
                _cc._mu.unlock();
                if (!_ok) {
                    return stdgo.Go.asInterface(((3u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode) : stdgo._internal.net.http.Http_T_http2ConnectionError.T_http2ConnectionError));
                };
                if ((_connAdd > (0 : stdgo.GoInt32) : Bool)) {
                    _cc._wmu.lock();
                    _cc._fr.writeWindowUpdate((0u32 : stdgo.GoUInt32), (_connAdd : stdgo.GoUInt32));
                    _cc._bw.flush();
                    _cc._wmu.unlock();
                };
            };
            return (null : stdgo.Error);
        };
        if (_cs._readClosed) {
            _cc._logf(("protocol error: received DATA after END_STREAM" : stdgo.GoString));
            _rl._endStreamError(_cs, stdgo.Go.asInterface(({ streamID : _f._http2FrameHeader.streamID, code : (1u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode) } : stdgo._internal.net.http.Http_T_http2StreamError.T_http2StreamError)));
            return (null : stdgo.Error);
        };
        if (!_cs._firstByte) {
            _cc._logf(("protocol error: received DATA before a HEADERS frame" : stdgo.GoString));
            _rl._endStreamError(_cs, stdgo.Go.asInterface(({ streamID : _f._http2FrameHeader.streamID, code : (1u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode) } : stdgo._internal.net.http.Http_T_http2StreamError.T_http2StreamError)));
            return (null : stdgo.Error);
        };
        if ((_f._http2FrameHeader.length_ > (0u32 : stdgo.GoUInt32) : Bool)) {
            if ((_cs._isHead && ((_data.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                _cc._logf(("protocol error: received DATA on a HEAD request" : stdgo.GoString));
                _rl._endStreamError(_cs, stdgo.Go.asInterface(({ streamID : _f._http2FrameHeader.streamID, code : (1u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode) } : stdgo._internal.net.http.Http_T_http2StreamError.T_http2StreamError)));
                return (null : stdgo.Error);
            };
            _cc._mu.lock();
            if (!stdgo._internal.net.http.Http__http2takeInflows._http2takeInflows((stdgo.Go.setRef(_cc._inflow) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2inflow.T_http2inflow>), (stdgo.Go.setRef(_cs._inflow) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2inflow.T_http2inflow>), _f._http2FrameHeader.length_)) {
                _cc._mu.unlock();
                return stdgo.Go.asInterface(((3u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode) : stdgo._internal.net.http.Http_T_http2ConnectionError.T_http2ConnectionError));
            };
            var _refund:stdgo.GoInt = (0 : stdgo.GoInt);
            {
                var _pad = ((_f._http2FrameHeader.length_ : stdgo.GoInt) - (_data.length) : stdgo.GoInt);
                if ((_pad > (0 : stdgo.GoInt) : Bool)) {
                    _refund = (_refund + (_pad) : stdgo.GoInt);
                };
            };
            var _didReset = (false : Bool);
            var _err:stdgo.Error = (null : stdgo.Error);
            if (((_data.length) > (0 : stdgo.GoInt) : Bool)) {
                {
                    {
                        var __tmp__ = _cs._bufPipe.write(_data);
                        _err = __tmp__._1;
                    };
                    if (_err != null) {
                        _didReset = true;
                        _refund = (_refund + ((_data.length)) : stdgo.GoInt);
                    };
                };
            };
            var _sendConn = (_cc._inflow._add(_refund) : stdgo.GoInt32);
            var _sendStream:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            if (!_didReset) {
                _sendStream = _cs._inflow._add(_refund);
            };
            _cc._mu.unlock();
            if (((_sendConn > (0 : stdgo.GoInt32) : Bool) || (_sendStream > (0 : stdgo.GoInt32) : Bool) : Bool)) {
                _cc._wmu.lock();
                if ((_sendConn > (0 : stdgo.GoInt32) : Bool)) {
                    _cc._fr.writeWindowUpdate((0u32 : stdgo.GoUInt32), (_sendConn : stdgo.GoUInt32));
                };
                if ((_sendStream > (0 : stdgo.GoInt32) : Bool)) {
                    _cc._fr.writeWindowUpdate(_cs.id, (_sendStream : stdgo.GoUInt32));
                };
                _cc._bw.flush();
                _cc._wmu.unlock();
            };
            if (_err != null) {
                _rl._endStreamError(_cs, _err);
                return (null : stdgo.Error);
            };
        };
        if (_f.streamEnded()) {
            _rl._endStream(_cs);
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function _processTrailers( _rl:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientConnReadLoop.T_http2clientConnReadLoop>, _cs:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream>, _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2MetaHeadersFrame.T_http2MetaHeadersFrame>):stdgo.Error {
        @:recv var _rl:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientConnReadLoop.T_http2clientConnReadLoop> = _rl;
        if (_cs._pastTrailers) {
            return stdgo.Go.asInterface(((1u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode) : stdgo._internal.net.http.Http_T_http2ConnectionError.T_http2ConnectionError));
        };
        _cs._pastTrailers = true;
        if (!_f.streamEnded()) {
            return stdgo.Go.asInterface(((1u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode) : stdgo._internal.net.http.Http_T_http2ConnectionError.T_http2ConnectionError));
        };
        if (((_f.pseudoFields().length) > (0 : stdgo.GoInt) : Bool)) {
            return stdgo.Go.asInterface(((1u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode) : stdgo._internal.net.http.Http_T_http2ConnectionError.T_http2ConnectionError));
        };
        var _trailer = (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
            x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.http.Http_Header.Header);
        for (__32437 => _hf in _f.regularFields()) {
            var _key = (stdgo._internal.net.http.Http__http2canonicalHeader._http2canonicalHeader(_hf.name?.__copy__())?.__copy__() : stdgo.GoString);
            _trailer[_key] = ((_trailer[_key] ?? (null : stdgo.Slice<stdgo.GoString>)).__append__(_hf.value?.__copy__()));
        };
        _cs._trailer = _trailer;
        _rl._endStream(_cs);
        return (null : stdgo.Error);
    }
    @:keep
    static public function _handleResponse( _rl:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientConnReadLoop.T_http2clientConnReadLoop>, _cs:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream>, _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2MetaHeadersFrame.T_http2MetaHeadersFrame>):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } {
        @:recv var _rl:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientConnReadLoop.T_http2clientConnReadLoop> = _rl;
        if (_f.truncated) {
            return { _0 : null, _1 : stdgo._internal.net.http.Http__http2errResponseHeaderListSize._http2errResponseHeaderListSize };
        };
        var _status = (_f.pseudoValue(("status" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        if (_status == (stdgo.Go.str())) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("malformed response from server: missing status pseudo header" : stdgo.GoString)) };
        };
        var __tmp__ = stdgo._internal.strconv.Strconv_atoi.atoi(_status?.__copy__()), _statusCode:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("malformed response from server: malformed non-numeric status pseudo header" : stdgo.GoString)) };
        };
        var _regularFields = _f.regularFields();
        var _strs = (new stdgo.Slice<stdgo.GoString>((_regularFields.length : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
        var _header = (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
            x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.http.Http_Header.Header);
        var _res = (stdgo.Go.setRef(({ proto : ("HTTP/2.0" : stdgo.GoString), protoMajor : (2 : stdgo.GoInt), header : _header, statusCode : _statusCode, status : ((_status + (" " : stdgo.GoString)?.__copy__() : stdgo.GoString) + stdgo._internal.net.http.Http_statusText.statusText(_statusCode)?.__copy__() : stdgo.GoString)?.__copy__() } : stdgo._internal.net.http.Http_Response.Response)) : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>);
        for (__32413 => _hf in _regularFields) {
            var _key = (stdgo._internal.net.http.Http__http2canonicalHeader._http2canonicalHeader(_hf.name?.__copy__())?.__copy__() : stdgo.GoString);
            if (_key == (("Trailer" : stdgo.GoString))) {
                var _t = (_res.trailer : stdgo._internal.net.http.Http_Header.Header);
                if (_t == null) {
                    _t = (({
                        final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
                        x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
                        {};
                        x;
                    } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.http.Http_Header.Header);
                    _res.trailer = _t;
                };
                stdgo._internal.net.http.Http__http2foreachHeaderElement._http2foreachHeaderElement(_hf.value?.__copy__(), function(_v:stdgo.GoString):Void {
                    _t[stdgo._internal.net.http.Http__http2canonicalHeader._http2canonicalHeader(_v?.__copy__())] = (null : stdgo.Slice<stdgo.GoString>);
                });
            } else {
                var _vv = (_header[_key] ?? (null : stdgo.Slice<stdgo.GoString>));
                if (((_vv == null) && ((_strs.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                    {
                        final __tmp__0 = (_strs.__slice__(0, (1 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>);
                        final __tmp__1 = (_strs.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>);
                        _vv = __tmp__0;
                        _strs = __tmp__1;
                    };
                    _vv[(0 : stdgo.GoInt)] = _hf.value?.__copy__();
                    _header[_key] = _vv;
                } else {
                    _header[_key] = (_vv.__append__(_hf.value?.__copy__()));
                };
            };
        };
        if (((_statusCode >= (100 : stdgo.GoInt) : Bool) && (_statusCode <= (199 : stdgo.GoInt) : Bool) : Bool)) {
            if (_f.streamEnded()) {
                return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("1xx informational response with END_STREAM flag" : stdgo.GoString)) };
            };
            _cs._num1xx++;
            {};
            if ((_cs._num1xx > (5 : stdgo.GoUInt8) : Bool)) {
                return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("http2: too many 1xx informational responses" : stdgo.GoString)) };
            };
            {
                var _fn = (_cs._get1xxTraceFunc() : (stdgo.GoInt, stdgo._internal.net.textproto.Textproto_MIMEHeader.MIMEHeader) -> stdgo.Error);
                if (_fn != null) {
                    {
                        var _err = (_fn(_statusCode, (_header : stdgo._internal.net.textproto.Textproto_MIMEHeader.MIMEHeader)) : stdgo.Error);
                        if (_err != null) {
                            return { _0 : null, _1 : _err };
                        };
                    };
                };
            };
            if (_statusCode == ((100 : stdgo.GoInt))) {
                stdgo._internal.net.http.Http__http2traceGot100Continue._http2traceGot100Continue(_cs._trace);
                {
                    var __select__ = true;
                    while (__select__) {
                        if (_cs._on100 != null && _cs._on100.__isSend__()) {
                            __select__ = false;
                            {
                                _cs._on100.__send__((new stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError() : stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError));
                                {};
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
            _cs._pastHeaders = false;
            return { _0 : null, _1 : (null : stdgo.Error) };
        };
        _res.contentLength = (-1i64 : stdgo.GoInt64);
        {
            var _clens = (_res.header[("Content-Length" : stdgo.GoString)] ?? (null : stdgo.Slice<stdgo.GoString>));
            if ((_clens.length) == ((1 : stdgo.GoInt))) {
                {
                    var __tmp__ = stdgo._internal.strconv.Strconv_parseUint.parseUint(_clens[(0 : stdgo.GoInt)]?.__copy__(), (10 : stdgo.GoInt), (63 : stdgo.GoInt)), _cl:stdgo.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err == null) {
                        _res.contentLength = (_cl : stdgo.GoInt64);
                    } else {};
                };
            } else if (((_clens.length) > (1 : stdgo.GoInt) : Bool)) {} else if ((_f.streamEnded() && !_cs._isHead : Bool)) {
                _res.contentLength = (0i64 : stdgo.GoInt64);
            };
        };
        if (_cs._isHead) {
            _res.body = stdgo._internal.net.http.Http__http2noBody._http2noBody;
            return { _0 : _res, _1 : (null : stdgo.Error) };
        };
        if (_f.streamEnded()) {
            if ((_res.contentLength > (0i64 : stdgo.GoInt64) : Bool)) {
                _res.body = stdgo.Go.asInterface((new stdgo._internal.net.http.Http_T_http2missingBody.T_http2missingBody() : stdgo._internal.net.http.Http_T_http2missingBody.T_http2missingBody));
            } else {
                _res.body = stdgo._internal.net.http.Http__http2noBody._http2noBody;
            };
            return { _0 : _res, _1 : (null : stdgo.Error) };
        };
        _cs._bufPipe._setBuffer(stdgo.Go.asInterface((stdgo.Go.setRef(({ _expected : _res.contentLength } : stdgo._internal.net.http.Http_T_http2dataBuffer.T_http2dataBuffer)) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2dataBuffer.T_http2dataBuffer>)));
        _cs._bytesRemain = _res.contentLength;
        _res.body = stdgo.Go.asInterface((new stdgo._internal.net.http.Http_T_http2transportResponseBody.T_http2transportResponseBody(_cs) : stdgo._internal.net.http.Http_T_http2transportResponseBody.T_http2transportResponseBody));
        if ((_cs._requestedGzip && stdgo._internal.net.http.Http__http2asciiEqualFold._http2asciiEqualFold(_res.header.get(("Content-Encoding" : stdgo.GoString))?.__copy__(), ("gzip" : stdgo.GoString)) : Bool)) {
            _res.header.del(("Content-Encoding" : stdgo.GoString));
            _res.header.del(("Content-Length" : stdgo.GoString));
            _res.contentLength = (-1i64 : stdgo.GoInt64);
            _res.body = stdgo.Go.asInterface((stdgo.Go.setRef(({ _body : _res.body } : stdgo._internal.net.http.Http_T_http2gzipReader.T_http2gzipReader)) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2gzipReader.T_http2gzipReader>));
            _res.uncompressed = true;
        };
        return { _0 : _res, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function _processHeaders( _rl:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientConnReadLoop.T_http2clientConnReadLoop>, _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2MetaHeadersFrame.T_http2MetaHeadersFrame>):stdgo.Error {
        @:recv var _rl:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientConnReadLoop.T_http2clientConnReadLoop> = _rl;
        var _cs = _rl._streamByID(_f._http2HeadersFrame._http2FrameHeader.streamID);
        if ((_cs == null || (_cs : Dynamic).__nil__)) {
            return (null : stdgo.Error);
        };
        if (_cs._readClosed) {
            _rl._endStreamError(_cs, stdgo.Go.asInterface(({ streamID : _f._http2HeadersFrame._http2FrameHeader.streamID, code : (1u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode), cause : stdgo._internal.errors.Errors_new_.new_(("protocol error: headers after END_STREAM" : stdgo.GoString)) } : stdgo._internal.net.http.Http_T_http2StreamError.T_http2StreamError)));
            return (null : stdgo.Error);
        };
        if (!_cs._firstByte) {
            if ((_cs._trace != null && ((_cs._trace : Dynamic).__nil__ == null || !(_cs._trace : Dynamic).__nil__))) {
                stdgo._internal.net.http.Http__http2traceFirstResponseByte._http2traceFirstResponseByte(_cs._trace);
            };
            _cs._firstByte = true;
        };
        if (!_cs._pastHeaders) {
            _cs._pastHeaders = true;
        } else {
            return _rl._processTrailers(_cs, _f);
        };
        var __tmp__ = _rl._handleResponse(_cs, _f), _res:stdgo.Ref<stdgo._internal.net.http.Http_Response.Response> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo._internal.net.http.Http_T_http2ConnectionError.T_http2ConnectionError)) : stdgo._internal.net.http.Http_T_http2ConnectionError.T_http2ConnectionError), _1 : true };
                } catch(_) {
                    { _0 : ((0 : stdgo.GoUInt32) : stdgo._internal.net.http.Http_T_http2ConnectionError.T_http2ConnectionError), _1 : false };
                }, __32475 = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    return _err;
                };
            };
            _rl._endStreamError(_cs, stdgo.Go.asInterface(({ streamID : _f._http2HeadersFrame._http2FrameHeader.streamID, code : (1u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode), cause : _err } : stdgo._internal.net.http.Http_T_http2StreamError.T_http2StreamError)));
            return (null : stdgo.Error);
        };
        if ((_res == null || (_res : Dynamic).__nil__)) {
            return (null : stdgo.Error);
        };
        _cs._resTrailer = (stdgo.Go.setRef(_res.trailer) : stdgo.Ref<stdgo._internal.net.http.Http_Header.Header>);
        _cs._res = _res;
        if (_cs._respHeaderRecv != null) _cs._respHeaderRecv.__close__();
        if (_f.streamEnded()) {
            _rl._endStream(_cs);
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function _run( _rl:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientConnReadLoop.T_http2clientConnReadLoop>):stdgo.Error {
        @:recv var _rl:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientConnReadLoop.T_http2clientConnReadLoop> = _rl;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _cc = _rl._cc;
            var _gotSettings = (false : Bool);
            var _readIdleTimeout = (_cc._t.readIdleTimeout : stdgo._internal.time.Time_Duration.Duration);
            var _t:stdgo.Ref<stdgo._internal.time.Time_Timer.Timer> = (null : stdgo.Ref<stdgo._internal.time.Time_Timer.Timer>);
            if (_readIdleTimeout != ((0i64 : stdgo._internal.time.Time_Duration.Duration))) {
                _t = stdgo._internal.time.Time_afterFunc.afterFunc(_readIdleTimeout, _cc._healthCheck);
                {
                    final __f__ = _t.stop;
                    __deferstack__.unshift(() -> __f__());
                };
            };
            while (true) {
                var __tmp__ = _cc._fr.readFrame(), _f:stdgo._internal.net.http.Http_T_http2Frame.T_http2Frame = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if ((_t != null && ((_t : Dynamic).__nil__ == null || !(_t : Dynamic).__nil__))) {
                    _t.reset(_readIdleTimeout);
                };
                if (_err != null) {
                    _cc._vlogf(("http2: Transport readFrame error on conn %p: (%T) %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_cc)), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_err));
                };
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo._internal.net.http.Http_T_http2StreamError.T_http2StreamError)) : stdgo._internal.net.http.Http_T_http2StreamError.T_http2StreamError), _1 : true };
                    } catch(_) {
                        { _0 : ({} : stdgo._internal.net.http.Http_T_http2StreamError.T_http2StreamError), _1 : false };
                    }, _se = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        {
                            var _cs = _rl._streamByID(_se.streamID);
                            if ((_cs != null && ((_cs : Dynamic).__nil__ == null || !(_cs : Dynamic).__nil__))) {
                                if (_se.cause == null) {
                                    _se.cause = _cc._fr._errDetail;
                                };
                                _rl._endStreamError(_cs, stdgo.Go.asInterface(_se));
                            };
                        };
                        continue;
                    } else if (_err != null) {
                        _cc._countReadFrameError(_err);
                        {
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return _err;
                        };
                    };
                };
                if (stdgo._internal.net.http.Http__http2VerboseLogs._http2VerboseLogs) {
                    _cc._vlogf(("http2: Transport received %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.net.http.Http__http2summarizeFrame._http2summarizeFrame(_f)));
                };
                if (!_gotSettings) {
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_f) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2SettingsFrame.T_http2SettingsFrame>)) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2SettingsFrame.T_http2SettingsFrame>), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2SettingsFrame.T_http2SettingsFrame>), _1 : false };
                        }, __32452 = __tmp__._0, _ok = __tmp__._1;
                        if (!_ok) {
                            _cc._logf(("protocol error: received %T before a SETTINGS frame" : stdgo.GoString), stdgo.Go.toInterface(_f));
                            {
                                final __ret__:stdgo.Error = stdgo.Go.asInterface(((1u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode) : stdgo._internal.net.http.Http_T_http2ConnectionError.T_http2ConnectionError));
                                for (defer in __deferstack__) {
                                    defer();
                                };
                                return __ret__;
                            };
                        };
                    };
                    _gotSettings = true;
                };
                {
                    final __type__ = _f;
                    if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.net.http.Http_T_http2MetaHeadersFrame.T_http2MetaHeadersFrame>))) {
                        var _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2MetaHeadersFrame.T_http2MetaHeadersFrame> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2MetaHeadersFrame.T_http2MetaHeadersFrame>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2MetaHeadersFrame.T_http2MetaHeadersFrame>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2MetaHeadersFrame.T_http2MetaHeadersFrame>) : __type__.__underlying__().value;
                        _err = _rl._processHeaders(_f);
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.net.http.Http_T_http2DataFrame.T_http2DataFrame>))) {
                        var _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2DataFrame.T_http2DataFrame> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2DataFrame.T_http2DataFrame>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2DataFrame.T_http2DataFrame>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2DataFrame.T_http2DataFrame>) : __type__.__underlying__().value;
                        _err = _rl._processData(_f);
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.net.http.Http_T_http2GoAwayFrame.T_http2GoAwayFrame>))) {
                        var _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2GoAwayFrame.T_http2GoAwayFrame> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2GoAwayFrame.T_http2GoAwayFrame>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2GoAwayFrame.T_http2GoAwayFrame>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2GoAwayFrame.T_http2GoAwayFrame>) : __type__.__underlying__().value;
                        _err = _rl._processGoAway(_f);
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.net.http.Http_T_http2RSTStreamFrame.T_http2RSTStreamFrame>))) {
                        var _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2RSTStreamFrame.T_http2RSTStreamFrame> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2RSTStreamFrame.T_http2RSTStreamFrame>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2RSTStreamFrame.T_http2RSTStreamFrame>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2RSTStreamFrame.T_http2RSTStreamFrame>) : __type__.__underlying__().value;
                        _err = _rl._processResetStream(_f);
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.net.http.Http_T_http2SettingsFrame.T_http2SettingsFrame>))) {
                        var _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2SettingsFrame.T_http2SettingsFrame> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2SettingsFrame.T_http2SettingsFrame>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2SettingsFrame.T_http2SettingsFrame>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2SettingsFrame.T_http2SettingsFrame>) : __type__.__underlying__().value;
                        _err = _rl._processSettings(_f);
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.net.http.Http_T_http2PushPromiseFrame.T_http2PushPromiseFrame>))) {
                        var _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2PushPromiseFrame.T_http2PushPromiseFrame> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2PushPromiseFrame.T_http2PushPromiseFrame>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2PushPromiseFrame.T_http2PushPromiseFrame>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2PushPromiseFrame.T_http2PushPromiseFrame>) : __type__.__underlying__().value;
                        _err = _rl._processPushPromise(_f);
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.net.http.Http_T_http2WindowUpdateFrame.T_http2WindowUpdateFrame>))) {
                        var _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2WindowUpdateFrame.T_http2WindowUpdateFrame> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2WindowUpdateFrame.T_http2WindowUpdateFrame>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2WindowUpdateFrame.T_http2WindowUpdateFrame>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2WindowUpdateFrame.T_http2WindowUpdateFrame>) : __type__.__underlying__().value;
                        _err = _rl._processWindowUpdate(_f);
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.net.http.Http_T_http2PingFrame.T_http2PingFrame>))) {
                        var _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2PingFrame.T_http2PingFrame> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2PingFrame.T_http2PingFrame>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2PingFrame.T_http2PingFrame>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2PingFrame.T_http2PingFrame>) : __type__.__underlying__().value;
                        _err = _rl._processPing(_f);
                    } else {
                        var _f:stdgo._internal.net.http.Http_T_http2Frame.T_http2Frame = __type__ == null ? (null : stdgo._internal.net.http.Http_T_http2Frame.T_http2Frame) : cast __type__;
                        _cc._logf(("Transport: unhandled response frame type %T" : stdgo.GoString), stdgo.Go.toInterface(_f));
                    };
                };
                if (_err != null) {
                    if (stdgo._internal.net.http.Http__http2VerboseLogs._http2VerboseLogs) {
                        _cc._vlogf(("http2: Transport conn %p received error from processing frame %v: %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_cc)), stdgo.Go.toInterface(stdgo._internal.net.http.Http__http2summarizeFrame._http2summarizeFrame(_f)), stdgo.Go.toInterface(_err));
                    };
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
    static public function _cleanup( _rl:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientConnReadLoop.T_http2clientConnReadLoop>):Void {
        @:recv var _rl:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientConnReadLoop.T_http2clientConnReadLoop> = _rl;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _cc = _rl._cc;
            _cc._t._connPool().markDead(_cc);
            {
                final __f__ = _cc._closeConn;
                __deferstack__.unshift(() -> __f__());
            };
            {
                var _a0 = _cc._readerDone;
                __deferstack__.unshift(() -> if (_a0 != null) _a0.__close__());
            };
            if ((_cc._idleTimer != null && ((_cc._idleTimer : Dynamic).__nil__ == null || !(_cc._idleTimer : Dynamic).__nil__))) {
                _cc._idleTimer.stop();
            };
            var _err = (_cc._readerErr : stdgo.Error);
            _cc._mu.lock();
            if (((_cc._goAway != null && ((_cc._goAway : Dynamic).__nil__ == null || !(_cc._goAway : Dynamic).__nil__)) && stdgo._internal.net.http.Http__http2isEOFOrNetReadError._http2isEOFOrNetReadError(_err) : Bool)) {
                _err = stdgo.Go.asInterface(({ lastStreamID : _cc._goAway.lastStreamID, errCode : _cc._goAway.errCode, debugData : _cc._goAwayDebug?.__copy__() } : stdgo._internal.net.http.Http_T_http2GoAwayError.T_http2GoAwayError));
            } else if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                _err = stdgo._internal.io.Io_errUnexpectedEOF.errUnexpectedEOF;
            };
            _cc._closed = true;
            for (__32522 => _cs in _cc._streams) {
                {
                    var __select__ = true;
                    while (__select__) {
                        if (_cs._peerClosed != null && _cs._peerClosed.__isGet__()) {
                            __select__ = false;
                            {
                                _cs._peerClosed.__get__();
                                {};
                            };
                        } else {
                            __select__ = false;
                            {
                                _cs._abortStreamLocked(_err);
                            };
                        };
                        #if !js Sys.sleep(0.01) #else null #end;
                        stdgo._internal.internal.Async.tick();
                    };
                };
            };
            _cc._cond.broadcast();
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
}
