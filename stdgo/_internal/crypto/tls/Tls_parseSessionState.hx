package stdgo._internal.crypto.tls;
function parseSessionState(_data:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_SessionState.SessionState>; var _1 : stdgo.Error; } {
        var _ss = (stdgo.Go.setRef((new stdgo._internal.crypto.tls.Tls_SessionState.SessionState() : stdgo._internal.crypto.tls.Tls_SessionState.SessionState)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_SessionState.SessionState>);
        var _s = (_data : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_);
        var __0:stdgo.GoUInt8 = (0 : stdgo.GoUInt8), __1:stdgo.GoUInt8 = (0 : stdgo.GoUInt8), __2:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
var _earlyData = __2, _extMasterSecret = __1, _typ = __0;
        var _cert:stdgo._internal.crypto.tls.Tls_Certificate.Certificate = ({} : stdgo._internal.crypto.tls.Tls_Certificate.Certificate);
        var _extra:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_ = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);
        if (((((((((((!_s.readUint16(stdgo.Go.pointer(_ss._version)) || !_s.readUint8(stdgo.Go.pointer(_typ)) : Bool) || (((_typ != (1 : stdgo.GoUInt8)) && (_typ != (2 : stdgo.GoUInt8)) : Bool)) : Bool) || !_s.readUint16(stdgo.Go.pointer(_ss._cipherSuite)) : Bool) || !stdgo._internal.crypto.tls.Tls__readUint64._readUint64((stdgo.Go.setRef(_s) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>), stdgo.Go.pointer(_ss._createdAt)) : Bool) || !stdgo._internal.crypto.tls.Tls__readUint8LengthPrefixed._readUint8LengthPrefixed((stdgo.Go.setRef(_s) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>), (stdgo.Go.setRef(_ss._secret) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)) : Bool) || !_s.readUint24LengthPrefixed((stdgo.Go.setRef(_extra) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>)) : Bool) || !_s.readUint8(stdgo.Go.pointer(_extMasterSecret)) : Bool) || !_s.readUint8(stdgo.Go.pointer(_earlyData)) : Bool) || (_ss._secret.length) == ((0 : stdgo.GoInt)) : Bool) || !stdgo._internal.crypto.tls.Tls__unmarshalCertificate._unmarshalCertificate((stdgo.Go.setRef(_s) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>), (stdgo.Go.setRef(_cert) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Certificate.Certificate>)) : Bool)) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("tls: invalid session encoding" : stdgo.GoString)) };
        };
        while (!_extra.empty()) {
            var _e:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
            if (!stdgo._internal.crypto.tls.Tls__readUint24LengthPrefixed._readUint24LengthPrefixed((stdgo.Go.setRef(_extra) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>), (stdgo.Go.setRef(_e) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>))) {
                return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("tls: invalid session encoding" : stdgo.GoString)) };
            };
            _ss.extra = (_ss.extra.__append__(_e));
        };
        {
            final __value__ = _extMasterSecret;
            if (__value__ == ((0 : stdgo.GoUInt8))) {
                _ss._extMasterSecret = false;
            } else if (__value__ == ((1 : stdgo.GoUInt8))) {
                _ss._extMasterSecret = true;
            } else {
                return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("tls: invalid session encoding" : stdgo.GoString)) };
            };
        };
        {
            final __value__ = _earlyData;
            if (__value__ == ((0 : stdgo.GoUInt8))) {
                _ss.earlyData = false;
            } else if (__value__ == ((1 : stdgo.GoUInt8))) {
                _ss.earlyData = true;
            } else {
                return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("tls: invalid session encoding" : stdgo.GoString)) };
            };
        };
        for (__65 => _cert in _cert.certificate) {
            var __tmp__ = stdgo._internal.crypto.tls.Tls__globalCertCache._globalCertCache._newCert(_cert), _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_activeCert.T_activeCert> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
            _ss._activeCertHandles = (_ss._activeCertHandles.__append__(_c));
            _ss._peerCertificates = (_ss._peerCertificates.__append__(_c._cert));
        };
        _ss._ocspResponse = _cert.ocspstaple;
        _ss._scts = _cert.signedCertificateTimestamps;
        var _chainList:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_ = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);
        if (!_s.readUint24LengthPrefixed((stdgo.Go.setRef(_chainList) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>))) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("tls: invalid session encoding" : stdgo.GoString)) };
        };
        while (!_chainList.empty()) {
            var _certList:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_ = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);
            if (!_chainList.readUint24LengthPrefixed((stdgo.Go.setRef(_certList) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>))) {
                return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("tls: invalid session encoding" : stdgo.GoString)) };
            };
            var _chain:stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>);
            if ((_ss._peerCertificates.length) == ((0 : stdgo.GoInt))) {
                return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("tls: invalid session encoding" : stdgo.GoString)) };
            };
            _chain = (_chain.__append__(_ss._peerCertificates[(0 : stdgo.GoInt)]));
            while (!_certList.empty()) {
                var _cert:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
                if (!stdgo._internal.crypto.tls.Tls__readUint24LengthPrefixed._readUint24LengthPrefixed((stdgo.Go.setRef(_certList) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>), (stdgo.Go.setRef(_cert) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>))) {
                    return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("tls: invalid session encoding" : stdgo.GoString)) };
                };
                var __tmp__ = stdgo._internal.crypto.tls.Tls__globalCertCache._globalCertCache._newCert(_cert), _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_activeCert.T_activeCert> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : null, _1 : _err };
                };
                _ss._activeCertHandles = (_ss._activeCertHandles.__append__(_c));
                _chain = (_chain.__append__(_c._cert));
            };
            _ss._verifiedChains = (_ss._verifiedChains.__append__(_chain));
        };
        if (_ss.earlyData) {
            var _alpn:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
            if (!stdgo._internal.crypto.tls.Tls__readUint8LengthPrefixed._readUint8LengthPrefixed((stdgo.Go.setRef(_s) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>), (stdgo.Go.setRef(_alpn) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>))) {
                return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("tls: invalid session encoding" : stdgo.GoString)) };
            };
            _ss._alpnProtocol = (_alpn : stdgo.GoString)?.__copy__();
        };
        {
            var _isClient = (_typ == ((2 : stdgo.GoUInt8)) : Bool);
            if (!_isClient) {
                if (!_s.empty()) {
                    return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("tls: invalid session encoding" : stdgo.GoString)) };
                };
                return { _0 : _ss, _1 : (null : stdgo.Error) };
            };
        };
        _ss._isClient = true;
        if ((_ss._peerCertificates.length) == ((0 : stdgo.GoInt))) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("tls: no server certificates in client session" : stdgo.GoString)) };
        };
        if ((_ss._version < (772 : stdgo.GoUInt16) : Bool)) {
            if (!_s.empty()) {
                return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("tls: invalid session encoding" : stdgo.GoString)) };
            };
            return { _0 : _ss, _1 : (null : stdgo.Error) };
        };
        if (((!_s.readUint64(stdgo.Go.pointer(_ss._useBy)) || !_s.readUint32(stdgo.Go.pointer(_ss._ageAdd)) : Bool) || !_s.empty() : Bool)) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("tls: invalid session encoding" : stdgo.GoString)) };
        };
        return { _0 : _ss, _1 : (null : stdgo.Error) };
    }
