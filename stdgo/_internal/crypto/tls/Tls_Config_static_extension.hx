package stdgo._internal.crypto.tls;
@:keep @:allow(stdgo._internal.crypto.tls.Tls.Config_asInterface) class Config_static_extension {
    @:keep
    static public function _decryptTicket( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>, _encrypted:stdgo.Slice<stdgo.GoUInt8>, _ticketKeys:stdgo.Slice<stdgo._internal.crypto.tls.Tls_T_ticketKey.T_ticketKey>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config> = _c;
        if (((_encrypted.length) < (48 : stdgo.GoInt) : Bool)) {
            return (null : stdgo.Slice<stdgo.GoUInt8>);
        };
        var _iv = (_encrypted.__slice__(0, (16 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        var _ciphertext = (_encrypted.__slice__((16 : stdgo.GoInt), ((_encrypted.length) - (32 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        var _authenticated = (_encrypted.__slice__(0, ((_encrypted.length) - (32 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        var _macBytes = (_encrypted.__slice__(((_encrypted.length) - (32 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        for (__65 => _key in _ticketKeys) {
            var _mac = (stdgo._internal.crypto.hmac.Hmac_new_.new_(stdgo._internal.crypto.sha256.Sha256_new_.new_, (_key._hmacKey.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.hash.Hash_Hash.Hash);
            _mac.write(_authenticated);
            var _expected = _mac.sum((null : stdgo.Slice<stdgo.GoUInt8>));
            if (stdgo._internal.crypto.subtle.Subtle_constantTimeCompare.constantTimeCompare(_macBytes, _expected) != ((1 : stdgo.GoInt))) {
                continue;
            };
            var __tmp__ = stdgo._internal.crypto.aes.Aes_newCipher.newCipher((_key._aesKey.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)), _block:stdgo._internal.crypto.cipher.Cipher_Block.Block = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return (null : stdgo.Slice<stdgo.GoUInt8>);
            };
            var _plaintext = (new stdgo.Slice<stdgo.GoUInt8>((_ciphertext.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            stdgo._internal.crypto.cipher.Cipher_newCTR.newCTR(_block, _iv).xorkeyStream(_plaintext, _ciphertext);
            return _plaintext;
        };
        return (null : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    static public function decryptTicket( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>, _identity:stdgo.Slice<stdgo.GoUInt8>, _cs:stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState):{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_SessionState.SessionState>; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config> = _c;
        var _ticketKeys = _c._ticketKeys(null);
        var _stateBytes = _c._decryptTicket(_identity, _ticketKeys);
        if (_stateBytes == null) {
            return { _0 : null, _1 : (null : stdgo.Error) };
        };
        var __tmp__ = stdgo._internal.crypto.tls.Tls_parseSessionState.parseSessionState(_stateBytes), _s:stdgo.Ref<stdgo._internal.crypto.tls.Tls_SessionState.SessionState> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : (null : stdgo.Error) };
        };
        return { _0 : _s, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function _encryptTicket( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>, _state:stdgo.Slice<stdgo.GoUInt8>, _ticketKeys:stdgo.Slice<stdgo._internal.crypto.tls.Tls_T_ticketKey.T_ticketKey>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config> = _c;
        if ((_ticketKeys.length) == ((0 : stdgo.GoInt))) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("tls: internal error: session ticket keys unavailable" : stdgo.GoString)) };
        };
        var _encrypted = (new stdgo.Slice<stdgo.GoUInt8>((((16 : stdgo.GoInt) + (_state.length) : stdgo.GoInt) + (32 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _iv = (_encrypted.__slice__(0, (16 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        var _ciphertext = (_encrypted.__slice__((16 : stdgo.GoInt), ((_encrypted.length) - (32 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        var _authenticated = (_encrypted.__slice__(0, ((_encrypted.length) - (32 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        var _macBytes = (_encrypted.__slice__(((_encrypted.length) - (32 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        {
            var __tmp__ = stdgo._internal.io.Io_readFull.readFull(_c._rand(), _iv), __69:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
            };
        };
        var _key = (_ticketKeys[(0 : stdgo.GoInt)] : stdgo._internal.crypto.tls.Tls_T_ticketKey.T_ticketKey);
        var __tmp__ = stdgo._internal.crypto.aes.Aes_newCipher.newCipher((_key._aesKey.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)), _block:stdgo._internal.crypto.cipher.Cipher_Block.Block = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_((("tls: failed to create cipher while encrypting ticket: " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString)?.__copy__()) };
        };
        stdgo._internal.crypto.cipher.Cipher_newCTR.newCTR(_block, _iv).xorkeyStream(_ciphertext, _state);
        var _mac = (stdgo._internal.crypto.hmac.Hmac_new_.new_(stdgo._internal.crypto.sha256.Sha256_new_.new_, (_key._hmacKey.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.hash.Hash_Hash.Hash);
        _mac.write(_authenticated);
        _mac.sum((_macBytes.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        return { _0 : _encrypted, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function encryptTicket( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>, _cs:stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState, _ss:stdgo.Ref<stdgo._internal.crypto.tls.Tls_SessionState.SessionState>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config> = _c;
        var _ticketKeys = _c._ticketKeys(null);
        var __tmp__ = _ss.bytes(), _stateBytes:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        return _c._encryptTicket(_stateBytes, _ticketKeys);
    }
    @:keep
    static public function _writeKeyLog( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>, _label:stdgo.GoString, _clientRandom:stdgo.Slice<stdgo.GoUInt8>, _secret:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config> = _c;
        if (_c.keyLogWriter == null) {
            return (null : stdgo.Error);
        };
        var _logLine = stdgo._internal.fmt.Fmt_appendf.appendf((null : stdgo.Slice<stdgo.GoUInt8>), ("%s %x %x\n" : stdgo.GoString), stdgo.Go.toInterface(_label), stdgo.Go.toInterface(_clientRandom), stdgo.Go.toInterface(_secret));
        stdgo._internal.crypto.tls.Tls__writerMutex._writerMutex.lock();
        var __tmp__ = _c.keyLogWriter.write(_logLine), __73:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        stdgo._internal.crypto.tls.Tls__writerMutex._writerMutex.unlock();
        return _err;
    }
    @:keep
    static public function buildNameToCertificate( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config> = _c;
        _c.nameToCertificate = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.crypto.tls.Tls_Certificate.Certificate>>();
            x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Certificate.Certificate>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.crypto.tls.Tls_Certificate.Certificate>>);
        for (_i => _ in _c.certificates) {
            var _cert = (stdgo.Go.setRef(_c.certificates[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Certificate.Certificate>);
            var __tmp__ = _cert._leaf(), _x509Cert:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                continue;
            };
            if (((_x509Cert.subject.commonName != stdgo.Go.str()) && (_x509Cert.dnsnames.length == (0 : stdgo.GoInt)) : Bool)) {
                _c.nameToCertificate[_x509Cert.subject.commonName] = _cert;
            };
            for (__77 => _san in _x509Cert.dnsnames) {
                _c.nameToCertificate[_san] = _cert;
            };
        };
    }
    @:keep
    static public function _getCertificate( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>, _clientHello:stdgo.Ref<stdgo._internal.crypto.tls.Tls_ClientHelloInfo.ClientHelloInfo>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Certificate.Certificate>; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config> = _c;
        if (((_c.getCertificate != null) && (((_c.certificates.length == (0 : stdgo.GoInt)) || ((_clientHello.serverName.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
            var __tmp__ = _c.getCertificate(_clientHello), _cert:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Certificate.Certificate> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_cert != null && ((_cert : Dynamic).__nil__ == null || !(_cert : Dynamic).__nil__)) || (_err != null) : Bool)) {
                return { _0 : _cert, _1 : _err };
            };
        };
        if ((_c.certificates.length) == ((0 : stdgo.GoInt))) {
            return { _0 : null, _1 : stdgo._internal.crypto.tls.Tls__errNoCertificates._errNoCertificates };
        };
        if ((_c.certificates.length) == ((1 : stdgo.GoInt))) {
            return { _0 : (stdgo.Go.setRef(_c.certificates[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Certificate.Certificate>), _1 : (null : stdgo.Error) };
        };
        if (_c.nameToCertificate != null) {
            var _name = (stdgo._internal.strings.Strings_toLower.toLower(_clientHello.serverName?.__copy__())?.__copy__() : stdgo.GoString);
            {
                var __tmp__ = (_c.nameToCertificate != null && _c.nameToCertificate.exists(_name?.__copy__()) ? { _0 : _c.nameToCertificate[_name?.__copy__()], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Certificate.Certificate>), _1 : false }), _cert:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Certificate.Certificate> = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    return { _0 : _cert, _1 : (null : stdgo.Error) };
                };
            };
            if (((_name.length) > (0 : stdgo.GoInt) : Bool)) {
                var _labels = stdgo._internal.strings.Strings_split.split(_name?.__copy__(), ("." : stdgo.GoString));
                _labels[(0 : stdgo.GoInt)] = ("*" : stdgo.GoString);
                var _wildcardName = (stdgo._internal.strings.Strings_join.join(_labels, ("." : stdgo.GoString))?.__copy__() : stdgo.GoString);
                {
                    var __tmp__ = (_c.nameToCertificate != null && _c.nameToCertificate.exists(_wildcardName?.__copy__()) ? { _0 : _c.nameToCertificate[_wildcardName?.__copy__()], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Certificate.Certificate>), _1 : false }), _cert:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Certificate.Certificate> = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (_ok) {
                        return { _0 : _cert, _1 : (null : stdgo.Error) };
                    };
                };
            };
        };
        for (__93 => _cert in _c.certificates) {
            {
                var _err = (_clientHello.supportsCertificate((stdgo.Go.setRef(_cert) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Certificate.Certificate>)) : stdgo.Error);
                if (_err == null) {
                    return { _0 : (stdgo.Go.setRef(_cert) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Certificate.Certificate>), _1 : (null : stdgo.Error) };
                };
            };
        };
        return { _0 : (stdgo.Go.setRef(_c.certificates[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Certificate.Certificate>), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function _mutualVersion( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>, _isClient:Bool, _peerVersions:stdgo.Slice<stdgo.GoUInt16>):{ var _0 : stdgo.GoUInt16; var _1 : Bool; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config> = _c;
        var _supportedVersions = _c._supportedVersions(_isClient);
        for (__69 => _peerVersion in _peerVersions) {
            for (__70 => _v in _supportedVersions) {
                if (_v == (_peerVersion)) {
                    return { _0 : _v, _1 : true };
                };
            };
        };
        return { _0 : (0 : stdgo.GoUInt16), _1 : false };
    }
    @:keep
    static public function _supportsCurve( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>, _curve:stdgo._internal.crypto.tls.Tls_CurveID.CurveID):Bool {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config> = _c;
        for (__69 => _cc in _c._curvePreferences()) {
            if (_cc == (_curve)) {
                return true;
            };
        };
        return false;
    }
    @:keep
    static public function _curvePreferences( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>):stdgo.Slice<stdgo._internal.crypto.tls.Tls_CurveID.CurveID> {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config> = _c;
        if (stdgo._internal.crypto.tls.Tls__needFIPS._needFIPS()) {
            return stdgo._internal.crypto.tls.Tls__fipsCurvePreferences._fipsCurvePreferences(_c);
        };
        if (((_c == null || (_c : Dynamic).__nil__) || (_c.curvePreferences.length == (0 : stdgo.GoInt)) : Bool)) {
            return stdgo._internal.crypto.tls.Tls__defaultCurvePreferences._defaultCurvePreferences;
        };
        return _c.curvePreferences;
    }
    @:keep
    static public function _maxSupportedVersion( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>, _isClient:Bool):stdgo.GoUInt16 {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config> = _c;
        var _supportedVersions = _c._supportedVersions(_isClient);
        if ((_supportedVersions.length) == ((0 : stdgo.GoInt))) {
            return (0 : stdgo.GoUInt16);
        };
        return _supportedVersions[(0 : stdgo.GoInt)];
    }
    @:keep
    static public function _supportedVersions( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>, _isClient:Bool):stdgo.Slice<stdgo.GoUInt16> {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config> = _c;
        var _versions = (new stdgo.Slice<stdgo.GoUInt16>((0 : stdgo.GoInt).toBasic(), (stdgo._internal.crypto.tls.Tls__supportedVersions._supportedVersions.length)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt16>);
        for (__65 => _v in stdgo._internal.crypto.tls.Tls__supportedVersions._supportedVersions) {
            if ((stdgo._internal.crypto.tls.Tls__needFIPS._needFIPS() && (((_v < stdgo._internal.crypto.tls.Tls__fipsMinVersion._fipsMinVersion(_c) : Bool) || (_v > stdgo._internal.crypto.tls.Tls__fipsMaxVersion._fipsMaxVersion(_c) : Bool) : Bool)) : Bool)) {
                continue;
            };
            if ((((((_c == null || (_c : Dynamic).__nil__) || (_c.minVersion == (0 : stdgo.GoUInt16)) : Bool)) && _isClient : Bool) && (_v < (771 : stdgo.GoUInt16) : Bool) : Bool)) {
                continue;
            };
            if ((((_c != null && ((_c : Dynamic).__nil__ == null || !(_c : Dynamic).__nil__)) && _c.minVersion != ((0 : stdgo.GoUInt16)) : Bool) && (_v < _c.minVersion : Bool) : Bool)) {
                continue;
            };
            if ((((_c != null && ((_c : Dynamic).__nil__ == null || !(_c : Dynamic).__nil__)) && _c.maxVersion != ((0 : stdgo.GoUInt16)) : Bool) && (_v > _c.maxVersion : Bool) : Bool)) {
                continue;
            };
            _versions = (_versions.__append__(_v));
        };
        return _versions;
    }
    @:keep
    static public function _cipherSuites( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>):stdgo.Slice<stdgo.GoUInt16> {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config> = _c;
        if (stdgo._internal.crypto.tls.Tls__needFIPS._needFIPS()) {
            return stdgo._internal.crypto.tls.Tls__fipsCipherSuites._fipsCipherSuites(_c);
        };
        if (_c.cipherSuites != null) {
            return _c.cipherSuites;
        };
        return stdgo._internal.crypto.tls.Tls__defaultCipherSuites._defaultCipherSuites;
    }
    @:keep
    static public function _time( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>):stdgo._internal.time.Time_Time.Time {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config> = _c;
        var _t = (_c.time : () -> stdgo._internal.time.Time_Time.Time);
        if (_t == null) {
            _t = stdgo._internal.time.Time_now.now;
        };
        return _t()?.__copy__();
    }
    @:keep
    static public function _rand( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>):stdgo._internal.io.Io_Reader.Reader {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config> = _c;
        var _r = (_c.rand : stdgo._internal.io.Io_Reader.Reader);
        if (_r == null) {
            return stdgo._internal.crypto.rand.Rand_reader.reader;
        };
        return _r;
    }
    @:keep
    static public function setSessionTicketKeys( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>, _keys:stdgo.Slice<stdgo.GoArray<stdgo.GoUInt8>>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config> = _c;
        if ((_keys.length) == ((0 : stdgo.GoInt))) {
            throw stdgo.Go.toInterface(("tls: keys must have at least one key" : stdgo.GoString));
        };
        var _newKeys = (new stdgo.Slice<stdgo._internal.crypto.tls.Tls_T_ticketKey.T_ticketKey>((_keys.length : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_keys.length : stdgo.GoInt).toBasic() > 0 ? (_keys.length : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.crypto.tls.Tls_T_ticketKey.T_ticketKey)]) : stdgo.Slice<stdgo._internal.crypto.tls.Tls_T_ticketKey.T_ticketKey>);
        for (_i => _bytes in _keys) {
            _newKeys[(_i : stdgo.GoInt)] = _c._ticketKeyFromBytes(_bytes?.__copy__())?.__copy__();
        };
        _c._mutex.lock();
        _c._sessionTicketKeys = _newKeys;
        _c._mutex.unlock();
    }
    @:keep
    static public function _ticketKeys( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>, _configForClient:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>):stdgo.Slice<stdgo._internal.crypto.tls.Tls_T_ticketKey.T_ticketKey> {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config> = _c;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if ((_configForClient != null && ((_configForClient : Dynamic).__nil__ == null || !(_configForClient : Dynamic).__nil__))) {
                _configForClient._mutex.rlock();
                if (_configForClient.sessionTicketsDisabled) {
                    return (null : stdgo.Slice<stdgo._internal.crypto.tls.Tls_T_ticketKey.T_ticketKey>);
                };
                _configForClient._initLegacySessionTicketKeyRLocked();
                if ((_configForClient._sessionTicketKeys.length) != ((0 : stdgo.GoInt))) {
                    var _ret = _configForClient._sessionTicketKeys;
                    _configForClient._mutex.runlock();
                    return _ret;
                };
                _configForClient._mutex.runlock();
            };
            _c._mutex.rlock();
            __deferstack__.unshift(() -> _c._mutex.runlock());
            if (_c.sessionTicketsDisabled) {
                {
                    final __ret__:stdgo.Slice<stdgo._internal.crypto.tls.Tls_T_ticketKey.T_ticketKey> = (null : stdgo.Slice<stdgo._internal.crypto.tls.Tls_T_ticketKey.T_ticketKey>);
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            _c._initLegacySessionTicketKeyRLocked();
            if ((_c._sessionTicketKeys.length) != ((0 : stdgo.GoInt))) {
                {
                    final __ret__:stdgo.Slice<stdgo._internal.crypto.tls.Tls_T_ticketKey.T_ticketKey> = _c._sessionTicketKeys;
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            if ((((_c._autoSessionTicketKeys.length) > (0 : stdgo.GoInt) : Bool) && (_c._time().sub(_c._autoSessionTicketKeys[(0 : stdgo.GoInt)]._created?.__copy__()) < (86400000000000i64 : stdgo._internal.time.Time_Duration.Duration) : Bool) : Bool)) {
                {
                    final __ret__:stdgo.Slice<stdgo._internal.crypto.tls.Tls_T_ticketKey.T_ticketKey> = _c._autoSessionTicketKeys;
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            _c._mutex.runlock();
            __deferstack__.unshift(() -> _c._mutex.rlock());
            _c._mutex.lock();
            __deferstack__.unshift(() -> _c._mutex.unlock());
            if (((_c._autoSessionTicketKeys.length == (0 : stdgo.GoInt)) || (_c._time().sub(_c._autoSessionTicketKeys[(0 : stdgo.GoInt)]._created?.__copy__()) >= (86400000000000i64 : stdgo._internal.time.Time_Duration.Duration) : Bool) : Bool)) {
                var _newKey:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(32, 32, ...[for (i in 0 ... 32) (0 : stdgo.GoUInt8)]);
                {
                    var __tmp__ = stdgo._internal.io.Io_readFull.readFull(_c._rand(), (_newKey.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)), __153:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("unable to generate random session ticket key: %v" : stdgo.GoString), stdgo.Go.toInterface(_err)));
                    };
                };
                var _valid = (new stdgo.Slice<stdgo._internal.crypto.tls.Tls_T_ticketKey.T_ticketKey>((0 : stdgo.GoInt).toBasic(), ((_c._autoSessionTicketKeys.length) + (1 : stdgo.GoInt) : stdgo.GoInt), ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > ((_c._autoSessionTicketKeys.length) + (1 : stdgo.GoInt) : stdgo.GoInt) ? (0 : stdgo.GoInt).toBasic() : ((_c._autoSessionTicketKeys.length) + (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt).toBasic()) ({} : stdgo._internal.crypto.tls.Tls_T_ticketKey.T_ticketKey)]) : stdgo.Slice<stdgo._internal.crypto.tls.Tls_T_ticketKey.T_ticketKey>);
                _valid = (_valid.__append__(_c._ticketKeyFromBytes(_newKey?.__copy__())?.__copy__()));
                for (__166 => _k in _c._autoSessionTicketKeys) {
                    if ((_c._time().sub(_k._created?.__copy__()) < (604800000000000i64 : stdgo._internal.time.Time_Duration.Duration) : Bool)) {
                        _valid = (_valid.__append__(_k?.__copy__()));
                    };
                };
                _c._autoSessionTicketKeys = _valid;
            };
            {
                final __ret__:stdgo.Slice<stdgo._internal.crypto.tls.Tls_T_ticketKey.T_ticketKey> = _c._autoSessionTicketKeys;
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:stdgo.Slice<stdgo._internal.crypto.tls.Tls_T_ticketKey.T_ticketKey> = (null : stdgo.Slice<stdgo._internal.crypto.tls.Tls_T_ticketKey.T_ticketKey>);
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
            final __ret__:stdgo.Slice<stdgo._internal.crypto.tls.Tls_T_ticketKey.T_ticketKey> = (null : stdgo.Slice<stdgo._internal.crypto.tls.Tls_T_ticketKey.T_ticketKey>);
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
    @:keep
    static public function _initLegacySessionTicketKeyRLocked( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config> = _c;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if (((stdgo.Go.toInterface(_c.sessionTicketKey) != stdgo.Go.toInterface((new stdgo.GoArray<stdgo.GoUInt8>(32, 32, ...[]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>))) && ((stdgo._internal.bytes.Bytes_hasPrefix.hasPrefix((_c.sessionTicketKey.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), stdgo._internal.crypto.tls.Tls__deprecatedSessionTicketKey._deprecatedSessionTicketKey) || ((_c._sessionTicketKeys.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                return;
            };
            _c._mutex.runlock();
            __deferstack__.unshift(() -> _c._mutex.rlock());
            _c._mutex.lock();
            __deferstack__.unshift(() -> _c._mutex.unlock());
            if (stdgo.Go.toInterface(_c.sessionTicketKey) == stdgo.Go.toInterface((new stdgo.GoArray<stdgo.GoUInt8>(32, 32, ...[]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>))) {
                {
                    var __tmp__ = stdgo._internal.io.Io_readFull.readFull(_c._rand(), (_c.sessionTicketKey.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)), __121:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("tls: unable to generate random session ticket key: %v" : stdgo.GoString), stdgo.Go.toInterface(_err)));
                    };
                };
                stdgo.Go.copySlice((_c.sessionTicketKey.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), stdgo._internal.crypto.tls.Tls__deprecatedSessionTicketKey._deprecatedSessionTicketKey);
            } else if ((!stdgo._internal.bytes.Bytes_hasPrefix.hasPrefix((_c.sessionTicketKey.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), stdgo._internal.crypto.tls.Tls__deprecatedSessionTicketKey._deprecatedSessionTicketKey) && (_c._sessionTicketKeys.length == (0 : stdgo.GoInt)) : Bool)) {
                _c._sessionTicketKeys = (new stdgo.Slice<stdgo._internal.crypto.tls.Tls_T_ticketKey.T_ticketKey>(1, 1, ...[_c._ticketKeyFromBytes(_c.sessionTicketKey?.__copy__())?.__copy__()].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.crypto.tls.Tls_T_ticketKey.T_ticketKey)])) : stdgo.Slice<stdgo._internal.crypto.tls.Tls_T_ticketKey.T_ticketKey>);
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
    static public function clone( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>):stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config> {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config> = _c;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if ((_c == null || (_c : Dynamic).__nil__)) {
                return null;
            };
            _c._mutex.rlock();
            __deferstack__.unshift(() -> _c._mutex.runlock());
            {
                final __ret__:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config> = (stdgo.Go.setRef(({ rand : _c.rand, time : _c.time, certificates : _c.certificates, nameToCertificate : _c.nameToCertificate, getCertificate : _c.getCertificate, getClientCertificate : _c.getClientCertificate, getConfigForClient : _c.getConfigForClient, verifyPeerCertificate : _c.verifyPeerCertificate, verifyConnection : _c.verifyConnection, rootCAs : _c.rootCAs, nextProtos : _c.nextProtos, serverName : _c.serverName?.__copy__(), clientAuth : _c.clientAuth, clientCAs : _c.clientCAs, insecureSkipVerify : _c.insecureSkipVerify, cipherSuites : _c.cipherSuites, preferServerCipherSuites : _c.preferServerCipherSuites, sessionTicketsDisabled : _c.sessionTicketsDisabled, sessionTicketKey : _c.sessionTicketKey?.__copy__(), clientSessionCache : _c.clientSessionCache, unwrapSession : _c.unwrapSession, wrapSession : _c.wrapSession, minVersion : _c.minVersion, maxVersion : _c.maxVersion, curvePreferences : _c.curvePreferences, dynamicRecordSizingDisabled : _c.dynamicRecordSizingDisabled, renegotiation : _c.renegotiation, keyLogWriter : _c.keyLogWriter, _sessionTicketKeys : _c._sessionTicketKeys, _autoSessionTicketKeys : _c._autoSessionTicketKeys } : stdgo._internal.crypto.tls.Tls_Config.Config)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>);
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>);
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
            final __ret__:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>);
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
    @:keep
    static public function _ticketKeyFromBytes( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>, _b:stdgo.GoArray<stdgo.GoUInt8>):stdgo._internal.crypto.tls.Tls_T_ticketKey.T_ticketKey {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config> = _c;
        var _key = ({} : stdgo._internal.crypto.tls.Tls_T_ticketKey.T_ticketKey);
        var _hashed = stdgo._internal.crypto.sha512.Sha512_sum512.sum512((_b.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>))?.__copy__();
        {};
        stdgo.Go.copySlice((_key._aesKey.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), (_hashed.__slice__((16 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        stdgo.Go.copySlice((_key._hmacKey.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), (_hashed.__slice__((32 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        _key._created = _c._time()?.__copy__();
        return _key?.__copy__();
    }
}
