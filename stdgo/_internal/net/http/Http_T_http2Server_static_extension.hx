package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2Server_asInterface) class T_http2Server_static_extension {
    @:keep
    @:tdfield
    static public function serveConn( _s:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Server.T_http2Server>, _c:stdgo._internal.net.Net_Conn.Conn, _opts:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ServeConnOpts.T_http2ServeConnOpts>):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Server.T_http2Server> = _s;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var __tmp__ = stdgo._internal.net.http.Http__http2serverConnBaseContext._http2serverConnBaseContext(_c, _opts), _baseCtx:stdgo._internal.context.Context_Context.Context = __tmp__._0, _cancel:() -> Void = __tmp__._1;
            {
                final __f__ = _cancel;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            var _sc = (stdgo.Go.setRef(({ _srv : _s, _hs : @:check2r _opts._baseConfig(), _conn : _c, _baseCtx : _baseCtx, _remoteAddrStr : (_c.remoteAddr().string() : stdgo.GoString)?.__copy__(), _bw : stdgo._internal.net.http.Http__http2newBufferedWriter._http2newBufferedWriter(_c), _handler : @:check2r _opts._handler(), _streams : (({
                final x = new stdgo.GoMap.GoIntMap<stdgo.Ref<stdgo._internal.net.http.Http_T_http2stream.T_http2stream>>();
                x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2stream.T_http2stream>);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoUInt32, stdgo.Ref<stdgo._internal.net.http.Http_T_http2stream.T_http2stream>>) : stdgo.GoMap<stdgo.GoUInt32, stdgo.Ref<stdgo._internal.net.http.Http_T_http2stream.T_http2stream>>), _readFrameCh : (new stdgo.Chan<stdgo._internal.net.http.Http_T_http2readFrameResult.T_http2readFrameResult>(0, () -> ({} : stdgo._internal.net.http.Http_T_http2readFrameResult.T_http2readFrameResult)) : stdgo.Chan<stdgo._internal.net.http.Http_T_http2readFrameResult.T_http2readFrameResult>), _wantWriteFrameCh : (new stdgo.Chan<stdgo._internal.net.http.Http_T_http2FrameWriteRequest.T_http2FrameWriteRequest>((8 : stdgo.GoInt).toBasic(), () -> ({} : stdgo._internal.net.http.Http_T_http2FrameWriteRequest.T_http2FrameWriteRequest)) : stdgo.Chan<stdgo._internal.net.http.Http_T_http2FrameWriteRequest.T_http2FrameWriteRequest>), _serveMsgCh : (new stdgo.Chan<stdgo.AnyInterface>((8 : stdgo.GoInt).toBasic(), () -> (null : stdgo.AnyInterface)) : stdgo.Chan<stdgo.AnyInterface>), _wroteFrameCh : (new stdgo.Chan<stdgo._internal.net.http.Http_T_http2frameWriteResult.T_http2frameWriteResult>((1 : stdgo.GoInt).toBasic(), () -> ({} : stdgo._internal.net.http.Http_T_http2frameWriteResult.T_http2frameWriteResult)) : stdgo.Chan<stdgo._internal.net.http.Http_T_http2frameWriteResult.T_http2frameWriteResult>), _bodyReadCh : (new stdgo.Chan<stdgo._internal.net.http.Http_T_http2bodyReadMsg.T_http2bodyReadMsg>(0, () -> ({} : stdgo._internal.net.http.Http_T_http2bodyReadMsg.T_http2bodyReadMsg)) : stdgo.Chan<stdgo._internal.net.http.Http_T_http2bodyReadMsg.T_http2bodyReadMsg>), _doneServing : (new stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>(0, () -> ({} : stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError)) : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>), _clientMaxStreams : (-1u32 : stdgo.GoUInt32), _advMaxStreams : @:check2r _s._maxConcurrentStreams(), _initialStreamSendWindowSize : (65535 : stdgo.GoInt32), _maxFrameSize : (16384 : stdgo.GoInt32), _serveG : stdgo._internal.net.http.Http__http2newGoroutineLock._http2newGoroutineLock(), _pushEnabled : true, _sawClientPreface : (@:checkr _opts ?? throw "null pointer dereference").sawClientPreface } : stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn)) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn>);
            @:check2r (@:checkr _s ?? throw "null pointer dereference")._state._registerConn(_sc);
            {
                var _a0 = _sc;
                final __f__ = @:check2r (@:checkr _s ?? throw "null pointer dereference")._state._unregisterConn;
                __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
            };
            if ((@:checkr (@:checkr _sc ?? throw "null pointer dereference")._hs ?? throw "null pointer dereference").writeTimeout != ((0i64 : stdgo._internal.time.Time_Duration.Duration))) {
                (@:checkr _sc ?? throw "null pointer dereference")._conn.setWriteDeadline((new stdgo._internal.time.Time_Time.Time() : stdgo._internal.time.Time_Time.Time));
            };
            if ((@:checkr _s ?? throw "null pointer dereference").newWriteScheduler != null) {
                (@:checkr _sc ?? throw "null pointer dereference")._writeSched = (@:checkr _s ?? throw "null pointer dereference").newWriteScheduler();
            } else {
                (@:checkr _sc ?? throw "null pointer dereference")._writeSched = stdgo._internal.net.http.Http__http2newRoundRobinWriteScheduler._http2newRoundRobinWriteScheduler();
            };
            @:check2 (@:checkr _sc ?? throw "null pointer dereference")._flow._add((65535 : stdgo.GoInt32));
            @:check2 (@:checkr _sc ?? throw "null pointer dereference")._inflow._init((65535 : stdgo.GoInt32));
            (@:checkr _sc ?? throw "null pointer dereference")._hpackEncoder = _internal.golang_dot_org.x.net.http2.hpack.Hpack_newEncoder.newEncoder(stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _sc ?? throw "null pointer dereference")._headerWriteBuf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>)));
            @:check2r (@:checkr _sc ?? throw "null pointer dereference")._hpackEncoder.setMaxDynamicTableSizeLimit(@:check2r _s._maxEncoderHeaderTableSize());
            var _fr = stdgo._internal.net.http.Http__http2NewFramer._http2NewFramer(stdgo.Go.asInterface((@:checkr _sc ?? throw "null pointer dereference")._bw), _c);
            if ((@:checkr _s ?? throw "null pointer dereference").countError != null) {
                (@:checkr _fr ?? throw "null pointer dereference")._countError = (@:checkr _s ?? throw "null pointer dereference").countError;
            };
            (@:checkr _fr ?? throw "null pointer dereference").readMetaHeaders = _internal.golang_dot_org.x.net.http2.hpack.Hpack_newDecoder.newDecoder(@:check2r _s._maxDecoderHeaderTableSize(), null);
            (@:checkr _fr ?? throw "null pointer dereference").maxHeaderListSize = @:check2r _sc._maxHeaderListSize();
            @:check2r _fr.setMaxReadFrameSize(@:check2r _s._maxReadFrameSize());
            (@:checkr _sc ?? throw "null pointer dereference")._framer = _fr;
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_c) : stdgo._internal.net.http.Http_T_http2connectionStater.T_http2connectionStater)) : stdgo._internal.net.http.Http_T_http2connectionStater.T_http2connectionStater), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo._internal.net.http.Http_T_http2connectionStater.T_http2connectionStater), _1 : false };
                }, _tc = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    (@:checkr _sc ?? throw "null pointer dereference")._tlsState = (stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState>);
                    {
                        var __tmp__ = _tc.connectionState()?.__copy__();
                        var x = ((@:checkr _sc ?? throw "null pointer dereference")._tlsState : stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState);
                        x.version = __tmp__.version;
                        x.handshakeComplete = __tmp__.handshakeComplete;
                        x.didResume = __tmp__.didResume;
                        x.cipherSuite = __tmp__.cipherSuite;
                        x.negotiatedProtocol = __tmp__.negotiatedProtocol;
                        x.negotiatedProtocolIsMutual = __tmp__.negotiatedProtocolIsMutual;
                        x.serverName = __tmp__.serverName;
                        x.peerCertificates = __tmp__.peerCertificates;
                        x.verifiedChains = __tmp__.verifiedChains;
                        x.signedCertificateTimestamps = __tmp__.signedCertificateTimestamps;
                        x.oCSPResponse = __tmp__.oCSPResponse;
                        x.tLSUnique = __tmp__.tLSUnique;
                        x._ekm = __tmp__._ekm;
                    };
                    if (((@:checkr (@:checkr _sc ?? throw "null pointer dereference")._tlsState ?? throw "null pointer dereference").version < (771 : stdgo.GoUInt16) : Bool)) {
                        @:check2r _sc._rejectConn((12u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode), ("TLS version too low" : stdgo.GoString));
                        {
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return;
                        };
                    };
                    if ((@:checkr (@:checkr _sc ?? throw "null pointer dereference")._tlsState ?? throw "null pointer dereference").serverName == (stdgo.Go.str())) {};
                    if ((!(@:checkr _s ?? throw "null pointer dereference").permitProhibitedCipherSuites && stdgo._internal.net.http.Http__http2isBadCipher._http2isBadCipher((@:checkr (@:checkr _sc ?? throw "null pointer dereference")._tlsState ?? throw "null pointer dereference").cipherSuite) : Bool)) {
                        @:check2r _sc._rejectConn((12u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode), stdgo._internal.fmt.Fmt_sprintf.sprintf(("Prohibited TLS 1.2 Cipher Suite: %x" : stdgo.GoString), stdgo.Go.toInterface((@:checkr (@:checkr _sc ?? throw "null pointer dereference")._tlsState ?? throw "null pointer dereference").cipherSuite))?.__copy__());
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
            };
            if ((@:checkr _opts ?? throw "null pointer dereference").settings != null) {
                var _fr = (stdgo.Go.setRef(({ _http2FrameHeader : ({ _valid : true } : stdgo._internal.net.http.Http_T_http2FrameHeader.T_http2FrameHeader), _p : (@:checkr _opts ?? throw "null pointer dereference").settings } : stdgo._internal.net.http.Http_T_http2SettingsFrame.T_http2SettingsFrame)) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2SettingsFrame.T_http2SettingsFrame>);
                {
                    var _err = (@:check2r _fr.foreachSetting(@:check2r _sc._processSetting) : stdgo.Error);
                    if (_err != null) {
                        @:check2r _sc._rejectConn((1u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode), ("invalid settings" : stdgo.GoString));
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
                (@:checkr _opts ?? throw "null pointer dereference").settings = (null : stdgo.Slice<stdgo.GoUInt8>);
            };
            {
                var _hook = stdgo._internal.net.http.Http__http2testHookGetServerConn._http2testHookGetServerConn;
                if (_hook != null) {
                    _hook(_sc);
                };
            };
            if (((@:checkr _opts ?? throw "null pointer dereference").upgradeRequest != null && (((@:checkr _opts ?? throw "null pointer dereference").upgradeRequest : Dynamic).__nil__ == null || !((@:checkr _opts ?? throw "null pointer dereference").upgradeRequest : Dynamic).__nil__))) {
                @:check2r _sc._upgradeRequest((@:checkr _opts ?? throw "null pointer dereference").upgradeRequest);
                (@:checkr _opts ?? throw "null pointer dereference").upgradeRequest = null;
            };
            @:check2r _sc._serve();
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
    static public function _maxQueuedControlFrames( _s:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Server.T_http2Server>):stdgo.GoInt {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Server.T_http2Server> = _s;
        return (10000 : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _maxEncoderHeaderTableSize( _s:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Server.T_http2Server>):stdgo.GoUInt32 {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Server.T_http2Server> = _s;
        {
            var _v = ((@:checkr _s ?? throw "null pointer dereference").maxEncoderHeaderTableSize : stdgo.GoUInt32);
            if ((_v > (0u32 : stdgo.GoUInt32) : Bool)) {
                return _v;
            };
        };
        return (4096u32 : stdgo.GoUInt32);
    }
    @:keep
    @:tdfield
    static public function _maxDecoderHeaderTableSize( _s:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Server.T_http2Server>):stdgo.GoUInt32 {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Server.T_http2Server> = _s;
        {
            var _v = ((@:checkr _s ?? throw "null pointer dereference").maxDecoderHeaderTableSize : stdgo.GoUInt32);
            if ((_v > (0u32 : stdgo.GoUInt32) : Bool)) {
                return _v;
            };
        };
        return (4096u32 : stdgo.GoUInt32);
    }
    @:keep
    @:tdfield
    static public function _maxConcurrentStreams( _s:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Server.T_http2Server>):stdgo.GoUInt32 {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Server.T_http2Server> = _s;
        {
            var _v = ((@:checkr _s ?? throw "null pointer dereference").maxConcurrentStreams : stdgo.GoUInt32);
            if ((_v > (0u32 : stdgo.GoUInt32) : Bool)) {
                return _v;
            };
        };
        return (250u32 : stdgo.GoUInt32);
    }
    @:keep
    @:tdfield
    static public function _maxReadFrameSize( _s:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Server.T_http2Server>):stdgo.GoUInt32 {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Server.T_http2Server> = _s;
        {
            var _v = ((@:checkr _s ?? throw "null pointer dereference").maxReadFrameSize : stdgo.GoUInt32);
            if (((_v >= (16384u32 : stdgo.GoUInt32) : Bool) && (_v <= (16777215u32 : stdgo.GoUInt32) : Bool) : Bool)) {
                return _v;
            };
        };
        return (1048576u32 : stdgo.GoUInt32);
    }
    @:keep
    @:tdfield
    static public function _initialStreamRecvWindowSize( _s:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Server.T_http2Server>):stdgo.GoInt32 {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Server.T_http2Server> = _s;
        if (((@:checkr _s ?? throw "null pointer dereference").maxUploadBufferPerStream > (0 : stdgo.GoInt32) : Bool)) {
            return (@:checkr _s ?? throw "null pointer dereference").maxUploadBufferPerStream;
        };
        return (1048576 : stdgo.GoInt32);
    }
    @:keep
    @:tdfield
    static public function _initialConnRecvWindowSize( _s:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Server.T_http2Server>):stdgo.GoInt32 {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Server.T_http2Server> = _s;
        if (((@:checkr _s ?? throw "null pointer dereference").maxUploadBufferPerConnection >= (65535 : stdgo.GoInt32) : Bool)) {
            return (@:checkr _s ?? throw "null pointer dereference").maxUploadBufferPerConnection;
        };
        return (1048576 : stdgo.GoInt32);
    }
}
