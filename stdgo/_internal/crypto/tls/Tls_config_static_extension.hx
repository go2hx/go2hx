package stdgo._internal.crypto.tls;
@:keep @:allow(stdgo._internal.crypto.tls.Tls.Config_asInterface) class Config_static_extension {
    @:keep
    @:tdfield
    static public function _decryptTicket( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>, _encrypted:stdgo.Slice<stdgo.GoUInt8>, _ticketKeys:stdgo.Slice<stdgo._internal.crypto.tls.Tls_t_ticketkey.T_ticketKey>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config> = _c;
        if (((_encrypted.length) < (48 : stdgo.GoInt) : Bool)) {
            return (null : stdgo.Slice<stdgo.GoUInt8>);
        };
        var _iv = (_encrypted.__slice__(0, (16 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        var _ciphertext = (_encrypted.__slice__((16 : stdgo.GoInt), ((_encrypted.length) - (32 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        var _authenticated = (_encrypted.__slice__(0, ((_encrypted.length) - (32 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        var _macBytes = (_encrypted.__slice__(((_encrypted.length) - (32 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        for (__65 => _key in _ticketKeys) {
            var _mac = (stdgo._internal.crypto.hmac.Hmac_new_.new_(stdgo._internal.crypto.sha256.Sha256_new_.new_, (_key._hmacKey.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.hash.Hash_hash.Hash);
            _mac.write(_authenticated);
            var _expected = _mac.sum((null : stdgo.Slice<stdgo.GoUInt8>));
            if (stdgo._internal.crypto.subtle.Subtle_constanttimecompare.constantTimeCompare(_macBytes, _expected) != ((1 : stdgo.GoInt))) {
                continue;
            };
            var __tmp__ = stdgo._internal.crypto.aes.Aes_newcipher.newCipher((_key._aesKey.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)), _block:stdgo._internal.crypto.cipher.Cipher_block.Block = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return (null : stdgo.Slice<stdgo.GoUInt8>);
            };
            var _plaintext = (new stdgo.Slice<stdgo.GoUInt8>((_ciphertext.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            stdgo._internal.crypto.cipher.Cipher_newctr.newCTR(_block, _iv).xORKeyStream(_plaintext, _ciphertext);
            return _plaintext;
        };
        return (null : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    @:tdfield
    static public function decryptTicket( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>, _identity:stdgo.Slice<stdgo.GoUInt8>, _cs:stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState):{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_sessionstate.SessionState>; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config> = _c;
        var _ticketKeys = @:check2r _c._ticketKeys(null);
        var _stateBytes = @:check2r _c._decryptTicket(_identity, _ticketKeys);
        if (_stateBytes == null) {
            return { _0 : null, _1 : (null : stdgo.Error) };
        };
        var __tmp__ = stdgo._internal.crypto.tls.Tls_parsesessionstate.parseSessionState(_stateBytes), _s:stdgo.Ref<stdgo._internal.crypto.tls.Tls_sessionstate.SessionState> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : (null : stdgo.Error) };
        };
        return { _0 : _s, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _encryptTicket( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>, _state:stdgo.Slice<stdgo.GoUInt8>, _ticketKeys:stdgo.Slice<stdgo._internal.crypto.tls.Tls_t_ticketkey.T_ticketKey>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config> = _c;
        if ((_ticketKeys.length) == ((0 : stdgo.GoInt))) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("tls: internal error: session ticket keys unavailable" : stdgo.GoString)) };
        };
        var _encrypted = (new stdgo.Slice<stdgo.GoUInt8>((((16 : stdgo.GoInt) + (_state.length) : stdgo.GoInt) + (32 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _iv = (_encrypted.__slice__(0, (16 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        var _ciphertext = (_encrypted.__slice__((16 : stdgo.GoInt), ((_encrypted.length) - (32 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        var _authenticated = (_encrypted.__slice__(0, ((_encrypted.length) - (32 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        var _macBytes = (_encrypted.__slice__(((_encrypted.length) - (32 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        {
            var __tmp__ = stdgo._internal.io.Io_readfull.readFull(@:check2r _c._rand(), _iv), __69:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
            };
        };
        var _key = (_ticketKeys[(0 : stdgo.GoInt)] : stdgo._internal.crypto.tls.Tls_t_ticketkey.T_ticketKey);
        var __tmp__ = stdgo._internal.crypto.aes.Aes_newcipher.newCipher((_key._aesKey.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)), _block:stdgo._internal.crypto.cipher.Cipher_block.Block = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_((("tls: failed to create cipher while encrypting ticket: " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString)?.__copy__()) };
        };
        stdgo._internal.crypto.cipher.Cipher_newctr.newCTR(_block, _iv).xORKeyStream(_ciphertext, _state);
        var _mac = (stdgo._internal.crypto.hmac.Hmac_new_.new_(stdgo._internal.crypto.sha256.Sha256_new_.new_, (_key._hmacKey.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.hash.Hash_hash.Hash);
        _mac.write(_authenticated);
        _mac.sum((_macBytes.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        return { _0 : _encrypted, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function encryptTicket( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>, _cs:stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState, _ss:stdgo.Ref<stdgo._internal.crypto.tls.Tls_sessionstate.SessionState>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config> = _c;
        var _ticketKeys = @:check2r _c._ticketKeys(null);
        var __tmp__ = @:check2r _ss.bytes(), _stateBytes:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        return @:check2r _c._encryptTicket(_stateBytes, _ticketKeys);
    }
    @:keep
    @:tdfield
    static public function _writeKeyLog( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>, _label:stdgo.GoString, _clientRandom:stdgo.Slice<stdgo.GoUInt8>, _secret:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config> = _c;
        if ((@:checkr _c ?? throw "null pointer dereference").keyLogWriter == null) {
            return (null : stdgo.Error);
        };
        var _logLine = stdgo._internal.fmt.Fmt_appendf.appendf((null : stdgo.Slice<stdgo.GoUInt8>), ("%s %x %x\n" : stdgo.GoString), stdgo.Go.toInterface(_label), stdgo.Go.toInterface(_clientRandom), stdgo.Go.toInterface(_secret));
        @:check2 stdgo._internal.crypto.tls.Tls__writermutex._writerMutex.lock();
        var __tmp__ = (@:checkr _c ?? throw "null pointer dereference").keyLogWriter.write(_logLine), __73:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        @:check2 stdgo._internal.crypto.tls.Tls__writermutex._writerMutex.unlock();
        return _err;
    }
    @:keep
    @:tdfield
    static public function buildNameToCertificate( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config> = _c;
        (@:checkr _c ?? throw "null pointer dereference").nameToCertificate = (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.crypto.tls.Tls_certificate.Certificate>>();
            x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_certificate.Certificate>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.crypto.tls.Tls_certificate.Certificate>>) : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.crypto.tls.Tls_certificate.Certificate>>);
        for (_i => _ in (@:checkr _c ?? throw "null pointer dereference").certificates) {
            var _cert = (stdgo.Go.setRef((@:checkr _c ?? throw "null pointer dereference").certificates[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_certificate.Certificate>);
            var __tmp__ = @:check2r _cert._leaf(), _x509Cert:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                continue;
            };
            if ((((@:checkr _x509Cert ?? throw "null pointer dereference").subject.commonName != (stdgo.Go.str() : stdgo.GoString)) && ((@:checkr _x509Cert ?? throw "null pointer dereference").dNSNames.length == (0 : stdgo.GoInt)) : Bool)) {
                (@:checkr _c ?? throw "null pointer dereference").nameToCertificate[(@:checkr _x509Cert ?? throw "null pointer dereference").subject.commonName] = _cert;
            };
            for (__77 => _san in (@:checkr _x509Cert ?? throw "null pointer dereference").dNSNames) {
                (@:checkr _c ?? throw "null pointer dereference").nameToCertificate[_san] = _cert;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _getCertificate( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>, _clientHello:stdgo.Ref<stdgo._internal.crypto.tls.Tls_clienthelloinfo.ClientHelloInfo>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_certificate.Certificate>; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config> = _c;
        if ((((@:checkr _c ?? throw "null pointer dereference").getCertificate != null) && ((((@:checkr _c ?? throw "null pointer dereference").certificates.length == (0 : stdgo.GoInt)) || (((@:checkr _clientHello ?? throw "null pointer dereference").serverName.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
            var __tmp__ = (@:checkr _c ?? throw "null pointer dereference").getCertificate(_clientHello), _cert:stdgo.Ref<stdgo._internal.crypto.tls.Tls_certificate.Certificate> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_cert != null && ((_cert : Dynamic).__nil__ == null || !(_cert : Dynamic).__nil__)) || (_err != null) : Bool)) {
                return { _0 : _cert, _1 : _err };
            };
        };
        if (((@:checkr _c ?? throw "null pointer dereference").certificates.length) == ((0 : stdgo.GoInt))) {
            return { _0 : null, _1 : stdgo._internal.crypto.tls.Tls__errnocertificates._errNoCertificates };
        };
        if (((@:checkr _c ?? throw "null pointer dereference").certificates.length) == ((1 : stdgo.GoInt))) {
            return { _0 : (stdgo.Go.setRef((@:checkr _c ?? throw "null pointer dereference").certificates[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_certificate.Certificate>), _1 : (null : stdgo.Error) };
        };
        if ((@:checkr _c ?? throw "null pointer dereference").nameToCertificate != null) {
            var _name = (stdgo._internal.strings.Strings_tolower.toLower((@:checkr _clientHello ?? throw "null pointer dereference").serverName?.__copy__())?.__copy__() : stdgo.GoString);
            {
                var __tmp__ = ((@:checkr _c ?? throw "null pointer dereference").nameToCertificate != null && (@:checkr _c ?? throw "null pointer dereference").nameToCertificate.__exists__(_name?.__copy__()) ? { _0 : (@:checkr _c ?? throw "null pointer dereference").nameToCertificate[_name?.__copy__()], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_certificate.Certificate>), _1 : false }), _cert:stdgo.Ref<stdgo._internal.crypto.tls.Tls_certificate.Certificate> = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    return { _0 : _cert, _1 : (null : stdgo.Error) };
                };
            };
            if (((_name.length) > (0 : stdgo.GoInt) : Bool)) {
                var _labels = stdgo._internal.strings.Strings_split.split(_name?.__copy__(), ("." : stdgo.GoString));
                _labels[(0 : stdgo.GoInt)] = ("*" : stdgo.GoString);
                var _wildcardName = (stdgo._internal.strings.Strings_join.join(_labels, ("." : stdgo.GoString))?.__copy__() : stdgo.GoString);
                {
                    var __tmp__ = ((@:checkr _c ?? throw "null pointer dereference").nameToCertificate != null && (@:checkr _c ?? throw "null pointer dereference").nameToCertificate.__exists__(_wildcardName?.__copy__()) ? { _0 : (@:checkr _c ?? throw "null pointer dereference").nameToCertificate[_wildcardName?.__copy__()], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_certificate.Certificate>), _1 : false }), _cert:stdgo.Ref<stdgo._internal.crypto.tls.Tls_certificate.Certificate> = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (_ok) {
                        return { _0 : _cert, _1 : (null : stdgo.Error) };
                    };
                };
            };
        };
        for (__93 => _cert in (@:checkr _c ?? throw "null pointer dereference").certificates) {
            {
                var _err = (@:check2r _clientHello.supportsCertificate((stdgo.Go.setRef(_cert) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_certificate.Certificate>)) : stdgo.Error);
                if (_err == null) {
                    return { _0 : (stdgo.Go.setRef(_cert) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_certificate.Certificate>), _1 : (null : stdgo.Error) };
                };
            };
        };
        return { _0 : (stdgo.Go.setRef((@:checkr _c ?? throw "null pointer dereference").certificates[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_certificate.Certificate>), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _mutualVersion( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>, _isClient:Bool, _peerVersions:stdgo.Slice<stdgo.GoUInt16>):{ var _0 : stdgo.GoUInt16; var _1 : Bool; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config> = _c;
        var _supportedVersions = @:check2r _c._supportedVersions(_isClient);
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
    @:tdfield
    static public function _supportsCurve( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>, _curve:stdgo._internal.crypto.tls.Tls_curveid.CurveID):Bool {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config> = _c;
        for (__69 => _cc in @:check2r _c._curvePreferences()) {
            if (_cc == (_curve)) {
                return true;
            };
        };
        return false;
    }
    @:keep
    @:tdfield
    static public function _curvePreferences( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>):stdgo.Slice<stdgo._internal.crypto.tls.Tls_curveid.CurveID> {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config> = _c;
        if (stdgo._internal.crypto.tls.Tls__needfips._needFIPS()) {
            return stdgo._internal.crypto.tls.Tls__fipscurvepreferences._fipsCurvePreferences(_c);
        };
        if (((_c == null || (_c : Dynamic).__nil__) || ((@:checkr _c ?? throw "null pointer dereference").curvePreferences.length == (0 : stdgo.GoInt)) : Bool)) {
            return stdgo._internal.crypto.tls.Tls__defaultcurvepreferences._defaultCurvePreferences;
        };
        return (@:checkr _c ?? throw "null pointer dereference").curvePreferences;
    }
    @:keep
    @:tdfield
    static public function _maxSupportedVersion( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>, _isClient:Bool):stdgo.GoUInt16 {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config> = _c;
        var _supportedVersions = @:check2r _c._supportedVersions(_isClient);
        if ((_supportedVersions.length) == ((0 : stdgo.GoInt))) {
            return (0 : stdgo.GoUInt16);
        };
        return _supportedVersions[(0 : stdgo.GoInt)];
    }
    @:keep
    @:tdfield
    static public function _supportedVersions( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>, _isClient:Bool):stdgo.Slice<stdgo.GoUInt16> {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config> = _c;
        var _versions = (new stdgo.Slice<stdgo.GoUInt16>((0 : stdgo.GoInt).toBasic(), (stdgo._internal.crypto.tls.Tls__supportedversions._supportedVersions.length)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt16>);
        for (__65 => _v in stdgo._internal.crypto.tls.Tls__supportedversions._supportedVersions) {
            if ((stdgo._internal.crypto.tls.Tls__needfips._needFIPS() && (((_v < stdgo._internal.crypto.tls.Tls__fipsminversion._fipsMinVersion(_c) : Bool) || (_v > stdgo._internal.crypto.tls.Tls__fipsmaxversion._fipsMaxVersion(_c) : Bool) : Bool)) : Bool)) {
                continue;
            };
            if ((((((_c == null || (_c : Dynamic).__nil__) || ((@:checkr _c ?? throw "null pointer dereference").minVersion == (0 : stdgo.GoUInt16)) : Bool)) && _isClient : Bool) && (_v < (771 : stdgo.GoUInt16) : Bool) : Bool)) {
                continue;
            };
            if ((((_c != null && ((_c : Dynamic).__nil__ == null || !(_c : Dynamic).__nil__)) && (@:checkr _c ?? throw "null pointer dereference").minVersion != ((0 : stdgo.GoUInt16)) : Bool) && (_v < (@:checkr _c ?? throw "null pointer dereference").minVersion : Bool) : Bool)) {
                continue;
            };
            if ((((_c != null && ((_c : Dynamic).__nil__ == null || !(_c : Dynamic).__nil__)) && (@:checkr _c ?? throw "null pointer dereference").maxVersion != ((0 : stdgo.GoUInt16)) : Bool) && (_v > (@:checkr _c ?? throw "null pointer dereference").maxVersion : Bool) : Bool)) {
                continue;
            };
            _versions = (_versions.__append__(_v));
        };
        return _versions;
    }
    @:keep
    @:tdfield
    static public function _cipherSuites( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>):stdgo.Slice<stdgo.GoUInt16> {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config> = _c;
        if (stdgo._internal.crypto.tls.Tls__needfips._needFIPS()) {
            return stdgo._internal.crypto.tls.Tls__fipsciphersuites._fipsCipherSuites(_c);
        };
        if ((@:checkr _c ?? throw "null pointer dereference").cipherSuites != null) {
            return (@:checkr _c ?? throw "null pointer dereference").cipherSuites;
        };
        return stdgo._internal.crypto.tls.Tls__defaultciphersuites._defaultCipherSuites;
    }
    @:keep
    @:tdfield
    static public function _time( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>):stdgo._internal.time.Time_time.Time {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config> = _c;
        var _t = ((@:checkr _c ?? throw "null pointer dereference").time : () -> stdgo._internal.time.Time_time.Time);
        if (_t == null) {
            _t = stdgo._internal.time.Time_now.now;
        };
        return _t()?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _rand( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>):stdgo._internal.io.Io_reader.Reader {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config> = _c;
        var _r = ((@:checkr _c ?? throw "null pointer dereference").rand : stdgo._internal.io.Io_reader.Reader);
        if (_r == null) {
            return stdgo._internal.crypto.rand.Rand_reader.reader;
        };
        return _r;
    }
    @:keep
    @:tdfield
    static public function setSessionTicketKeys( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>, _keys:stdgo.Slice<stdgo.GoArray<stdgo.GoUInt8>>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config> = _c;
        if ((_keys.length) == ((0 : stdgo.GoInt))) {
            throw stdgo.Go.toInterface(("tls: keys must have at least one key" : stdgo.GoString));
        };
        var _newKeys = (new stdgo.Slice<stdgo._internal.crypto.tls.Tls_t_ticketkey.T_ticketKey>((_keys.length : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_keys.length : stdgo.GoInt).toBasic() > 0 ? (_keys.length : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.crypto.tls.Tls_t_ticketkey.T_ticketKey)]) : stdgo.Slice<stdgo._internal.crypto.tls.Tls_t_ticketkey.T_ticketKey>);
        for (_i => _bytes in _keys) {
            _newKeys[(_i : stdgo.GoInt)] = @:check2r _c._ticketKeyFromBytes(_bytes?.__copy__())?.__copy__();
        };
        @:check2 (@:checkr _c ?? throw "null pointer dereference")._mutex.lock();
        (@:checkr _c ?? throw "null pointer dereference")._sessionTicketKeys = _newKeys;
        @:check2 (@:checkr _c ?? throw "null pointer dereference")._mutex.unlock();
    }
    @:keep
    @:tdfield
    static public function _ticketKeys( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>, _configForClient:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>):stdgo.Slice<stdgo._internal.crypto.tls.Tls_t_ticketkey.T_ticketKey> {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config> = _c;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            if ((_configForClient != null && ((_configForClient : Dynamic).__nil__ == null || !(_configForClient : Dynamic).__nil__))) {
                @:check2 (@:checkr _configForClient ?? throw "null pointer dereference")._mutex.rLock();
                if ((@:checkr _configForClient ?? throw "null pointer dereference").sessionTicketsDisabled) {
                    return (null : stdgo.Slice<stdgo._internal.crypto.tls.Tls_t_ticketkey.T_ticketKey>);
                };
                @:check2r _configForClient._initLegacySessionTicketKeyRLocked();
                if (((@:checkr _configForClient ?? throw "null pointer dereference")._sessionTicketKeys.length) != ((0 : stdgo.GoInt))) {
                    var _ret = (@:checkr _configForClient ?? throw "null pointer dereference")._sessionTicketKeys;
                    @:check2 (@:checkr _configForClient ?? throw "null pointer dereference")._mutex.rUnlock();
                    return _ret;
                };
                @:check2 (@:checkr _configForClient ?? throw "null pointer dereference")._mutex.rUnlock();
            };
            @:check2 (@:checkr _c ?? throw "null pointer dereference")._mutex.rLock();
            {
                final __f__ = @:check2 (@:checkr _c ?? throw "null pointer dereference")._mutex.rUnlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            if ((@:checkr _c ?? throw "null pointer dereference").sessionTicketsDisabled) {
                {
                    final __ret__:stdgo.Slice<stdgo._internal.crypto.tls.Tls_t_ticketkey.T_ticketKey> = (null : stdgo.Slice<stdgo._internal.crypto.tls.Tls_t_ticketkey.T_ticketKey>);
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            @:check2r _c._initLegacySessionTicketKeyRLocked();
            if (((@:checkr _c ?? throw "null pointer dereference")._sessionTicketKeys.length) != ((0 : stdgo.GoInt))) {
                {
                    final __ret__:stdgo.Slice<stdgo._internal.crypto.tls.Tls_t_ticketkey.T_ticketKey> = (@:checkr _c ?? throw "null pointer dereference")._sessionTicketKeys;
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            if (((((@:checkr _c ?? throw "null pointer dereference")._autoSessionTicketKeys.length) > (0 : stdgo.GoInt) : Bool) && (@:check2r _c._time().sub((@:checkr _c ?? throw "null pointer dereference")._autoSessionTicketKeys[(0 : stdgo.GoInt)]._created?.__copy__()) < (86400000000000i64 : stdgo._internal.time.Time_duration.Duration) : Bool) : Bool)) {
                {
                    final __ret__:stdgo.Slice<stdgo._internal.crypto.tls.Tls_t_ticketkey.T_ticketKey> = (@:checkr _c ?? throw "null pointer dereference")._autoSessionTicketKeys;
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            @:check2 (@:checkr _c ?? throw "null pointer dereference")._mutex.rUnlock();
            {
                final __f__ = @:check2 (@:checkr _c ?? throw "null pointer dereference")._mutex.rLock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            @:check2 (@:checkr _c ?? throw "null pointer dereference")._mutex.lock();
            {
                final __f__ = @:check2 (@:checkr _c ?? throw "null pointer dereference")._mutex.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            if ((((@:checkr _c ?? throw "null pointer dereference")._autoSessionTicketKeys.length == (0 : stdgo.GoInt)) || (@:check2r _c._time().sub((@:checkr _c ?? throw "null pointer dereference")._autoSessionTicketKeys[(0 : stdgo.GoInt)]._created?.__copy__()) >= (86400000000000i64 : stdgo._internal.time.Time_duration.Duration) : Bool) : Bool)) {
                var _newKey:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(32, 32).__setNumber32__();
                {
                    var __tmp__ = stdgo._internal.io.Io_readfull.readFull(@:check2r _c._rand(), (_newKey.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)), __153:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("unable to generate random session ticket key: %v" : stdgo.GoString), stdgo.Go.toInterface(_err)));
                    };
                };
                var _valid = (new stdgo.Slice<stdgo._internal.crypto.tls.Tls_t_ticketkey.T_ticketKey>((0 : stdgo.GoInt).toBasic(), (((@:checkr _c ?? throw "null pointer dereference")._autoSessionTicketKeys.length) + (1 : stdgo.GoInt) : stdgo.GoInt), ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > (((@:checkr _c ?? throw "null pointer dereference")._autoSessionTicketKeys.length) + (1 : stdgo.GoInt) : stdgo.GoInt) ? (0 : stdgo.GoInt).toBasic() : (((@:checkr _c ?? throw "null pointer dereference")._autoSessionTicketKeys.length) + (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt).toBasic()) ({} : stdgo._internal.crypto.tls.Tls_t_ticketkey.T_ticketKey)]) : stdgo.Slice<stdgo._internal.crypto.tls.Tls_t_ticketkey.T_ticketKey>);
                _valid = (_valid.__append__(@:check2r _c._ticketKeyFromBytes(_newKey?.__copy__())?.__copy__()));
                for (__166 => _k in (@:checkr _c ?? throw "null pointer dereference")._autoSessionTicketKeys) {
                    if ((@:check2r _c._time().sub(_k._created?.__copy__()) < (604800000000000i64 : stdgo._internal.time.Time_duration.Duration) : Bool)) {
                        _valid = (_valid.__append__(_k?.__copy__()));
                    };
                };
                (@:checkr _c ?? throw "null pointer dereference")._autoSessionTicketKeys = _valid;
            };
            {
                final __ret__:stdgo.Slice<stdgo._internal.crypto.tls.Tls_t_ticketkey.T_ticketKey> = (@:checkr _c ?? throw "null pointer dereference")._autoSessionTicketKeys;
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
                return (null : stdgo.Slice<stdgo._internal.crypto.tls.Tls_t_ticketkey.T_ticketKey>);
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
                return (null : stdgo.Slice<stdgo._internal.crypto.tls.Tls_t_ticketkey.T_ticketKey>);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _initLegacySessionTicketKeyRLocked( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config> = _c;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            if (((stdgo.Go.toInterface((@:checkr _c ?? throw "null pointer dereference").sessionTicketKey) != stdgo.Go.toInterface((new stdgo.GoArray<stdgo.GoUInt8>(32, 32, ...[]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>))) && ((stdgo._internal.bytes.Bytes_hasprefix.hasPrefix(((@:checkr _c ?? throw "null pointer dereference").sessionTicketKey.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), stdgo._internal.crypto.tls.Tls__deprecatedsessionticketkey._deprecatedSessionTicketKey) || (((@:checkr _c ?? throw "null pointer dereference")._sessionTicketKeys.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                return;
            };
            @:check2 (@:checkr _c ?? throw "null pointer dereference")._mutex.rUnlock();
            {
                final __f__ = @:check2 (@:checkr _c ?? throw "null pointer dereference")._mutex.rLock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            @:check2 (@:checkr _c ?? throw "null pointer dereference")._mutex.lock();
            {
                final __f__ = @:check2 (@:checkr _c ?? throw "null pointer dereference")._mutex.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            if (stdgo.Go.toInterface((@:checkr _c ?? throw "null pointer dereference").sessionTicketKey) == stdgo.Go.toInterface((new stdgo.GoArray<stdgo.GoUInt8>(32, 32, ...[]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>))) {
                {
                    var __tmp__ = stdgo._internal.io.Io_readfull.readFull(@:check2r _c._rand(), ((@:checkr _c ?? throw "null pointer dereference").sessionTicketKey.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)), __121:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("tls: unable to generate random session ticket key: %v" : stdgo.GoString), stdgo.Go.toInterface(_err)));
                    };
                };
                ((@:checkr _c ?? throw "null pointer dereference").sessionTicketKey.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(stdgo._internal.crypto.tls.Tls__deprecatedsessionticketkey._deprecatedSessionTicketKey);
            } else if ((!stdgo._internal.bytes.Bytes_hasprefix.hasPrefix(((@:checkr _c ?? throw "null pointer dereference").sessionTicketKey.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), stdgo._internal.crypto.tls.Tls__deprecatedsessionticketkey._deprecatedSessionTicketKey) && ((@:checkr _c ?? throw "null pointer dereference")._sessionTicketKeys.length == (0 : stdgo.GoInt)) : Bool)) {
                (@:checkr _c ?? throw "null pointer dereference")._sessionTicketKeys = (new stdgo.Slice<stdgo._internal.crypto.tls.Tls_t_ticketkey.T_ticketKey>(1, 1, ...[@:check2r _c._ticketKeyFromBytes((@:checkr _c ?? throw "null pointer dereference").sessionTicketKey?.__copy__())?.__copy__()].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.crypto.tls.Tls_t_ticketkey.T_ticketKey)])) : stdgo.Slice<stdgo._internal.crypto.tls.Tls_t_ticketkey.T_ticketKey>);
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
    @:keep
    @:tdfield
    static public function clone( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>):stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config> {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config> = _c;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            if ((_c == null || (_c : Dynamic).__nil__)) {
                return null;
            };
            @:check2 (@:checkr _c ?? throw "null pointer dereference")._mutex.rLock();
            {
                final __f__ = @:check2 (@:checkr _c ?? throw "null pointer dereference")._mutex.rUnlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            {
                final __ret__:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config> = (stdgo.Go.setRef(({ rand : (@:checkr _c ?? throw "null pointer dereference").rand, time : (@:checkr _c ?? throw "null pointer dereference").time, certificates : (@:checkr _c ?? throw "null pointer dereference").certificates, nameToCertificate : (@:checkr _c ?? throw "null pointer dereference").nameToCertificate, getCertificate : (@:checkr _c ?? throw "null pointer dereference").getCertificate, getClientCertificate : (@:checkr _c ?? throw "null pointer dereference").getClientCertificate, getConfigForClient : (@:checkr _c ?? throw "null pointer dereference").getConfigForClient, verifyPeerCertificate : (@:checkr _c ?? throw "null pointer dereference").verifyPeerCertificate, verifyConnection : (@:checkr _c ?? throw "null pointer dereference").verifyConnection, rootCAs : (@:checkr _c ?? throw "null pointer dereference").rootCAs, nextProtos : (@:checkr _c ?? throw "null pointer dereference").nextProtos, serverName : (@:checkr _c ?? throw "null pointer dereference").serverName?.__copy__(), clientAuth : (@:checkr _c ?? throw "null pointer dereference").clientAuth, clientCAs : (@:checkr _c ?? throw "null pointer dereference").clientCAs, insecureSkipVerify : (@:checkr _c ?? throw "null pointer dereference").insecureSkipVerify, cipherSuites : (@:checkr _c ?? throw "null pointer dereference").cipherSuites, preferServerCipherSuites : (@:checkr _c ?? throw "null pointer dereference").preferServerCipherSuites, sessionTicketsDisabled : (@:checkr _c ?? throw "null pointer dereference").sessionTicketsDisabled, sessionTicketKey : (@:checkr _c ?? throw "null pointer dereference").sessionTicketKey?.__copy__(), clientSessionCache : (@:checkr _c ?? throw "null pointer dereference").clientSessionCache, unwrapSession : (@:checkr _c ?? throw "null pointer dereference").unwrapSession, wrapSession : (@:checkr _c ?? throw "null pointer dereference").wrapSession, minVersion : (@:checkr _c ?? throw "null pointer dereference").minVersion, maxVersion : (@:checkr _c ?? throw "null pointer dereference").maxVersion, curvePreferences : (@:checkr _c ?? throw "null pointer dereference").curvePreferences, dynamicRecordSizingDisabled : (@:checkr _c ?? throw "null pointer dereference").dynamicRecordSizingDisabled, renegotiation : (@:checkr _c ?? throw "null pointer dereference").renegotiation, keyLogWriter : (@:checkr _c ?? throw "null pointer dereference").keyLogWriter, _sessionTicketKeys : (@:checkr _c ?? throw "null pointer dereference")._sessionTicketKeys, _autoSessionTicketKeys : (@:checkr _c ?? throw "null pointer dereference")._autoSessionTicketKeys } : stdgo._internal.crypto.tls.Tls_config.Config)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>);
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
                return (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>);
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
                return (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _ticketKeyFromBytes( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>, _b:stdgo.GoArray<stdgo.GoUInt8>):stdgo._internal.crypto.tls.Tls_t_ticketkey.T_ticketKey {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config> = _c;
        var _key = ({} : stdgo._internal.crypto.tls.Tls_t_ticketkey.T_ticketKey);
        var _hashed = stdgo._internal.crypto.sha512.Sha512_sum512.sum512((_b.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>))?.__copy__();
        {};
        (_key._aesKey.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__((_hashed.__slice__((16 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        (_key._hmacKey.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__((_hashed.__slice__((32 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        _key._created = @:check2r _c._time()?.__copy__();
        return _key = _key?.__copy__();
    }
}
