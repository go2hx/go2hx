package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2Server_asInterface) class T_http2Server_static_extension {
    @:keep
    @:tdfield
    static public function serveConn( _s:stdgo.Ref<stdgo._internal.net.http.Http_t_http2server.T_http2Server>, _c:stdgo._internal.net.Net_conn.Conn, _opts:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serveconnopts.T_http2ServeConnOpts>):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.Http_t_http2server.T_http2Server> = _s;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var __tmp__ = stdgo._internal.net.http.Http__http2serverconnbasecontext._http2serverConnBaseContext(_c, _opts), _baseCtx:stdgo._internal.context.Context_context.Context = __tmp__._0, _cancel:() -> Void = __tmp__._1;
            {
                final __f__ = _cancel;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            var _sc = (stdgo.Go.setRef(({ _srv : _s, _hs : @:check2r _opts._baseConfig(), _conn : _c, _baseCtx : _baseCtx, _remoteAddrStr : (_c.remoteAddr().string() : stdgo.GoString)?.__copy__(), _bw : stdgo._internal.net.http.Http__http2newbufferedwriter._http2newBufferedWriter(_c), _handler : @:check2r _opts._handler(), _streams : (({
                final x = new stdgo.GoMap.GoIntMap<stdgo.Ref<stdgo._internal.net.http.Http_t_http2stream.T_http2stream>>();
                x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2stream.T_http2stream>);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoUInt32, stdgo.Ref<stdgo._internal.net.http.Http_t_http2stream.T_http2stream>>) : stdgo.GoMap<stdgo.GoUInt32, stdgo.Ref<stdgo._internal.net.http.Http_t_http2stream.T_http2stream>>), _readFrameCh : (new stdgo.Chan<stdgo._internal.net.http.Http_t_http2readframeresult.T_http2readFrameResult>(0, () -> ({} : stdgo._internal.net.http.Http_t_http2readframeresult.T_http2readFrameResult)) : stdgo.Chan<stdgo._internal.net.http.Http_t_http2readframeresult.T_http2readFrameResult>), _wantWriteFrameCh : (new stdgo.Chan<stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest>((8 : stdgo.GoInt).toBasic(), () -> ({} : stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest)) : stdgo.Chan<stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest>), _serveMsgCh : (new stdgo.Chan<stdgo.AnyInterface>((8 : stdgo.GoInt).toBasic(), () -> (null : stdgo.AnyInterface)) : stdgo.Chan<stdgo.AnyInterface>), _wroteFrameCh : (new stdgo.Chan<stdgo._internal.net.http.Http_t_http2framewriteresult.T_http2frameWriteResult>((1 : stdgo.GoInt).toBasic(), () -> ({} : stdgo._internal.net.http.Http_t_http2framewriteresult.T_http2frameWriteResult)) : stdgo.Chan<stdgo._internal.net.http.Http_t_http2framewriteresult.T_http2frameWriteResult>), _bodyReadCh : (new stdgo.Chan<stdgo._internal.net.http.Http_t_http2bodyreadmsg.T_http2bodyReadMsg>(0, () -> ({} : stdgo._internal.net.http.Http_t_http2bodyreadmsg.T_http2bodyReadMsg)) : stdgo.Chan<stdgo._internal.net.http.Http_t_http2bodyreadmsg.T_http2bodyReadMsg>), _doneServing : (new stdgo.Chan<stdgo._internal.net.http.Http_t_http2goawayflowerror.T_http2goAwayFlowError>(0, () -> ({} : stdgo._internal.net.http.Http_t_http2goawayflowerror.T_http2goAwayFlowError)) : stdgo.Chan<stdgo._internal.net.http.Http_t_http2goawayflowerror.T_http2goAwayFlowError>), _clientMaxStreams : (-1u32 : stdgo.GoUInt32), _advMaxStreams : @:check2r _s._maxConcurrentStreams(), _initialStreamSendWindowSize : (65535 : stdgo.GoInt32), _maxFrameSize : (16384 : stdgo.GoInt32), _serveG : stdgo._internal.net.http.Http__http2newgoroutinelock._http2newGoroutineLock(), _pushEnabled : true, _sawClientPreface : (@:checkr _opts ?? throw "null pointer dereference").sawClientPreface } : stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn)) : stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn>);
            @:check2r (@:checkr _s ?? throw "null pointer dereference")._state._registerConn(_sc);
            {
                var _a0 = _sc;
                final __f__ = @:check2r (@:checkr _s ?? throw "null pointer dereference")._state._unregisterConn;
                __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
            };
            if ((@:checkr (@:checkr _sc ?? throw "null pointer dereference")._hs ?? throw "null pointer dereference").writeTimeout != ((0i64 : stdgo._internal.time.Time_duration.Duration))) {
                (@:checkr _sc ?? throw "null pointer dereference")._conn.setWriteDeadline((new stdgo._internal.time.Time_time.Time() : stdgo._internal.time.Time_time.Time));
            };
            if ((@:checkr _s ?? throw "null pointer dereference").newWriteScheduler != null) {
                (@:checkr _sc ?? throw "null pointer dereference")._writeSched = (@:checkr _s ?? throw "null pointer dereference").newWriteScheduler();
            } else {
                (@:checkr _sc ?? throw "null pointer dereference")._writeSched = stdgo._internal.net.http.Http__http2newroundrobinwritescheduler._http2newRoundRobinWriteScheduler();
            };
            @:check2 (@:checkr _sc ?? throw "null pointer dereference")._flow._add((65535 : stdgo.GoInt32));
            @:check2 (@:checkr _sc ?? throw "null pointer dereference")._inflow._init((65535 : stdgo.GoInt32));
            (@:checkr _sc ?? throw "null pointer dereference")._hpackEncoder = stdgo._internal.net.http.Http__hpack._hpack.newEncoder(stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _sc ?? throw "null pointer dereference")._headerWriteBuf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)));
            @:check2r (@:checkr _sc ?? throw "null pointer dereference")._hpackEncoder.setMaxDynamicTableSizeLimit(@:check2r _s._maxEncoderHeaderTableSize());
            var _fr = stdgo._internal.net.http.Http__http2newframer._http2NewFramer(stdgo.Go.asInterface((@:checkr _sc ?? throw "null pointer dereference")._bw), _c);
            if ((@:checkr _s ?? throw "null pointer dereference").countError != null) {
                (@:checkr _fr ?? throw "null pointer dereference")._countError = (@:checkr _s ?? throw "null pointer dereference").countError;
            };
            (@:checkr _fr ?? throw "null pointer dereference").readMetaHeaders = stdgo._internal.net.http.Http__hpack._hpack.newDecoder(@:check2r _s._maxDecoderHeaderTableSize(), null);
            (@:checkr _fr ?? throw "null pointer dereference").maxHeaderListSize = @:check2r _sc._maxHeaderListSize();
            @:check2r _fr.setMaxReadFrameSize(@:check2r _s._maxReadFrameSize());
            (@:checkr _sc ?? throw "null pointer dereference")._framer = _fr;
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_c) : stdgo._internal.net.http.Http_t_http2connectionstater.T_http2connectionStater)) : stdgo._internal.net.http.Http_t_http2connectionstater.T_http2connectionStater), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo._internal.net.http.Http_t_http2connectionstater.T_http2connectionStater), _1 : false };
                }, _tc = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    (@:checkr _sc ?? throw "null pointer dereference")._tlsState = stdgo._internal.net.http.Http_new_.new_(stdgo._internal.net.http.Http__tls._tls.connectionState);
                    {
                        var __tmp__ = _tc.connectionState()?.__copy__();
                        var x = ((@:checkr _sc ?? throw "null pointer dereference")._tlsState : stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState);
                        x.version = __tmp__?.version;
                        x.handshakeComplete = __tmp__?.handshakeComplete;
                        x.didResume = __tmp__?.didResume;
                        x.cipherSuite = __tmp__?.cipherSuite;
                        x.negotiatedProtocol = __tmp__?.negotiatedProtocol;
                        x.negotiatedProtocolIsMutual = __tmp__?.negotiatedProtocolIsMutual;
                        x.serverName = __tmp__?.serverName;
                        x.peerCertificates = __tmp__?.peerCertificates;
                        x.verifiedChains = __tmp__?.verifiedChains;
                        x.signedCertificateTimestamps = __tmp__?.signedCertificateTimestamps;
                        x.oCSPResponse = __tmp__?.oCSPResponse;
                        x.tLSUnique = __tmp__?.tLSUnique;
                        x._ekm = __tmp__?._ekm;
                    };
                    if (((@:checkr (@:checkr _sc ?? throw "null pointer dereference")._tlsState ?? throw "null pointer dereference").version < (771 : stdgo.GoUInt16) : Bool)) {
                        @:check2r _sc._rejectConn((12u32 : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode), ("TLS version too low" : stdgo.GoString));
                        {
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return;
                        };
                    };
                    if ((@:checkr (@:checkr _sc ?? throw "null pointer dereference")._tlsState ?? throw "null pointer dereference").serverName == ((stdgo.Go.str() : stdgo.GoString))) {};
                    if ((!(@:checkr _s ?? throw "null pointer dereference").permitProhibitedCipherSuites && stdgo._internal.net.http.Http__http2isbadcipher._http2isBadCipher((@:checkr (@:checkr _sc ?? throw "null pointer dereference")._tlsState ?? throw "null pointer dereference").cipherSuite) : Bool)) {
                        @:check2r _sc._rejectConn((12u32 : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode), stdgo._internal.net.http.Http__fmt._fmt.sprintf(("Prohibited TLS 1.2 Cipher Suite: %x" : stdgo.GoString), stdgo.Go.toInterface((@:checkr (@:checkr _sc ?? throw "null pointer dereference")._tlsState ?? throw "null pointer dereference").cipherSuite))?.__copy__());
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
                var _fr = (stdgo.Go.setRef(({ _http2FrameHeader : ({ _valid : true } : stdgo._internal.net.http.Http_t_http2frameheader.T_http2FrameHeader), _p : (@:checkr _opts ?? throw "null pointer dereference").settings } : stdgo._internal.net.http.Http_t_http2settingsframe.T_http2SettingsFrame)) : stdgo.Ref<stdgo._internal.net.http.Http_t_http2settingsframe.T_http2SettingsFrame>);
                {
                    var _err = (@:check2r _fr.foreachSetting(@:check2r _sc._processSetting) : stdgo.Error);
                    if (_err != null) {
                        @:check2r _sc._rejectConn((1u32 : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode), ("invalid settings" : stdgo.GoString));
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
                var _hook = stdgo._internal.net.http.Http__http2testhookgetserverconn._http2testHookGetServerConn;
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
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
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
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return;
            };
        };
    }
}
