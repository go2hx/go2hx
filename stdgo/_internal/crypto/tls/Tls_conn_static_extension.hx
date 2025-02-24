package stdgo._internal.crypto.tls;
@:keep @:allow(stdgo._internal.crypto.tls.Tls.Conn_asInterface) class Conn_static_extension {
    @:keep
    @:tdfield
    static public function _sessionState( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_sessionstate.SessionState>; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        return { _0 : (stdgo.Go.setRef(({ _version : (@:checkr _c ?? throw "null pointer dereference")._vers, _cipherSuite : (@:checkr _c ?? throw "null pointer dereference")._cipherSuite, _createdAt : (@:check2r (@:checkr _c ?? throw "null pointer dereference")._config._time().unix() : stdgo.GoUInt64), _alpnProtocol : (@:checkr _c ?? throw "null pointer dereference")._clientProtocol?.__copy__(), _peerCertificates : (@:checkr _c ?? throw "null pointer dereference")._peerCertificates, _activeCertHandles : (@:checkr _c ?? throw "null pointer dereference")._activeCertHandles, _ocspResponse : (@:checkr _c ?? throw "null pointer dereference")._ocspResponse, _scts : (@:checkr _c ?? throw "null pointer dereference")._scts, _isClient : (@:checkr _c ?? throw "null pointer dereference")._isClient, _extMasterSecret : (@:checkr _c ?? throw "null pointer dereference")._extMasterSecret, _verifiedChains : (@:checkr _c ?? throw "null pointer dereference")._verifiedChains } : stdgo._internal.crypto.tls.Tls_sessionstate.SessionState)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_sessionstate.SessionState>), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _quicWaitForSignal( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            @:check2 (@:checkr _c ?? throw "null pointer dereference")._handshakeMutex.unlock();
            {
                final __f__ = @:check2 (@:checkr _c ?? throw "null pointer dereference")._handshakeMutex.lock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            {
                var __select__ = true;
                while (__select__) {
                    if ((@:checkr (@:checkr _c ?? throw "null pointer dereference")._quic ?? throw "null pointer dereference")._blockedc != null && (@:checkr (@:checkr _c ?? throw "null pointer dereference")._quic ?? throw "null pointer dereference")._blockedc.__isSend__()) {
                        __select__ = false;
                        {
                            (@:checkr (@:checkr _c ?? throw "null pointer dereference")._quic ?? throw "null pointer dereference")._blockedc.__send__((new stdgo._internal.crypto.tls.Tls_t_endofearlydatamsg.T_endOfEarlyDataMsg() : stdgo._internal.crypto.tls.Tls_t_endofearlydatamsg.T_endOfEarlyDataMsg));
                            {};
                        };
                    } else if ((@:checkr (@:checkr _c ?? throw "null pointer dereference")._quic ?? throw "null pointer dereference")._cancelc != null && (@:checkr (@:checkr _c ?? throw "null pointer dereference")._quic ?? throw "null pointer dereference")._cancelc.__isGet__()) {
                        __select__ = false;
                        {
                            (@:checkr (@:checkr _c ?? throw "null pointer dereference")._quic ?? throw "null pointer dereference")._cancelc.__get__();
                            {
                                {
                                    final __ret__:stdgo.Error = @:check2r _c._sendAlertLocked((0 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
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
            {
                var __select__ = true;
                while (__select__) {
                    if ((@:checkr (@:checkr _c ?? throw "null pointer dereference")._quic ?? throw "null pointer dereference")._signalc != null && (@:checkr (@:checkr _c ?? throw "null pointer dereference")._quic ?? throw "null pointer dereference")._signalc.__isSend__()) {
                        __select__ = false;
                        {
                            (@:checkr (@:checkr _c ?? throw "null pointer dereference")._quic ?? throw "null pointer dereference")._signalc.__send__((new stdgo._internal.crypto.tls.Tls_t_endofearlydatamsg.T_endOfEarlyDataMsg() : stdgo._internal.crypto.tls.Tls_t_endofearlydatamsg.T_endOfEarlyDataMsg));
                            {
                                @:check2 (@:checkr _c ?? throw "null pointer dereference")._hand.write((@:checkr (@:checkr _c ?? throw "null pointer dereference")._quic ?? throw "null pointer dereference")._readbuf);
                                (@:checkr (@:checkr _c ?? throw "null pointer dereference")._quic ?? throw "null pointer dereference")._readbuf = (null : stdgo.Slice<stdgo.GoUInt8>);
                            };
                        };
                    } else if ((@:checkr (@:checkr _c ?? throw "null pointer dereference")._quic ?? throw "null pointer dereference")._cancelc != null && (@:checkr (@:checkr _c ?? throw "null pointer dereference")._quic ?? throw "null pointer dereference")._cancelc.__isGet__()) {
                        __select__ = false;
                        {
                            (@:checkr (@:checkr _c ?? throw "null pointer dereference")._quic ?? throw "null pointer dereference")._cancelc.__get__();
                            {
                                {
                                    final __ret__:stdgo.Error = @:check2r _c._sendAlertLocked((0 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
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
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
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
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return (null : stdgo.Error);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _quicRejectedEarlyData( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        (@:checkr (@:checkr _c ?? throw "null pointer dereference")._quic ?? throw "null pointer dereference")._events = ((@:checkr (@:checkr _c ?? throw "null pointer dereference")._quic ?? throw "null pointer dereference")._events.__append__(({ kind : (6 : stdgo._internal.crypto.tls.Tls_quiceventkind.QUICEventKind) } : stdgo._internal.crypto.tls.Tls_quicevent.QUICEvent)));
    }
    @:keep
    @:tdfield
    static public function _quicHandshakeComplete( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        (@:checkr (@:checkr _c ?? throw "null pointer dereference")._quic ?? throw "null pointer dereference")._events = ((@:checkr (@:checkr _c ?? throw "null pointer dereference")._quic ?? throw "null pointer dereference")._events.__append__(({ kind : (7 : stdgo._internal.crypto.tls.Tls_quiceventkind.QUICEventKind) } : stdgo._internal.crypto.tls.Tls_quicevent.QUICEvent)));
    }
    @:keep
    @:tdfield
    static public function _quicGetTransportParameters( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        if ((@:checkr (@:checkr _c ?? throw "null pointer dereference")._quic ?? throw "null pointer dereference")._transportParams == null) {
            (@:checkr (@:checkr _c ?? throw "null pointer dereference")._quic ?? throw "null pointer dereference")._events = ((@:checkr (@:checkr _c ?? throw "null pointer dereference")._quic ?? throw "null pointer dereference")._events.__append__(({ kind : (5 : stdgo._internal.crypto.tls.Tls_quiceventkind.QUICEventKind) } : stdgo._internal.crypto.tls.Tls_quicevent.QUICEvent)));
        };
        while ((@:checkr (@:checkr _c ?? throw "null pointer dereference")._quic ?? throw "null pointer dereference")._transportParams == null) {
            {
                var _err = (@:check2r _c._quicWaitForSignal() : stdgo.Error);
                if (_err != null) {
                    return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
                };
            };
        };
        return { _0 : (@:checkr (@:checkr _c ?? throw "null pointer dereference")._quic ?? throw "null pointer dereference")._transportParams, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _quicSetTransportParameters( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>, _params:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        (@:checkr (@:checkr _c ?? throw "null pointer dereference")._quic ?? throw "null pointer dereference")._events = ((@:checkr (@:checkr _c ?? throw "null pointer dereference")._quic ?? throw "null pointer dereference")._events.__append__(({ kind : (4 : stdgo._internal.crypto.tls.Tls_quiceventkind.QUICEventKind), data : _params } : stdgo._internal.crypto.tls.Tls_quicevent.QUICEvent)));
    }
    @:keep
    @:tdfield
    static public function _quicWriteCryptoData( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>, _level:stdgo._internal.crypto.tls.Tls_quicencryptionlevel.QUICEncryptionLevel, _data:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        var _last:stdgo.Ref<stdgo._internal.crypto.tls.Tls_quicevent.QUICEvent> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_quicevent.QUICEvent>);
        if ((((@:checkr (@:checkr _c ?? throw "null pointer dereference")._quic ?? throw "null pointer dereference")._events.length) > (0 : stdgo.GoInt) : Bool)) {
            _last = (stdgo.Go.setRef((@:checkr (@:checkr _c ?? throw "null pointer dereference")._quic ?? throw "null pointer dereference")._events[(((@:checkr (@:checkr _c ?? throw "null pointer dereference")._quic ?? throw "null pointer dereference")._events.length) - (1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_quicevent.QUICEvent>);
        };
        if ((((_last == null || (_last : Dynamic).__nil__) || (@:checkr _last ?? throw "null pointer dereference").kind != ((3 : stdgo._internal.crypto.tls.Tls_quiceventkind.QUICEventKind)) : Bool) || ((@:checkr _last ?? throw "null pointer dereference").level != _level) : Bool)) {
            (@:checkr (@:checkr _c ?? throw "null pointer dereference")._quic ?? throw "null pointer dereference")._events = ((@:checkr (@:checkr _c ?? throw "null pointer dereference")._quic ?? throw "null pointer dereference")._events.__append__(({ kind : (3 : stdgo._internal.crypto.tls.Tls_quiceventkind.QUICEventKind), level : _level } : stdgo._internal.crypto.tls.Tls_quicevent.QUICEvent)));
            _last = (stdgo.Go.setRef((@:checkr (@:checkr _c ?? throw "null pointer dereference")._quic ?? throw "null pointer dereference")._events[(((@:checkr (@:checkr _c ?? throw "null pointer dereference")._quic ?? throw "null pointer dereference")._events.length) - (1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_quicevent.QUICEvent>);
        };
        (@:checkr _last ?? throw "null pointer dereference").data = ((@:checkr _last ?? throw "null pointer dereference").data.__append__(...(_data : Array<stdgo.GoUInt8>)));
    }
    @:keep
    @:tdfield
    static public function _quicSetWriteSecret( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>, _level:stdgo._internal.crypto.tls.Tls_quicencryptionlevel.QUICEncryptionLevel, _suite:stdgo.GoUInt16, _secret:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        (@:checkr (@:checkr _c ?? throw "null pointer dereference")._quic ?? throw "null pointer dereference")._events = ((@:checkr (@:checkr _c ?? throw "null pointer dereference")._quic ?? throw "null pointer dereference")._events.__append__(({ kind : (2 : stdgo._internal.crypto.tls.Tls_quiceventkind.QUICEventKind), level : _level, suite : _suite, data : _secret } : stdgo._internal.crypto.tls.Tls_quicevent.QUICEvent)));
    }
    @:keep
    @:tdfield
    static public function _quicSetReadSecret( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>, _level:stdgo._internal.crypto.tls.Tls_quicencryptionlevel.QUICEncryptionLevel, _suite:stdgo.GoUInt16, _secret:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        (@:checkr (@:checkr _c ?? throw "null pointer dereference")._quic ?? throw "null pointer dereference")._events = ((@:checkr (@:checkr _c ?? throw "null pointer dereference")._quic ?? throw "null pointer dereference")._events.__append__(({ kind : (1 : stdgo._internal.crypto.tls.Tls_quiceventkind.QUICEventKind), level : _level, suite : _suite, data : _secret } : stdgo._internal.crypto.tls.Tls_quicevent.QUICEvent)));
    }
    @:keep
    @:tdfield
    static public function _quicReadHandshakeBytes( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>, _n:stdgo.GoInt):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        while ((@:check2 (@:checkr _c ?? throw "null pointer dereference")._hand.len() < _n : Bool)) {
            {
                var _err = (@:check2r _c._quicWaitForSignal() : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _sendSessionTicket( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>, _earlyData:Bool):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        var _suite = stdgo._internal.crypto.tls.Tls__ciphersuitetls13byid._cipherSuiteTLS13ByID((@:checkr _c ?? throw "null pointer dereference")._cipherSuite);
        if ((_suite == null || (_suite : Dynamic).__nil__)) {
            return stdgo._internal.errors.Errors_new_.new_(("tls: internal error: unknown cipher suite" : stdgo.GoString));
        };
        var _psk = @:check2r _suite._expandLabel((@:checkr _c ?? throw "null pointer dereference")._resumptionSecret, ("resumption" : stdgo.GoString), (null : stdgo.Slice<stdgo.GoUInt8>), (@:checkr _suite ?? throw "null pointer dereference")._hash.size());
        var _m = (stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_t_newsessionticketmsgtls13.T_newSessionTicketMsgTLS13)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_newsessionticketmsgtls13.T_newSessionTicketMsgTLS13>);
        var __tmp__ = @:check2r _c._sessionState(), _state:stdgo.Ref<stdgo._internal.crypto.tls.Tls_sessionstate.SessionState> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        (@:checkr _state ?? throw "null pointer dereference")._secret = _psk;
        (@:checkr _state ?? throw "null pointer dereference").earlyData = _earlyData;
        if ((@:checkr (@:checkr _c ?? throw "null pointer dereference")._config ?? throw "null pointer dereference").wrapSession != null) {
            {
                var __tmp__ = (@:checkr (@:checkr _c ?? throw "null pointer dereference")._config ?? throw "null pointer dereference").wrapSession(@:check2r _c._connectionStateLocked()?.__copy__(), _state);
                (@:checkr _m ?? throw "null pointer dereference")._label = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                return _err;
            };
        } else {
            var __tmp__ = @:check2r _state.bytes(), _stateBytes:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                @:check2r _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                return _err;
            };
            {
                var __tmp__ = @:check2r (@:checkr _c ?? throw "null pointer dereference")._config._encryptTicket(_stateBytes, (@:checkr _c ?? throw "null pointer dereference")._ticketKeys);
                (@:checkr _m ?? throw "null pointer dereference")._label = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                return _err;
            };
        };
        (@:checkr _m ?? throw "null pointer dereference")._lifetime = ((604800i64 : stdgo._internal.time.Time_duration.Duration) : stdgo.GoUInt32);
        var _ageAdd = (new stdgo.Slice<stdgo.GoUInt8>((4 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        {
            var __tmp__ = @:check2r (@:checkr _c ?? throw "null pointer dereference")._config._rand().read(_ageAdd);
            _err = @:tmpset0 __tmp__._1;
        };
        if (_err != null) {
            return _err;
        };
        (@:checkr _m ?? throw "null pointer dereference")._ageAdd = stdgo._internal.encoding.binary.Binary_littleendian.littleEndian.uint32(_ageAdd);
        if (_earlyData) {
            (@:checkr _m ?? throw "null pointer dereference")._maxEarlyData = (-1u32 : stdgo.GoUInt32);
        };
        {
            var __tmp__ = @:check2r _c._writeHandshakeRecord(stdgo.Go.asInterface(_m), (null : stdgo._internal.crypto.tls.Tls_t_transcripthash.T_transcriptHash)), __121:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _processCertsFromClient( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>, _certificate:stdgo._internal.crypto.tls.Tls_certificate.Certificate):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        var _certificates = _certificate.certificate;
        var _certs = (new stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>((_certificates.length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>);
        var _err:stdgo.Error = (null : stdgo.Error);
        for (_i => _asn1Data in _certificates) {
            {
                {
                    var __tmp__ = stdgo._internal.crypto.x509.X509_parsecertificate.parseCertificate(_asn1Data);
                    _certs[(_i : stdgo.GoInt)] = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                if (_err != null) {
                    @:check2r _c._sendAlert((42 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                    return stdgo._internal.errors.Errors_new_.new_((("tls: failed to parse client certificate: " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString)?.__copy__());
                };
            };
            if ((@:checkr _certs[(_i : stdgo.GoInt)] ?? throw "null pointer dereference").publicKeyAlgorithm == ((1 : stdgo._internal.crypto.x509.X509_publickeyalgorithm.PublicKeyAlgorithm))) {
                var _n = (@:check2r (@:checkr (stdgo.Go.typeAssert(((@:checkr _certs[(_i : stdgo.GoInt)] ?? throw "null pointer dereference").publicKey : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>)) : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>) ?? throw "null pointer dereference").n.bitLen() : stdgo.GoInt);
                {
                    var __tmp__ = stdgo._internal.crypto.tls.Tls__checkkeysize._checkKeySize(_n), _max:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (!_ok) {
                        @:check2r _c._sendAlert((42 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                        return stdgo._internal.fmt.Fmt_errorf.errorf(("tls: client sent certificate containing RSA key larger than %d bits" : stdgo.GoString), stdgo.Go.toInterface(_max));
                    };
                };
            };
        };
        if (((_certs.length == (0 : stdgo.GoInt)) && stdgo._internal.crypto.tls.Tls__requiresclientcert._requiresClientCert((@:checkr (@:checkr _c ?? throw "null pointer dereference")._config ?? throw "null pointer dereference").clientAuth) : Bool)) {
            if ((@:checkr _c ?? throw "null pointer dereference")._vers == ((772 : stdgo.GoUInt16))) {
                @:check2r _c._sendAlert((116 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            } else {
                @:check2r _c._sendAlert((42 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            };
            return stdgo._internal.errors.Errors_new_.new_(("tls: client didn\'t provide a certificate" : stdgo.GoString));
        };
        if ((((@:checkr (@:checkr _c ?? throw "null pointer dereference")._config ?? throw "null pointer dereference").clientAuth >= (3 : stdgo._internal.crypto.tls.Tls_clientauthtype.ClientAuthType) : Bool) && ((_certs.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
            var _opts = ({ roots : (@:checkr (@:checkr _c ?? throw "null pointer dereference")._config ?? throw "null pointer dereference").clientCAs, currentTime : @:check2r (@:checkr _c ?? throw "null pointer dereference")._config._time()?.__copy__(), intermediates : stdgo._internal.crypto.x509.X509_newcertpool.newCertPool(), keyUsages : (new stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>(1, 1, ...[(2 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage)]).__setNumber32__() : stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>) } : stdgo._internal.crypto.x509.X509_verifyoptions.VerifyOptions);
            for (__113 => _cert in (_certs.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>)) {
                @:check2r _opts.intermediates.addCert(_cert);
            };
            var __tmp__ = @:check2r _certs[(0 : stdgo.GoInt)].verify(_opts?.__copy__()), _chains:stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                var _errCertificateInvalid:stdgo._internal.crypto.x509.X509_certificateinvaliderror.CertificateInvalidError = ({} : stdgo._internal.crypto.x509.X509_certificateinvaliderror.CertificateInvalidError);
                if (stdgo._internal.errors.Errors_as.as(_err, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.crypto.x509.X509_unknownauthorityerror.UnknownAuthorityError() : stdgo._internal.crypto.x509.X509_unknownauthorityerror.UnknownAuthorityError)) : stdgo.Ref<stdgo._internal.crypto.x509.X509_unknownauthorityerror.UnknownAuthorityError>))))) {
                    @:check2r _c._sendAlert((48 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                } else if ((stdgo._internal.errors.Errors_as.as(_err, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_errCertificateInvalid) : stdgo.Ref<stdgo._internal.crypto.x509.X509_certificateinvaliderror.CertificateInvalidError>)))) && (_errCertificateInvalid.reason == (1 : stdgo._internal.crypto.x509.X509_invalidreason.InvalidReason)) : Bool)) {
                    @:check2r _c._sendAlert((45 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                } else {
                    @:check2r _c._sendAlert((42 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                };
                return stdgo.Go.asInterface((stdgo.Go.setRef(({ unverifiedCertificates : _certs, err : _err } : stdgo._internal.crypto.tls.Tls_certificateverificationerror.CertificateVerificationError)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_certificateverificationerror.CertificateVerificationError>));
            };
            (@:checkr _c ?? throw "null pointer dereference")._verifiedChains = _chains;
        };
        (@:checkr _c ?? throw "null pointer dereference")._peerCertificates = _certs;
        (@:checkr _c ?? throw "null pointer dereference")._ocspResponse = _certificate.oCSPStaple;
        (@:checkr _c ?? throw "null pointer dereference")._scts = _certificate.signedCertificateTimestamps;
        if (((_certs.length) > (0 : stdgo.GoInt) : Bool)) {
            {
                final __type__ = (@:checkr _certs[(0 : stdgo.GoInt)] ?? throw "null pointer dereference").publicKey;
                if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_publickey.PublicKey>)) || stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>)) || stdgo.Go.typeEquals((__type__ : stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey))) {} else {
                    @:check2r _c._sendAlert((43 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("tls: client certificate contains an unsupported public key of type %T" : stdgo.GoString), (@:checkr _certs[(0 : stdgo.GoInt)] ?? throw "null pointer dereference").publicKey);
                };
            };
        };
        if ((@:checkr (@:checkr _c ?? throw "null pointer dereference")._config ?? throw "null pointer dereference").verifyPeerCertificate != null) {
            {
                var _err = ((@:checkr (@:checkr _c ?? throw "null pointer dereference")._config ?? throw "null pointer dereference").verifyPeerCertificate(_certificates, (@:checkr _c ?? throw "null pointer dereference")._verifiedChains) : stdgo.Error);
                if (_err != null) {
                    @:check2r _c._sendAlert((42 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                    return _err;
                };
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _readClientHello( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>, _ctx:stdgo._internal.context.Context_context.Context):{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthellomsg.T_clientHelloMsg>; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        var __tmp__ = @:check2r _c._readHandshake((null : stdgo._internal.crypto.tls.Tls_t_transcripthash.T_transcriptHash)), _msg:stdgo.AnyInterface = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_msg : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthellomsg.T_clientHelloMsg>)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthellomsg.T_clientHelloMsg>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthellomsg.T_clientHelloMsg>), _1 : false };
        }, _clientHello = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            @:check2r _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            return { _0 : null, _1 : stdgo._internal.crypto.tls.Tls__unexpectedmessageerror._unexpectedMessageError(stdgo.Go.toInterface(stdgo.Go.asInterface(_clientHello)), _msg) };
        };
        var _configForClient:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>);
        var _originalConfig = (@:checkr _c ?? throw "null pointer dereference")._config;
        if ((@:checkr (@:checkr _c ?? throw "null pointer dereference")._config ?? throw "null pointer dereference").getConfigForClient != null) {
            var _chi = stdgo._internal.crypto.tls.Tls__clienthelloinfo._clientHelloInfo(_ctx, _c, _clientHello);
            {
                {
                    var __tmp__ = (@:checkr (@:checkr _c ?? throw "null pointer dereference")._config ?? throw "null pointer dereference").getConfigForClient(_chi);
                    _configForClient = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                if (_err != null) {
                    @:check2r _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                    return { _0 : null, _1 : _err };
                } else if ((_configForClient != null && ((_configForClient : Dynamic).__nil__ == null || !(_configForClient : Dynamic).__nil__))) {
                    (@:checkr _c ?? throw "null pointer dereference")._config = _configForClient;
                };
            };
        };
        (@:checkr _c ?? throw "null pointer dereference")._ticketKeys = @:check2r _originalConfig._ticketKeys(_configForClient);
        var _clientVersions = (@:checkr _clientHello ?? throw "null pointer dereference")._supportedVersions;
        if (((@:checkr _clientHello ?? throw "null pointer dereference")._supportedVersions.length) == ((0 : stdgo.GoInt))) {
            _clientVersions = stdgo._internal.crypto.tls.Tls__supportedversionsfrommax._supportedVersionsFromMax((@:checkr _clientHello ?? throw "null pointer dereference")._vers);
        };
        {
            var __tmp__ = @:check2r (@:checkr _c ?? throw "null pointer dereference")._config._mutualVersion(false, _clientVersions);
            (@:checkr _c ?? throw "null pointer dereference")._vers = @:tmpset0 __tmp__._0;
            _ok = @:tmpset0 __tmp__._1;
        };
        if (!_ok) {
            @:check2r _c._sendAlert((70 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("tls: client offered only unsupported versions: %x" : stdgo.GoString), stdgo.Go.toInterface(_clientVersions)) };
        };
        (@:checkr _c ?? throw "null pointer dereference")._haveVers = true;
        (@:checkr _c ?? throw "null pointer dereference")._in._version = (@:checkr _c ?? throw "null pointer dereference")._vers;
        (@:checkr _c ?? throw "null pointer dereference")._out._version = (@:checkr _c ?? throw "null pointer dereference")._vers;
        return { _0 : _clientHello, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _serverHandshake( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>, _ctx:stdgo._internal.context.Context_context.Context):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        var __tmp__ = @:check2r _c._readClientHello(_ctx), _clientHello:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthellomsg.T_clientHelloMsg> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        if ((@:checkr _c ?? throw "null pointer dereference")._vers == ((772 : stdgo.GoUInt16))) {
            var _hs = ({ _c : _c, _ctx : _ctx, _clientHello : _clientHello } : stdgo._internal.crypto.tls.Tls_t_serverhandshakestatetls13.T_serverHandshakeStateTLS13);
            return @:check2 _hs._handshake();
        };
        var _hs = ({ _c : _c, _ctx : _ctx, _clientHello : _clientHello } : stdgo._internal.crypto.tls.Tls_t_serverhandshakestate.T_serverHandshakeState);
        return @:check2 _hs._handshake();
    }
    @:keep
    @:tdfield
    static public function _handleNewSessionTicket( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>, _msg:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_newsessionticketmsgtls13.T_newSessionTicketMsgTLS13>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        if (!(@:checkr _c ?? throw "null pointer dereference")._isClient) {
            @:check2r _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            return stdgo._internal.errors.Errors_new_.new_(("tls: received new session ticket from a client" : stdgo.GoString));
        };
        if (((@:checkr (@:checkr _c ?? throw "null pointer dereference")._config ?? throw "null pointer dereference").sessionTicketsDisabled || ((@:checkr (@:checkr _c ?? throw "null pointer dereference")._config ?? throw "null pointer dereference").clientSessionCache == null) : Bool)) {
            return (null : stdgo.Error);
        };
        if ((@:checkr _msg ?? throw "null pointer dereference")._lifetime == ((0u32 : stdgo.GoUInt32))) {
            return (null : stdgo.Error);
        };
        var _lifetime = (((@:checkr _msg ?? throw "null pointer dereference")._lifetime : stdgo._internal.time.Time_duration.Duration) * (1000000000i64 : stdgo._internal.time.Time_duration.Duration) : stdgo._internal.time.Time_duration.Duration);
        if ((_lifetime > (604800000000000i64 : stdgo._internal.time.Time_duration.Duration) : Bool)) {
            @:check2r _c._sendAlert((47 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            return stdgo._internal.errors.Errors_new_.new_(("tls: received a session ticket with invalid lifetime" : stdgo.GoString));
        };
        if (((((@:checkr _c ?? throw "null pointer dereference")._quic != null && (((@:checkr _c ?? throw "null pointer dereference")._quic : Dynamic).__nil__ == null || !((@:checkr _c ?? throw "null pointer dereference")._quic : Dynamic).__nil__)) && (@:checkr _msg ?? throw "null pointer dereference")._maxEarlyData != ((0u32 : stdgo.GoUInt32)) : Bool) && ((@:checkr _msg ?? throw "null pointer dereference")._maxEarlyData != (-1u32 : stdgo.GoUInt32)) : Bool)) {
            @:check2r _c._sendAlert((47 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            return stdgo._internal.errors.Errors_new_.new_(("tls: invalid early data for QUIC connection" : stdgo.GoString));
        };
        var _cipherSuite = stdgo._internal.crypto.tls.Tls__ciphersuitetls13byid._cipherSuiteTLS13ByID((@:checkr _c ?? throw "null pointer dereference")._cipherSuite);
        if (((_cipherSuite == null || (_cipherSuite : Dynamic).__nil__) || ((@:checkr _c ?? throw "null pointer dereference")._resumptionSecret == null) : Bool)) {
            return @:check2r _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
        };
        var _psk = @:check2r _cipherSuite._expandLabel((@:checkr _c ?? throw "null pointer dereference")._resumptionSecret, ("resumption" : stdgo.GoString), (@:checkr _msg ?? throw "null pointer dereference")._nonce, (@:checkr _cipherSuite ?? throw "null pointer dereference")._hash.size());
        var __tmp__ = @:check2r _c._sessionState(), _session:stdgo.Ref<stdgo._internal.crypto.tls.Tls_sessionstate.SessionState> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            @:check2r _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            return _err;
        };
        (@:checkr _session ?? throw "null pointer dereference")._secret = _psk;
        (@:checkr _session ?? throw "null pointer dereference")._useBy = (@:check2r (@:checkr _c ?? throw "null pointer dereference")._config._time().add(_lifetime).unix() : stdgo.GoUInt64);
        (@:checkr _session ?? throw "null pointer dereference")._ageAdd = (@:checkr _msg ?? throw "null pointer dereference")._ageAdd;
        (@:checkr _session ?? throw "null pointer dereference").earlyData = (((@:checkr _c ?? throw "null pointer dereference")._quic != null && (((@:checkr _c ?? throw "null pointer dereference")._quic : Dynamic).__nil__ == null || !((@:checkr _c ?? throw "null pointer dereference")._quic : Dynamic).__nil__)) && ((@:checkr _msg ?? throw "null pointer dereference")._maxEarlyData == (-1u32 : stdgo.GoUInt32)) : Bool);
        var _cs = (stdgo.Go.setRef(({ _ticket : (@:checkr _msg ?? throw "null pointer dereference")._label, _session : _session } : stdgo._internal.crypto.tls.Tls_clientsessionstate.ClientSessionState)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_clientsessionstate.ClientSessionState>);
        {
            var _cacheKey = (@:check2r _c._clientSessionCacheKey()?.__copy__() : stdgo.GoString);
            if (_cacheKey != ((stdgo.Go.str() : stdgo.GoString))) {
                (@:checkr (@:checkr _c ?? throw "null pointer dereference")._config ?? throw "null pointer dereference").clientSessionCache.put(_cacheKey?.__copy__(), _cs);
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _clientSessionCacheKey( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>):stdgo.GoString {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        if ((((@:checkr (@:checkr _c ?? throw "null pointer dereference")._config ?? throw "null pointer dereference").serverName.length) > (0 : stdgo.GoInt) : Bool)) {
            return (@:checkr (@:checkr _c ?? throw "null pointer dereference")._config ?? throw "null pointer dereference").serverName?.__copy__();
        };
        if ((@:checkr _c ?? throw "null pointer dereference")._conn != null) {
            return ((@:checkr _c ?? throw "null pointer dereference")._conn.remoteAddr().string() : stdgo.GoString)?.__copy__();
        };
        return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _getClientCertificate( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>, _cri:stdgo.Ref<stdgo._internal.crypto.tls.Tls_certificaterequestinfo.CertificateRequestInfo>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_certificate.Certificate>; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        if ((@:checkr (@:checkr _c ?? throw "null pointer dereference")._config ?? throw "null pointer dereference").getClientCertificate != null) {
            return (@:checkr (@:checkr _c ?? throw "null pointer dereference")._config ?? throw "null pointer dereference").getClientCertificate(_cri);
        };
        for (__89 => _chain in (@:checkr (@:checkr _c ?? throw "null pointer dereference")._config ?? throw "null pointer dereference").certificates) {
            {
                var _err = (@:check2r _cri.supportsCertificate((stdgo.Go.setRef(_chain) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_certificate.Certificate>)) : stdgo.Error);
                if (_err != null) {
                    continue;
                };
            };
            return { _0 : (stdgo.Go.setRef(_chain) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_certificate.Certificate>), _1 : (null : stdgo.Error) };
        };
        return { _0 : (stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_certificate.Certificate)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_certificate.Certificate>), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _verifyServerCertificate( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>, _certificates:stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        var _activeHandles = (new stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_activecert.T_activeCert>>((_certificates.length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_activecert.T_activeCert>>);
        var _certs = (new stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>((_certificates.length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>);
        for (_i => _asn1Data in _certificates) {
            var __tmp__ = @:check2r stdgo._internal.crypto.tls.Tls__globalcertcache._globalCertCache._newCert(_asn1Data), _cert:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_activecert.T_activeCert> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                @:check2r _c._sendAlert((42 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                return stdgo._internal.errors.Errors_new_.new_((("tls: failed to parse certificate from server: " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString)?.__copy__());
            };
            if ((@:checkr (@:checkr _cert ?? throw "null pointer dereference")._cert ?? throw "null pointer dereference").publicKeyAlgorithm == ((1 : stdgo._internal.crypto.x509.X509_publickeyalgorithm.PublicKeyAlgorithm))) {
                var _n = (@:check2r (@:checkr (stdgo.Go.typeAssert(((@:checkr (@:checkr _cert ?? throw "null pointer dereference")._cert ?? throw "null pointer dereference").publicKey : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>)) : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>) ?? throw "null pointer dereference").n.bitLen() : stdgo.GoInt);
                {
                    var __tmp__ = stdgo._internal.crypto.tls.Tls__checkkeysize._checkKeySize(_n), _max:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (!_ok) {
                        @:check2r _c._sendAlert((42 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                        return stdgo._internal.fmt.Fmt_errorf.errorf(("tls: server sent certificate containing RSA key larger than %d bits" : stdgo.GoString), stdgo.Go.toInterface(_max));
                    };
                };
            };
            _activeHandles[(_i : stdgo.GoInt)] = _cert;
            _certs[(_i : stdgo.GoInt)] = (@:checkr _cert ?? throw "null pointer dereference")._cert;
        };
        if (!(@:checkr (@:checkr _c ?? throw "null pointer dereference")._config ?? throw "null pointer dereference").insecureSkipVerify) {
            var _opts = ({ roots : (@:checkr (@:checkr _c ?? throw "null pointer dereference")._config ?? throw "null pointer dereference").rootCAs, currentTime : @:check2r (@:checkr _c ?? throw "null pointer dereference")._config._time()?.__copy__(), dNSName : (@:checkr (@:checkr _c ?? throw "null pointer dereference")._config ?? throw "null pointer dereference").serverName?.__copy__(), intermediates : stdgo._internal.crypto.x509.X509_newcertpool.newCertPool() } : stdgo._internal.crypto.x509.X509_verifyoptions.VerifyOptions);
            for (__113 => _cert in (_certs.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>)) {
                @:check2r _opts.intermediates.addCert(_cert);
            };
            var _err:stdgo.Error = (null : stdgo.Error);
            {
                var __tmp__ = @:check2r _certs[(0 : stdgo.GoInt)].verify(_opts?.__copy__());
                (@:checkr _c ?? throw "null pointer dereference")._verifiedChains = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                @:check2r _c._sendAlert((42 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                return stdgo.Go.asInterface((stdgo.Go.setRef(({ unverifiedCertificates : _certs, err : _err } : stdgo._internal.crypto.tls.Tls_certificateverificationerror.CertificateVerificationError)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_certificateverificationerror.CertificateVerificationError>));
            };
        };
        {
            final __type__ = (@:checkr _certs[(0 : stdgo.GoInt)] ?? throw "null pointer dereference").publicKey;
            {
                var __bool__ = true;
                while (__bool__) {
                    __bool__ = false;
                    if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>)) || stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_publickey.PublicKey>)) || stdgo.Go.typeEquals((__type__ : stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey))) {
                        break;
                    } else {
                        @:check2r _c._sendAlert((43 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                        return stdgo._internal.fmt.Fmt_errorf.errorf(("tls: server\'s certificate contains an unsupported type of public key: %T" : stdgo.GoString), (@:checkr _certs[(0 : stdgo.GoInt)] ?? throw "null pointer dereference").publicKey);
                    };
                    break;
                };
            };
        };
        (@:checkr _c ?? throw "null pointer dereference")._activeCertHandles = _activeHandles;
        (@:checkr _c ?? throw "null pointer dereference")._peerCertificates = _certs;
        if ((@:checkr (@:checkr _c ?? throw "null pointer dereference")._config ?? throw "null pointer dereference").verifyPeerCertificate != null) {
            {
                var _err = ((@:checkr (@:checkr _c ?? throw "null pointer dereference")._config ?? throw "null pointer dereference").verifyPeerCertificate(_certificates, (@:checkr _c ?? throw "null pointer dereference")._verifiedChains) : stdgo.Error);
                if (_err != null) {
                    @:check2r _c._sendAlert((42 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                    return _err;
                };
            };
        };
        if ((@:checkr (@:checkr _c ?? throw "null pointer dereference")._config ?? throw "null pointer dereference").verifyConnection != null) {
            {
                var _err = ((@:checkr (@:checkr _c ?? throw "null pointer dereference")._config ?? throw "null pointer dereference").verifyConnection(@:check2r _c._connectionStateLocked()?.__copy__()) : stdgo.Error);
                if (_err != null) {
                    @:check2r _c._sendAlert((42 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                    return _err;
                };
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _pickTLSVersion( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>, _serverHello:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhellomsg.T_serverHelloMsg>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        var _peerVersion = ((@:checkr _serverHello ?? throw "null pointer dereference")._vers : stdgo.GoUInt16);
        if ((@:checkr _serverHello ?? throw "null pointer dereference")._supportedVersion != ((0 : stdgo.GoUInt16))) {
            _peerVersion = (@:checkr _serverHello ?? throw "null pointer dereference")._supportedVersion;
        };
        var __tmp__ = @:check2r (@:checkr _c ?? throw "null pointer dereference")._config._mutualVersion(true, (new stdgo.Slice<stdgo.GoUInt16>(1, 1, ...[_peerVersion]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt16>)), _vers:stdgo.GoUInt16 = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            @:check2r _c._sendAlert((70 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            return stdgo._internal.fmt.Fmt_errorf.errorf(("tls: server selected unsupported protocol version %x" : stdgo.GoString), stdgo.Go.toInterface(_peerVersion));
        };
        (@:checkr _c ?? throw "null pointer dereference")._vers = _vers;
        (@:checkr _c ?? throw "null pointer dereference")._haveVers = true;
        (@:checkr _c ?? throw "null pointer dereference")._in._version = _vers;
        (@:checkr _c ?? throw "null pointer dereference")._out._version = _vers;
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _loadSession( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>, _hello:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthellomsg.T_clientHelloMsg>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_sessionstate.SessionState>; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Slice<stdgo.GoUInt8>; var _3 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        var _session = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_sessionstate.SessionState>), _earlySecret = (null : stdgo.Slice<stdgo.GoUInt8>), _binderKey = (null : stdgo.Slice<stdgo.GoUInt8>), _err = (null : stdgo.Error);
        if (((@:checkr (@:checkr _c ?? throw "null pointer dereference")._config ?? throw "null pointer dereference").sessionTicketsDisabled || ((@:checkr (@:checkr _c ?? throw "null pointer dereference")._config ?? throw "null pointer dereference").clientSessionCache == null) : Bool)) {
            return {
                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_sessionstate.SessionState>; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Slice<stdgo.GoUInt8>; var _3 : stdgo.Error; } = { _0 : null, _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : (null : stdgo.Slice<stdgo.GoUInt8>), _3 : (null : stdgo.Error) };
                _session = __tmp__._0;
                _earlySecret = __tmp__._1;
                _binderKey = __tmp__._2;
                _err = __tmp__._3;
                __tmp__;
            };
        };
        (@:checkr _hello ?? throw "null pointer dereference")._ticketSupported = true;
        if ((@:checkr _hello ?? throw "null pointer dereference")._supportedVersions[(0 : stdgo.GoInt)] == ((772 : stdgo.GoUInt16))) {
            (@:checkr _hello ?? throw "null pointer dereference")._pskModes = (new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(1 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        };
        if ((@:checkr _c ?? throw "null pointer dereference")._handshakes != ((0 : stdgo.GoInt))) {
            return {
                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_sessionstate.SessionState>; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Slice<stdgo.GoUInt8>; var _3 : stdgo.Error; } = { _0 : null, _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : (null : stdgo.Slice<stdgo.GoUInt8>), _3 : (null : stdgo.Error) };
                _session = __tmp__._0;
                _earlySecret = __tmp__._1;
                _binderKey = __tmp__._2;
                _err = __tmp__._3;
                __tmp__;
            };
        };
        var _cacheKey = (@:check2r _c._clientSessionCacheKey()?.__copy__() : stdgo.GoString);
        if (_cacheKey == ((stdgo.Go.str() : stdgo.GoString))) {
            return {
                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_sessionstate.SessionState>; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Slice<stdgo.GoUInt8>; var _3 : stdgo.Error; } = { _0 : null, _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : (null : stdgo.Slice<stdgo.GoUInt8>), _3 : (null : stdgo.Error) };
                _session = __tmp__._0;
                _earlySecret = __tmp__._1;
                _binderKey = __tmp__._2;
                _err = __tmp__._3;
                __tmp__;
            };
        };
        var __tmp__ = (@:checkr (@:checkr _c ?? throw "null pointer dereference")._config ?? throw "null pointer dereference").clientSessionCache.get(_cacheKey?.__copy__()), _cs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_clientsessionstate.ClientSessionState> = __tmp__._0, _ok:Bool = __tmp__._1;
        if ((!_ok || (_cs == null || (_cs : Dynamic).__nil__) : Bool)) {
            return {
                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_sessionstate.SessionState>; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Slice<stdgo.GoUInt8>; var _3 : stdgo.Error; } = { _0 : null, _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : (null : stdgo.Slice<stdgo.GoUInt8>), _3 : (null : stdgo.Error) };
                _session = __tmp__._0;
                _earlySecret = __tmp__._1;
                _binderKey = __tmp__._2;
                _err = __tmp__._3;
                __tmp__;
            };
        };
        _session = (@:checkr _cs ?? throw "null pointer dereference")._session;
        var _versOk = (false : Bool);
        for (__117 => _v in (@:checkr _hello ?? throw "null pointer dereference")._supportedVersions) {
            if (_v == ((@:checkr _session ?? throw "null pointer dereference")._version)) {
                _versOk = true;
                break;
            };
        };
        if (!_versOk) {
            return {
                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_sessionstate.SessionState>; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Slice<stdgo.GoUInt8>; var _3 : stdgo.Error; } = { _0 : null, _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : (null : stdgo.Slice<stdgo.GoUInt8>), _3 : (null : stdgo.Error) };
                _session = __tmp__._0;
                _earlySecret = __tmp__._1;
                _binderKey = __tmp__._2;
                _err = __tmp__._3;
                __tmp__;
            };
        };
        if (@:check2r (@:checkr _c ?? throw "null pointer dereference")._config._time().after((@:checkr (@:checkr _session ?? throw "null pointer dereference")._peerCertificates[(0 : stdgo.GoInt)] ?? throw "null pointer dereference").notAfter?.__copy__())) {
            (@:checkr (@:checkr _c ?? throw "null pointer dereference")._config ?? throw "null pointer dereference").clientSessionCache.put(_cacheKey?.__copy__(), null);
            return {
                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_sessionstate.SessionState>; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Slice<stdgo.GoUInt8>; var _3 : stdgo.Error; } = { _0 : null, _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : (null : stdgo.Slice<stdgo.GoUInt8>), _3 : (null : stdgo.Error) };
                _session = __tmp__._0;
                _earlySecret = __tmp__._1;
                _binderKey = __tmp__._2;
                _err = __tmp__._3;
                __tmp__;
            };
        };
        if (!(@:checkr (@:checkr _c ?? throw "null pointer dereference")._config ?? throw "null pointer dereference").insecureSkipVerify) {
            if (((@:checkr _session ?? throw "null pointer dereference")._verifiedChains.length) == ((0 : stdgo.GoInt))) {
                return {
                    final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_sessionstate.SessionState>; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Slice<stdgo.GoUInt8>; var _3 : stdgo.Error; } = { _0 : null, _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : (null : stdgo.Slice<stdgo.GoUInt8>), _3 : (null : stdgo.Error) };
                    _session = __tmp__._0;
                    _earlySecret = __tmp__._1;
                    _binderKey = __tmp__._2;
                    _err = __tmp__._3;
                    __tmp__;
                };
            };
            {
                var _err = (@:check2r (@:checkr _session ?? throw "null pointer dereference")._peerCertificates[(0 : stdgo.GoInt)].verifyHostname((@:checkr (@:checkr _c ?? throw "null pointer dereference")._config ?? throw "null pointer dereference").serverName?.__copy__()) : stdgo.Error);
                if (_err != null) {
                    return {
                        final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_sessionstate.SessionState>; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Slice<stdgo.GoUInt8>; var _3 : stdgo.Error; } = { _0 : null, _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : (null : stdgo.Slice<stdgo.GoUInt8>), _3 : (null : stdgo.Error) };
                        _session = __tmp__._0;
                        _earlySecret = __tmp__._1;
                        _binderKey = __tmp__._2;
                        _err = __tmp__._3;
                        __tmp__;
                    };
                };
            };
        };
        if ((@:checkr _session ?? throw "null pointer dereference")._version != ((772 : stdgo.GoUInt16))) {
            if ((stdgo._internal.crypto.tls.Tls__mutualciphersuite._mutualCipherSuite((@:checkr _hello ?? throw "null pointer dereference")._cipherSuites, (@:checkr _session ?? throw "null pointer dereference")._cipherSuite) == null || (stdgo._internal.crypto.tls.Tls__mutualciphersuite._mutualCipherSuite((@:checkr _hello ?? throw "null pointer dereference")._cipherSuites, (@:checkr _session ?? throw "null pointer dereference")._cipherSuite) : Dynamic).__nil__)) {
                return {
                    final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_sessionstate.SessionState>; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Slice<stdgo.GoUInt8>; var _3 : stdgo.Error; } = { _0 : null, _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : (null : stdgo.Slice<stdgo.GoUInt8>), _3 : (null : stdgo.Error) };
                    _session = __tmp__._0;
                    _earlySecret = __tmp__._1;
                    _binderKey = __tmp__._2;
                    _err = __tmp__._3;
                    __tmp__;
                };
            };
            (@:checkr _hello ?? throw "null pointer dereference")._sessionTicket = (@:checkr _cs ?? throw "null pointer dereference")._ticket;
            return { _0 : _session, _1 : _earlySecret, _2 : _binderKey, _3 : _err };
        };
        if (@:check2r (@:checkr _c ?? throw "null pointer dereference")._config._time().after(stdgo._internal.time.Time_unix.unix(((@:checkr _session ?? throw "null pointer dereference")._useBy : stdgo.GoInt64), (0i64 : stdgo.GoInt64))?.__copy__())) {
            (@:checkr (@:checkr _c ?? throw "null pointer dereference")._config ?? throw "null pointer dereference").clientSessionCache.put(_cacheKey?.__copy__(), null);
            return {
                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_sessionstate.SessionState>; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Slice<stdgo.GoUInt8>; var _3 : stdgo.Error; } = { _0 : null, _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : (null : stdgo.Slice<stdgo.GoUInt8>), _3 : (null : stdgo.Error) };
                _session = __tmp__._0;
                _earlySecret = __tmp__._1;
                _binderKey = __tmp__._2;
                _err = __tmp__._3;
                __tmp__;
            };
        };
        var _cipherSuite = stdgo._internal.crypto.tls.Tls__ciphersuitetls13byid._cipherSuiteTLS13ByID((@:checkr _session ?? throw "null pointer dereference")._cipherSuite);
        if ((_cipherSuite == null || (_cipherSuite : Dynamic).__nil__)) {
            return {
                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_sessionstate.SessionState>; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Slice<stdgo.GoUInt8>; var _3 : stdgo.Error; } = { _0 : null, _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : (null : stdgo.Slice<stdgo.GoUInt8>), _3 : (null : stdgo.Error) };
                _session = __tmp__._0;
                _earlySecret = __tmp__._1;
                _binderKey = __tmp__._2;
                _err = __tmp__._3;
                __tmp__;
            };
        };
        var _cipherSuiteOk = (false : Bool);
        for (__154 => _offeredID in (@:checkr _hello ?? throw "null pointer dereference")._cipherSuites) {
            var _offeredSuite = stdgo._internal.crypto.tls.Tls__ciphersuitetls13byid._cipherSuiteTLS13ByID(_offeredID);
            if (((_offeredSuite != null && ((_offeredSuite : Dynamic).__nil__ == null || !(_offeredSuite : Dynamic).__nil__)) && ((@:checkr _offeredSuite ?? throw "null pointer dereference")._hash == (@:checkr _cipherSuite ?? throw "null pointer dereference")._hash) : Bool)) {
                _cipherSuiteOk = true;
                break;
            };
        };
        if (!_cipherSuiteOk) {
            return {
                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_sessionstate.SessionState>; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Slice<stdgo.GoUInt8>; var _3 : stdgo.Error; } = { _0 : null, _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : (null : stdgo.Slice<stdgo.GoUInt8>), _3 : (null : stdgo.Error) };
                _session = __tmp__._0;
                _earlySecret = __tmp__._1;
                _binderKey = __tmp__._2;
                _err = __tmp__._3;
                __tmp__;
            };
        };
        if ((((@:checkr _c ?? throw "null pointer dereference")._quic != null && (((@:checkr _c ?? throw "null pointer dereference")._quic : Dynamic).__nil__ == null || !((@:checkr _c ?? throw "null pointer dereference")._quic : Dynamic).__nil__)) && (@:checkr _session ?? throw "null pointer dereference").earlyData : Bool)) {
            if ((stdgo._internal.crypto.tls.Tls__mutualciphersuitetls13._mutualCipherSuiteTLS13((@:checkr _hello ?? throw "null pointer dereference")._cipherSuites, (@:checkr _session ?? throw "null pointer dereference")._cipherSuite) != null && ((stdgo._internal.crypto.tls.Tls__mutualciphersuitetls13._mutualCipherSuiteTLS13((@:checkr _hello ?? throw "null pointer dereference")._cipherSuites, (@:checkr _session ?? throw "null pointer dereference")._cipherSuite) : Dynamic).__nil__ == null || !(stdgo._internal.crypto.tls.Tls__mutualciphersuitetls13._mutualCipherSuiteTLS13((@:checkr _hello ?? throw "null pointer dereference")._cipherSuites, (@:checkr _session ?? throw "null pointer dereference")._cipherSuite) : Dynamic).__nil__))) {
                for (__163 => _alpn in (@:checkr _hello ?? throw "null pointer dereference")._alpnProtocols) {
                    if (_alpn == ((@:checkr _session ?? throw "null pointer dereference")._alpnProtocol)) {
                        (@:checkr _hello ?? throw "null pointer dereference")._earlyData = true;
                        break;
                    };
                };
            };
        };
        var _ticketAge = (@:check2r (@:checkr _c ?? throw "null pointer dereference")._config._time().sub(stdgo._internal.time.Time_unix.unix(((@:checkr _session ?? throw "null pointer dereference")._createdAt : stdgo.GoInt64), (0i64 : stdgo.GoInt64))?.__copy__()) : stdgo._internal.time.Time_duration.Duration);
        var _identity = ({ _label : (@:checkr _cs ?? throw "null pointer dereference")._ticket, _obfuscatedTicketAge : (((_ticketAge / (1000000i64 : stdgo._internal.time.Time_duration.Duration) : stdgo._internal.time.Time_duration.Duration) : stdgo.GoUInt32) + (@:checkr _session ?? throw "null pointer dereference")._ageAdd : stdgo.GoUInt32) } : stdgo._internal.crypto.tls.Tls_t_pskidentity.T_pskIdentity);
        (@:checkr _hello ?? throw "null pointer dereference")._pskIdentities = (new stdgo.Slice<stdgo._internal.crypto.tls.Tls_t_pskidentity.T_pskIdentity>(1, 1, ...[_identity?.__copy__()].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.crypto.tls.Tls_t_pskidentity.T_pskIdentity)])) : stdgo.Slice<stdgo._internal.crypto.tls.Tls_t_pskidentity.T_pskIdentity>);
        (@:checkr _hello ?? throw "null pointer dereference")._pskBinders = (new stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>(1, 1, ...[(new stdgo.Slice<stdgo.GoUInt8>(((@:checkr _cipherSuite ?? throw "null pointer dereference")._hash.size() : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)]) : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
        _earlySecret = @:check2r _cipherSuite._extract((@:checkr _session ?? throw "null pointer dereference")._secret, (null : stdgo.Slice<stdgo.GoUInt8>));
        _binderKey = @:check2r _cipherSuite._deriveSecret(_earlySecret, ("res binder" : stdgo.GoString), (null : stdgo._internal.hash.Hash_hash.Hash));
        var _transcript = ((@:checkr _cipherSuite ?? throw "null pointer dereference")._hash.new_() : stdgo._internal.hash.Hash_hash.Hash);
        var __tmp__ = @:check2r _hello._marshalWithoutBinders(), _helloBytes:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return {
                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_sessionstate.SessionState>; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Slice<stdgo.GoUInt8>; var _3 : stdgo.Error; } = { _0 : null, _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : (null : stdgo.Slice<stdgo.GoUInt8>), _3 : _err };
                _session = __tmp__._0;
                _earlySecret = __tmp__._1;
                _binderKey = __tmp__._2;
                _err = __tmp__._3;
                __tmp__;
            };
        };
        _transcript.write(_helloBytes);
        var _pskBinders = (new stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>(1, 1, ...[@:check2r _cipherSuite._finishedHash(_binderKey, _transcript)]) : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
        {
            var _err = (@:check2r _hello._updateBinders(_pskBinders) : stdgo.Error);
            if (_err != null) {
                return {
                    final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_sessionstate.SessionState>; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Slice<stdgo.GoUInt8>; var _3 : stdgo.Error; } = { _0 : null, _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : (null : stdgo.Slice<stdgo.GoUInt8>), _3 : _err };
                    _session = __tmp__._0;
                    _earlySecret = __tmp__._1;
                    _binderKey = __tmp__._2;
                    _err = __tmp__._3;
                    __tmp__;
                };
            };
        };
        return { _0 : _session, _1 : _earlySecret, _2 : _binderKey, _3 : _err };
    }
    @:keep
    @:tdfield
    static public function _clientHandshake( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>, _ctx:stdgo._internal.context.Context_context.Context):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _err = (null : stdgo.Error);
        try {
            if (((@:checkr _c ?? throw "null pointer dereference")._config == null || ((@:checkr _c ?? throw "null pointer dereference")._config : Dynamic).__nil__)) {
                (@:checkr _c ?? throw "null pointer dereference")._config = stdgo._internal.crypto.tls.Tls__defaultconfig._defaultConfig();
            };
            (@:checkr _c ?? throw "null pointer dereference")._didResume = false;
            var __tmp__ = @:check2r _c._makeClientHello(), _hello:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthellomsg.T_clientHelloMsg> = __tmp__._0, _ecdheKey:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (_err != null) {
                return _err;
            };
            (@:checkr _c ?? throw "null pointer dereference")._serverName = (@:checkr _hello ?? throw "null pointer dereference")._serverName?.__copy__();
            var __tmp__ = @:check2r _c._loadSession(_hello), _session:stdgo.Ref<stdgo._internal.crypto.tls.Tls_sessionstate.SessionState> = __tmp__._0, _earlySecret:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _binderKey:stdgo.Slice<stdgo.GoUInt8> = __tmp__._2, _err:stdgo.Error = __tmp__._3;
            if (_err != null) {
                return _err;
            };
            if ((_session != null && ((_session : Dynamic).__nil__ == null || !(_session : Dynamic).__nil__))) {
                {
                    __deferstack__.unshift({ ran : false, f : () -> ({
                        var a = function():Void {
                            if (_err != null) {
                                {
                                    var _cacheKey = (@:check2r _c._clientSessionCacheKey()?.__copy__() : stdgo.GoString);
                                    if (_cacheKey != ((stdgo.Go.str() : stdgo.GoString))) {
                                        (@:checkr (@:checkr _c ?? throw "null pointer dereference")._config ?? throw "null pointer dereference").clientSessionCache.put(_cacheKey?.__copy__(), null);
                                    };
                                };
                            };
                        };
                        a();
                    }) });
                };
            };
            {
                var __tmp__ = @:check2r _c._writeHandshakeRecord(stdgo.Go.asInterface(_hello), (null : stdgo._internal.crypto.tls.Tls_t_transcripthash.T_transcriptHash)), __113:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
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
            if ((@:checkr _hello ?? throw "null pointer dereference")._earlyData) {
                var _suite = stdgo._internal.crypto.tls.Tls__ciphersuitetls13byid._cipherSuiteTLS13ByID((@:checkr _session ?? throw "null pointer dereference")._cipherSuite);
                var _transcript = ((@:checkr _suite ?? throw "null pointer dereference")._hash.new_() : stdgo._internal.hash.Hash_hash.Hash);
                {
                    var _err = (stdgo._internal.crypto.tls.Tls__transcriptmsg._transcriptMsg(stdgo.Go.asInterface(_hello), _transcript) : stdgo.Error);
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
                var _earlyTrafficSecret = @:check2r _suite._deriveSecret(_earlySecret, ("c e traffic" : stdgo.GoString), _transcript);
                @:check2r _c._quicSetWriteSecret((1 : stdgo._internal.crypto.tls.Tls_quicencryptionlevel.QUICEncryptionLevel), (@:checkr _suite ?? throw "null pointer dereference")._id, _earlyTrafficSecret);
            };
            var __tmp__ = @:check2r _c._readHandshake((null : stdgo._internal.crypto.tls.Tls_t_transcripthash.T_transcriptHash)), _msg:stdgo.AnyInterface = __tmp__._0, _err:stdgo.Error = __tmp__._1;
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
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((_msg : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhellomsg.T_serverHelloMsg>)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhellomsg.T_serverHelloMsg>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhellomsg.T_serverHelloMsg>), _1 : false };
            }, _serverHello = __tmp__._0, _ok = __tmp__._1;
            if (!_ok) {
                @:check2r _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                {
                    final __ret__:stdgo.Error = _err = stdgo._internal.crypto.tls.Tls__unexpectedmessageerror._unexpectedMessageError(stdgo.Go.toInterface(stdgo.Go.asInterface(_serverHello)), _msg);
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            {
                var _err = (@:check2r _c._pickTLSVersion(_serverHello) : stdgo.Error);
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
            var _maxVers = (@:check2r (@:checkr _c ?? throw "null pointer dereference")._config._maxSupportedVersion(true) : stdgo.GoUInt16);
            var _tls12Downgrade = ((((@:checkr _serverHello ?? throw "null pointer dereference")._random.__slice__((24 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString) == ((stdgo.Go.str("DOWNGRD", 1) : stdgo.GoString)) : Bool);
            var _tls11Downgrade = ((((@:checkr _serverHello ?? throw "null pointer dereference")._random.__slice__((24 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString) == ((stdgo.Go.str("DOWNGRD", 0) : stdgo.GoString)) : Bool);
            if ((((_maxVers == ((772 : stdgo.GoUInt16)) && ((@:checkr _c ?? throw "null pointer dereference")._vers <= (771 : stdgo.GoUInt16) : Bool) : Bool) && ((_tls12Downgrade || _tls11Downgrade : Bool)) : Bool) || ((_maxVers == ((771 : stdgo.GoUInt16)) && ((@:checkr _c ?? throw "null pointer dereference")._vers <= (770 : stdgo.GoUInt16) : Bool) : Bool) && _tls11Downgrade : Bool) : Bool)) {
                @:check2r _c._sendAlert((47 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                {
                    final __ret__:stdgo.Error = _err = stdgo._internal.errors.Errors_new_.new_(("tls: downgrade attempt detected, possibly due to a MitM attack or a broken middlebox" : stdgo.GoString));
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            if ((@:checkr _c ?? throw "null pointer dereference")._vers == ((772 : stdgo.GoUInt16))) {
                var _hs = (stdgo.Go.setRef(({ _c : _c, _ctx : _ctx, _serverHello : _serverHello, _hello : _hello, _ecdheKey : _ecdheKey, _session : _session, _earlySecret : _earlySecret, _binderKey : _binderKey } : stdgo._internal.crypto.tls.Tls_t_clienthandshakestatetls13.T_clientHandshakeStateTLS13)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthandshakestatetls13.T_clientHandshakeStateTLS13>);
                {
                    final __ret__:stdgo.Error = _err = @:check2r _hs._handshake();
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            var _hs = (stdgo.Go.setRef(({ _c : _c, _ctx : _ctx, _serverHello : _serverHello, _hello : _hello, _session : _session } : stdgo._internal.crypto.tls.Tls_t_clienthandshakestate.T_clientHandshakeState)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthandshakestate.T_clientHandshakeState>);
            {
                var _err = (@:check2r _hs._handshake() : stdgo.Error);
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
                final __ret__:stdgo.Error = _err = (null : stdgo.Error);
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
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
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
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return _err;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _makeClientHello( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthellomsg.T_clientHelloMsg>; var _1 : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey>; var _2 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        var _config = (@:checkr _c ?? throw "null pointer dereference")._config;
        if ((((@:checkr _config ?? throw "null pointer dereference").serverName.length == (0 : stdgo.GoInt)) && !(@:checkr _config ?? throw "null pointer dereference").insecureSkipVerify : Bool)) {
            return { _0 : null, _1 : null, _2 : stdgo._internal.errors.Errors_new_.new_(("tls: either ServerName or InsecureSkipVerify must be specified in the tls.Config" : stdgo.GoString)) };
        };
        var _nextProtosLength = (0 : stdgo.GoInt);
        for (__85 => _proto in (@:checkr _config ?? throw "null pointer dereference").nextProtos) {
            {
                var _l = (_proto.length : stdgo.GoInt);
                if (((_l == (0 : stdgo.GoInt)) || (_l > (255 : stdgo.GoInt) : Bool) : Bool)) {
                    return { _0 : null, _1 : null, _2 : stdgo._internal.errors.Errors_new_.new_(("tls: invalid NextProtos value" : stdgo.GoString)) };
                } else {
                    _nextProtosLength = (_nextProtosLength + (((1 : stdgo.GoInt) + _l : stdgo.GoInt)) : stdgo.GoInt);
                };
            };
        };
        if ((_nextProtosLength > (65535 : stdgo.GoInt) : Bool)) {
            return { _0 : null, _1 : null, _2 : stdgo._internal.errors.Errors_new_.new_(("tls: NextProtos values too large" : stdgo.GoString)) };
        };
        var _supportedVersions = @:check2r _config._supportedVersions(true);
        if ((_supportedVersions.length) == ((0 : stdgo.GoInt))) {
            return { _0 : null, _1 : null, _2 : stdgo._internal.errors.Errors_new_.new_(("tls: no supported versions satisfy MinVersion and MaxVersion" : stdgo.GoString)) };
        };
        var _clientHelloVersion = (@:check2r _config._maxSupportedVersion(true) : stdgo.GoUInt16);
        if ((_clientHelloVersion > (771 : stdgo.GoUInt16) : Bool)) {
            _clientHelloVersion = (771 : stdgo.GoUInt16);
        };
        var _hello = (stdgo.Go.setRef(({ _vers : _clientHelloVersion, _compressionMethods : (new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(0 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), _random : (new stdgo.Slice<stdgo.GoUInt8>((32 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), _extendedMasterSecret : true, _ocspStapling : true, _scts : true, _serverName : stdgo._internal.crypto.tls.Tls__hostnameinsni._hostnameInSNI((@:checkr _config ?? throw "null pointer dereference").serverName?.__copy__())?.__copy__(), _supportedCurves : @:check2r _config._curvePreferences(), _supportedPoints : (new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(0 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), _secureRenegotiationSupported : true, _alpnProtocols : (@:checkr _config ?? throw "null pointer dereference").nextProtos, _supportedVersions : _supportedVersions } : stdgo._internal.crypto.tls.Tls_t_clienthellomsg.T_clientHelloMsg)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthellomsg.T_clientHelloMsg>);
        if (((@:checkr _c ?? throw "null pointer dereference")._handshakes > (0 : stdgo.GoInt) : Bool)) {
            (@:checkr _hello ?? throw "null pointer dereference")._secureRenegotiation = ((@:checkr _c ?? throw "null pointer dereference")._clientFinished.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>);
        };
        var _preferenceOrder = stdgo._internal.crypto.tls.Tls__ciphersuitespreferenceorder._cipherSuitesPreferenceOrder;
        if (!stdgo._internal.crypto.tls.Tls__hasaesgcmhardwaresupport._hasAESGCMHardwareSupport) {
            _preferenceOrder = stdgo._internal.crypto.tls.Tls__ciphersuitespreferenceordernoaes._cipherSuitesPreferenceOrderNoAES;
        };
        var _configCipherSuites = @:check2r _config._cipherSuites();
        (@:checkr _hello ?? throw "null pointer dereference")._cipherSuites = (new stdgo.Slice<stdgo.GoUInt16>((0 : stdgo.GoInt).toBasic(), (_configCipherSuites.length)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt16>);
        for (__118 => _suiteId in _preferenceOrder) {
            var _suite = stdgo._internal.crypto.tls.Tls__mutualciphersuite._mutualCipherSuite(_configCipherSuites, _suiteId);
            if ((_suite == null || (_suite : Dynamic).__nil__)) {
                continue;
            };
            if ((((@:checkr _hello ?? throw "null pointer dereference")._vers < (771 : stdgo.GoUInt16) : Bool) && (((@:checkr _suite ?? throw "null pointer dereference")._flags & (4 : stdgo.GoInt) : stdgo.GoInt) != (0 : stdgo.GoInt)) : Bool)) {
                continue;
            };
            (@:checkr _hello ?? throw "null pointer dereference")._cipherSuites = ((@:checkr _hello ?? throw "null pointer dereference")._cipherSuites.__append__(_suiteId));
        };
        var __tmp__ = stdgo._internal.io.Io_readfull.readFull(@:check2r _config._rand(), (@:checkr _hello ?? throw "null pointer dereference")._random), __123:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : null, _2 : stdgo._internal.errors.Errors_new_.new_((("tls: short read from Rand: " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString)?.__copy__()) };
        };
        if (((@:checkr _c ?? throw "null pointer dereference")._quic == null || ((@:checkr _c ?? throw "null pointer dereference")._quic : Dynamic).__nil__)) {
            (@:checkr _hello ?? throw "null pointer dereference")._sessionId = (new stdgo.Slice<stdgo.GoUInt8>((32 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            {
                var __tmp__ = stdgo._internal.io.Io_readfull.readFull(@:check2r _config._rand(), (@:checkr _hello ?? throw "null pointer dereference")._sessionId), __136:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : null, _1 : null, _2 : stdgo._internal.errors.Errors_new_.new_((("tls: short read from Rand: " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString)?.__copy__()) };
                };
            };
        };
        if (((@:checkr _hello ?? throw "null pointer dereference")._vers >= (771 : stdgo.GoUInt16) : Bool)) {
            (@:checkr _hello ?? throw "null pointer dereference")._supportedSignatureAlgorithms = stdgo._internal.crypto.tls.Tls__supportedsignaturealgorithms._supportedSignatureAlgorithms();
        };
        if (stdgo._internal.crypto.tls.Tls__testingonlyforceclienthellosignaturealgorithms._testingOnlyForceClientHelloSignatureAlgorithms != null) {
            (@:checkr _hello ?? throw "null pointer dereference")._supportedSignatureAlgorithms = stdgo._internal.crypto.tls.Tls__testingonlyforceclienthellosignaturealgorithms._testingOnlyForceClientHelloSignatureAlgorithms;
        };
        var _key:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey> = (null : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey>);
        if ((@:checkr _hello ?? throw "null pointer dereference")._supportedVersions[(0 : stdgo.GoInt)] == ((772 : stdgo.GoUInt16))) {
            if (((@:checkr _hello ?? throw "null pointer dereference")._supportedVersions.length) == ((1 : stdgo.GoInt))) {
                (@:checkr _hello ?? throw "null pointer dereference")._cipherSuites = (null : stdgo.Slice<stdgo.GoUInt16>);
            };
            if (stdgo._internal.crypto.tls.Tls__hasaesgcmhardwaresupport._hasAESGCMHardwareSupport) {
                (@:checkr _hello ?? throw "null pointer dereference")._cipherSuites = ((@:checkr _hello ?? throw "null pointer dereference")._cipherSuites.__append__(...(stdgo._internal.crypto.tls.Tls__defaultciphersuitestls13._defaultCipherSuitesTLS13 : Array<stdgo.GoUInt16>)));
            } else {
                (@:checkr _hello ?? throw "null pointer dereference")._cipherSuites = ((@:checkr _hello ?? throw "null pointer dereference")._cipherSuites.__append__(...(stdgo._internal.crypto.tls.Tls__defaultciphersuitestls13noaes._defaultCipherSuitesTLS13NoAES : Array<stdgo.GoUInt16>)));
            };
            var _curveID = (@:check2r _config._curvePreferences()[(0 : stdgo.GoInt)] : stdgo._internal.crypto.tls.Tls_curveid.CurveID);
            {
                var __tmp__ = stdgo._internal.crypto.tls.Tls__curveforcurveid._curveForCurveID(_curveID), __136:stdgo._internal.crypto.ecdh.Ecdh_curve.Curve = __tmp__._0, _ok:Bool = __tmp__._1;
                if (!_ok) {
                    return { _0 : null, _1 : null, _2 : stdgo._internal.errors.Errors_new_.new_(("tls: CurvePreferences includes unsupported curve" : stdgo.GoString)) };
                };
            };
            {
                var __tmp__ = stdgo._internal.crypto.tls.Tls__generateecdhekey._generateECDHEKey(@:check2r _config._rand(), _curveID);
                _key = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                return { _0 : null, _1 : null, _2 : _err };
            };
            (@:checkr _hello ?? throw "null pointer dereference")._keyShares = (new stdgo.Slice<stdgo._internal.crypto.tls.Tls_t_keyshare.T_keyShare>(1, 1, ...[({ _group : _curveID, _data : @:check2r @:check2r _key.publicKey().bytes() } : stdgo._internal.crypto.tls.Tls_t_keyshare.T_keyShare)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.crypto.tls.Tls_t_keyshare.T_keyShare)])) : stdgo.Slice<stdgo._internal.crypto.tls.Tls_t_keyshare.T_keyShare>);
        };
        if (((@:checkr _c ?? throw "null pointer dereference")._quic != null && (((@:checkr _c ?? throw "null pointer dereference")._quic : Dynamic).__nil__ == null || !((@:checkr _c ?? throw "null pointer dereference")._quic : Dynamic).__nil__))) {
            var __tmp__ = @:check2r _c._quicGetTransportParameters(), _p:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : null, _1 : null, _2 : _err };
            };
            if (_p == null) {
                _p = (new stdgo.Slice<stdgo.GoUInt8>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            };
            (@:checkr _hello ?? throw "null pointer dereference")._quicTransportParameters = _p;
        };
        return { _0 : _hello, _1 : _key, _2 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function verifyHostname( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>, _host:stdgo.GoString):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            @:check2 (@:checkr _c ?? throw "null pointer dereference")._handshakeMutex.lock();
            {
                final __f__ = @:check2 (@:checkr _c ?? throw "null pointer dereference")._handshakeMutex.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            if (!(@:checkr _c ?? throw "null pointer dereference")._isClient) {
                {
                    final __ret__:stdgo.Error = stdgo._internal.errors.Errors_new_.new_(("tls: VerifyHostname called on TLS server connection" : stdgo.GoString));
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            if (!@:check2 (@:checkr _c ?? throw "null pointer dereference")._isHandshakeComplete.load()) {
                {
                    final __ret__:stdgo.Error = stdgo._internal.errors.Errors_new_.new_(("tls: handshake has not yet been performed" : stdgo.GoString));
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            if (((@:checkr _c ?? throw "null pointer dereference")._verifiedChains.length) == ((0 : stdgo.GoInt))) {
                {
                    final __ret__:stdgo.Error = stdgo._internal.errors.Errors_new_.new_(("tls: handshake did not verify certificate chain" : stdgo.GoString));
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            {
                final __ret__:stdgo.Error = @:check2r (@:checkr _c ?? throw "null pointer dereference")._peerCertificates[(0 : stdgo.GoInt)].verifyHostname(_host?.__copy__());
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
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
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
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return (null : stdgo.Error);
            };
        };
    }
    @:keep
    @:tdfield
    static public function oCSPResponse( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            @:check2 (@:checkr _c ?? throw "null pointer dereference")._handshakeMutex.lock();
            {
                final __f__ = @:check2 (@:checkr _c ?? throw "null pointer dereference")._handshakeMutex.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            {
                final __ret__:stdgo.Slice<stdgo.GoUInt8> = (@:checkr _c ?? throw "null pointer dereference")._ocspResponse;
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
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return (null : stdgo.Slice<stdgo.GoUInt8>);
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
                return (null : stdgo.Slice<stdgo.GoUInt8>);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _connectionStateLocked( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>):stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        var _state:stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState = ({} : stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState);
        _state.handshakeComplete = @:check2 (@:checkr _c ?? throw "null pointer dereference")._isHandshakeComplete.load();
        _state.version = (@:checkr _c ?? throw "null pointer dereference")._vers;
        _state.negotiatedProtocol = (@:checkr _c ?? throw "null pointer dereference")._clientProtocol?.__copy__();
        _state.didResume = (@:checkr _c ?? throw "null pointer dereference")._didResume;
        _state.negotiatedProtocolIsMutual = true;
        _state.serverName = (@:checkr _c ?? throw "null pointer dereference")._serverName?.__copy__();
        _state.cipherSuite = (@:checkr _c ?? throw "null pointer dereference")._cipherSuite;
        _state.peerCertificates = (@:checkr _c ?? throw "null pointer dereference")._peerCertificates;
        _state.verifiedChains = (@:checkr _c ?? throw "null pointer dereference")._verifiedChains;
        _state.signedCertificateTimestamps = (@:checkr _c ?? throw "null pointer dereference")._scts;
        _state.oCSPResponse = (@:checkr _c ?? throw "null pointer dereference")._ocspResponse;
        if ((((!(@:checkr _c ?? throw "null pointer dereference")._didResume || (@:checkr _c ?? throw "null pointer dereference")._extMasterSecret : Bool)) && ((@:checkr _c ?? throw "null pointer dereference")._vers != (772 : stdgo.GoUInt16)) : Bool)) {
            if ((@:checkr _c ?? throw "null pointer dereference")._clientFinishedIsFirst) {
                _state.tLSUnique = ((@:checkr _c ?? throw "null pointer dereference")._clientFinished.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>);
            } else {
                _state.tLSUnique = ((@:checkr _c ?? throw "null pointer dereference")._serverFinished.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>);
            };
        };
        if ((@:checkr (@:checkr _c ?? throw "null pointer dereference")._config ?? throw "null pointer dereference").renegotiation != ((0 : stdgo._internal.crypto.tls.Tls_renegotiationsupport.RenegotiationSupport))) {
            _state._ekm = stdgo._internal.crypto.tls.Tls__noexportedkeyingmaterial._noExportedKeyingMaterial;
        } else {
            _state._ekm = (@:checkr _c ?? throw "null pointer dereference")._ekm;
        };
        return _state?.__copy__();
    }
    @:keep
    @:tdfield
    static public function connectionState( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>):stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            @:check2 (@:checkr _c ?? throw "null pointer dereference")._handshakeMutex.lock();
            {
                final __f__ = @:check2 (@:checkr _c ?? throw "null pointer dereference")._handshakeMutex.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            {
                final __ret__:stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState = @:check2r _c._connectionStateLocked()?.__copy__();
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
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return ({} : stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState);
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
                return ({} : stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _handshakeContext( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>, _ctx:stdgo._internal.context.Context_context.Context):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _ret = (null : stdgo.Error);
        try {
            if (@:check2 (@:checkr _c ?? throw "null pointer dereference")._isHandshakeComplete.load()) {
                return _ret = (null : stdgo.Error);
            };
            var __tmp__ = stdgo._internal.context.Context_withcancel.withCancel(_ctx), _handshakeCtx:stdgo._internal.context.Context_context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context_cancelfunc.CancelFunc = __tmp__._1;
            {
                final __f__ = _cancel;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            if (((@:checkr _c ?? throw "null pointer dereference")._quic != null && (((@:checkr _c ?? throw "null pointer dereference")._quic : Dynamic).__nil__ == null || !((@:checkr _c ?? throw "null pointer dereference")._quic : Dynamic).__nil__))) {
                (@:checkr (@:checkr _c ?? throw "null pointer dereference")._quic ?? throw "null pointer dereference")._cancelc = _handshakeCtx.done();
                (@:checkr (@:checkr _c ?? throw "null pointer dereference")._quic ?? throw "null pointer dereference")._cancel = _cancel;
            } else if (_ctx.done() != null) {
                var _done = (new stdgo.Chan<stdgo._internal.crypto.tls.Tls_t_endofearlydatamsg.T_endOfEarlyDataMsg>(0, () -> ({} : stdgo._internal.crypto.tls.Tls_t_endofearlydatamsg.T_endOfEarlyDataMsg)) : stdgo.Chan<stdgo._internal.crypto.tls.Tls_t_endofearlydatamsg.T_endOfEarlyDataMsg>);
                var _interruptRes = (new stdgo.Chan<stdgo.Error>((1 : stdgo.GoInt).toBasic(), () -> (null : stdgo.Error)) : stdgo.Chan<stdgo.Error>);
                {
                    __deferstack__.unshift({ ran : false, f : () -> ({
                        var a = function():Void {
                            if (_done != null) _done.__close__();
                            {
                                var _ctxErr = (_interruptRes.__get__() : stdgo.Error);
                                if (_ctxErr != null) {
                                    _ret = _ctxErr;
                                };
                            };
                        };
                        a();
                    }) });
                };
                stdgo.Go.routine(() -> ({
                    var a = function():Void {
                        {
                            var __select__ = true;
                            while (__select__) {
                                if (_handshakeCtx.done() != null && _handshakeCtx.done().__isGet__()) {
                                    __select__ = false;
                                    {
                                        _handshakeCtx.done().__get__();
                                        {
                                            var __blank__ = (@:checkr _c ?? throw "null pointer dereference")._conn.close();
                                            _interruptRes.__send__(_handshakeCtx.err());
                                        };
                                    };
                                } else if (_done != null && _done.__isGet__()) {
                                    __select__ = false;
                                    {
                                        _done.__get__();
                                        {
                                            _interruptRes.__send__(null);
                                        };
                                    };
                                };
                                #if !js Sys.sleep(0.01) #else null #end;
                                stdgo._internal.internal.Async.tick();
                            };
                        };
                    };
                    a();
                }));
            };
            @:check2 (@:checkr _c ?? throw "null pointer dereference")._handshakeMutex.lock();
            {
                final __f__ = @:check2 (@:checkr _c ?? throw "null pointer dereference")._handshakeMutex.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            {
                var _err = ((@:checkr _c ?? throw "null pointer dereference")._handshakeErr : stdgo.Error);
                if (_err != null) {
                    {
                        final __ret__:stdgo.Error = _ret = _err;
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
            };
            if (@:check2 (@:checkr _c ?? throw "null pointer dereference")._isHandshakeComplete.load()) {
                {
                    final __ret__:stdgo.Error = _ret = (null : stdgo.Error);
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            @:check2 (@:checkr _c ?? throw "null pointer dereference")._in.lock();
            {
                final __f__ = @:check2 (@:checkr _c ?? throw "null pointer dereference")._in.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            (@:checkr _c ?? throw "null pointer dereference")._handshakeErr = (@:checkr _c ?? throw "null pointer dereference")._handshakeFn(_handshakeCtx);
            if ((@:checkr _c ?? throw "null pointer dereference")._handshakeErr == null) {
                (@:checkr _c ?? throw "null pointer dereference")._handshakes++;
            } else {
                @:check2r _c._flush();
            };
            if ((((@:checkr _c ?? throw "null pointer dereference")._handshakeErr == null) && !@:check2 (@:checkr _c ?? throw "null pointer dereference")._isHandshakeComplete.load() : Bool)) {
                (@:checkr _c ?? throw "null pointer dereference")._handshakeErr = stdgo._internal.errors.Errors_new_.new_(("tls: internal error: handshake should have had a result" : stdgo.GoString));
            };
            if ((((@:checkr _c ?? throw "null pointer dereference")._handshakeErr != null) && @:check2 (@:checkr _c ?? throw "null pointer dereference")._isHandshakeComplete.load() : Bool)) {
                throw stdgo.Go.toInterface(("tls: internal error: handshake returned an error but is marked successful" : stdgo.GoString));
            };
            if (((@:checkr _c ?? throw "null pointer dereference")._quic != null && (((@:checkr _c ?? throw "null pointer dereference")._quic : Dynamic).__nil__ == null || !((@:checkr _c ?? throw "null pointer dereference")._quic : Dynamic).__nil__))) {
                if ((@:checkr _c ?? throw "null pointer dereference")._handshakeErr == null) {
                    @:check2r _c._quicHandshakeComplete();
                    @:check2r _c._quicSetReadSecret((3 : stdgo._internal.crypto.tls.Tls_quicencryptionlevel.QUICEncryptionLevel), (@:checkr _c ?? throw "null pointer dereference")._cipherSuite, (@:checkr _c ?? throw "null pointer dereference")._in._trafficSecret);
                } else {
                    var _a:stdgo._internal.crypto.tls.Tls_t_alert.T_alert = ((0 : stdgo.GoUInt8) : stdgo._internal.crypto.tls.Tls_t_alert.T_alert);
                    var _a__pointer__ = stdgo.Go.pointer(_a);
                    @:check2 (@:checkr _c ?? throw "null pointer dereference")._out.lock();
                    if (!stdgo._internal.errors.Errors_as.as((@:checkr _c ?? throw "null pointer dereference")._out._err, stdgo.Go.toInterface(_a__pointer__))) {
                        _a = (80 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert);
                    };
                    @:check2 (@:checkr _c ?? throw "null pointer dereference")._out.unlock();
                    (@:checkr _c ?? throw "null pointer dereference")._handshakeErr = stdgo._internal.fmt.Fmt_errorf.errorf(("%w%.0w" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _c ?? throw "null pointer dereference")._handshakeErr), stdgo.Go.toInterface(stdgo.Go.asInterface((_a : stdgo._internal.crypto.tls.Tls_alerterror.AlertError))));
                };
                if ((@:checkr (@:checkr _c ?? throw "null pointer dereference")._quic ?? throw "null pointer dereference")._blockedc != null) (@:checkr (@:checkr _c ?? throw "null pointer dereference")._quic ?? throw "null pointer dereference")._blockedc.__close__();
                if ((@:checkr (@:checkr _c ?? throw "null pointer dereference")._quic ?? throw "null pointer dereference")._signalc != null) (@:checkr (@:checkr _c ?? throw "null pointer dereference")._quic ?? throw "null pointer dereference")._signalc.__close__();
            };
            {
                final __ret__:stdgo.Error = _ret = (@:checkr _c ?? throw "null pointer dereference")._handshakeErr;
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
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return _ret;
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
                return _ret;
            };
        };
    }
    @:keep
    @:tdfield
    static public function handshakeContext( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>, _ctx:stdgo._internal.context.Context_context.Context):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        return @:check2r _c._handshakeContext(_ctx);
    }
    @:keep
    @:tdfield
    static public function handshake( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        return @:check2r _c.handshakeContext(stdgo._internal.context.Context_background.background());
    }
    @:keep
    @:tdfield
    static public function _closeNotify( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            @:check2 (@:checkr _c ?? throw "null pointer dereference")._out.lock();
            {
                final __f__ = @:check2 (@:checkr _c ?? throw "null pointer dereference")._out.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            if (!(@:checkr _c ?? throw "null pointer dereference")._closeNotifySent) {
                @:check2r _c.setWriteDeadline(stdgo._internal.time.Time_now.now().add((5000000000i64 : stdgo._internal.time.Time_duration.Duration))?.__copy__());
                (@:checkr _c ?? throw "null pointer dereference")._closeNotifyErr = @:check2r _c._sendAlertLocked((0 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                (@:checkr _c ?? throw "null pointer dereference")._closeNotifySent = true;
                @:check2r _c.setWriteDeadline(stdgo._internal.time.Time_now.now()?.__copy__());
            };
            {
                final __ret__:stdgo.Error = (@:checkr _c ?? throw "null pointer dereference")._closeNotifyErr;
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
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
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
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return (null : stdgo.Error);
            };
        };
    }
    @:keep
    @:tdfield
    static public function closeWrite( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        if (!@:check2 (@:checkr _c ?? throw "null pointer dereference")._isHandshakeComplete.load()) {
            return stdgo._internal.crypto.tls.Tls__errearlyclosewrite._errEarlyCloseWrite;
        };
        return @:check2r _c._closeNotify();
    }
    @:keep
    @:tdfield
    static public function close( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        var _x:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        while (true) {
            _x = @:check2 (@:checkr _c ?? throw "null pointer dereference")._activeCall.load();
            if ((_x & (1 : stdgo.GoInt32) : stdgo.GoInt32) != ((0 : stdgo.GoInt32))) {
                return stdgo._internal.net.Net_errclosed.errClosed;
            };
            if (@:check2 (@:checkr _c ?? throw "null pointer dereference")._activeCall.compareAndSwap(_x, (_x | (1 : stdgo.GoInt32) : stdgo.GoInt32))) {
                break;
            };
        };
        if (_x != ((0 : stdgo.GoInt32))) {
            return (@:checkr _c ?? throw "null pointer dereference")._conn.close();
        };
        var _alertErr:stdgo.Error = (null : stdgo.Error);
        if (@:check2 (@:checkr _c ?? throw "null pointer dereference")._isHandshakeComplete.load()) {
            {
                var _err = (@:check2r _c._closeNotify() : stdgo.Error);
                if (_err != null) {
                    _alertErr = stdgo._internal.fmt.Fmt_errorf.errorf(("tls: failed to send closeNotify alert (but connection was closed anyway): %w" : stdgo.GoString), stdgo.Go.toInterface(_err));
                };
            };
        };
        {
            var _err = ((@:checkr _c ?? throw "null pointer dereference")._conn.close() : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        return _alertErr;
    }
    @:keep
    @:tdfield
    static public function read( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            {
                var _err = (@:check2r _c.handshake() : stdgo.Error);
                if (_err != null) {
                    return { _0 : (0 : stdgo.GoInt), _1 : _err };
                };
            };
            if ((_b.length) == ((0 : stdgo.GoInt))) {
                return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Error) };
            };
            @:check2 (@:checkr _c ?? throw "null pointer dereference")._in.lock();
            {
                final __f__ = @:check2 (@:checkr _c ?? throw "null pointer dereference")._in.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            while (@:check2 (@:checkr _c ?? throw "null pointer dereference")._input.len() == ((0 : stdgo.GoInt))) {
                {
                    var _err = (@:check2r _c._readRecord() : stdgo.Error);
                    if (_err != null) {
                        {
                            final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : _err };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                    };
                };
                while ((@:check2 (@:checkr _c ?? throw "null pointer dereference")._hand.len() > (0 : stdgo.GoInt) : Bool)) {
                    {
                        var _err = (@:check2r _c._handlePostHandshakeMessage() : stdgo.Error);
                        if (_err != null) {
                            {
                                final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : _err };
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
            };
            var __tmp__ = @:check2 (@:checkr _c ?? throw "null pointer dereference")._input.read(_b), _n:stdgo.GoInt = __tmp__._0, __105:stdgo.Error = __tmp__._1;
            if ((((_n != ((0 : stdgo.GoInt)) && @:check2 (@:checkr _c ?? throw "null pointer dereference")._input.len() == ((0 : stdgo.GoInt)) : Bool) && (@:check2 (@:checkr _c ?? throw "null pointer dereference")._rawInput.len() > (0 : stdgo.GoInt) : Bool) : Bool) && ((@:check2 (@:checkr _c ?? throw "null pointer dereference")._rawInput.bytes()[(0 : stdgo.GoInt)] : stdgo._internal.crypto.tls.Tls_t_recordtype.T_recordType) == (21 : stdgo._internal.crypto.tls.Tls_t_recordtype.T_recordType)) : Bool)) {
                {
                    var _err = (@:check2r _c._readRecord() : stdgo.Error);
                    if (_err != null) {
                        {
                            final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : _err };
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
            {
                final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : (null : stdgo.Error) };
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
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Error) };
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
                return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Error) };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _handleKeyUpdate( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>, _keyUpdate:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_keyupdatemsg.T_keyUpdateMsg>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            if (((@:checkr _c ?? throw "null pointer dereference")._quic != null && (((@:checkr _c ?? throw "null pointer dereference")._quic : Dynamic).__nil__ == null || !((@:checkr _c ?? throw "null pointer dereference")._quic : Dynamic).__nil__))) {
                @:check2r _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                return @:check2 (@:checkr _c ?? throw "null pointer dereference")._in._setErrorLocked(stdgo._internal.errors.Errors_new_.new_(("tls: received unexpected key update message" : stdgo.GoString)));
            };
            var _cipherSuite = stdgo._internal.crypto.tls.Tls__ciphersuitetls13byid._cipherSuiteTLS13ByID((@:checkr _c ?? throw "null pointer dereference")._cipherSuite);
            if ((_cipherSuite == null || (_cipherSuite : Dynamic).__nil__)) {
                return @:check2 (@:checkr _c ?? throw "null pointer dereference")._in._setErrorLocked(@:check2r _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert)));
            };
            var _newSecret = @:check2r _cipherSuite._nextTrafficSecret((@:checkr _c ?? throw "null pointer dereference")._in._trafficSecret);
            @:check2 (@:checkr _c ?? throw "null pointer dereference")._in._setTrafficSecret(_cipherSuite, (0 : stdgo._internal.crypto.tls.Tls_quicencryptionlevel.QUICEncryptionLevel), _newSecret);
            if ((@:checkr _keyUpdate ?? throw "null pointer dereference")._updateRequested) {
                @:check2 (@:checkr _c ?? throw "null pointer dereference")._out.lock();
                {
                    final __f__ = @:check2 (@:checkr _c ?? throw "null pointer dereference")._out.unlock;
                    __deferstack__.unshift({ ran : false, f : () -> __f__() });
                };
                var _msg = (stdgo.Go.setRef((new stdgo._internal.crypto.tls.Tls_t_keyupdatemsg.T_keyUpdateMsg() : stdgo._internal.crypto.tls.Tls_t_keyupdatemsg.T_keyUpdateMsg)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_keyupdatemsg.T_keyUpdateMsg>);
                var __tmp__ = @:check2r _msg._marshal(), _msgBytes:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
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
                {
                    var __tmp__ = @:check2r _c._writeRecordLocked((22 : stdgo._internal.crypto.tls.Tls_t_recordtype.T_recordType), _msgBytes);
                    _err = @:tmpset0 __tmp__._1;
                };
                if (_err != null) {
                    @:check2 (@:checkr _c ?? throw "null pointer dereference")._out._setErrorLocked(_err);
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
                var _newSecret = @:check2r _cipherSuite._nextTrafficSecret((@:checkr _c ?? throw "null pointer dereference")._out._trafficSecret);
                @:check2 (@:checkr _c ?? throw "null pointer dereference")._out._setTrafficSecret(_cipherSuite, (0 : stdgo._internal.crypto.tls.Tls_quicencryptionlevel.QUICEncryptionLevel), _newSecret);
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
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
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
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return (null : stdgo.Error);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _handlePostHandshakeMessage( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        if ((@:checkr _c ?? throw "null pointer dereference")._vers != ((772 : stdgo.GoUInt16))) {
            return @:check2r _c._handleRenegotiation();
        };
        var __tmp__ = @:check2r _c._readHandshake((null : stdgo._internal.crypto.tls.Tls_t_transcripthash.T_transcriptHash)), _msg:stdgo.AnyInterface = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        (@:checkr _c ?? throw "null pointer dereference")._retryCount++;
        if (((@:checkr _c ?? throw "null pointer dereference")._retryCount > (16 : stdgo.GoInt) : Bool)) {
            @:check2r _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            return @:check2 (@:checkr _c ?? throw "null pointer dereference")._in._setErrorLocked(stdgo._internal.errors.Errors_new_.new_(("tls: too many non-advancing records" : stdgo.GoString)));
        };
        {
            final __type__ = _msg;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_newsessionticketmsgtls13.T_newSessionTicketMsgTLS13>))) {
                var _msg:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_newsessionticketmsgtls13.T_newSessionTicketMsgTLS13> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_newsessionticketmsgtls13.T_newSessionTicketMsgTLS13>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_newsessionticketmsgtls13.T_newSessionTicketMsgTLS13>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_newsessionticketmsgtls13.T_newSessionTicketMsgTLS13>) : __type__.__underlying__().value;
                return @:check2r _c._handleNewSessionTicket(_msg);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_keyupdatemsg.T_keyUpdateMsg>))) {
                var _msg:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_keyupdatemsg.T_keyUpdateMsg> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_keyupdatemsg.T_keyUpdateMsg>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_keyupdatemsg.T_keyUpdateMsg>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_keyupdatemsg.T_keyUpdateMsg>) : __type__.__underlying__().value;
                return @:check2r _c._handleKeyUpdate(_msg);
            };
        };
        @:check2r _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
        return stdgo._internal.fmt.Fmt_errorf.errorf(("tls: received unexpected handshake message of type %T" : stdgo.GoString), _msg);
    }
    @:keep
    @:tdfield
    static public function _handleRenegotiation( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            if ((@:checkr _c ?? throw "null pointer dereference")._vers == ((772 : stdgo.GoUInt16))) {
                return stdgo._internal.errors.Errors_new_.new_(("tls: internal error: unexpected renegotiation" : stdgo.GoString));
            };
            var __tmp__ = @:check2r _c._readHandshake((null : stdgo._internal.crypto.tls.Tls_t_transcripthash.T_transcriptHash)), _msg:stdgo.AnyInterface = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((_msg : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_hellorequestmsg.T_helloRequestMsg>)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_hellorequestmsg.T_helloRequestMsg>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_hellorequestmsg.T_helloRequestMsg>), _1 : false };
            }, _helloReq = __tmp__._0, _ok = __tmp__._1;
            if (!_ok) {
                @:check2r _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                return stdgo._internal.crypto.tls.Tls__unexpectedmessageerror._unexpectedMessageError(stdgo.Go.toInterface(stdgo.Go.asInterface(_helloReq)), _msg);
            };
            if (!(@:checkr _c ?? throw "null pointer dereference")._isClient) {
                return @:check2r _c._sendAlert((100 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            };
            {
                final __value__ = (@:checkr (@:checkr _c ?? throw "null pointer dereference")._config ?? throw "null pointer dereference").renegotiation;
                if (__value__ == ((0 : stdgo._internal.crypto.tls.Tls_renegotiationsupport.RenegotiationSupport))) {
                    return @:check2r _c._sendAlert((100 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                } else if (__value__ == ((1 : stdgo._internal.crypto.tls.Tls_renegotiationsupport.RenegotiationSupport))) {
                    if (((@:checkr _c ?? throw "null pointer dereference")._handshakes > (1 : stdgo.GoInt) : Bool)) {
                        return @:check2r _c._sendAlert((100 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                    };
                } else if (__value__ == ((2 : stdgo._internal.crypto.tls.Tls_renegotiationsupport.RenegotiationSupport))) {} else {
                    @:check2r _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                    return stdgo._internal.errors.Errors_new_.new_(("tls: unknown Renegotiation value" : stdgo.GoString));
                };
            };
            @:check2 (@:checkr _c ?? throw "null pointer dereference")._handshakeMutex.lock();
            {
                final __f__ = @:check2 (@:checkr _c ?? throw "null pointer dereference")._handshakeMutex.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            @:check2 (@:checkr _c ?? throw "null pointer dereference")._isHandshakeComplete.store(false);
            {
                (@:checkr _c ?? throw "null pointer dereference")._handshakeErr = @:check2r _c._clientHandshake(stdgo._internal.context.Context_background.background());
                if ((@:checkr _c ?? throw "null pointer dereference")._handshakeErr == null) {
                    (@:checkr _c ?? throw "null pointer dereference")._handshakes++;
                };
            };
            {
                final __ret__:stdgo.Error = (@:checkr _c ?? throw "null pointer dereference")._handshakeErr;
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
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
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
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return (null : stdgo.Error);
            };
        };
    }
    @:keep
    @:tdfield
    static public function write( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            while (true) {
                var _x = (@:check2 (@:checkr _c ?? throw "null pointer dereference")._activeCall.load() : stdgo.GoInt32);
                if ((_x & (1 : stdgo.GoInt32) : stdgo.GoInt32) != ((0 : stdgo.GoInt32))) {
                    return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.net.Net_errclosed.errClosed };
                };
                if (@:check2 (@:checkr _c ?? throw "null pointer dereference")._activeCall.compareAndSwap(_x, (_x + (2 : stdgo.GoInt32) : stdgo.GoInt32))) {
                    break;
                };
            };
            {
                var _a0 = (-2 : stdgo.GoInt32);
                final __f__ = @:check2 (@:checkr _c ?? throw "null pointer dereference")._activeCall.add;
                __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
            };
            {
                var _err = (@:check2r _c.handshake() : stdgo.Error);
                if (_err != null) {
                    {
                        final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : _err };
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
            };
            @:check2 (@:checkr _c ?? throw "null pointer dereference")._out.lock();
            {
                final __f__ = @:check2 (@:checkr _c ?? throw "null pointer dereference")._out.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            {
                var _err = ((@:checkr _c ?? throw "null pointer dereference")._out._err : stdgo.Error);
                if (_err != null) {
                    {
                        final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : _err };
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
            };
            if (!@:check2 (@:checkr _c ?? throw "null pointer dereference")._isHandshakeComplete.load()) {
                {
                    final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : stdgo.Go.asInterface((80 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert)) };
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            if ((@:checkr _c ?? throw "null pointer dereference")._closeNotifySent) {
                {
                    final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.crypto.tls.Tls__errshutdown._errShutdown };
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            var _m:stdgo.GoInt = (0 : stdgo.GoInt);
            if ((((_b.length) > (1 : stdgo.GoInt) : Bool) && ((@:checkr _c ?? throw "null pointer dereference")._vers == (769 : stdgo.GoUInt16)) : Bool)) {
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert(((@:checkr _c ?? throw "null pointer dereference")._out._cipher : stdgo._internal.crypto.cipher.Cipher_blockmode.BlockMode)) : stdgo._internal.crypto.cipher.Cipher_blockmode.BlockMode), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo._internal.crypto.cipher.Cipher_blockmode.BlockMode), _1 : false };
                    }, __143 = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        var __tmp__ = @:check2r _c._writeRecordLocked((23 : stdgo._internal.crypto.tls.Tls_t_recordtype.T_recordType), (_b.__slice__(0, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err != null) {
                            {
                                final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : @:check2 (@:checkr _c ?? throw "null pointer dereference")._out._setErrorLocked(_err) };
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                                return __ret__;
                            };
                        };
                        {
                            final __tmp__0 = (1 : stdgo.GoInt);
                            final __tmp__1 = (_b.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                            _m = __tmp__0;
                            _b = __tmp__1;
                        };
                    };
                };
            };
            var __tmp__ = @:check2r _c._writeRecordLocked((23 : stdgo._internal.crypto.tls.Tls_t_recordtype.T_recordType), _b), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            {
                final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (_n + _m : stdgo.GoInt), _1 : @:check2 (@:checkr _c ?? throw "null pointer dereference")._out._setErrorLocked(_err) };
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
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Error) };
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
                return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Error) };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _unmarshalHandshakeMessage( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>, _data:stdgo.Slice<stdgo.GoUInt8>, _transcript:stdgo._internal.crypto.tls.Tls_t_transcripthash.T_transcriptHash):{ var _0 : stdgo._internal.crypto.tls.Tls_t_handshakemessage.T_handshakeMessage; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        var _m:stdgo._internal.crypto.tls.Tls_t_handshakemessage.T_handshakeMessage = (null : stdgo._internal.crypto.tls.Tls_t_handshakemessage.T_handshakeMessage);
        {
            final __value__ = _data[(0 : stdgo.GoInt)];
            if (__value__ == ((0 : stdgo.GoUInt8))) {
                _m = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_t_hellorequestmsg.T_helloRequestMsg)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_hellorequestmsg.T_helloRequestMsg>));
            } else if (__value__ == ((1 : stdgo.GoUInt8))) {
                _m = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_t_clienthellomsg.T_clientHelloMsg)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthellomsg.T_clientHelloMsg>));
            } else if (__value__ == ((2 : stdgo.GoUInt8))) {
                _m = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_t_serverhellomsg.T_serverHelloMsg)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhellomsg.T_serverHelloMsg>));
            } else if (__value__ == ((4 : stdgo.GoUInt8))) {
                if ((@:checkr _c ?? throw "null pointer dereference")._vers == ((772 : stdgo.GoUInt16))) {
                    _m = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_t_newsessionticketmsgtls13.T_newSessionTicketMsgTLS13)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_newsessionticketmsgtls13.T_newSessionTicketMsgTLS13>));
                } else {
                    _m = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_t_newsessionticketmsg.T_newSessionTicketMsg)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_newsessionticketmsg.T_newSessionTicketMsg>));
                };
            } else if (__value__ == ((11 : stdgo.GoUInt8))) {
                if ((@:checkr _c ?? throw "null pointer dereference")._vers == ((772 : stdgo.GoUInt16))) {
                    _m = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_t_certificatemsgtls13.T_certificateMsgTLS13)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certificatemsgtls13.T_certificateMsgTLS13>));
                } else {
                    _m = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_t_certificatemsg.T_certificateMsg)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certificatemsg.T_certificateMsg>));
                };
            } else if (__value__ == ((13 : stdgo.GoUInt8))) {
                if ((@:checkr _c ?? throw "null pointer dereference")._vers == ((772 : stdgo.GoUInt16))) {
                    _m = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_t_certificaterequestmsgtls13.T_certificateRequestMsgTLS13)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certificaterequestmsgtls13.T_certificateRequestMsgTLS13>));
                } else {
                    _m = stdgo.Go.asInterface((stdgo.Go.setRef(({ _hasSignatureAlgorithm : ((@:checkr _c ?? throw "null pointer dereference")._vers >= (771 : stdgo.GoUInt16) : Bool) } : stdgo._internal.crypto.tls.Tls_t_certificaterequestmsg.T_certificateRequestMsg)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certificaterequestmsg.T_certificateRequestMsg>));
                };
            } else if (__value__ == ((22 : stdgo.GoUInt8))) {
                _m = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_t_certificatestatusmsg.T_certificateStatusMsg)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certificatestatusmsg.T_certificateStatusMsg>));
            } else if (__value__ == ((12 : stdgo.GoUInt8))) {
                _m = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_t_serverkeyexchangemsg.T_serverKeyExchangeMsg)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverkeyexchangemsg.T_serverKeyExchangeMsg>));
            } else if (__value__ == ((14 : stdgo.GoUInt8))) {
                _m = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_t_serverhellodonemsg.T_serverHelloDoneMsg)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhellodonemsg.T_serverHelloDoneMsg>));
            } else if (__value__ == ((16 : stdgo.GoUInt8))) {
                _m = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_t_clientkeyexchangemsg.T_clientKeyExchangeMsg)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clientkeyexchangemsg.T_clientKeyExchangeMsg>));
            } else if (__value__ == ((15 : stdgo.GoUInt8))) {
                _m = stdgo.Go.asInterface((stdgo.Go.setRef(({ _hasSignatureAlgorithm : ((@:checkr _c ?? throw "null pointer dereference")._vers >= (771 : stdgo.GoUInt16) : Bool) } : stdgo._internal.crypto.tls.Tls_t_certificateverifymsg.T_certificateVerifyMsg)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certificateverifymsg.T_certificateVerifyMsg>));
            } else if (__value__ == ((20 : stdgo.GoUInt8))) {
                _m = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_t_finishedmsg.T_finishedMsg)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_finishedmsg.T_finishedMsg>));
            } else if (__value__ == ((8 : stdgo.GoUInt8))) {
                _m = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_t_encryptedextensionsmsg.T_encryptedExtensionsMsg)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_encryptedextensionsmsg.T_encryptedExtensionsMsg>));
            } else if (__value__ == ((5 : stdgo.GoUInt8))) {
                _m = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_t_endofearlydatamsg.T_endOfEarlyDataMsg)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_endofearlydatamsg.T_endOfEarlyDataMsg>));
            } else if (__value__ == ((24 : stdgo.GoUInt8))) {
                _m = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_t_keyupdatemsg.T_keyUpdateMsg)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_keyupdatemsg.T_keyUpdateMsg>));
            } else {
                return { _0 : (null : stdgo._internal.crypto.tls.Tls_t_handshakemessage.T_handshakeMessage), _1 : @:check2 (@:checkr _c ?? throw "null pointer dereference")._in._setErrorLocked(@:check2r _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert))) };
            };
        };
        _data = ((null : stdgo.Slice<stdgo.GoUInt8>).__append__(...(_data : Array<stdgo.GoUInt8>)));
        if (!_m._unmarshal(_data)) {
            return { _0 : (null : stdgo._internal.crypto.tls.Tls_t_handshakemessage.T_handshakeMessage), _1 : @:check2 (@:checkr _c ?? throw "null pointer dereference")._in._setErrorLocked(@:check2r _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert))) };
        };
        if (_transcript != null) {
            _transcript.write(_data);
        };
        return { _0 : _m, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _readHandshake( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>, _transcript:stdgo._internal.crypto.tls.Tls_t_transcripthash.T_transcriptHash):{ var _0 : stdgo.AnyInterface; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        {
            var _err = (@:check2r _c._readHandshakeBytes((4 : stdgo.GoInt)) : stdgo.Error);
            if (_err != null) {
                return { _0 : (null : stdgo.AnyInterface), _1 : _err };
            };
        };
        var _data = @:check2 (@:checkr _c ?? throw "null pointer dereference")._hand.bytes();
        var _n = ((((_data[(1 : stdgo.GoInt)] : stdgo.GoInt) << (16i64 : stdgo.GoUInt64) : stdgo.GoInt) | ((_data[(2 : stdgo.GoInt)] : stdgo.GoInt) << (8i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoInt) | (_data[(3 : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt);
        if ((_n > (65536 : stdgo.GoInt) : Bool)) {
            @:check2r _c._sendAlertLocked((80 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            return { _0 : (null : stdgo.AnyInterface), _1 : @:check2 (@:checkr _c ?? throw "null pointer dereference")._in._setErrorLocked(stdgo._internal.fmt.Fmt_errorf.errorf(("tls: handshake message of length %d bytes exceeds maximum of %d bytes" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface((65536 : stdgo.GoInt)))) };
        };
        {
            var _err = (@:check2r _c._readHandshakeBytes(((4 : stdgo.GoInt) + _n : stdgo.GoInt)) : stdgo.Error);
            if (_err != null) {
                return { _0 : (null : stdgo.AnyInterface), _1 : _err };
            };
        };
        _data = @:check2 (@:checkr _c ?? throw "null pointer dereference")._hand.next(((4 : stdgo.GoInt) + _n : stdgo.GoInt));
        return @:check2r _c._unmarshalHandshakeMessage(_data, _transcript);
    }
    @:keep
    @:tdfield
    static public function _readHandshakeBytes( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>, _n:stdgo.GoInt):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        if (((@:checkr _c ?? throw "null pointer dereference")._quic != null && (((@:checkr _c ?? throw "null pointer dereference")._quic : Dynamic).__nil__ == null || !((@:checkr _c ?? throw "null pointer dereference")._quic : Dynamic).__nil__))) {
            return @:check2r _c._quicReadHandshakeBytes(_n);
        };
        while ((@:check2 (@:checkr _c ?? throw "null pointer dereference")._hand.len() < _n : Bool)) {
            {
                var _err = (@:check2r _c._readRecord() : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _writeChangeCipherRecord( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            @:check2 (@:checkr _c ?? throw "null pointer dereference")._out.lock();
            {
                final __f__ = @:check2 (@:checkr _c ?? throw "null pointer dereference")._out.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            var __tmp__ = @:check2r _c._writeRecordLocked((20 : stdgo._internal.crypto.tls.Tls_t_recordtype.T_recordType), (new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(1 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)), __89:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
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
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
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
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return (null : stdgo.Error);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _writeHandshakeRecord( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>, _msg:stdgo._internal.crypto.tls.Tls_t_handshakemessage.T_handshakeMessage, _transcript:stdgo._internal.crypto.tls.Tls_t_transcripthash.T_transcriptHash):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            @:check2 (@:checkr _c ?? throw "null pointer dereference")._out.lock();
            {
                final __f__ = @:check2 (@:checkr _c ?? throw "null pointer dereference")._out.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            var __tmp__ = _msg._marshal(), _data:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                {
                    final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : _err };
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            if (_transcript != null) {
                _transcript.write(_data);
            };
            {
                final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = @:check2r _c._writeRecordLocked((22 : stdgo._internal.crypto.tls.Tls_t_recordtype.T_recordType), _data);
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
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Error) };
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
                return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Error) };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _writeRecordLocked( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>, _typ:stdgo._internal.crypto.tls.Tls_t_recordtype.T_recordType, _data:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            if (((@:checkr _c ?? throw "null pointer dereference")._quic != null && (((@:checkr _c ?? throw "null pointer dereference")._quic : Dynamic).__nil__ == null || !((@:checkr _c ?? throw "null pointer dereference")._quic : Dynamic).__nil__))) {
                if (_typ != ((22 : stdgo._internal.crypto.tls.Tls_t_recordtype.T_recordType))) {
                    return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.errors.Errors_new_.new_(("tls: internal error: sending non-handshake message to QUIC transport" : stdgo.GoString)) };
                };
                @:check2r _c._quicWriteCryptoData((@:checkr _c ?? throw "null pointer dereference")._out._level, _data);
                if (!(@:checkr _c ?? throw "null pointer dereference")._buffering) {
                    {
                        var __tmp__ = @:check2r _c._flush(), __105:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err != null) {
                            return { _0 : (0 : stdgo.GoInt), _1 : _err };
                        };
                    };
                };
                return { _0 : (_data.length), _1 : (null : stdgo.Error) };
            };
            var _outBufPtr = (stdgo.Go.typeAssert((@:check2 stdgo._internal.crypto.tls.Tls__outbufpool._outBufPool.get() : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>);
            var _outBuf = (_outBufPtr : stdgo.Slice<stdgo.GoUInt8>);
            {
                __deferstack__.unshift({ ran : false, f : () -> ({
                    var a = function():Void {
                        (_outBufPtr : stdgo.Slice<stdgo.GoUInt8>).__setData__(_outBuf);
                        @:check2 stdgo._internal.crypto.tls.Tls__outbufpool._outBufPool.put(stdgo.Go.toInterface(_outBufPtr));
                    };
                    a();
                }) });
            };
            var _n:stdgo.GoInt = (0 : stdgo.GoInt);
            while (((_data.length) > (0 : stdgo.GoInt) : Bool)) {
                var _m = (_data.length : stdgo.GoInt);
                {
                    var _maxPayload = (@:check2r _c._maxPayloadSizeForWrite(_typ) : stdgo.GoInt);
                    if ((_m > _maxPayload : Bool)) {
                        _m = _maxPayload;
                    };
                };
                {
                    var __tmp__ = stdgo._internal.crypto.tls.Tls__sliceforappend._sliceForAppend((_outBuf.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (5 : stdgo.GoInt));
                    _outBuf = @:tmpset0 __tmp__._1;
                };
                _outBuf[(0 : stdgo.GoInt)] = (_typ : stdgo.GoUInt8);
                var _vers = ((@:checkr _c ?? throw "null pointer dereference")._vers : stdgo.GoUInt16);
                if (_vers == ((0 : stdgo.GoUInt16))) {
                    _vers = (769 : stdgo.GoUInt16);
                } else if (_vers == ((772 : stdgo.GoUInt16))) {
                    _vers = (771 : stdgo.GoUInt16);
                };
                _outBuf[(1 : stdgo.GoInt)] = ((_vers >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoUInt8);
                _outBuf[(2 : stdgo.GoInt)] = (_vers : stdgo.GoUInt8);
                _outBuf[(3 : stdgo.GoInt)] = ((_m >> (8i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoUInt8);
                _outBuf[(4 : stdgo.GoInt)] = (_m : stdgo.GoUInt8);
                var _err:stdgo.Error = (null : stdgo.Error);
                {
                    var __tmp__ = @:check2 (@:checkr _c ?? throw "null pointer dereference")._out._encrypt(_outBuf, (_data.__slice__(0, _m) : stdgo.Slice<stdgo.GoUInt8>), @:check2r (@:checkr _c ?? throw "null pointer dereference")._config._rand());
                    _outBuf = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                if (_err != null) {
                    {
                        final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : _err };
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
                {
                    var __tmp__ = @:check2r _c._write(_outBuf), __117:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        {
                            final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : _err };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                    };
                };
                _n = (_n + (_m) : stdgo.GoInt);
                _data = (_data.__slice__(_m) : stdgo.Slice<stdgo.GoUInt8>);
            };
            if (((_typ == (20 : stdgo._internal.crypto.tls.Tls_t_recordtype.T_recordType)) && ((@:checkr _c ?? throw "null pointer dereference")._vers != (772 : stdgo.GoUInt16)) : Bool)) {
                {
                    var _err = (@:check2 (@:checkr _c ?? throw "null pointer dereference")._out._changeCipherSpec() : stdgo.Error);
                    if (_err != null) {
                        {
                            final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : @:check2r _c._sendAlertLocked((stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo._internal.crypto.tls.Tls_t_alert.T_alert)) : stdgo._internal.crypto.tls.Tls_t_alert.T_alert)) };
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
            {
                final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : (null : stdgo.Error) };
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
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Error) };
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
                return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Error) };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _flush( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        if (((@:checkr _c ?? throw "null pointer dereference")._sendBuf.length) == ((0 : stdgo.GoInt))) {
            return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Error) };
        };
        var __tmp__ = (@:checkr _c ?? throw "null pointer dereference")._conn.write((@:checkr _c ?? throw "null pointer dereference")._sendBuf), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        (@:checkr _c ?? throw "null pointer dereference")._bytesSent = ((@:checkr _c ?? throw "null pointer dereference")._bytesSent + ((_n : stdgo.GoInt64)) : stdgo.GoInt64);
        (@:checkr _c ?? throw "null pointer dereference")._sendBuf = (null : stdgo.Slice<stdgo.GoUInt8>);
        (@:checkr _c ?? throw "null pointer dereference")._buffering = false;
        return { _0 : _n, _1 : _err };
    }
    @:keep
    @:tdfield
    static public function _write( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>, _data:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        if ((@:checkr _c ?? throw "null pointer dereference")._buffering) {
            (@:checkr _c ?? throw "null pointer dereference")._sendBuf = ((@:checkr _c ?? throw "null pointer dereference")._sendBuf.__append__(...(_data : Array<stdgo.GoUInt8>)));
            return { _0 : (_data.length), _1 : (null : stdgo.Error) };
        };
        var __tmp__ = (@:checkr _c ?? throw "null pointer dereference")._conn.write(_data), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        (@:checkr _c ?? throw "null pointer dereference")._bytesSent = ((@:checkr _c ?? throw "null pointer dereference")._bytesSent + ((_n : stdgo.GoInt64)) : stdgo.GoInt64);
        return { _0 : _n, _1 : _err };
    }
    @:keep
    @:tdfield
    static public function _maxPayloadSizeForWrite( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>, _typ:stdgo._internal.crypto.tls.Tls_t_recordtype.T_recordType):stdgo.GoInt {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        if (((@:checkr (@:checkr _c ?? throw "null pointer dereference")._config ?? throw "null pointer dereference").dynamicRecordSizingDisabled || (_typ != (23 : stdgo._internal.crypto.tls.Tls_t_recordtype.T_recordType)) : Bool)) {
            return (16384 : stdgo.GoInt);
        };
        if (((@:checkr _c ?? throw "null pointer dereference")._bytesSent >= (131072i64 : stdgo.GoInt64) : Bool)) {
            return (16384 : stdgo.GoInt);
        };
        var _payloadBytes = ((1203 : stdgo.GoInt) - @:check2 (@:checkr _c ?? throw "null pointer dereference")._out._explicitNonceLen() : stdgo.GoInt);
        if ((@:checkr _c ?? throw "null pointer dereference")._out._cipher != null) {
            {
                final __type__ = (@:checkr _c ?? throw "null pointer dereference")._out._cipher;
                if (stdgo.Go.typeEquals((__type__ : stdgo._internal.crypto.cipher.Cipher_stream.Stream))) {
                    var _ciph:stdgo._internal.crypto.cipher.Cipher_stream.Stream = __type__ == null ? (null : stdgo._internal.crypto.cipher.Cipher_stream.Stream) : __type__.__underlying__() == null ? (null : stdgo._internal.crypto.cipher.Cipher_stream.Stream) : __type__ == null ? (null : stdgo._internal.crypto.cipher.Cipher_stream.Stream) : __type__.__underlying__().value;
                    _payloadBytes = (_payloadBytes - ((@:checkr _c ?? throw "null pointer dereference")._out._mac.size()) : stdgo.GoInt);
                } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.crypto.cipher.Cipher_aead.AEAD))) {
                    var _ciph:stdgo._internal.crypto.cipher.Cipher_aead.AEAD = __type__ == null ? (null : stdgo._internal.crypto.cipher.Cipher_aead.AEAD) : __type__.__underlying__() == null ? (null : stdgo._internal.crypto.cipher.Cipher_aead.AEAD) : __type__ == null ? (null : stdgo._internal.crypto.cipher.Cipher_aead.AEAD) : __type__.__underlying__().value;
                    _payloadBytes = (_payloadBytes - (_ciph.overhead()) : stdgo.GoInt);
                } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.crypto.tls.Tls_t_cbcmode.T_cbcMode))) {
                    var _ciph:stdgo._internal.crypto.tls.Tls_t_cbcmode.T_cbcMode = __type__ == null ? (null : stdgo._internal.crypto.tls.Tls_t_cbcmode.T_cbcMode) : __type__.__underlying__() == null ? (null : stdgo._internal.crypto.tls.Tls_t_cbcmode.T_cbcMode) : __type__ == null ? (null : stdgo._internal.crypto.tls.Tls_t_cbcmode.T_cbcMode) : __type__.__underlying__().value;
                    var _blockSize = (_ciph.blockSize() : stdgo.GoInt);
                    _payloadBytes = (((_payloadBytes & (-1 ^ (_blockSize - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt)) - (1 : stdgo.GoInt) : stdgo.GoInt);
                    _payloadBytes = (_payloadBytes - ((@:checkr _c ?? throw "null pointer dereference")._out._mac.size()) : stdgo.GoInt);
                } else {
                    var _ciph:stdgo.AnyInterface = __type__?.__underlying__();
                    throw stdgo.Go.toInterface(("unknown cipher type" : stdgo.GoString));
                };
            };
        };
        if ((@:checkr _c ?? throw "null pointer dereference")._vers == ((772 : stdgo.GoUInt16))) {
            _payloadBytes--;
        };
        var _pkt = ((@:checkr _c ?? throw "null pointer dereference")._packetsSent : stdgo.GoInt64);
        (@:checkr _c ?? throw "null pointer dereference")._packetsSent++;
        if ((_pkt > (1000i64 : stdgo.GoInt64) : Bool)) {
            return (16384 : stdgo.GoInt);
        };
        var _n = (_payloadBytes * ((_pkt + (1i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoInt) : stdgo.GoInt);
        if ((_n > (16384 : stdgo.GoInt) : Bool)) {
            _n = (16384 : stdgo.GoInt);
        };
        return _n;
    }
    @:keep
    @:tdfield
    static public function _sendAlert( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>, _err:stdgo._internal.crypto.tls.Tls_t_alert.T_alert):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            @:check2 (@:checkr _c ?? throw "null pointer dereference")._out.lock();
            {
                final __f__ = @:check2 (@:checkr _c ?? throw "null pointer dereference")._out.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            {
                final __ret__:stdgo.Error = @:check2r _c._sendAlertLocked(_err);
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
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
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
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return (null : stdgo.Error);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _sendAlertLocked( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>, _err:stdgo._internal.crypto.tls.Tls_t_alert.T_alert):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        if (((@:checkr _c ?? throw "null pointer dereference")._quic != null && (((@:checkr _c ?? throw "null pointer dereference")._quic : Dynamic).__nil__ == null || !((@:checkr _c ?? throw "null pointer dereference")._quic : Dynamic).__nil__))) {
            return @:check2 (@:checkr _c ?? throw "null pointer dereference")._out._setErrorLocked(stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("local error" : stdgo.GoString), err : stdgo.Go.asInterface(_err) } : stdgo._internal.net.Net_operror.OpError)) : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>)));
        };
        {
            final __value__ = _err;
            if (__value__ == ((100 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert)) || __value__ == ((0 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert))) {
                (@:checkr _c ?? throw "null pointer dereference")._tmp[(0 : stdgo.GoInt)] = (1 : stdgo.GoUInt8);
            } else {
                (@:checkr _c ?? throw "null pointer dereference")._tmp[(0 : stdgo.GoInt)] = (2 : stdgo.GoUInt8);
            };
        };
        (@:checkr _c ?? throw "null pointer dereference")._tmp[(1 : stdgo.GoInt)] = (_err : stdgo.GoUInt8);
        var __tmp__ = @:check2r _c._writeRecordLocked((21 : stdgo._internal.crypto.tls.Tls_t_recordtype.T_recordType), ((@:checkr _c ?? throw "null pointer dereference")._tmp.__slice__((0 : stdgo.GoInt), (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), __97:stdgo.GoInt = __tmp__._0, _writeErr:stdgo.Error = __tmp__._1;
        if (_err == ((0 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert))) {
            return _writeErr;
        };
        return @:check2 (@:checkr _c ?? throw "null pointer dereference")._out._setErrorLocked(stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("local error" : stdgo.GoString), err : stdgo.Go.asInterface(_err) } : stdgo._internal.net.Net_operror.OpError)) : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>)));
    }
    @:keep
    @:tdfield
    static public function _readFromUntil( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>, _r:stdgo._internal.io.Io_reader.Reader, _n:stdgo.GoInt):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        if ((@:check2 (@:checkr _c ?? throw "null pointer dereference")._rawInput.len() >= _n : Bool)) {
            return (null : stdgo.Error);
        };
        var _needs = (_n - @:check2 (@:checkr _c ?? throw "null pointer dereference")._rawInput.len() : stdgo.GoInt);
        @:check2 (@:checkr _c ?? throw "null pointer dereference")._rawInput.grow((_needs + (512 : stdgo.GoInt) : stdgo.GoInt));
        var __tmp__ = @:check2 (@:checkr _c ?? throw "null pointer dereference")._rawInput.readFrom(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.crypto.tls.Tls_t_atleastreader.T_atLeastReader(_r, (_needs : stdgo.GoInt64)) : stdgo._internal.crypto.tls.Tls_t_atleastreader.T_atLeastReader)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_atleastreader.T_atLeastReader>))), __97:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return _err;
    }
    @:keep
    @:tdfield
    static public function _retryReadRecord( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>, _expectChangeCipherSpec:Bool):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        (@:checkr _c ?? throw "null pointer dereference")._retryCount++;
        if (((@:checkr _c ?? throw "null pointer dereference")._retryCount > (16 : stdgo.GoInt) : Bool)) {
            @:check2r _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            return @:check2 (@:checkr _c ?? throw "null pointer dereference")._in._setErrorLocked(stdgo._internal.errors.Errors_new_.new_(("tls: too many ignored records" : stdgo.GoString)));
        };
        return @:check2r _c._readRecordOrCCS(_expectChangeCipherSpec);
    }
    @:keep
    @:tdfield
    static public function _readRecordOrCCS( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>, _expectChangeCipherSpec:Bool):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        if ((@:checkr _c ?? throw "null pointer dereference")._in._err != null) {
            return (@:checkr _c ?? throw "null pointer dereference")._in._err;
        };
        var _handshakeComplete = (@:check2 (@:checkr _c ?? throw "null pointer dereference")._isHandshakeComplete.load() : Bool);
        if (@:check2 (@:checkr _c ?? throw "null pointer dereference")._input.len() != ((0 : stdgo.GoInt))) {
            return @:check2 (@:checkr _c ?? throw "null pointer dereference")._in._setErrorLocked(stdgo._internal.errors.Errors_new_.new_(("tls: internal error: attempted to read record with pending application data" : stdgo.GoString)));
        };
        @:check2 (@:checkr _c ?? throw "null pointer dereference")._input.reset((null : stdgo.Slice<stdgo.GoUInt8>));
        if (((@:checkr _c ?? throw "null pointer dereference")._quic != null && (((@:checkr _c ?? throw "null pointer dereference")._quic : Dynamic).__nil__ == null || !((@:checkr _c ?? throw "null pointer dereference")._quic : Dynamic).__nil__))) {
            return @:check2 (@:checkr _c ?? throw "null pointer dereference")._in._setErrorLocked(stdgo._internal.errors.Errors_new_.new_(("tls: internal error: attempted to read record with QUIC transport" : stdgo.GoString)));
        };
        {
            var _err = (@:check2r _c._readFromUntil((@:checkr _c ?? throw "null pointer dereference")._conn, (5 : stdgo.GoInt)) : stdgo.Error);
            if (_err != null) {
                if (((stdgo.Go.toInterface(_err) == stdgo.Go.toInterface(stdgo._internal.io.Io_errunexpectedeof.errUnexpectedEOF)) && (@:check2 (@:checkr _c ?? throw "null pointer dereference")._rawInput.len() == (0 : stdgo.GoInt)) : Bool)) {
                    _err = stdgo._internal.io.Io_eof.eOF;
                };
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo._internal.net.Net_error.Error)) : stdgo._internal.net.Net_error.Error), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo._internal.net.Net_error.Error), _1 : false };
                    }, _e = __tmp__._0, _ok = __tmp__._1;
                    if ((!_ok || !_e.temporary() : Bool)) {
                        @:check2 (@:checkr _c ?? throw "null pointer dereference")._in._setErrorLocked(_err);
                    };
                };
                return _err;
            };
        };
        var _hdr = (@:check2 (@:checkr _c ?? throw "null pointer dereference")._rawInput.bytes().__slice__(0, (5 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        var _typ = (_hdr[(0 : stdgo.GoInt)] : stdgo._internal.crypto.tls.Tls_t_recordtype.T_recordType);
        if ((!_handshakeComplete && (_typ == (128 : stdgo._internal.crypto.tls.Tls_t_recordtype.T_recordType)) : Bool)) {
            @:check2r _c._sendAlert((70 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            return @:check2 (@:checkr _c ?? throw "null pointer dereference")._in._setErrorLocked(stdgo.Go.asInterface(@:check2r _c._newRecordHeaderError((null : stdgo._internal.net.Net_conn.Conn), ("unsupported SSLv2 handshake received" : stdgo.GoString))));
        };
        var _vers = (((_hdr[(1 : stdgo.GoInt)] : stdgo.GoUInt16) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) | (_hdr[(2 : stdgo.GoInt)] : stdgo.GoUInt16) : stdgo.GoUInt16);
        var _expectedVers = ((@:checkr _c ?? throw "null pointer dereference")._vers : stdgo.GoUInt16);
        if (_expectedVers == ((772 : stdgo.GoUInt16))) {
            _expectedVers = (771 : stdgo.GoUInt16);
        };
        var _n = (((_hdr[(3 : stdgo.GoInt)] : stdgo.GoInt) << (8i64 : stdgo.GoUInt64) : stdgo.GoInt) | (_hdr[(4 : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt);
        if (((@:checkr _c ?? throw "null pointer dereference")._haveVers && (_vers != _expectedVers) : Bool)) {
            @:check2r _c._sendAlert((70 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            var _msg = (stdgo._internal.fmt.Fmt_sprintf.sprintf(("received record with version %x when expecting version %x" : stdgo.GoString), stdgo.Go.toInterface(_vers), stdgo.Go.toInterface(_expectedVers))?.__copy__() : stdgo.GoString);
            return @:check2 (@:checkr _c ?? throw "null pointer dereference")._in._setErrorLocked(stdgo.Go.asInterface(@:check2r _c._newRecordHeaderError((null : stdgo._internal.net.Net_conn.Conn), _msg?.__copy__())));
        };
        if (!(@:checkr _c ?? throw "null pointer dereference")._haveVers) {
            if (((((_typ != (21 : stdgo._internal.crypto.tls.Tls_t_recordtype.T_recordType)) && (_typ != (22 : stdgo._internal.crypto.tls.Tls_t_recordtype.T_recordType)) : Bool)) || (_vers >= (4096 : stdgo.GoUInt16) : Bool) : Bool)) {
                return @:check2 (@:checkr _c ?? throw "null pointer dereference")._in._setErrorLocked(stdgo.Go.asInterface(@:check2r _c._newRecordHeaderError((@:checkr _c ?? throw "null pointer dereference")._conn, ("first record does not look like a TLS handshake" : stdgo.GoString))));
            };
        };
        if ((((@:checkr _c ?? throw "null pointer dereference")._vers == ((772 : stdgo.GoUInt16)) && (_n > (16640 : stdgo.GoInt) : Bool) : Bool) || (_n > (18432 : stdgo.GoInt) : Bool) : Bool)) {
            @:check2r _c._sendAlert((22 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            var _msg = (stdgo._internal.fmt.Fmt_sprintf.sprintf(("oversized record received with length %d" : stdgo.GoString), stdgo.Go.toInterface(_n))?.__copy__() : stdgo.GoString);
            return @:check2 (@:checkr _c ?? throw "null pointer dereference")._in._setErrorLocked(stdgo.Go.asInterface(@:check2r _c._newRecordHeaderError((null : stdgo._internal.net.Net_conn.Conn), _msg?.__copy__())));
        };
        {
            var _err = (@:check2r _c._readFromUntil((@:checkr _c ?? throw "null pointer dereference")._conn, ((5 : stdgo.GoInt) + _n : stdgo.GoInt)) : stdgo.Error);
            if (_err != null) {
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo._internal.net.Net_error.Error)) : stdgo._internal.net.Net_error.Error), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo._internal.net.Net_error.Error), _1 : false };
                    }, _e = __tmp__._0, _ok = __tmp__._1;
                    if ((!_ok || !_e.temporary() : Bool)) {
                        @:check2 (@:checkr _c ?? throw "null pointer dereference")._in._setErrorLocked(_err);
                    };
                };
                return _err;
            };
        };
        var _record = @:check2 (@:checkr _c ?? throw "null pointer dereference")._rawInput.next(((5 : stdgo.GoInt) + _n : stdgo.GoInt));
        var __tmp__ = @:check2 (@:checkr _c ?? throw "null pointer dereference")._in._decrypt(_record), _data:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _typ:stdgo._internal.crypto.tls.Tls_t_recordtype.T_recordType = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return @:check2 (@:checkr _c ?? throw "null pointer dereference")._in._setErrorLocked(@:check2r _c._sendAlert((stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo._internal.crypto.tls.Tls_t_alert.T_alert)) : stdgo._internal.crypto.tls.Tls_t_alert.T_alert)));
        };
        if (((_data.length) > (16384 : stdgo.GoInt) : Bool)) {
            return @:check2 (@:checkr _c ?? throw "null pointer dereference")._in._setErrorLocked(@:check2r _c._sendAlert((22 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert)));
        };
        if ((((@:checkr _c ?? throw "null pointer dereference")._in._cipher == null) && (_typ == (23 : stdgo._internal.crypto.tls.Tls_t_recordtype.T_recordType)) : Bool)) {
            return @:check2 (@:checkr _c ?? throw "null pointer dereference")._in._setErrorLocked(@:check2r _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert)));
        };
        if (((_typ != ((21 : stdgo._internal.crypto.tls.Tls_t_recordtype.T_recordType)) && _typ != ((20 : stdgo._internal.crypto.tls.Tls_t_recordtype.T_recordType)) : Bool) && ((_data.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
            (@:checkr _c ?? throw "null pointer dereference")._retryCount = (0 : stdgo.GoInt);
        };
        if ((((@:checkr _c ?? throw "null pointer dereference")._vers == ((772 : stdgo.GoUInt16)) && _typ != ((22 : stdgo._internal.crypto.tls.Tls_t_recordtype.T_recordType)) : Bool) && (@:check2 (@:checkr _c ?? throw "null pointer dereference")._hand.len() > (0 : stdgo.GoInt) : Bool) : Bool)) {
            return @:check2 (@:checkr _c ?? throw "null pointer dereference")._in._setErrorLocked(@:check2r _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert)));
        };
        {
            final __value__ = _typ;
            if (__value__ == ((21 : stdgo._internal.crypto.tls.Tls_t_recordtype.T_recordType))) {
                if (((@:checkr _c ?? throw "null pointer dereference")._quic != null && (((@:checkr _c ?? throw "null pointer dereference")._quic : Dynamic).__nil__ == null || !((@:checkr _c ?? throw "null pointer dereference")._quic : Dynamic).__nil__))) {
                    return @:check2 (@:checkr _c ?? throw "null pointer dereference")._in._setErrorLocked(@:check2r _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert)));
                };
                if ((_data.length) != ((2 : stdgo.GoInt))) {
                    return @:check2 (@:checkr _c ?? throw "null pointer dereference")._in._setErrorLocked(@:check2r _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert)));
                };
                if ((_data[(1 : stdgo.GoInt)] : stdgo._internal.crypto.tls.Tls_t_alert.T_alert) == ((0 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert))) {
                    return @:check2 (@:checkr _c ?? throw "null pointer dereference")._in._setErrorLocked(stdgo._internal.io.Io_eof.eOF);
                };
                if ((@:checkr _c ?? throw "null pointer dereference")._vers == ((772 : stdgo.GoUInt16))) {
                    return @:check2 (@:checkr _c ?? throw "null pointer dereference")._in._setErrorLocked(stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("remote error" : stdgo.GoString), err : stdgo.Go.asInterface((_data[(1 : stdgo.GoInt)] : stdgo._internal.crypto.tls.Tls_t_alert.T_alert)) } : stdgo._internal.net.Net_operror.OpError)) : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>)));
                };
                {
                    final __value__ = _data[(0 : stdgo.GoInt)];
                    if (__value__ == ((1 : stdgo.GoUInt8))) {
                        return @:check2r _c._retryReadRecord(_expectChangeCipherSpec);
                    } else if (__value__ == ((2 : stdgo.GoUInt8))) {
                        return @:check2 (@:checkr _c ?? throw "null pointer dereference")._in._setErrorLocked(stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("remote error" : stdgo.GoString), err : stdgo.Go.asInterface((_data[(1 : stdgo.GoInt)] : stdgo._internal.crypto.tls.Tls_t_alert.T_alert)) } : stdgo._internal.net.Net_operror.OpError)) : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>)));
                    } else {
                        return @:check2 (@:checkr _c ?? throw "null pointer dereference")._in._setErrorLocked(@:check2r _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert)));
                    };
                };
            } else if (__value__ == ((20 : stdgo._internal.crypto.tls.Tls_t_recordtype.T_recordType))) {
                if (((_data.length != (1 : stdgo.GoInt)) || (_data[(0 : stdgo.GoInt)] != (1 : stdgo.GoUInt8)) : Bool)) {
                    return @:check2 (@:checkr _c ?? throw "null pointer dereference")._in._setErrorLocked(@:check2r _c._sendAlert((50 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert)));
                };
                if ((@:check2 (@:checkr _c ?? throw "null pointer dereference")._hand.len() > (0 : stdgo.GoInt) : Bool)) {
                    return @:check2 (@:checkr _c ?? throw "null pointer dereference")._in._setErrorLocked(@:check2r _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert)));
                };
                if ((@:checkr _c ?? throw "null pointer dereference")._vers == ((772 : stdgo.GoUInt16))) {
                    return @:check2r _c._retryReadRecord(_expectChangeCipherSpec);
                };
                if (!_expectChangeCipherSpec) {
                    return @:check2 (@:checkr _c ?? throw "null pointer dereference")._in._setErrorLocked(@:check2r _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert)));
                };
                {
                    var _err = (@:check2 (@:checkr _c ?? throw "null pointer dereference")._in._changeCipherSpec() : stdgo.Error);
                    if (_err != null) {
                        return @:check2 (@:checkr _c ?? throw "null pointer dereference")._in._setErrorLocked(@:check2r _c._sendAlert((stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo._internal.crypto.tls.Tls_t_alert.T_alert)) : stdgo._internal.crypto.tls.Tls_t_alert.T_alert)));
                    };
                };
            } else if (__value__ == ((23 : stdgo._internal.crypto.tls.Tls_t_recordtype.T_recordType))) {
                if ((!_handshakeComplete || _expectChangeCipherSpec : Bool)) {
                    return @:check2 (@:checkr _c ?? throw "null pointer dereference")._in._setErrorLocked(@:check2r _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert)));
                };
                if ((_data.length) == ((0 : stdgo.GoInt))) {
                    return @:check2r _c._retryReadRecord(_expectChangeCipherSpec);
                };
                @:check2 (@:checkr _c ?? throw "null pointer dereference")._input.reset(_data);
            } else if (__value__ == ((22 : stdgo._internal.crypto.tls.Tls_t_recordtype.T_recordType))) {
                if (((_data.length == (0 : stdgo.GoInt)) || _expectChangeCipherSpec : Bool)) {
                    return @:check2 (@:checkr _c ?? throw "null pointer dereference")._in._setErrorLocked(@:check2r _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert)));
                };
                @:check2 (@:checkr _c ?? throw "null pointer dereference")._hand.write(_data);
            } else {
                return @:check2 (@:checkr _c ?? throw "null pointer dereference")._in._setErrorLocked(@:check2r _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert)));
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _readChangeCipherSpec( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        return @:check2r _c._readRecordOrCCS(true);
    }
    @:keep
    @:tdfield
    static public function _readRecord( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        return @:check2r _c._readRecordOrCCS(false);
    }
    @:keep
    @:tdfield
    static public function _newRecordHeaderError( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>, _conn:stdgo._internal.net.Net_conn.Conn, _msg:stdgo.GoString):stdgo._internal.crypto.tls.Tls_recordheadererror.RecordHeaderError {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        var _err = ({} : stdgo._internal.crypto.tls.Tls_recordheadererror.RecordHeaderError);
        _err.msg = _msg?.__copy__();
        _err.conn = _conn;
        (_err.recordHeader.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(@:check2 (@:checkr _c ?? throw "null pointer dereference")._rawInput.bytes());
        return _err = _err?.__copy__();
    }
    @:keep
    @:tdfield
    static public function netConn( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>):stdgo._internal.net.Net_conn.Conn {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        return (@:checkr _c ?? throw "null pointer dereference")._conn;
    }
    @:keep
    @:tdfield
    static public function setWriteDeadline( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>, _t:stdgo._internal.time.Time_time.Time):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        return (@:checkr _c ?? throw "null pointer dereference")._conn.setWriteDeadline(_t?.__copy__());
    }
    @:keep
    @:tdfield
    static public function setReadDeadline( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>, _t:stdgo._internal.time.Time_time.Time):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        return (@:checkr _c ?? throw "null pointer dereference")._conn.setReadDeadline(_t?.__copy__());
    }
    @:keep
    @:tdfield
    static public function setDeadline( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>, _t:stdgo._internal.time.Time_time.Time):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        return (@:checkr _c ?? throw "null pointer dereference")._conn.setDeadline(_t?.__copy__());
    }
    @:keep
    @:tdfield
    static public function remoteAddr( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>):stdgo._internal.net.Net_addr.Addr {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        return (@:checkr _c ?? throw "null pointer dereference")._conn.remoteAddr();
    }
    @:keep
    @:tdfield
    static public function localAddr( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>):stdgo._internal.net.Net_addr.Addr {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        return (@:checkr _c ?? throw "null pointer dereference")._conn.localAddr();
    }
}
