package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2Transport_asInterface) class T_http2Transport_static_extension {
    @:keep
    static public function _idleConnTimeout( _t:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport>):stdgo._internal.time.Time_Duration.Duration {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport> = _t;
        if (_t._t1 != null && ((_t._t1 : Dynamic).__nil__ == null || !(_t._t1 : Dynamic).__nil__)) {
            return _t._t1.idleConnTimeout;
        };
        return (0i64 : stdgo._internal.time.Time_Duration.Duration);
    }
    @:keep
    static public function _logf( _t:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport>, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport> = _t;
        stdgo._internal.log.Log_printf.printf(_format?.__copy__(), ...(_args : Array<stdgo.AnyInterface>));
    }
    @:keep
    static public function _vlogf( _t:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport>, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport> = _t;
        if (stdgo._internal.net.http.Http__http2VerboseLogs._http2VerboseLogs) {
            _t._logf(_format?.__copy__(), ...(_args : Array<stdgo.AnyInterface>));
        };
    }
    @:keep
    static public function _newClientConn( _t:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport>, _c:stdgo._internal.net.Net_Conn.Conn, _singleUse:Bool):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>; var _1 : stdgo.Error; } {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport> = _t;
        var _cc = (stdgo.Go.setRef(({ _t : _t, _tconn : _c, _readerDone : (new stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>(0, () -> ({} : stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError)) : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>), _nextStreamID : (1u32 : stdgo.GoUInt32), _maxFrameSize : (16384u32 : stdgo.GoUInt32), _initialWindowSize : (65535u32 : stdgo.GoUInt32), _maxConcurrentStreams : (100u32 : stdgo.GoUInt32), _peerMaxHeaderListSize : (-1i64 : stdgo.GoUInt64), _streams : ({
            final x = new stdgo.GoMap.GoIntMap<stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream>>();
            x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoUInt32, stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream>>), _singleUse : _singleUse, _wantSettingsAck : true, _pings : ({
            final x = new stdgo.GoMap.GoObjectMap<stdgo.GoArray<stdgo.GoUInt8>, stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>>();
            x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, 8));
            x.__defaultValue__ = () -> (null : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>);
            {};
            cast x;
        } : stdgo.GoMap<stdgo.GoArray<stdgo.GoUInt8>, stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>>), _reqHeaderMu : (new stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>((1 : stdgo.GoInt).toBasic(), () -> ({} : stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError)) : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>) } : stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn)) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>);
        {
            var _d = (_t._idleConnTimeout() : stdgo._internal.time.Time_Duration.Duration);
            if (_d != ((0i64 : stdgo._internal.time.Time_Duration.Duration))) {
                _cc._idleTimeout = _d;
                _cc._idleTimer = stdgo._internal.time.Time_afterFunc.afterFunc(_d, _cc._onIdleTimeout);
            };
        };
        if (stdgo._internal.net.http.Http__http2VerboseLogs._http2VerboseLogs) {
            _t._vlogf(("http2: Transport creating client conn %p to %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_cc)), stdgo.Go.toInterface(_c.remoteAddr()));
        };
        _cc._cond = stdgo._internal.sync.Sync_newCond.newCond(stdgo.Go.asInterface((stdgo.Go.setRef(_cc._mu) : stdgo.Ref<stdgo._internal.sync.Sync_Mutex.Mutex>)));
        _cc._flow._add((65535 : stdgo.GoInt32));
        _cc._bw = stdgo._internal.bufio.Bufio_newWriter.newWriter(stdgo.Go.asInterface(({ _conn : _c, _timeout : _t.writeByteTimeout, _err : (stdgo.Go.setRef(_cc._werr) : stdgo.Ref<stdgo.Error>) } : stdgo._internal.net.http.Http_T_http2stickyErrWriter.T_http2stickyErrWriter)));
        _cc._br = stdgo._internal.bufio.Bufio_newReader.newReader(_c);
        _cc._fr = stdgo._internal.net.http.Http__http2NewFramer._http2NewFramer(stdgo.Go.asInterface(_cc._bw), stdgo.Go.asInterface(_cc._br));
        if (_t._maxFrameReadSize() != ((0u32 : stdgo.GoUInt32))) {
            _cc._fr.setMaxReadFrameSize(_t._maxFrameReadSize());
        };
        if (_t.countError != null) {
            _cc._fr._countError = _t.countError;
        };
        var _maxHeaderTableSize = (_t._maxDecoderHeaderTableSize() : stdgo.GoUInt32);
        _cc._fr.readMetaHeaders = _internal.golang_dot_org.x.net.http2.hpack.Hpack_newDecoder.newDecoder(_maxHeaderTableSize, null);
        _cc._fr.maxHeaderListSize = _t._maxHeaderListSize();
        _cc._henc = _internal.golang_dot_org.x.net.http2.hpack.Hpack_newEncoder.newEncoder(stdgo.Go.asInterface((stdgo.Go.setRef(_cc._hbuf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>)));
        _cc._henc.setMaxDynamicTableSizeLimit(_t._maxEncoderHeaderTableSize());
        _cc._peerMaxHeaderTableSize = (4096u32 : stdgo.GoUInt32);
        if (_t.allowHTTP) {
            _cc._nextStreamID = (3u32 : stdgo.GoUInt32);
        };
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_c) : stdgo._internal.net.http.Http_T_http2connectionStater.T_http2connectionStater)) : stdgo._internal.net.http.Http_T_http2connectionStater.T_http2connectionStater), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.net.http.Http_T_http2connectionStater.T_http2connectionStater), _1 : false };
            }, _cs = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                var _state = (_cs.connectionState()?.__copy__() : stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState);
                _cc._tlsState = (stdgo.Go.setRef(_state) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState>);
            };
        };
        var _initialSettings = (new stdgo.Slice<stdgo._internal.net.http.Http_T_http2Setting.T_http2Setting>(2, 2, ...[({ id : (2 : stdgo._internal.net.http.Http_T_http2SettingID.T_http2SettingID), val : (0u32 : stdgo.GoUInt32) } : stdgo._internal.net.http.Http_T_http2Setting.T_http2Setting), ({ id : (4 : stdgo._internal.net.http.Http_T_http2SettingID.T_http2SettingID), val : (4194304u32 : stdgo.GoUInt32) } : stdgo._internal.net.http.Http_T_http2Setting.T_http2Setting)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.net.http.Http_T_http2Setting.T_http2Setting)])) : stdgo.Slice<stdgo._internal.net.http.Http_T_http2Setting.T_http2Setting>);
        {
            var _max = (_t._maxFrameReadSize() : stdgo.GoUInt32);
            if (_max != ((0u32 : stdgo.GoUInt32))) {
                _initialSettings = (_initialSettings.__append__(({ id : (5 : stdgo._internal.net.http.Http_T_http2SettingID.T_http2SettingID), val : _max } : stdgo._internal.net.http.Http_T_http2Setting.T_http2Setting)));
            };
        };
        {
            var _max = (_t._maxHeaderListSize() : stdgo.GoUInt32);
            if (_max != ((0u32 : stdgo.GoUInt32))) {
                _initialSettings = (_initialSettings.__append__(({ id : (6 : stdgo._internal.net.http.Http_T_http2SettingID.T_http2SettingID), val : _max } : stdgo._internal.net.http.Http_T_http2Setting.T_http2Setting)));
            };
        };
        if (_maxHeaderTableSize != ((4096u32 : stdgo.GoUInt32))) {
            _initialSettings = (_initialSettings.__append__(({ id : (1 : stdgo._internal.net.http.Http_T_http2SettingID.T_http2SettingID), val : _maxHeaderTableSize } : stdgo._internal.net.http.Http_T_http2Setting.T_http2Setting)));
        };
        _cc._bw.write(stdgo._internal.net.http.Http__http2clientPreface._http2clientPreface);
        _cc._fr.writeSettings(...(_initialSettings : Array<stdgo._internal.net.http.Http_T_http2Setting.T_http2Setting>));
        _cc._fr.writeWindowUpdate((0u32 : stdgo.GoUInt32), (1073741824u32 : stdgo.GoUInt32));
        _cc._inflow._init((1073807359 : stdgo.GoInt32));
        _cc._bw.flush();
        if (_cc._werr != null) {
            _cc.close();
            return { _0 : null, _1 : _cc._werr };
        };
        stdgo.Go.routine(() -> _cc._readLoop());
        return { _0 : _cc, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function newClientConn( _t:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport>, _c:stdgo._internal.net.Net_Conn.Conn):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>; var _1 : stdgo.Error; } {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport> = _t;
        return _t._newClientConn(_c, _t._disableKeepAlives());
    }
    @:keep
    static public function _maxEncoderHeaderTableSize( _t:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport>):stdgo.GoUInt32 {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport> = _t;
        {
            var _v = (_t.maxEncoderHeaderTableSize : stdgo.GoUInt32);
            if ((_v > (0u32 : stdgo.GoUInt32) : Bool)) {
                return _v;
            };
        };
        return (4096u32 : stdgo.GoUInt32);
    }
    @:keep
    static public function _maxDecoderHeaderTableSize( _t:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport>):stdgo.GoUInt32 {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport> = _t;
        {
            var _v = (_t.maxDecoderHeaderTableSize : stdgo.GoUInt32);
            if ((_v > (0u32 : stdgo.GoUInt32) : Bool)) {
                return _v;
            };
        };
        return (4096u32 : stdgo.GoUInt32);
    }
    @:keep
    static public function _expectContinueTimeout( _t:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport>):stdgo._internal.time.Time_Duration.Duration {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport> = _t;
        if (_t._t1 == null || (_t._t1 : Dynamic).__nil__) {
            return (0i64 : stdgo._internal.time.Time_Duration.Duration);
        };
        return _t._t1.expectContinueTimeout;
    }
    @:keep
    static public function _disableKeepAlives( _t:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport>):Bool {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport> = _t;
        return (((_t._t1 != null) && ((_t._t1 : Dynamic).__nil__ == null || !(_t._t1 : Dynamic).__nil__)) && _t._t1.disableKeepAlives : Bool);
    }
    @:keep
    static public function _dialTLS( _t:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport>, _ctx:stdgo._internal.context.Context_Context.Context, _network:stdgo.GoString, _addr:stdgo.GoString, _tlsCfg:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>):{ var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; } {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport> = _t;
        if (_t.dialTLSContext != null) {
            return _t.dialTLSContext(_ctx, _network?.__copy__(), _addr?.__copy__(), _tlsCfg);
        } else if (_t.dialTLS != null) {
            return _t.dialTLS(_network?.__copy__(), _addr?.__copy__(), _tlsCfg);
        };
        var __tmp__ = _t._dialTLSWithContext(_ctx, _network?.__copy__(), _addr?.__copy__(), _tlsCfg), _tlsCn:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo._internal.net.Net_Conn.Conn), _1 : _err };
        };
        var _state = (_tlsCn.connectionState()?.__copy__() : stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState);
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
    static public function _newTLSConfig( _t:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport>, _host:stdgo.GoString):stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config> {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport> = _t;
        var _cfg = (stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_Config.Config)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>);
        if (_t.tlsclientConfig != null && ((_t.tlsclientConfig : Dynamic).__nil__ == null || !(_t.tlsclientConfig : Dynamic).__nil__)) {
            {
                var __tmp__ = (_t.tlsclientConfig.clone() : stdgo._internal.crypto.tls.Tls_Config.Config)?.__copy__();
                (_cfg : stdgo._internal.crypto.tls.Tls_Config.Config).rand = __tmp__.rand;
                (_cfg : stdgo._internal.crypto.tls.Tls_Config.Config).time = __tmp__.time;
                (_cfg : stdgo._internal.crypto.tls.Tls_Config.Config).certificates = __tmp__.certificates;
                (_cfg : stdgo._internal.crypto.tls.Tls_Config.Config).nameToCertificate = __tmp__.nameToCertificate;
                (_cfg : stdgo._internal.crypto.tls.Tls_Config.Config).getCertificate = __tmp__.getCertificate;
                (_cfg : stdgo._internal.crypto.tls.Tls_Config.Config).getClientCertificate = __tmp__.getClientCertificate;
                (_cfg : stdgo._internal.crypto.tls.Tls_Config.Config).getConfigForClient = __tmp__.getConfigForClient;
                (_cfg : stdgo._internal.crypto.tls.Tls_Config.Config).verifyPeerCertificate = __tmp__.verifyPeerCertificate;
                (_cfg : stdgo._internal.crypto.tls.Tls_Config.Config).verifyConnection = __tmp__.verifyConnection;
                (_cfg : stdgo._internal.crypto.tls.Tls_Config.Config).rootCAs = __tmp__.rootCAs;
                (_cfg : stdgo._internal.crypto.tls.Tls_Config.Config).nextProtos = __tmp__.nextProtos;
                (_cfg : stdgo._internal.crypto.tls.Tls_Config.Config).serverName = __tmp__.serverName;
                (_cfg : stdgo._internal.crypto.tls.Tls_Config.Config).clientAuth = __tmp__.clientAuth;
                (_cfg : stdgo._internal.crypto.tls.Tls_Config.Config).clientCAs = __tmp__.clientCAs;
                (_cfg : stdgo._internal.crypto.tls.Tls_Config.Config).insecureSkipVerify = __tmp__.insecureSkipVerify;
                (_cfg : stdgo._internal.crypto.tls.Tls_Config.Config).cipherSuites = __tmp__.cipherSuites;
                (_cfg : stdgo._internal.crypto.tls.Tls_Config.Config).preferServerCipherSuites = __tmp__.preferServerCipherSuites;
                (_cfg : stdgo._internal.crypto.tls.Tls_Config.Config).sessionTicketsDisabled = __tmp__.sessionTicketsDisabled;
                (_cfg : stdgo._internal.crypto.tls.Tls_Config.Config).sessionTicketKey = __tmp__.sessionTicketKey;
                (_cfg : stdgo._internal.crypto.tls.Tls_Config.Config).clientSessionCache = __tmp__.clientSessionCache;
                (_cfg : stdgo._internal.crypto.tls.Tls_Config.Config).unwrapSession = __tmp__.unwrapSession;
                (_cfg : stdgo._internal.crypto.tls.Tls_Config.Config).wrapSession = __tmp__.wrapSession;
                (_cfg : stdgo._internal.crypto.tls.Tls_Config.Config).minVersion = __tmp__.minVersion;
                (_cfg : stdgo._internal.crypto.tls.Tls_Config.Config).maxVersion = __tmp__.maxVersion;
                (_cfg : stdgo._internal.crypto.tls.Tls_Config.Config).curvePreferences = __tmp__.curvePreferences;
                (_cfg : stdgo._internal.crypto.tls.Tls_Config.Config).dynamicRecordSizingDisabled = __tmp__.dynamicRecordSizingDisabled;
                (_cfg : stdgo._internal.crypto.tls.Tls_Config.Config).renegotiation = __tmp__.renegotiation;
                (_cfg : stdgo._internal.crypto.tls.Tls_Config.Config).keyLogWriter = __tmp__.keyLogWriter;
                (_cfg : stdgo._internal.crypto.tls.Tls_Config.Config)._mutex = __tmp__._mutex;
                (_cfg : stdgo._internal.crypto.tls.Tls_Config.Config)._sessionTicketKeys = __tmp__._sessionTicketKeys;
                (_cfg : stdgo._internal.crypto.tls.Tls_Config.Config)._autoSessionTicketKeys = __tmp__._autoSessionTicketKeys;
            };
        };
        if (!stdgo._internal.net.http.Http__http2strSliceContains._http2strSliceContains(_cfg.nextProtos, ("h2" : stdgo.GoString))) {
            _cfg.nextProtos = ((new stdgo.Slice<stdgo.GoString>(1, 1, ...[("h2" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>).__append__(...(_cfg.nextProtos : Array<stdgo.GoString>)));
        };
        if (_cfg.serverName == (stdgo.Go.str())) {
            _cfg.serverName = _host?.__copy__();
        };
        return _cfg;
    }
    @:keep
    static public function _dialClientConn( _t:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport>, _ctx:stdgo._internal.context.Context_Context.Context, _addr:stdgo.GoString, _singleUse:Bool):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>; var _1 : stdgo.Error; } {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport> = _t;
        var __tmp__ = stdgo._internal.net.Net_splitHostPort.splitHostPort(_addr?.__copy__()), _host:stdgo.GoString = __tmp__._0, __32052:stdgo.GoString = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        var __tmp__ = _t._dialTLS(_ctx, ("tcp" : stdgo.GoString), _addr?.__copy__(), _t._newTLSConfig(_host?.__copy__())), _tconn:stdgo._internal.net.Net_Conn.Conn = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        return _t._newClientConn(_tconn, _singleUse);
    }
    @:keep
    static public function closeIdleConnections( _t:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport>):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport> = _t;
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_t._connPool()) : stdgo._internal.net.http.Http_T_http2clientConnPoolIdleCloser.T_http2clientConnPoolIdleCloser)) : stdgo._internal.net.http.Http_T_http2clientConnPoolIdleCloser.T_http2clientConnPoolIdleCloser), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.net.http.Http_T_http2clientConnPoolIdleCloser.T_http2clientConnPoolIdleCloser), _1 : false };
            }, _cp = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                _cp._closeIdleConnections();
            };
        };
    }
    @:keep
    static public function roundTripOpt( _t:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport>, _req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, _opt:stdgo._internal.net.http.Http_T_http2RoundTripOpt.T_http2RoundTripOpt):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport> = _t;
        if (!(((_req.url.scheme == ("https" : stdgo.GoString)) || (((_req.url.scheme == ("http" : stdgo.GoString)) && _t.allowHTTP : Bool)) : Bool))) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("http2: unsupported scheme" : stdgo.GoString)) };
        };
        var _addr = (stdgo._internal.net.http.Http__http2authorityAddr._http2authorityAddr(_req.url.scheme?.__copy__(), _req.url.host?.__copy__())?.__copy__() : stdgo.GoString);
        {
            var _retry = (0 : stdgo.GoInt);
            while (true) {
                var __tmp__ = _t._connPool().getClientConn(_req, _addr.__copy__()), _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
if (_err != null) {
                    _t._vlogf(("http2: Transport failed to get client conn for %s: %v" : stdgo.GoString), stdgo.Go.toInterface(_addr), stdgo.Go.toInterface(_err));
                    return { _0 : null, _1 : _err };
                };
var _reused = (!stdgo._internal.sync.atomic_.Atomic__compareAndSwapUint32.compareAndSwapUint32(stdgo.Go.pointer(_cc._reused), (0u32 : stdgo.GoUInt32), (1u32 : stdgo.GoUInt32)) : Bool);
stdgo._internal.net.http.Http__http2traceGotConn._http2traceGotConn(_req, _cc, _reused);
var __tmp__ = _cc.roundTrip(_req), _res:stdgo.Ref<stdgo._internal.net.http.Http_Response.Response> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
if (((_err != null) && (_retry <= (6 : stdgo.GoInt) : Bool) : Bool)) {
                    var _roundTripErr = (_err : stdgo.Error);
                    {
                        {
                            var __tmp__ = stdgo._internal.net.http.Http__http2shouldRetryRequest._http2shouldRetryRequest(_req, _err);
                            _req = __tmp__._0;
                            _err = __tmp__._1;
                        };
                        if (_err == null) {
                            if (_retry == ((0 : stdgo.GoInt))) {
                                _t._vlogf(("RoundTrip retrying after failure: %v" : stdgo.GoString), stdgo.Go.toInterface(_roundTripErr));
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
                                    if (_timer.c != null && _timer.c.__isGet__()) {
                                        __select__ = false;
                                        {
                                            _timer.c.__get__();
                                            {
                                                _t._vlogf(("RoundTrip retrying after failure: %v" : stdgo.GoString), stdgo.Go.toInterface(_roundTripErr));
                                                continue;
                                            };
                                        };
                                    } else if (_req.context().done() != null && _req.context().done().__isGet__()) {
                                        __select__ = false;
                                        {
                                            _req.context().done().__get__();
                                            {
                                                _timer.stop();
                                                _err = _req.context().err();
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
                    _t._vlogf(("RoundTrip failure: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                    return { _0 : null, _1 : _err };
                };
return { _0 : _res, _1 : (null : stdgo.Error) };
                _retry++;
            };
        };
    }
    @:keep
    static public function roundTrip( _t:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport>, _req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport> = _t;
        return _t.roundTripOpt(_req, (new stdgo._internal.net.http.Http_T_http2RoundTripOpt.T_http2RoundTripOpt() : stdgo._internal.net.http.Http_T_http2RoundTripOpt.T_http2RoundTripOpt));
    }
    @:keep
    static public function _initConnPool( _t:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport>):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport> = _t;
        if (_t.connPool != null) {
            _t._connPoolOrDef = _t.connPool;
        } else {
            _t._connPoolOrDef = stdgo.Go.asInterface((stdgo.Go.setRef(({ _t : _t } : stdgo._internal.net.http.Http_T_http2clientConnPool.T_http2clientConnPool)) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientConnPool.T_http2clientConnPool>));
        };
    }
    @:keep
    static public function _connPool( _t:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport>):stdgo._internal.net.http.Http_T_http2ClientConnPool.T_http2ClientConnPool {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport> = _t;
        _t._connPoolOnce.do_(_t._initConnPool);
        return _t._connPoolOrDef;
    }
    @:keep
    static public function _pingTimeout( _t:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport>):stdgo._internal.time.Time_Duration.Duration {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport> = _t;
        if (_t.pingTimeout == ((0i64 : stdgo._internal.time.Time_Duration.Duration))) {
            return (15000000000i64 : stdgo._internal.time.Time_Duration.Duration);
        };
        return _t.pingTimeout;
    }
    @:keep
    static public function _disableCompression( _t:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport>):Bool {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport> = _t;
        return (_t.disableCompression || ((((_t._t1 != null) && ((_t._t1 : Dynamic).__nil__ == null || !(_t._t1 : Dynamic).__nil__)) && _t._t1.disableCompression : Bool)) : Bool);
    }
    @:keep
    static public function _maxFrameReadSize( _t:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport>):stdgo.GoUInt32 {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport> = _t;
        if (_t.maxReadFrameSize == ((0u32 : stdgo.GoUInt32))) {
            return (0u32 : stdgo.GoUInt32);
        };
        if ((_t.maxReadFrameSize < (16384u32 : stdgo.GoUInt32) : Bool)) {
            return (16384u32 : stdgo.GoUInt32);
        };
        if ((_t.maxReadFrameSize > (16777215u32 : stdgo.GoUInt32) : Bool)) {
            return (16777215u32 : stdgo.GoUInt32);
        };
        return _t.maxReadFrameSize;
    }
    @:keep
    static public function _maxHeaderListSize( _t:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport>):stdgo.GoUInt32 {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport> = _t;
        if (_t.maxHeaderListSize == ((0u32 : stdgo.GoUInt32))) {
            return (10485760u32 : stdgo.GoUInt32);
        };
        if (_t.maxHeaderListSize == ((-1u32 : stdgo.GoUInt32))) {
            return (0u32 : stdgo.GoUInt32);
        };
        return _t.maxHeaderListSize;
    }
    @:keep
    static public function _dialTLSWithContext( _t:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport>, _ctx:stdgo._internal.context.Context_Context.Context, _network:stdgo.GoString, _addr:stdgo.GoString, _cfg:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>; var _1 : stdgo.Error; } {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport> = _t;
        var _dialer = (stdgo.Go.setRef(({ config : _cfg } : stdgo._internal.crypto.tls.Tls_Dialer.Dialer)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Dialer.Dialer>);
        var __tmp__ = _dialer.dialContext(_ctx, _network?.__copy__(), _addr?.__copy__()), _cn:stdgo._internal.net.Net_Conn.Conn = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        var _tlsCn = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_cn) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>);
        return { _0 : _tlsCn, _1 : (null : stdgo.Error) };
    }
}
