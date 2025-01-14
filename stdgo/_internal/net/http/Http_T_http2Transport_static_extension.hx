package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2Transport_asInterface) class T_http2Transport_static_extension {
    @:keep
    @:tdfield
    static public function _idleConnTimeout( _t:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport>):stdgo._internal.time.Time_Duration.Duration {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport> = _t;
        if (((@:checkr _t ?? throw "null pointer dereference")._t1 != null && (((@:checkr _t ?? throw "null pointer dereference")._t1 : Dynamic).__nil__ == null || !((@:checkr _t ?? throw "null pointer dereference")._t1 : Dynamic).__nil__))) {
            return (@:checkr (@:checkr _t ?? throw "null pointer dereference")._t1 ?? throw "null pointer dereference").idleConnTimeout;
        };
        return (0i64 : stdgo._internal.time.Time_Duration.Duration);
    }
    @:keep
    @:tdfield
    static public function _logf( _t:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport>, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport> = _t;
        stdgo._internal.log.Log_printf.printf(_format?.__copy__(), ...(_args : Array<stdgo.AnyInterface>));
    }
    @:keep
    @:tdfield
    static public function _vlogf( _t:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport>, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport> = _t;
        if (stdgo._internal.net.http.Http__http2VerboseLogs._http2VerboseLogs) {
            @:check2r _t._logf(_format?.__copy__(), ...(_args : Array<stdgo.AnyInterface>));
        };
    }
    @:keep
    @:tdfield
    static public function _newClientConn( _t:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport>, _c:stdgo._internal.net.Net_Conn.Conn, _singleUse:Bool):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>; var _1 : stdgo.Error; } {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport> = _t;
        var _cc = (stdgo.Go.setRef(({ _t : _t, _tconn : _c, _readerDone : (new stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>(0, () -> ({} : stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError)) : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>), _nextStreamID : (1u32 : stdgo.GoUInt32), _maxFrameSize : (16384u32 : stdgo.GoUInt32), _initialWindowSize : (65535u32 : stdgo.GoUInt32), _maxConcurrentStreams : (100u32 : stdgo.GoUInt32), _peerMaxHeaderListSize : (-1i64 : stdgo.GoUInt64), _streams : (({
            final x = new stdgo.GoMap.GoIntMap<stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream>>();
            x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoUInt32, stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream>>) : stdgo.GoMap<stdgo.GoUInt32, stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream>>), _singleUse : _singleUse, _wantSettingsAck : true, _pings : (({
            final x = new stdgo.GoMap.GoObjectMap<stdgo.GoArray<stdgo.GoUInt8>, stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>>();
            x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, 8));
            x.__defaultValue__ = () -> (null : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>);
            {};
            cast x;
        } : stdgo.GoMap<stdgo.GoArray<stdgo.GoUInt8>, stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>>) : stdgo.GoMap<stdgo.GoArray<stdgo.GoUInt8>, stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>>), _reqHeaderMu : (new stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>((1 : stdgo.GoInt).toBasic(), () -> ({} : stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError)) : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>) } : stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn)) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>);
        {
            var _d = (@:check2r _t._idleConnTimeout() : stdgo._internal.time.Time_Duration.Duration);
            if (_d != ((0i64 : stdgo._internal.time.Time_Duration.Duration))) {
                (@:checkr _cc ?? throw "null pointer dereference")._idleTimeout = _d;
                (@:checkr _cc ?? throw "null pointer dereference")._idleTimer = stdgo._internal.time.Time_afterFunc.afterFunc(_d, @:check2r _cc._onIdleTimeout);
            };
        };
        if (stdgo._internal.net.http.Http__http2VerboseLogs._http2VerboseLogs) {
            @:check2r _t._vlogf(("http2: Transport creating client conn %p to %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_cc)), stdgo.Go.toInterface(_c.remoteAddr()));
        };
        (@:checkr _cc ?? throw "null pointer dereference")._cond = stdgo._internal.sync.Sync_newCond.newCond(stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _cc ?? throw "null pointer dereference")._mu) : stdgo.Ref<stdgo._internal.sync.Sync_Mutex.Mutex>)));
        @:check2 (@:checkr _cc ?? throw "null pointer dereference")._flow._add((65535 : stdgo.GoInt32));
        (@:checkr _cc ?? throw "null pointer dereference")._bw = stdgo._internal.bufio.Bufio_newWriter.newWriter(stdgo.Go.asInterface(({ _conn : _c, _timeout : (@:checkr _t ?? throw "null pointer dereference").writeByteTimeout, _err : (stdgo.Go.setRef((@:checkr _cc ?? throw "null pointer dereference")._werr) : stdgo.Ref<stdgo.Error>) } : stdgo._internal.net.http.Http_T_http2stickyErrWriter.T_http2stickyErrWriter)));
        (@:checkr _cc ?? throw "null pointer dereference")._br = stdgo._internal.bufio.Bufio_newReader.newReader(_c);
        (@:checkr _cc ?? throw "null pointer dereference")._fr = stdgo._internal.net.http.Http__http2NewFramer._http2NewFramer(stdgo.Go.asInterface((@:checkr _cc ?? throw "null pointer dereference")._bw), stdgo.Go.asInterface((@:checkr _cc ?? throw "null pointer dereference")._br));
        if (@:check2r _t._maxFrameReadSize() != ((0u32 : stdgo.GoUInt32))) {
            @:check2r (@:checkr _cc ?? throw "null pointer dereference")._fr.setMaxReadFrameSize(@:check2r _t._maxFrameReadSize());
        };
        if ((@:checkr _t ?? throw "null pointer dereference").countError != null) {
            (@:checkr (@:checkr _cc ?? throw "null pointer dereference")._fr ?? throw "null pointer dereference")._countError = (@:checkr _t ?? throw "null pointer dereference").countError;
        };
        var _maxHeaderTableSize = (@:check2r _t._maxDecoderHeaderTableSize() : stdgo.GoUInt32);
        (@:checkr (@:checkr _cc ?? throw "null pointer dereference")._fr ?? throw "null pointer dereference").readMetaHeaders = _internal.golang_dot_org.x.net.http2.hpack.Hpack_newDecoder.newDecoder(_maxHeaderTableSize, null);
        (@:checkr (@:checkr _cc ?? throw "null pointer dereference")._fr ?? throw "null pointer dereference").maxHeaderListSize = @:check2r _t._maxHeaderListSize();
        (@:checkr _cc ?? throw "null pointer dereference")._henc = _internal.golang_dot_org.x.net.http2.hpack.Hpack_newEncoder.newEncoder(stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _cc ?? throw "null pointer dereference")._hbuf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>)));
        @:check2r (@:checkr _cc ?? throw "null pointer dereference")._henc.setMaxDynamicTableSizeLimit(@:check2r _t._maxEncoderHeaderTableSize());
        (@:checkr _cc ?? throw "null pointer dereference")._peerMaxHeaderTableSize = (4096u32 : stdgo.GoUInt32);
        if ((@:checkr _t ?? throw "null pointer dereference").allowHTTP) {
            (@:checkr _cc ?? throw "null pointer dereference")._nextStreamID = (3u32 : stdgo.GoUInt32);
        };
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_c) : stdgo._internal.net.http.Http_T_http2connectionStater.T_http2connectionStater)) : stdgo._internal.net.http.Http_T_http2connectionStater.T_http2connectionStater), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.net.http.Http_T_http2connectionStater.T_http2connectionStater), _1 : false };
            }, _cs = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                var _state = (_cs.connectionState()?.__copy__() : stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState);
                (@:checkr _cc ?? throw "null pointer dereference")._tlsState = (stdgo.Go.setRef(_state) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState>);
            };
        };
        var _initialSettings = (new stdgo.Slice<stdgo._internal.net.http.Http_T_http2Setting.T_http2Setting>(2, 2, ...[({ iD : (2 : stdgo._internal.net.http.Http_T_http2SettingID.T_http2SettingID), val : (0u32 : stdgo.GoUInt32) } : stdgo._internal.net.http.Http_T_http2Setting.T_http2Setting), ({ iD : (4 : stdgo._internal.net.http.Http_T_http2SettingID.T_http2SettingID), val : (4194304u32 : stdgo.GoUInt32) } : stdgo._internal.net.http.Http_T_http2Setting.T_http2Setting)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.net.http.Http_T_http2Setting.T_http2Setting)])) : stdgo.Slice<stdgo._internal.net.http.Http_T_http2Setting.T_http2Setting>);
        {
            var _max = (@:check2r _t._maxFrameReadSize() : stdgo.GoUInt32);
            if (_max != ((0u32 : stdgo.GoUInt32))) {
                _initialSettings = (_initialSettings.__append__(({ iD : (5 : stdgo._internal.net.http.Http_T_http2SettingID.T_http2SettingID), val : _max } : stdgo._internal.net.http.Http_T_http2Setting.T_http2Setting)));
            };
        };
        {
            var _max = (@:check2r _t._maxHeaderListSize() : stdgo.GoUInt32);
            if (_max != ((0u32 : stdgo.GoUInt32))) {
                _initialSettings = (_initialSettings.__append__(({ iD : (6 : stdgo._internal.net.http.Http_T_http2SettingID.T_http2SettingID), val : _max } : stdgo._internal.net.http.Http_T_http2Setting.T_http2Setting)));
            };
        };
        if (_maxHeaderTableSize != ((4096u32 : stdgo.GoUInt32))) {
            _initialSettings = (_initialSettings.__append__(({ iD : (1 : stdgo._internal.net.http.Http_T_http2SettingID.T_http2SettingID), val : _maxHeaderTableSize } : stdgo._internal.net.http.Http_T_http2Setting.T_http2Setting)));
        };
        @:check2r (@:checkr _cc ?? throw "null pointer dereference")._bw.write(stdgo._internal.net.http.Http__http2clientPreface._http2clientPreface);
        @:check2r (@:checkr _cc ?? throw "null pointer dereference")._fr.writeSettings(...(_initialSettings : Array<stdgo._internal.net.http.Http_T_http2Setting.T_http2Setting>));
        @:check2r (@:checkr _cc ?? throw "null pointer dereference")._fr.writeWindowUpdate((0u32 : stdgo.GoUInt32), (1073741824u32 : stdgo.GoUInt32));
        @:check2 (@:checkr _cc ?? throw "null pointer dereference")._inflow._init((1073807359 : stdgo.GoInt32));
        @:check2r (@:checkr _cc ?? throw "null pointer dereference")._bw.flush();
        if ((@:checkr _cc ?? throw "null pointer dereference")._werr != null) {
            @:check2r _cc.close();
            return { _0 : null, _1 : (@:checkr _cc ?? throw "null pointer dereference")._werr };
        };
        stdgo.Go.routine(() -> @:check2r _cc._readLoop());
        return { _0 : _cc, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function newClientConn( _t:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport>, _c:stdgo._internal.net.Net_Conn.Conn):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>; var _1 : stdgo.Error; } {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport> = _t;
        return @:check2r _t._newClientConn(_c, @:check2r _t._disableKeepAlives());
    }
    @:keep
    @:tdfield
    static public function _maxEncoderHeaderTableSize( _t:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport>):stdgo.GoUInt32 {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport> = _t;
        {
            var _v = ((@:checkr _t ?? throw "null pointer dereference").maxEncoderHeaderTableSize : stdgo.GoUInt32);
            if ((_v > (0u32 : stdgo.GoUInt32) : Bool)) {
                return _v;
            };
        };
        return (4096u32 : stdgo.GoUInt32);
    }
    @:keep
    @:tdfield
    static public function _maxDecoderHeaderTableSize( _t:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport>):stdgo.GoUInt32 {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport> = _t;
        {
            var _v = ((@:checkr _t ?? throw "null pointer dereference").maxDecoderHeaderTableSize : stdgo.GoUInt32);
            if ((_v > (0u32 : stdgo.GoUInt32) : Bool)) {
                return _v;
            };
        };
        return (4096u32 : stdgo.GoUInt32);
    }
    @:keep
    @:tdfield
    static public function _expectContinueTimeout( _t:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport>):stdgo._internal.time.Time_Duration.Duration {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport> = _t;
        if (((@:checkr _t ?? throw "null pointer dereference")._t1 == null || ((@:checkr _t ?? throw "null pointer dereference")._t1 : Dynamic).__nil__)) {
            return (0i64 : stdgo._internal.time.Time_Duration.Duration);
        };
        return (@:checkr (@:checkr _t ?? throw "null pointer dereference")._t1 ?? throw "null pointer dereference").expectContinueTimeout;
    }
    @:keep
    @:tdfield
    static public function _disableKeepAlives( _t:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport>):Bool {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport> = _t;
        return (((@:checkr _t ?? throw "null pointer dereference")._t1 != null && (((@:checkr _t ?? throw "null pointer dereference")._t1 : Dynamic).__nil__ == null || !((@:checkr _t ?? throw "null pointer dereference")._t1 : Dynamic).__nil__)) && (@:checkr (@:checkr _t ?? throw "null pointer dereference")._t1 ?? throw "null pointer dereference").disableKeepAlives : Bool);
    }
    @:keep
    @:tdfield
    static public function _dialTLS( _t:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport>, _ctx:stdgo._internal.context.Context_Context.Context, _network:stdgo.GoString, _addr:stdgo.GoString, _tlsCfg:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>):{ var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; } {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport> = _t;
        if ((@:checkr _t ?? throw "null pointer dereference").dialTLSContext != null) {
            return (@:checkr _t ?? throw "null pointer dereference").dialTLSContext(_ctx, _network?.__copy__(), _addr?.__copy__(), _tlsCfg);
        } else if ((@:checkr _t ?? throw "null pointer dereference").dialTLS != null) {
            return (@:checkr _t ?? throw "null pointer dereference").dialTLS(_network?.__copy__(), _addr?.__copy__(), _tlsCfg);
        };
        var __tmp__ = @:check2r _t._dialTLSWithContext(_ctx, _network?.__copy__(), _addr?.__copy__(), _tlsCfg), _tlsCn:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo._internal.net.Net_Conn.Conn), _1 : _err };
        };
        var _state = (@:check2r _tlsCn.connectionState()?.__copy__() : stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState);
        {
            var _p = (_state.negotiatedProtocol?.__copy__() : stdgo.GoString);
            if (_p != (("h2" : stdgo.GoString))) {
                return { _0 : (null : stdgo._internal.net.Net_Conn.Conn), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("http2: unexpected ALPN protocol %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_p), stdgo.Go.toInterface(("h2" : stdgo.GoString))) };
            };
        };
        if (!_state.negotiatedProtocolIsMutual) {
            return { _0 : (null : stdgo._internal.net.Net_Conn.Conn), _1 : stdgo._internal.errors.Errors_new_.new_(("http2: could not negotiate protocol mutually" : stdgo.GoString)) };
        };
        return { _0 : stdgo.Go.asInterface(_tlsCn), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _newTLSConfig( _t:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport>, _host:stdgo.GoString):stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config> {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport> = _t;
        var _cfg = (stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_Config.Config)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>);
        if (((@:checkr _t ?? throw "null pointer dereference").tLSClientConfig != null && (((@:checkr _t ?? throw "null pointer dereference").tLSClientConfig : Dynamic).__nil__ == null || !((@:checkr _t ?? throw "null pointer dereference").tLSClientConfig : Dynamic).__nil__))) {
            {
                var __tmp__ = (@:check2r (@:checkr _t ?? throw "null pointer dereference").tLSClientConfig.clone() : stdgo._internal.crypto.tls.Tls_Config.Config)?.__copy__();
                var x = (_cfg : stdgo._internal.crypto.tls.Tls_Config.Config);
                x.rand = __tmp__?.rand;
                x.time = __tmp__?.time;
                x.certificates = __tmp__?.certificates;
                x.nameToCertificate = __tmp__?.nameToCertificate;
                x.getCertificate = __tmp__?.getCertificate;
                x.getClientCertificate = __tmp__?.getClientCertificate;
                x.getConfigForClient = __tmp__?.getConfigForClient;
                x.verifyPeerCertificate = __tmp__?.verifyPeerCertificate;
                x.verifyConnection = __tmp__?.verifyConnection;
                x.rootCAs = __tmp__?.rootCAs;
                x.nextProtos = __tmp__?.nextProtos;
                x.serverName = __tmp__?.serverName;
                x.clientAuth = __tmp__?.clientAuth;
                x.clientCAs = __tmp__?.clientCAs;
                x.insecureSkipVerify = __tmp__?.insecureSkipVerify;
                x.cipherSuites = __tmp__?.cipherSuites;
                x.preferServerCipherSuites = __tmp__?.preferServerCipherSuites;
                x.sessionTicketsDisabled = __tmp__?.sessionTicketsDisabled;
                x.sessionTicketKey = __tmp__?.sessionTicketKey;
                x.clientSessionCache = __tmp__?.clientSessionCache;
                x.unwrapSession = __tmp__?.unwrapSession;
                x.wrapSession = __tmp__?.wrapSession;
                x.minVersion = __tmp__?.minVersion;
                x.maxVersion = __tmp__?.maxVersion;
                x.curvePreferences = __tmp__?.curvePreferences;
                x.dynamicRecordSizingDisabled = __tmp__?.dynamicRecordSizingDisabled;
                x.renegotiation = __tmp__?.renegotiation;
                x.keyLogWriter = __tmp__?.keyLogWriter;
                x._mutex = __tmp__?._mutex;
                x._sessionTicketKeys = __tmp__?._sessionTicketKeys;
                x._autoSessionTicketKeys = __tmp__?._autoSessionTicketKeys;
            };
        };
        if (!stdgo._internal.net.http.Http__http2strSliceContains._http2strSliceContains((@:checkr _cfg ?? throw "null pointer dereference").nextProtos, ("h2" : stdgo.GoString))) {
            (@:checkr _cfg ?? throw "null pointer dereference").nextProtos = ((new stdgo.Slice<stdgo.GoString>(1, 1, ...[("h2" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>).__append__(...((@:checkr _cfg ?? throw "null pointer dereference").nextProtos : Array<stdgo.GoString>)));
        };
        if ((@:checkr _cfg ?? throw "null pointer dereference").serverName == (stdgo.Go.str())) {
            (@:checkr _cfg ?? throw "null pointer dereference").serverName = _host?.__copy__();
        };
        return _cfg;
    }
    @:keep
    @:tdfield
    static public function _dialClientConn( _t:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport>, _ctx:stdgo._internal.context.Context_Context.Context, _addr:stdgo.GoString, _singleUse:Bool):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>; var _1 : stdgo.Error; } {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport> = _t;
        var __tmp__ = stdgo._internal.net.Net_splitHostPort.splitHostPort(_addr?.__copy__()), _host:stdgo.GoString = __tmp__._0, __32057:stdgo.GoString = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        var __tmp__ = @:check2r _t._dialTLS(_ctx, ("tcp" : stdgo.GoString), _addr?.__copy__(), @:check2r _t._newTLSConfig(_host?.__copy__())), _tconn:stdgo._internal.net.Net_Conn.Conn = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        return @:check2r _t._newClientConn(_tconn, _singleUse);
    }
    @:keep
    @:tdfield
    static public function closeIdleConnections( _t:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport>):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport> = _t;
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(@:check2r _t._connPool()) : stdgo._internal.net.http.Http_T_http2clientConnPoolIdleCloser.T_http2clientConnPoolIdleCloser)) : stdgo._internal.net.http.Http_T_http2clientConnPoolIdleCloser.T_http2clientConnPoolIdleCloser), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.net.http.Http_T_http2clientConnPoolIdleCloser.T_http2clientConnPoolIdleCloser), _1 : false };
            }, _cp = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                _cp._closeIdleConnections();
            };
        };
    }
    @:keep
    @:tdfield
    static public function roundTripOpt( _t:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport>, _req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, _opt:stdgo._internal.net.http.Http_T_http2RoundTripOpt.T_http2RoundTripOpt):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport> = _t;
        if (!((((@:checkr (@:checkr _req ?? throw "null pointer dereference").uRL ?? throw "null pointer dereference").scheme == ("https" : stdgo.GoString)) || ((((@:checkr (@:checkr _req ?? throw "null pointer dereference").uRL ?? throw "null pointer dereference").scheme == ("http" : stdgo.GoString)) && (@:checkr _t ?? throw "null pointer dereference").allowHTTP : Bool)) : Bool))) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("http2: unsupported scheme" : stdgo.GoString)) };
        };
        var _addr = (stdgo._internal.net.http.Http__http2authorityAddr._http2authorityAddr((@:checkr (@:checkr _req ?? throw "null pointer dereference").uRL ?? throw "null pointer dereference").scheme?.__copy__(), (@:checkr (@:checkr _req ?? throw "null pointer dereference").uRL ?? throw "null pointer dereference").host?.__copy__())?.__copy__() : stdgo.GoString);
        {
            var _retry = (0 : stdgo.GoInt);
            while (true) {
                var __tmp__ = @:check2r _t._connPool().getClientConn(_req, _addr.__copy__()), _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
if (_err != null) {
                    @:check2r _t._vlogf(("http2: Transport failed to get client conn for %s: %v" : stdgo.GoString), stdgo.Go.toInterface(_addr), stdgo.Go.toInterface(_err));
                    return { _0 : null, _1 : _err };
                };
var _reused = (!stdgo._internal.sync.atomic_.Atomic__compareAndSwapUint32.compareAndSwapUint32(stdgo.Go.pointer((@:checkr _cc ?? throw "null pointer dereference")._reused), (0u32 : stdgo.GoUInt32), (1u32 : stdgo.GoUInt32)) : Bool);
stdgo._internal.net.http.Http__http2traceGotConn._http2traceGotConn(_req, _cc, _reused);
var __tmp__ = @:check2r _cc.roundTrip(_req), _res:stdgo.Ref<stdgo._internal.net.http.Http_Response.Response> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
if (((_err != null) && (_retry <= (6 : stdgo.GoInt) : Bool) : Bool)) {
                    var _roundTripErr = (_err : stdgo.Error);
                    {
                        {
                            var __tmp__ = stdgo._internal.net.http.Http__http2shouldRetryRequest._http2shouldRetryRequest(_req, _err);
                            _req = @:tmpset0 __tmp__._0;
                            _err = @:tmpset0 __tmp__._1;
                        };
                        if (_err == null) {
                            if (_retry == ((0 : stdgo.GoInt))) {
                                @:check2r _t._vlogf(("RoundTrip retrying after failure: %v" : stdgo.GoString), stdgo.Go.toInterface(_roundTripErr));
                                {
                                    _retry++;
                                    continue;
                                };
                            };
                            var _backoff = (((1u32 : stdgo.GoUInt) << (((_retry : stdgo.GoUInt) - (1u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt) : stdgo.GoFloat64);
                            _backoff = (_backoff + ((_backoff * (((0.1 : stdgo.GoFloat64) * stdgo._internal.math.rand.Rand_float64.float64() : stdgo.GoFloat64)) : stdgo.GoFloat64)) : stdgo.GoFloat64);
                            var _d = ((1000000000i64 : stdgo._internal.time.Time_Duration.Duration) * (_backoff : stdgo._internal.time.Time_Duration.Duration) : stdgo._internal.time.Time_Duration.Duration);
                            var _timer = stdgo._internal.net.http.Http__http2backoffNewTimer._http2backoffNewTimer(_d);
                            {
                                var __select__ = true;
                                while (__select__) {
                                    if ((@:checkr _timer ?? throw "null pointer dereference").c != null && (@:checkr _timer ?? throw "null pointer dereference").c.__isGet__()) {
                                        __select__ = false;
                                        {
                                            (@:checkr _timer ?? throw "null pointer dereference").c.__get__();
                                            {
                                                @:check2r _t._vlogf(("RoundTrip retrying after failure: %v" : stdgo.GoString), stdgo.Go.toInterface(_roundTripErr));
                                                continue;
                                            };
                                        };
                                    } else if (@:check2r _req.context().done() != null && @:check2r _req.context().done().__isGet__()) {
                                        __select__ = false;
                                        {
                                            @:check2r _req.context().done().__get__();
                                            {
                                                @:check2r _timer.stop();
                                                _err = @:check2r _req.context().err();
                                            };
                                        };
                                    };
                                    #if !js Sys.sleep(0.01) #else null #end;
                                    stdgo._internal.internal.Async.tick();
                                };
                            };
                        };
                    };
                };
if (_err != null) {
                    @:check2r _t._vlogf(("RoundTrip failure: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                    return { _0 : null, _1 : _err };
                };
return { _0 : _res, _1 : (null : stdgo.Error) };
                _retry++;
            };
        };
    }
    @:keep
    @:tdfield
    static public function roundTrip( _t:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport>, _req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport> = _t;
        return @:check2r _t.roundTripOpt(_req, (new stdgo._internal.net.http.Http_T_http2RoundTripOpt.T_http2RoundTripOpt() : stdgo._internal.net.http.Http_T_http2RoundTripOpt.T_http2RoundTripOpt));
    }
    @:keep
    @:tdfield
    static public function _initConnPool( _t:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport>):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport> = _t;
        if ((@:checkr _t ?? throw "null pointer dereference").connPool != null) {
            (@:checkr _t ?? throw "null pointer dereference")._connPoolOrDef = (@:checkr _t ?? throw "null pointer dereference").connPool;
        } else {
            (@:checkr _t ?? throw "null pointer dereference")._connPoolOrDef = stdgo.Go.asInterface((stdgo.Go.setRef(({ _t : _t } : stdgo._internal.net.http.Http_T_http2clientConnPool.T_http2clientConnPool)) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientConnPool.T_http2clientConnPool>));
        };
    }
    @:keep
    @:tdfield
    static public function _connPool( _t:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport>):stdgo._internal.net.http.Http_T_http2ClientConnPool.T_http2ClientConnPool {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport> = _t;
        @:check2 (@:checkr _t ?? throw "null pointer dereference")._connPoolOnce.do_(@:check2r _t._initConnPool);
        return (@:checkr _t ?? throw "null pointer dereference")._connPoolOrDef;
    }
    @:keep
    @:tdfield
    static public function _pingTimeout( _t:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport>):stdgo._internal.time.Time_Duration.Duration {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport> = _t;
        if ((@:checkr _t ?? throw "null pointer dereference").pingTimeout == ((0i64 : stdgo._internal.time.Time_Duration.Duration))) {
            return (15000000000i64 : stdgo._internal.time.Time_Duration.Duration);
        };
        return (@:checkr _t ?? throw "null pointer dereference").pingTimeout;
    }
    @:keep
    @:tdfield
    static public function _disableCompression( _t:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport>):Bool {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport> = _t;
        return ((@:checkr _t ?? throw "null pointer dereference").disableCompression || ((((@:checkr _t ?? throw "null pointer dereference")._t1 != null && (((@:checkr _t ?? throw "null pointer dereference")._t1 : Dynamic).__nil__ == null || !((@:checkr _t ?? throw "null pointer dereference")._t1 : Dynamic).__nil__)) && (@:checkr (@:checkr _t ?? throw "null pointer dereference")._t1 ?? throw "null pointer dereference").disableCompression : Bool)) : Bool);
    }
    @:keep
    @:tdfield
    static public function _maxFrameReadSize( _t:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport>):stdgo.GoUInt32 {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport> = _t;
        if ((@:checkr _t ?? throw "null pointer dereference").maxReadFrameSize == ((0u32 : stdgo.GoUInt32))) {
            return (0u32 : stdgo.GoUInt32);
        };
        if (((@:checkr _t ?? throw "null pointer dereference").maxReadFrameSize < (16384u32 : stdgo.GoUInt32) : Bool)) {
            return (16384u32 : stdgo.GoUInt32);
        };
        if (((@:checkr _t ?? throw "null pointer dereference").maxReadFrameSize > (16777215u32 : stdgo.GoUInt32) : Bool)) {
            return (16777215u32 : stdgo.GoUInt32);
        };
        return (@:checkr _t ?? throw "null pointer dereference").maxReadFrameSize;
    }
    @:keep
    @:tdfield
    static public function _maxHeaderListSize( _t:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport>):stdgo.GoUInt32 {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport> = _t;
        if ((@:checkr _t ?? throw "null pointer dereference").maxHeaderListSize == ((0u32 : stdgo.GoUInt32))) {
            return (10485760u32 : stdgo.GoUInt32);
        };
        if ((@:checkr _t ?? throw "null pointer dereference").maxHeaderListSize == ((-1u32 : stdgo.GoUInt32))) {
            return (0u32 : stdgo.GoUInt32);
        };
        return (@:checkr _t ?? throw "null pointer dereference").maxHeaderListSize;
    }
    @:keep
    @:tdfield
    static public function _dialTLSWithContext( _t:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport>, _ctx:stdgo._internal.context.Context_Context.Context, _network:stdgo.GoString, _addr:stdgo.GoString, _cfg:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>; var _1 : stdgo.Error; } {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport> = _t;
        var _dialer = (stdgo.Go.setRef(({ config : _cfg } : stdgo._internal.crypto.tls.Tls_Dialer.Dialer)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Dialer.Dialer>);
        var __tmp__ = @:check2r _dialer.dialContext(_ctx, _network?.__copy__(), _addr?.__copy__()), _cn:stdgo._internal.net.Net_Conn.Conn = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        var _tlsCn = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_cn) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>);
        return { _0 : _tlsCn, _1 : (null : stdgo.Error) };
    }
}
