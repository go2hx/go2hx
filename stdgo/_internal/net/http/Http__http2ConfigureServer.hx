package stdgo._internal.net.http;
function _http2ConfigureServer(_s:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>, _conf:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Server.T_http2Server>):stdgo.Error {
        if (_s == null || (_s : Dynamic).__nil__) {
            throw stdgo.Go.toInterface(("nil *http.Server" : stdgo.GoString));
        };
        if (_conf == null || (_conf : Dynamic).__nil__) {
            _conf = (stdgo.Go.setRef(({} : stdgo._internal.net.http.Http_T_http2Server.T_http2Server)) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2Server.T_http2Server>);
        };
        _conf._state = (stdgo.Go.setRef(({ _activeConns : ({
            final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn>, stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>();
            {};
            cast x;
        } : stdgo.GoMap<stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn>, stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>) } : stdgo._internal.net.http.Http_T_http2serverInternalState.T_http2serverInternalState)) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverInternalState.T_http2serverInternalState>);
        {
            var __0 = _s, __1 = _conf;
var _h2 = __1, _h1 = __0;
            if (_h2.idleTimeout == ((0i64 : stdgo._internal.time.Time_Duration.Duration))) {
                if (_h1.idleTimeout != ((0i64 : stdgo._internal.time.Time_Duration.Duration))) {
                    _h2.idleTimeout = _h1.idleTimeout;
                } else {
                    _h2.idleTimeout = _h1.readTimeout;
                };
            };
        };
        _s.registerOnShutdown(_conf._state._startGracefulShutdown);
        if (_s.tlsconfig == null || (_s.tlsconfig : Dynamic).__nil__) {
            _s.tlsconfig = (stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_Config.Config)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>);
        } else if (((_s.tlsconfig.cipherSuites != null) && (_s.tlsconfig.minVersion < (772 : stdgo.GoUInt16) : Bool) : Bool)) {
            var _haveRequired = (false : Bool);
            for (__264 => _cs in _s.tlsconfig.cipherSuites) {
                {
                    final __value__ = _cs;
                    if (__value__ == ((49199 : stdgo.GoUInt16)) || __value__ == ((49195 : stdgo.GoUInt16))) {
                        _haveRequired = true;
                    };
                };
            };
            if (!_haveRequired) {
                return stdgo._internal.fmt.Fmt_errorf.errorf(("http2: TLSConfig.CipherSuites is missing an HTTP/2-required AES_128_GCM_SHA256 cipher (need at least one of TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 or TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256)" : stdgo.GoString));
            };
        };
        _s.tlsconfig.preferServerCipherSuites = true;
        if (!stdgo._internal.net.http.Http__http2strSliceContains._http2strSliceContains(_s.tlsconfig.nextProtos, ("h2" : stdgo.GoString))) {
            _s.tlsconfig.nextProtos = (_s.tlsconfig.nextProtos.__append__(("h2" : stdgo.GoString)));
        };
        if (!stdgo._internal.net.http.Http__http2strSliceContains._http2strSliceContains(_s.tlsconfig.nextProtos, ("http/1.1" : stdgo.GoString))) {
            _s.tlsconfig.nextProtos = (_s.tlsconfig.nextProtos.__append__(("http/1.1" : stdgo.GoString)));
        };
        if (_s.tlsnextProto == null) {
            _s.tlsnextProto = ({
                final x = new stdgo.GoMap.GoStringMap<(stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>, stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>, stdgo._internal.net.http.Http_Handler.Handler) -> Void>();
                x.__defaultValue__ = () -> null;
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, (stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>, stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>, stdgo._internal.net.http.Http_Handler.Handler) -> Void>);
        };
        var _protoHandler = function(_hs:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>, _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>, _h:stdgo._internal.net.http.Http_Handler.Handler):Void {
            if (stdgo._internal.net.http.Http__http2testHookOnConn._http2testHookOnConn != null) {
                stdgo._internal.net.http.Http__http2testHookOnConn._http2testHookOnConn();
            };
            var _ctx:stdgo._internal.context.Context_Context.Context = (null : stdgo._internal.context.Context_Context.Context);
            {};
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_h) : stdgo._internal.net.http.Http_T__http2ConfigureServer___localname___baseContexter_139945.T__http2ConfigureServer___localname___baseContexter_139945)) : stdgo._internal.net.http.Http_T__http2ConfigureServer___localname___baseContexter_139945.T__http2ConfigureServer___localname___baseContexter_139945), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo._internal.net.http.Http_T__http2ConfigureServer___localname___baseContexter_139945.T__http2ConfigureServer___localname___baseContexter_139945), _1 : false };
                }, _bc = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    _ctx = _bc.baseContext();
                };
            };
            _conf.serveConn(stdgo.Go.asInterface(_c), (stdgo.Go.setRef(({ context : _ctx, handler : _h, baseConfig : _hs } : stdgo._internal.net.http.Http_T_http2ServeConnOpts.T_http2ServeConnOpts)) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2ServeConnOpts.T_http2ServeConnOpts>));
        };
        _s.tlsnextProto[("h2" : stdgo.GoString)] = _protoHandler;
        return (null : stdgo.Error);
    }
