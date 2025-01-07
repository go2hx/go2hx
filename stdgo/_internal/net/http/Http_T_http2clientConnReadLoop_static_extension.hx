package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2clientConnReadLoop_asInterface) class T_http2clientConnReadLoop_static_extension {
    @:keep
    @:tdfield
    static public function _processPushPromise( _rl:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientConnReadLoop.T_http2clientConnReadLoop>, _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2PushPromiseFrame.T_http2PushPromiseFrame>):stdgo.Error {
        @:recv var _rl:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientConnReadLoop.T_http2clientConnReadLoop> = _rl;
        return stdgo.Go.asInterface(((1u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode) : stdgo._internal.net.http.Http_T_http2ConnectionError.T_http2ConnectionError));
    }
    @:keep
    @:tdfield
    static public function _processPing( _rl:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientConnReadLoop.T_http2clientConnReadLoop>, _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2PingFrame.T_http2PingFrame>):stdgo.Error {
        @:recv var _rl:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientConnReadLoop.T_http2clientConnReadLoop> = _rl;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            if (@:check2r _f.isAck()) {
                var _cc = (@:checkr _rl ?? throw "null pointer dereference")._cc;
                @:check2 (@:checkr _cc ?? throw "null pointer dereference")._mu.lock();
                {
                    final __f__ = @:check2 (@:checkr _cc ?? throw "null pointer dereference")._mu.unlock;
                    __deferstack__.unshift({ ran : false, f : () -> __f__() });
                };
                {
                    var __tmp__ = ((@:checkr _cc ?? throw "null pointer dereference")._pings != null && (@:checkr _cc ?? throw "null pointer dereference")._pings.exists((@:checkr _f ?? throw "null pointer dereference").data?.__copy__()) ? { _0 : (@:checkr _cc ?? throw "null pointer dereference")._pings[(@:checkr _f ?? throw "null pointer dereference").data?.__copy__()], _1 : true } : { _0 : (null : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>), _1 : false }), _c:stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError> = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (_ok) {
                        if (_c != null) _c.__close__();
                        if ((@:checkr _cc ?? throw "null pointer dereference")._pings != null) (@:checkr _cc ?? throw "null pointer dereference")._pings.remove((@:checkr _f ?? throw "null pointer dereference").data);
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
            };
            var _cc = (@:checkr _rl ?? throw "null pointer dereference")._cc;
            @:check2 (@:checkr _cc ?? throw "null pointer dereference")._wmu.lock();
            {
                final __f__ = @:check2 (@:checkr _cc ?? throw "null pointer dereference")._wmu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            {
                var _err = (@:check2r (@:checkr _cc ?? throw "null pointer dereference")._fr.writePing(true, (@:checkr _f ?? throw "null pointer dereference").data?.__copy__()) : stdgo.Error);
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
                final __ret__:stdgo.Error = @:check2r (@:checkr _cc ?? throw "null pointer dereference")._bw.flush();
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
    static public function _processResetStream( _rl:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientConnReadLoop.T_http2clientConnReadLoop>, _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2RSTStreamFrame.T_http2RSTStreamFrame>):stdgo.Error {
        @:recv var _rl:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientConnReadLoop.T_http2clientConnReadLoop> = _rl;
        var _cs = @:check2r _rl._streamByID((@:checkr _f ?? throw "null pointer dereference")._http2FrameHeader.streamID);
        if ((_cs == null || (_cs : Dynamic).__nil__)) {
            return (null : stdgo.Error);
        };
        var _serr = (stdgo._internal.net.http.Http__http2streamError._http2streamError((@:checkr _cs ?? throw "null pointer dereference").iD, (@:checkr _f ?? throw "null pointer dereference").errCode)?.__copy__() : stdgo._internal.net.http.Http_T_http2StreamError.T_http2StreamError);
        _serr.cause = stdgo._internal.net.http.Http__http2errFromPeer._http2errFromPeer;
        if ((@:checkr _f ?? throw "null pointer dereference").errCode == ((1u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode))) {
            @:check2r (@:checkr _rl ?? throw "null pointer dereference")._cc.setDoNotReuse();
        };
        {
            var _fn = ((@:checkr (@:checkr (@:checkr _cs ?? throw "null pointer dereference")._cc ?? throw "null pointer dereference")._t ?? throw "null pointer dereference").countError : stdgo.GoString -> Void);
            if (_fn != null) {
                _fn((("recv_rststream_" : stdgo.GoString) + (@:checkr _f ?? throw "null pointer dereference").errCode._stringToken()?.__copy__() : stdgo.GoString)?.__copy__());
            };
        };
        @:check2r _cs._abortStream(stdgo.Go.asInterface(_serr));
        @:check2 (@:checkr _cs ?? throw "null pointer dereference")._bufPipe.closeWithError(stdgo.Go.asInterface(_serr));
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _processWindowUpdate( _rl:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientConnReadLoop.T_http2clientConnReadLoop>, _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2WindowUpdateFrame.T_http2WindowUpdateFrame>):stdgo.Error {
        @:recv var _rl:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientConnReadLoop.T_http2clientConnReadLoop> = _rl;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _cc = (@:checkr _rl ?? throw "null pointer dereference")._cc;
            var _cs = @:check2r _rl._streamByID((@:checkr _f ?? throw "null pointer dereference")._http2FrameHeader.streamID);
            if ((((@:checkr _f ?? throw "null pointer dereference")._http2FrameHeader.streamID != (0u32 : stdgo.GoUInt32)) && (_cs == null || (_cs : Dynamic).__nil__) : Bool)) {
                return (null : stdgo.Error);
            };
            @:check2 (@:checkr _cc ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = @:check2 (@:checkr _cc ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            var _fl = (stdgo.Go.setRef((@:checkr _cc ?? throw "null pointer dereference")._flow) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2outflow.T_http2outflow>);
            if ((_cs != null && ((_cs : Dynamic).__nil__ == null || !(_cs : Dynamic).__nil__))) {
                _fl = (stdgo.Go.setRef((@:checkr _cs ?? throw "null pointer dereference")._flow) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2outflow.T_http2outflow>);
            };
            if (!@:check2r _fl._add(((@:checkr _f ?? throw "null pointer dereference").increment : stdgo.GoInt32))) {
                {
                    final __ret__:stdgo.Error = stdgo.Go.asInterface(((3u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode) : stdgo._internal.net.http.Http_T_http2ConnectionError.T_http2ConnectionError));
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            @:check2r (@:checkr _cc ?? throw "null pointer dereference")._cond.broadcast();
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
    static public function _processSettingsNoWrite( _rl:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientConnReadLoop.T_http2clientConnReadLoop>, _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2SettingsFrame.T_http2SettingsFrame>):stdgo.Error {
        @:recv var _rl:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientConnReadLoop.T_http2clientConnReadLoop> = _rl;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _cc = (@:checkr _rl ?? throw "null pointer dereference")._cc;
            @:check2 (@:checkr _cc ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = @:check2 (@:checkr _cc ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            if (@:check2r _f.isAck()) {
                if ((@:checkr _cc ?? throw "null pointer dereference")._wantSettingsAck) {
                    (@:checkr _cc ?? throw "null pointer dereference")._wantSettingsAck = false;
                    {
                        final __ret__:stdgo.Error = (null : stdgo.Error);
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
                {
                    final __ret__:stdgo.Error = stdgo.Go.asInterface(((1u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode) : stdgo._internal.net.http.Http_T_http2ConnectionError.T_http2ConnectionError));
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            var _seenMaxConcurrentStreams:Bool = false;
            var _err = (@:check2r _f.foreachSetting(function(_s:stdgo._internal.net.http.Http_T_http2Setting.T_http2Setting):stdgo.Error {
                {
                    final __value__ = _s.iD;
                    if (__value__ == ((5 : stdgo._internal.net.http.Http_T_http2SettingID.T_http2SettingID))) {
                        (@:checkr _cc ?? throw "null pointer dereference")._maxFrameSize = _s.val;
                    } else if (__value__ == ((3 : stdgo._internal.net.http.Http_T_http2SettingID.T_http2SettingID))) {
                        (@:checkr _cc ?? throw "null pointer dereference")._maxConcurrentStreams = _s.val;
                        _seenMaxConcurrentStreams = true;
                    } else if (__value__ == ((6 : stdgo._internal.net.http.Http_T_http2SettingID.T_http2SettingID))) {
                        (@:checkr _cc ?? throw "null pointer dereference")._peerMaxHeaderListSize = (_s.val : stdgo.GoUInt64);
                    } else if (__value__ == ((4 : stdgo._internal.net.http.Http_T_http2SettingID.T_http2SettingID))) {
                        if ((_s.val > (2147483647u32 : stdgo.GoUInt32) : Bool)) {
                            return stdgo.Go.asInterface(((3u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode) : stdgo._internal.net.http.Http_T_http2ConnectionError.T_http2ConnectionError));
                        };
                        var _delta = ((_s.val : stdgo.GoInt32) - ((@:checkr _cc ?? throw "null pointer dereference")._initialWindowSize : stdgo.GoInt32) : stdgo.GoInt32);
                        for (__32469 => _cs in (@:checkr _cc ?? throw "null pointer dereference")._streams) {
                            @:check2 (@:checkr _cs ?? throw "null pointer dereference")._flow._add(_delta);
                        };
                        @:check2r (@:checkr _cc ?? throw "null pointer dereference")._cond.broadcast();
                        (@:checkr _cc ?? throw "null pointer dereference")._initialWindowSize = _s.val;
                    } else if (__value__ == ((1 : stdgo._internal.net.http.Http_T_http2SettingID.T_http2SettingID))) {
                        @:check2r (@:checkr _cc ?? throw "null pointer dereference")._henc.setMaxDynamicTableSize(_s.val);
                        (@:checkr _cc ?? throw "null pointer dereference")._peerMaxHeaderTableSize = _s.val;
                    } else {
                        @:check2r _cc._vlogf(("Unhandled Setting: %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_s)));
                    };
                };
                return (null : stdgo.Error);
            }) : stdgo.Error);
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
            if (!(@:checkr _cc ?? throw "null pointer dereference")._seenSettings) {
                if (!_seenMaxConcurrentStreams) {
                    (@:checkr _cc ?? throw "null pointer dereference")._maxConcurrentStreams = (1000u32 : stdgo.GoUInt32);
                };
                (@:checkr _cc ?? throw "null pointer dereference")._seenSettings = true;
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
    static public function _processSettings( _rl:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientConnReadLoop.T_http2clientConnReadLoop>, _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2SettingsFrame.T_http2SettingsFrame>):stdgo.Error {
        @:recv var _rl:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientConnReadLoop.T_http2clientConnReadLoop> = _rl;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _cc = (@:checkr _rl ?? throw "null pointer dereference")._cc;
            @:check2 (@:checkr _cc ?? throw "null pointer dereference")._wmu.lock();
            {
                final __f__ = @:check2 (@:checkr _cc ?? throw "null pointer dereference")._wmu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            {
                var _err = (@:check2r _rl._processSettingsNoWrite(_f) : stdgo.Error);
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
            if (!@:check2r _f.isAck()) {
                @:check2r (@:checkr _cc ?? throw "null pointer dereference")._fr.writeSettingsAck();
                @:check2r (@:checkr _cc ?? throw "null pointer dereference")._bw.flush();
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
    static public function _processGoAway( _rl:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientConnReadLoop.T_http2clientConnReadLoop>, _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2GoAwayFrame.T_http2GoAwayFrame>):stdgo.Error {
        @:recv var _rl:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientConnReadLoop.T_http2clientConnReadLoop> = _rl;
        var _cc = (@:checkr _rl ?? throw "null pointer dereference")._cc;
        @:check2r (@:checkr _cc ?? throw "null pointer dereference")._t._connPool().markDead(_cc);
        if ((@:checkr _f ?? throw "null pointer dereference").errCode != ((0u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode))) {
            @:check2r _cc._vlogf(("transport got GOAWAY with error code = %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((@:checkr _f ?? throw "null pointer dereference").errCode)));
            {
                var _fn = ((@:checkr (@:checkr _cc ?? throw "null pointer dereference")._t ?? throw "null pointer dereference").countError : stdgo.GoString -> Void);
                if (_fn != null) {
                    _fn((("recv_goaway_" : stdgo.GoString) + (@:checkr _f ?? throw "null pointer dereference").errCode._stringToken()?.__copy__() : stdgo.GoString)?.__copy__());
                };
            };
        };
        @:check2r _cc._setGoAway(_f);
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _streamByID( _rl:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientConnReadLoop.T_http2clientConnReadLoop>, _id:stdgo.GoUInt32):stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream> {
        @:recv var _rl:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientConnReadLoop.T_http2clientConnReadLoop> = _rl;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            @:check2 (@:checkr (@:checkr _rl ?? throw "null pointer dereference")._cc ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = @:check2 (@:checkr (@:checkr _rl ?? throw "null pointer dereference")._cc ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            var _cs = ((@:checkr (@:checkr _rl ?? throw "null pointer dereference")._cc ?? throw "null pointer dereference")._streams[_id] ?? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream>));
            if (((_cs != null && ((_cs : Dynamic).__nil__ == null || !(_cs : Dynamic).__nil__)) && !(@:checkr _cs ?? throw "null pointer dereference")._readAborted : Bool)) {
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return _cs;
                };
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return null;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream>);
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
                return (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream>);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _endStreamError( _rl:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientConnReadLoop.T_http2clientConnReadLoop>, _cs:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream>, _err:stdgo.Error):Void {
        @:recv var _rl:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientConnReadLoop.T_http2clientConnReadLoop> = _rl;
        (@:checkr _cs ?? throw "null pointer dereference")._readAborted = true;
        @:check2r _cs._abortStream(_err);
    }
    @:keep
    @:tdfield
    static public function _endStream( _rl:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientConnReadLoop.T_http2clientConnReadLoop>, _cs:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream>):Void {
        @:recv var _rl:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientConnReadLoop.T_http2clientConnReadLoop> = _rl;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            if (!(@:checkr _cs ?? throw "null pointer dereference")._readClosed) {
                (@:checkr _cs ?? throw "null pointer dereference")._readClosed = true;
                @:check2 (@:checkr (@:checkr _rl ?? throw "null pointer dereference")._cc ?? throw "null pointer dereference")._mu.lock();
                {
                    final __f__ = @:check2 (@:checkr (@:checkr _rl ?? throw "null pointer dereference")._cc ?? throw "null pointer dereference")._mu.unlock;
                    __deferstack__.unshift({ ran : false, f : () -> __f__() });
                };
                @:check2 (@:checkr _cs ?? throw "null pointer dereference")._bufPipe._closeWithErrorAndCode(stdgo._internal.io.Io_eOF.eOF, @:check2r _cs._copyTrailers);
                if ((@:checkr _cs ?? throw "null pointer dereference")._peerClosed != null) (@:checkr _cs ?? throw "null pointer dereference")._peerClosed.__close__();
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
    static public function _processData( _rl:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientConnReadLoop.T_http2clientConnReadLoop>, _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2DataFrame.T_http2DataFrame>):stdgo.Error {
        @:recv var _rl:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientConnReadLoop.T_http2clientConnReadLoop> = _rl;
        var _cc = (@:checkr _rl ?? throw "null pointer dereference")._cc;
        var _cs = @:check2r _rl._streamByID((@:checkr _f ?? throw "null pointer dereference")._http2FrameHeader.streamID);
        var _data = @:check2r _f.data();
        if ((_cs == null || (_cs : Dynamic).__nil__)) {
            @:check2 (@:checkr _cc ?? throw "null pointer dereference")._mu.lock();
            var _neverSent = ((@:checkr _cc ?? throw "null pointer dereference")._nextStreamID : stdgo.GoUInt32);
            @:check2 (@:checkr _cc ?? throw "null pointer dereference")._mu.unlock();
            if (((@:checkr _f ?? throw "null pointer dereference")._http2FrameHeader.streamID >= _neverSent : Bool)) {
                @:check2r _cc._logf(("http2: Transport received unsolicited DATA frame; closing connection" : stdgo.GoString));
                return stdgo.Go.asInterface(((1u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode) : stdgo._internal.net.http.Http_T_http2ConnectionError.T_http2ConnectionError));
            };
            if (((@:checkr _f ?? throw "null pointer dereference")._http2FrameHeader.length_ > (0u32 : stdgo.GoUInt32) : Bool)) {
                @:check2 (@:checkr _cc ?? throw "null pointer dereference")._mu.lock();
                var _ok = (@:check2 (@:checkr _cc ?? throw "null pointer dereference")._inflow._take((@:checkr _f ?? throw "null pointer dereference")._http2FrameHeader.length_) : Bool);
                var _connAdd = (@:check2 (@:checkr _cc ?? throw "null pointer dereference")._inflow._add(((@:checkr _f ?? throw "null pointer dereference")._http2FrameHeader.length_ : stdgo.GoInt)) : stdgo.GoInt32);
                @:check2 (@:checkr _cc ?? throw "null pointer dereference")._mu.unlock();
                if (!_ok) {
                    return stdgo.Go.asInterface(((3u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode) : stdgo._internal.net.http.Http_T_http2ConnectionError.T_http2ConnectionError));
                };
                if ((_connAdd > (0 : stdgo.GoInt32) : Bool)) {
                    @:check2 (@:checkr _cc ?? throw "null pointer dereference")._wmu.lock();
                    @:check2r (@:checkr _cc ?? throw "null pointer dereference")._fr.writeWindowUpdate((0u32 : stdgo.GoUInt32), (_connAdd : stdgo.GoUInt32));
                    @:check2r (@:checkr _cc ?? throw "null pointer dereference")._bw.flush();
                    @:check2 (@:checkr _cc ?? throw "null pointer dereference")._wmu.unlock();
                };
            };
            return (null : stdgo.Error);
        };
        if ((@:checkr _cs ?? throw "null pointer dereference")._readClosed) {
            @:check2r _cc._logf(("protocol error: received DATA after END_STREAM" : stdgo.GoString));
            @:check2r _rl._endStreamError(_cs, stdgo.Go.asInterface(({ streamID : (@:checkr _f ?? throw "null pointer dereference")._http2FrameHeader.streamID, code : (1u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode) } : stdgo._internal.net.http.Http_T_http2StreamError.T_http2StreamError)));
            return (null : stdgo.Error);
        };
        if (!(@:checkr _cs ?? throw "null pointer dereference")._firstByte) {
            @:check2r _cc._logf(("protocol error: received DATA before a HEADERS frame" : stdgo.GoString));
            @:check2r _rl._endStreamError(_cs, stdgo.Go.asInterface(({ streamID : (@:checkr _f ?? throw "null pointer dereference")._http2FrameHeader.streamID, code : (1u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode) } : stdgo._internal.net.http.Http_T_http2StreamError.T_http2StreamError)));
            return (null : stdgo.Error);
        };
        if (((@:checkr _f ?? throw "null pointer dereference")._http2FrameHeader.length_ > (0u32 : stdgo.GoUInt32) : Bool)) {
            if (((@:checkr _cs ?? throw "null pointer dereference")._isHead && ((_data.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                @:check2r _cc._logf(("protocol error: received DATA on a HEAD request" : stdgo.GoString));
                @:check2r _rl._endStreamError(_cs, stdgo.Go.asInterface(({ streamID : (@:checkr _f ?? throw "null pointer dereference")._http2FrameHeader.streamID, code : (1u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode) } : stdgo._internal.net.http.Http_T_http2StreamError.T_http2StreamError)));
                return (null : stdgo.Error);
            };
            @:check2 (@:checkr _cc ?? throw "null pointer dereference")._mu.lock();
            if (!stdgo._internal.net.http.Http__http2takeInflows._http2takeInflows((stdgo.Go.setRef((@:checkr _cc ?? throw "null pointer dereference")._inflow) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2inflow.T_http2inflow>), (stdgo.Go.setRef((@:checkr _cs ?? throw "null pointer dereference")._inflow) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2inflow.T_http2inflow>), (@:checkr _f ?? throw "null pointer dereference")._http2FrameHeader.length_)) {
                @:check2 (@:checkr _cc ?? throw "null pointer dereference")._mu.unlock();
                return stdgo.Go.asInterface(((3u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode) : stdgo._internal.net.http.Http_T_http2ConnectionError.T_http2ConnectionError));
            };
            var _refund:stdgo.GoInt = (0 : stdgo.GoInt);
            {
                var _pad = (((@:checkr _f ?? throw "null pointer dereference")._http2FrameHeader.length_ : stdgo.GoInt) - (_data.length) : stdgo.GoInt);
                if ((_pad > (0 : stdgo.GoInt) : Bool)) {
                    _refund = (_refund + (_pad) : stdgo.GoInt);
                };
            };
            var _didReset = (false : Bool);
            var _err:stdgo.Error = (null : stdgo.Error);
            if (((_data.length) > (0 : stdgo.GoInt) : Bool)) {
                {
                    {
                        var __tmp__ = @:check2 (@:checkr _cs ?? throw "null pointer dereference")._bufPipe.write(_data);
                        _err = __tmp__._1;
                    };
                    if (_err != null) {
                        _didReset = true;
                        _refund = (_refund + ((_data.length)) : stdgo.GoInt);
                    };
                };
            };
            var _sendConn = (@:check2 (@:checkr _cc ?? throw "null pointer dereference")._inflow._add(_refund) : stdgo.GoInt32);
            var _sendStream:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            if (!_didReset) {
                _sendStream = @:check2 (@:checkr _cs ?? throw "null pointer dereference")._inflow._add(_refund);
            };
            @:check2 (@:checkr _cc ?? throw "null pointer dereference")._mu.unlock();
            if (((_sendConn > (0 : stdgo.GoInt32) : Bool) || (_sendStream > (0 : stdgo.GoInt32) : Bool) : Bool)) {
                @:check2 (@:checkr _cc ?? throw "null pointer dereference")._wmu.lock();
                if ((_sendConn > (0 : stdgo.GoInt32) : Bool)) {
                    @:check2r (@:checkr _cc ?? throw "null pointer dereference")._fr.writeWindowUpdate((0u32 : stdgo.GoUInt32), (_sendConn : stdgo.GoUInt32));
                };
                if ((_sendStream > (0 : stdgo.GoInt32) : Bool)) {
                    @:check2r (@:checkr _cc ?? throw "null pointer dereference")._fr.writeWindowUpdate((@:checkr _cs ?? throw "null pointer dereference").iD, (_sendStream : stdgo.GoUInt32));
                };
                @:check2r (@:checkr _cc ?? throw "null pointer dereference")._bw.flush();
                @:check2 (@:checkr _cc ?? throw "null pointer dereference")._wmu.unlock();
            };
            if (_err != null) {
                @:check2r _rl._endStreamError(_cs, _err);
                return (null : stdgo.Error);
            };
        };
        if (@:check2r _f.streamEnded()) {
            @:check2r _rl._endStream(_cs);
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _processTrailers( _rl:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientConnReadLoop.T_http2clientConnReadLoop>, _cs:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream>, _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2MetaHeadersFrame.T_http2MetaHeadersFrame>):stdgo.Error {
        @:recv var _rl:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientConnReadLoop.T_http2clientConnReadLoop> = _rl;
        if ((@:checkr _cs ?? throw "null pointer dereference")._pastTrailers) {
            return stdgo.Go.asInterface(((1u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode) : stdgo._internal.net.http.Http_T_http2ConnectionError.T_http2ConnectionError));
        };
        (@:checkr _cs ?? throw "null pointer dereference")._pastTrailers = true;
        if (!@:check2r _f.streamEnded()) {
            return stdgo.Go.asInterface(((1u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode) : stdgo._internal.net.http.Http_T_http2ConnectionError.T_http2ConnectionError));
        };
        if (((@:check2r _f.pseudoFields().length) > (0 : stdgo.GoInt) : Bool)) {
            return stdgo.Go.asInterface(((1u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode) : stdgo._internal.net.http.Http_T_http2ConnectionError.T_http2ConnectionError));
        };
        var _trailer = ((({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
            x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.http.Http_Header.Header) : stdgo._internal.net.http.Http_Header.Header);
        for (__32442 => _hf in @:check2r _f.regularFields()) {
            var _key = (stdgo._internal.net.http.Http__http2canonicalHeader._http2canonicalHeader(_hf.name?.__copy__())?.__copy__() : stdgo.GoString);
            _trailer[_key] = ((_trailer[_key] ?? (null : stdgo.Slice<stdgo.GoString>)).__append__(_hf.value?.__copy__()));
        };
        (@:checkr _cs ?? throw "null pointer dereference")._trailer = _trailer;
        @:check2r _rl._endStream(_cs);
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _handleResponse( _rl:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientConnReadLoop.T_http2clientConnReadLoop>, _cs:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream>, _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2MetaHeadersFrame.T_http2MetaHeadersFrame>):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } {
        @:recv var _rl:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientConnReadLoop.T_http2clientConnReadLoop> = _rl;
        if ((@:checkr _f ?? throw "null pointer dereference").truncated) {
            return { _0 : null, _1 : stdgo._internal.net.http.Http__http2errResponseHeaderListSize._http2errResponseHeaderListSize };
        };
        var _status = (@:check2r _f.pseudoValue(("status" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        if (_status == (stdgo.Go.str())) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("malformed response from server: missing status pseudo header" : stdgo.GoString)) };
        };
        var __tmp__ = stdgo._internal.strconv.Strconv_atoi.atoi(_status?.__copy__()), _statusCode:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("malformed response from server: malformed non-numeric status pseudo header" : stdgo.GoString)) };
        };
        var _regularFields = @:check2r _f.regularFields();
        var _strs = (new stdgo.Slice<stdgo.GoString>((_regularFields.length : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
        var _header = ((({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
            x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.http.Http_Header.Header) : stdgo._internal.net.http.Http_Header.Header);
        var _res = (stdgo.Go.setRef(({ proto : ("HTTP/2.0" : stdgo.GoString), protoMajor : (2 : stdgo.GoInt), header : _header, statusCode : _statusCode, status : ((_status + (" " : stdgo.GoString)?.__copy__() : stdgo.GoString) + stdgo._internal.net.http.Http_statusText.statusText(_statusCode)?.__copy__() : stdgo.GoString)?.__copy__() } : stdgo._internal.net.http.Http_Response.Response)) : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>);
        for (__32418 => _hf in _regularFields) {
            var _key = (stdgo._internal.net.http.Http__http2canonicalHeader._http2canonicalHeader(_hf.name?.__copy__())?.__copy__() : stdgo.GoString);
            if (_key == (("Trailer" : stdgo.GoString))) {
                var _t = ((@:checkr _res ?? throw "null pointer dereference").trailer : stdgo._internal.net.http.Http_Header.Header);
                if (_t == null) {
                    _t = (({
                        final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
                        x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
                        {};
                        x;
                    } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.http.Http_Header.Header);
                    (@:checkr _res ?? throw "null pointer dereference").trailer = _t;
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
            if (@:check2r _f.streamEnded()) {
                return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("1xx informational response with END_STREAM flag" : stdgo.GoString)) };
            };
            (@:checkr _cs ?? throw "null pointer dereference")._num1xx++;
            {};
            if (((@:checkr _cs ?? throw "null pointer dereference")._num1xx > (5 : stdgo.GoUInt8) : Bool)) {
                return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("http2: too many 1xx informational responses" : stdgo.GoString)) };
            };
            {
                var _fn = (@:check2r _cs._get1xxTraceFunc() : (stdgo.GoInt, stdgo._internal.net.textproto.Textproto_MIMEHeader.MIMEHeader) -> stdgo.Error);
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
                stdgo._internal.net.http.Http__http2traceGot100Continue._http2traceGot100Continue((@:checkr _cs ?? throw "null pointer dereference")._trace);
                {
                    var __select__ = true;
                    while (__select__) {
                        if ((@:checkr _cs ?? throw "null pointer dereference")._on100 != null && (@:checkr _cs ?? throw "null pointer dereference")._on100.__isSend__()) {
                            __select__ = false;
                            {
                                (@:checkr _cs ?? throw "null pointer dereference")._on100.__send__((new stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError() : stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError));
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
            (@:checkr _cs ?? throw "null pointer dereference")._pastHeaders = false;
            return { _0 : null, _1 : (null : stdgo.Error) };
        };
        (@:checkr _res ?? throw "null pointer dereference").contentLength = (-1i64 : stdgo.GoInt64);
        {
            var _clens = ((@:checkr _res ?? throw "null pointer dereference").header[("Content-Length" : stdgo.GoString)] ?? (null : stdgo.Slice<stdgo.GoString>));
            if ((_clens.length) == ((1 : stdgo.GoInt))) {
                {
                    var __tmp__ = stdgo._internal.strconv.Strconv_parseUint.parseUint(_clens[(0 : stdgo.GoInt)]?.__copy__(), (10 : stdgo.GoInt), (63 : stdgo.GoInt)), _cl:stdgo.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err == null) {
                        (@:checkr _res ?? throw "null pointer dereference").contentLength = (_cl : stdgo.GoInt64);
                    } else {};
                };
            } else if (((_clens.length) > (1 : stdgo.GoInt) : Bool)) {} else if ((@:check2r _f.streamEnded() && !(@:checkr _cs ?? throw "null pointer dereference")._isHead : Bool)) {
                (@:checkr _res ?? throw "null pointer dereference").contentLength = (0i64 : stdgo.GoInt64);
            };
        };
        if ((@:checkr _cs ?? throw "null pointer dereference")._isHead) {
            (@:checkr _res ?? throw "null pointer dereference").body = stdgo._internal.net.http.Http__http2noBody._http2noBody;
            return { _0 : _res, _1 : (null : stdgo.Error) };
        };
        if (@:check2r _f.streamEnded()) {
            if (((@:checkr _res ?? throw "null pointer dereference").contentLength > (0i64 : stdgo.GoInt64) : Bool)) {
                (@:checkr _res ?? throw "null pointer dereference").body = stdgo.Go.asInterface((new stdgo._internal.net.http.Http_T_http2missingBody.T_http2missingBody() : stdgo._internal.net.http.Http_T_http2missingBody.T_http2missingBody));
            } else {
                (@:checkr _res ?? throw "null pointer dereference").body = stdgo._internal.net.http.Http__http2noBody._http2noBody;
            };
            return { _0 : _res, _1 : (null : stdgo.Error) };
        };
        @:check2 (@:checkr _cs ?? throw "null pointer dereference")._bufPipe._setBuffer(stdgo.Go.asInterface((stdgo.Go.setRef(({ _expected : (@:checkr _res ?? throw "null pointer dereference").contentLength } : stdgo._internal.net.http.Http_T_http2dataBuffer.T_http2dataBuffer)) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2dataBuffer.T_http2dataBuffer>)));
        (@:checkr _cs ?? throw "null pointer dereference")._bytesRemain = (@:checkr _res ?? throw "null pointer dereference").contentLength;
        (@:checkr _res ?? throw "null pointer dereference").body = stdgo.Go.asInterface((new stdgo._internal.net.http.Http_T_http2transportResponseBody.T_http2transportResponseBody(_cs) : stdgo._internal.net.http.Http_T_http2transportResponseBody.T_http2transportResponseBody));
        if (((@:checkr _cs ?? throw "null pointer dereference")._requestedGzip && stdgo._internal.net.http.Http__http2asciiEqualFold._http2asciiEqualFold((@:checkr _res ?? throw "null pointer dereference").header.get(("Content-Encoding" : stdgo.GoString))?.__copy__(), ("gzip" : stdgo.GoString)) : Bool)) {
            (@:checkr _res ?? throw "null pointer dereference").header.del(("Content-Encoding" : stdgo.GoString));
            (@:checkr _res ?? throw "null pointer dereference").header.del(("Content-Length" : stdgo.GoString));
            (@:checkr _res ?? throw "null pointer dereference").contentLength = (-1i64 : stdgo.GoInt64);
            (@:checkr _res ?? throw "null pointer dereference").body = stdgo.Go.asInterface((stdgo.Go.setRef(({ _body : (@:checkr _res ?? throw "null pointer dereference").body } : stdgo._internal.net.http.Http_T_http2gzipReader.T_http2gzipReader)) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2gzipReader.T_http2gzipReader>));
            (@:checkr _res ?? throw "null pointer dereference").uncompressed = true;
        };
        return { _0 : _res, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _processHeaders( _rl:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientConnReadLoop.T_http2clientConnReadLoop>, _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2MetaHeadersFrame.T_http2MetaHeadersFrame>):stdgo.Error {
        @:recv var _rl:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientConnReadLoop.T_http2clientConnReadLoop> = _rl;
        var _cs = @:check2r _rl._streamByID((@:checkr _f ?? throw "null pointer dereference")._http2HeadersFrame._http2FrameHeader.streamID);
        if ((_cs == null || (_cs : Dynamic).__nil__)) {
            return (null : stdgo.Error);
        };
        if ((@:checkr _cs ?? throw "null pointer dereference")._readClosed) {
            @:check2r _rl._endStreamError(_cs, stdgo.Go.asInterface(({ streamID : (@:checkr _f ?? throw "null pointer dereference")._http2HeadersFrame._http2FrameHeader.streamID, code : (1u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode), cause : stdgo._internal.errors.Errors_new_.new_(("protocol error: headers after END_STREAM" : stdgo.GoString)) } : stdgo._internal.net.http.Http_T_http2StreamError.T_http2StreamError)));
            return (null : stdgo.Error);
        };
        if (!(@:checkr _cs ?? throw "null pointer dereference")._firstByte) {
            if (((@:checkr _cs ?? throw "null pointer dereference")._trace != null && (((@:checkr _cs ?? throw "null pointer dereference")._trace : Dynamic).__nil__ == null || !((@:checkr _cs ?? throw "null pointer dereference")._trace : Dynamic).__nil__))) {
                stdgo._internal.net.http.Http__http2traceFirstResponseByte._http2traceFirstResponseByte((@:checkr _cs ?? throw "null pointer dereference")._trace);
            };
            (@:checkr _cs ?? throw "null pointer dereference")._firstByte = true;
        };
        if (!(@:checkr _cs ?? throw "null pointer dereference")._pastHeaders) {
            (@:checkr _cs ?? throw "null pointer dereference")._pastHeaders = true;
        } else {
            return @:check2r _rl._processTrailers(_cs, _f);
        };
        var __tmp__ = @:check2r _rl._handleResponse(_cs, _f), _res:stdgo.Ref<stdgo._internal.net.http.Http_Response.Response> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo._internal.net.http.Http_T_http2ConnectionError.T_http2ConnectionError)) : stdgo._internal.net.http.Http_T_http2ConnectionError.T_http2ConnectionError), _1 : true };
                } catch(_) {
                    { _0 : ((0 : stdgo.GoUInt32) : stdgo._internal.net.http.Http_T_http2ConnectionError.T_http2ConnectionError), _1 : false };
                }, __32480 = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    return _err;
                };
            };
            @:check2r _rl._endStreamError(_cs, stdgo.Go.asInterface(({ streamID : (@:checkr _f ?? throw "null pointer dereference")._http2HeadersFrame._http2FrameHeader.streamID, code : (1u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode), cause : _err } : stdgo._internal.net.http.Http_T_http2StreamError.T_http2StreamError)));
            return (null : stdgo.Error);
        };
        if ((_res == null || (_res : Dynamic).__nil__)) {
            return (null : stdgo.Error);
        };
        (@:checkr _cs ?? throw "null pointer dereference")._resTrailer = (stdgo.Go.setRef((@:checkr _res ?? throw "null pointer dereference").trailer) : stdgo.Ref<stdgo._internal.net.http.Http_Header.Header>);
        (@:checkr _cs ?? throw "null pointer dereference")._res = _res;
        if ((@:checkr _cs ?? throw "null pointer dereference")._respHeaderRecv != null) (@:checkr _cs ?? throw "null pointer dereference")._respHeaderRecv.__close__();
        if (@:check2r _f.streamEnded()) {
            @:check2r _rl._endStream(_cs);
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _run( _rl:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientConnReadLoop.T_http2clientConnReadLoop>):stdgo.Error {
        @:recv var _rl:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientConnReadLoop.T_http2clientConnReadLoop> = _rl;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _cc = (@:checkr _rl ?? throw "null pointer dereference")._cc;
            var _gotSettings = (false : Bool);
            var _readIdleTimeout = ((@:checkr (@:checkr _cc ?? throw "null pointer dereference")._t ?? throw "null pointer dereference").readIdleTimeout : stdgo._internal.time.Time_Duration.Duration);
            var _t:stdgo.Ref<stdgo._internal.time.Time_Timer.Timer> = (null : stdgo.Ref<stdgo._internal.time.Time_Timer.Timer>);
            if (_readIdleTimeout != ((0i64 : stdgo._internal.time.Time_Duration.Duration))) {
                _t = stdgo._internal.time.Time_afterFunc.afterFunc(_readIdleTimeout, @:check2r _cc._healthCheck);
                {
                    final __f__ = @:check2r _t.stop;
                    __deferstack__.unshift({ ran : false, f : () -> __f__() });
                };
            };
            while (true) {
                var __tmp__ = @:check2r (@:checkr _cc ?? throw "null pointer dereference")._fr.readFrame(), _f:stdgo._internal.net.http.Http_T_http2Frame.T_http2Frame = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if ((_t != null && ((_t : Dynamic).__nil__ == null || !(_t : Dynamic).__nil__))) {
                    @:check2r _t.reset(_readIdleTimeout);
                };
                if (_err != null) {
                    @:check2r _cc._vlogf(("http2: Transport readFrame error on conn %p: (%T) %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_cc)), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_err));
                };
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo._internal.net.http.Http_T_http2StreamError.T_http2StreamError)) : stdgo._internal.net.http.Http_T_http2StreamError.T_http2StreamError), _1 : true };
                    } catch(_) {
                        { _0 : ({} : stdgo._internal.net.http.Http_T_http2StreamError.T_http2StreamError), _1 : false };
                    }, _se = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        {
                            var _cs = @:check2r _rl._streamByID(_se.streamID);
                            if ((_cs != null && ((_cs : Dynamic).__nil__ == null || !(_cs : Dynamic).__nil__))) {
                                if (_se.cause == null) {
                                    _se.cause = (@:checkr (@:checkr _cc ?? throw "null pointer dereference")._fr ?? throw "null pointer dereference")._errDetail;
                                };
                                @:check2r _rl._endStreamError(_cs, stdgo.Go.asInterface(_se));
                            };
                        };
                        continue;
                    } else if (_err != null) {
                        @:check2r _cc._countReadFrameError(_err);
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
                if (stdgo._internal.net.http.Http__http2VerboseLogs._http2VerboseLogs) {
                    @:check2r _cc._vlogf(("http2: Transport received %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.net.http.Http__http2summarizeFrame._http2summarizeFrame(_f)));
                };
                if (!_gotSettings) {
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_f) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2SettingsFrame.T_http2SettingsFrame>)) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2SettingsFrame.T_http2SettingsFrame>), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2SettingsFrame.T_http2SettingsFrame>), _1 : false };
                        }, __32457 = __tmp__._0, _ok = __tmp__._1;
                        if (!_ok) {
                            @:check2r _cc._logf(("protocol error: received %T before a SETTINGS frame" : stdgo.GoString), stdgo.Go.toInterface(_f));
                            {
                                final __ret__:stdgo.Error = stdgo.Go.asInterface(((1u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode) : stdgo._internal.net.http.Http_T_http2ConnectionError.T_http2ConnectionError));
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
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
                        _err = @:check2r _rl._processHeaders(_f);
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.net.http.Http_T_http2DataFrame.T_http2DataFrame>))) {
                        var _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2DataFrame.T_http2DataFrame> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2DataFrame.T_http2DataFrame>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2DataFrame.T_http2DataFrame>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2DataFrame.T_http2DataFrame>) : __type__.__underlying__().value;
                        _err = @:check2r _rl._processData(_f);
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.net.http.Http_T_http2GoAwayFrame.T_http2GoAwayFrame>))) {
                        var _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2GoAwayFrame.T_http2GoAwayFrame> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2GoAwayFrame.T_http2GoAwayFrame>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2GoAwayFrame.T_http2GoAwayFrame>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2GoAwayFrame.T_http2GoAwayFrame>) : __type__.__underlying__().value;
                        _err = @:check2r _rl._processGoAway(_f);
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.net.http.Http_T_http2RSTStreamFrame.T_http2RSTStreamFrame>))) {
                        var _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2RSTStreamFrame.T_http2RSTStreamFrame> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2RSTStreamFrame.T_http2RSTStreamFrame>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2RSTStreamFrame.T_http2RSTStreamFrame>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2RSTStreamFrame.T_http2RSTStreamFrame>) : __type__.__underlying__().value;
                        _err = @:check2r _rl._processResetStream(_f);
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.net.http.Http_T_http2SettingsFrame.T_http2SettingsFrame>))) {
                        var _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2SettingsFrame.T_http2SettingsFrame> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2SettingsFrame.T_http2SettingsFrame>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2SettingsFrame.T_http2SettingsFrame>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2SettingsFrame.T_http2SettingsFrame>) : __type__.__underlying__().value;
                        _err = @:check2r _rl._processSettings(_f);
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.net.http.Http_T_http2PushPromiseFrame.T_http2PushPromiseFrame>))) {
                        var _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2PushPromiseFrame.T_http2PushPromiseFrame> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2PushPromiseFrame.T_http2PushPromiseFrame>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2PushPromiseFrame.T_http2PushPromiseFrame>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2PushPromiseFrame.T_http2PushPromiseFrame>) : __type__.__underlying__().value;
                        _err = @:check2r _rl._processPushPromise(_f);
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.net.http.Http_T_http2WindowUpdateFrame.T_http2WindowUpdateFrame>))) {
                        var _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2WindowUpdateFrame.T_http2WindowUpdateFrame> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2WindowUpdateFrame.T_http2WindowUpdateFrame>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2WindowUpdateFrame.T_http2WindowUpdateFrame>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2WindowUpdateFrame.T_http2WindowUpdateFrame>) : __type__.__underlying__().value;
                        _err = @:check2r _rl._processWindowUpdate(_f);
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.net.http.Http_T_http2PingFrame.T_http2PingFrame>))) {
                        var _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2PingFrame.T_http2PingFrame> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2PingFrame.T_http2PingFrame>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2PingFrame.T_http2PingFrame>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2PingFrame.T_http2PingFrame>) : __type__.__underlying__().value;
                        _err = @:check2r _rl._processPing(_f);
                    } else {
                        var _f:stdgo._internal.net.http.Http_T_http2Frame.T_http2Frame = __type__ == null ? (null : stdgo._internal.net.http.Http_T_http2Frame.T_http2Frame) : cast __type__;
                        @:check2r _cc._logf(("Transport: unhandled response frame type %T" : stdgo.GoString), stdgo.Go.toInterface(_f));
                    };
                };
                if (_err != null) {
                    if (stdgo._internal.net.http.Http__http2VerboseLogs._http2VerboseLogs) {
                        @:check2r _cc._vlogf(("http2: Transport conn %p received error from processing frame %v: %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_cc)), stdgo.Go.toInterface(stdgo._internal.net.http.Http__http2summarizeFrame._http2summarizeFrame(_f)), stdgo.Go.toInterface(_err));
                    };
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
    static public function _cleanup( _rl:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientConnReadLoop.T_http2clientConnReadLoop>):Void {
        @:recv var _rl:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientConnReadLoop.T_http2clientConnReadLoop> = _rl;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _cc = (@:checkr _rl ?? throw "null pointer dereference")._cc;
            @:check2r (@:checkr _cc ?? throw "null pointer dereference")._t._connPool().markDead(_cc);
            {
                final __f__ = @:check2r _cc._closeConn;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            {
                var _a0 = (@:checkr _cc ?? throw "null pointer dereference")._readerDone;
                __deferstack__.unshift({ ran : false, f : () -> if (_a0 != null) _a0.__close__() });
            };
            if (((@:checkr _cc ?? throw "null pointer dereference")._idleTimer != null && (((@:checkr _cc ?? throw "null pointer dereference")._idleTimer : Dynamic).__nil__ == null || !((@:checkr _cc ?? throw "null pointer dereference")._idleTimer : Dynamic).__nil__))) {
                @:check2r (@:checkr _cc ?? throw "null pointer dereference")._idleTimer.stop();
            };
            var _err = ((@:checkr _cc ?? throw "null pointer dereference")._readerErr : stdgo.Error);
            @:check2 (@:checkr _cc ?? throw "null pointer dereference")._mu.lock();
            if ((((@:checkr _cc ?? throw "null pointer dereference")._goAway != null && (((@:checkr _cc ?? throw "null pointer dereference")._goAway : Dynamic).__nil__ == null || !((@:checkr _cc ?? throw "null pointer dereference")._goAway : Dynamic).__nil__)) && stdgo._internal.net.http.Http__http2isEOFOrNetReadError._http2isEOFOrNetReadError(_err) : Bool)) {
                _err = stdgo.Go.asInterface(({ lastStreamID : (@:checkr (@:checkr _cc ?? throw "null pointer dereference")._goAway ?? throw "null pointer dereference").lastStreamID, errCode : (@:checkr (@:checkr _cc ?? throw "null pointer dereference")._goAway ?? throw "null pointer dereference").errCode, debugData : (@:checkr _cc ?? throw "null pointer dereference")._goAwayDebug?.__copy__() } : stdgo._internal.net.http.Http_T_http2GoAwayError.T_http2GoAwayError));
            } else if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eOF.eOF))) {
                _err = stdgo._internal.io.Io_errUnexpectedEOF.errUnexpectedEOF;
            };
            (@:checkr _cc ?? throw "null pointer dereference")._closed = true;
            for (__32527 => _cs in (@:checkr _cc ?? throw "null pointer dereference")._streams) {
                {
                    var __select__ = true;
                    while (__select__) {
                        if ((@:checkr _cs ?? throw "null pointer dereference")._peerClosed != null && (@:checkr _cs ?? throw "null pointer dereference")._peerClosed.__isGet__()) {
                            __select__ = false;
                            {
                                (@:checkr _cs ?? throw "null pointer dereference")._peerClosed.__get__();
                                {};
                            };
                        } else {
                            __select__ = false;
                            {
                                @:check2r _cs._abortStreamLocked(_err);
                            };
                        };
                        #if !js Sys.sleep(0.01) #else null #end;
                        stdgo._internal.internal.Async.tick();
                    };
                };
            };
            @:check2r (@:checkr _cc ?? throw "null pointer dereference")._cond.broadcast();
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
}
