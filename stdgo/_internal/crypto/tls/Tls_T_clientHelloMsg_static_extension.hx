package stdgo._internal.crypto.tls;
@:keep @:allow(stdgo._internal.crypto.tls.Tls.T_clientHelloMsg_asInterface) class T_clientHelloMsg_static_extension {
    @:keep
    static public function _unmarshal( _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg>, _data:stdgo.Slice<stdgo.GoUInt8>):Bool {
        @:recv var _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg> = _m;
        {
            var __tmp__ = ({ _raw : _data } : stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg);
            (_m : stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg)._raw = __tmp__._raw;
            (_m : stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg)._vers = __tmp__._vers;
            (_m : stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg)._random = __tmp__._random;
            (_m : stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg)._sessionId = __tmp__._sessionId;
            (_m : stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg)._cipherSuites = __tmp__._cipherSuites;
            (_m : stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg)._compressionMethods = __tmp__._compressionMethods;
            (_m : stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg)._serverName = __tmp__._serverName;
            (_m : stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg)._ocspStapling = __tmp__._ocspStapling;
            (_m : stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg)._supportedCurves = __tmp__._supportedCurves;
            (_m : stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg)._supportedPoints = __tmp__._supportedPoints;
            (_m : stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg)._ticketSupported = __tmp__._ticketSupported;
            (_m : stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg)._sessionTicket = __tmp__._sessionTicket;
            (_m : stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg)._supportedSignatureAlgorithms = __tmp__._supportedSignatureAlgorithms;
            (_m : stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg)._supportedSignatureAlgorithmsCert = __tmp__._supportedSignatureAlgorithmsCert;
            (_m : stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg)._secureRenegotiationSupported = __tmp__._secureRenegotiationSupported;
            (_m : stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg)._secureRenegotiation = __tmp__._secureRenegotiation;
            (_m : stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg)._extendedMasterSecret = __tmp__._extendedMasterSecret;
            (_m : stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg)._alpnProtocols = __tmp__._alpnProtocols;
            (_m : stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg)._scts = __tmp__._scts;
            (_m : stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg)._supportedVersions = __tmp__._supportedVersions;
            (_m : stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg)._cookie = __tmp__._cookie;
            (_m : stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg)._keyShares = __tmp__._keyShares;
            (_m : stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg)._earlyData = __tmp__._earlyData;
            (_m : stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg)._pskModes = __tmp__._pskModes;
            (_m : stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg)._pskIdentities = __tmp__._pskIdentities;
            (_m : stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg)._pskBinders = __tmp__._pskBinders;
            (_m : stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg)._quicTransportParameters = __tmp__._quicTransportParameters;
        };
        var _s = (_data : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_);
        if ((((!_s.skip((4 : stdgo.GoInt)) || !_s.readUint16(stdgo.Go.pointer(_m._vers)) : Bool) || !_s.readBytes((stdgo.Go.setRef(_m._random) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>), (32 : stdgo.GoInt)) : Bool) || !stdgo._internal.crypto.tls.Tls__readUint8LengthPrefixed._readUint8LengthPrefixed((stdgo.Go.setRef(_s) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>), (stdgo.Go.setRef(_m._sessionId) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)) : Bool)) {
            return false;
        };
        var _cipherSuites:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_ = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);
        if (!_s.readUint16LengthPrefixed((stdgo.Go.setRef(_cipherSuites) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>))) {
            return false;
        };
        _m._cipherSuites = (new stdgo.Slice<stdgo.GoUInt16>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt16>);
        _m._secureRenegotiationSupported = false;
        while (!_cipherSuites.empty()) {
            var _suite:stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
            var _suite__pointer__ = stdgo.Go.pointer(_suite);
            if (!_cipherSuites.readUint16(_suite__pointer__)) {
                return false;
            };
            if (_suite == ((255 : stdgo.GoUInt16))) {
                _m._secureRenegotiationSupported = true;
            };
            _m._cipherSuites = (_m._cipherSuites.__append__(_suite));
        };
        if (!stdgo._internal.crypto.tls.Tls__readUint8LengthPrefixed._readUint8LengthPrefixed((stdgo.Go.setRef(_s) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>), (stdgo.Go.setRef(_m._compressionMethods) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>))) {
            return false;
        };
        if (_s.empty()) {
            return true;
        };
        var _extensions:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_ = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);
        if ((!_s.readUint16LengthPrefixed((stdgo.Go.setRef(_extensions) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>)) || !_s.empty() : Bool)) {
            return false;
        };
        var _seenExts = ({
            final x = new stdgo.GoMap.GoIntMap<Bool>();
            x.__defaultValue__ = () -> false;
            {};
            x;
        } : stdgo.GoMap<stdgo.GoUInt16, Bool>);
        while (!_extensions.empty()) {
            var _extension:stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
            var _extension__pointer__ = stdgo.Go.pointer(_extension);
            var _extData:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_ = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);
            if ((!_extensions.readUint16(_extension__pointer__) || !_extensions.readUint16LengthPrefixed((stdgo.Go.setRef(_extData) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>)) : Bool)) {
                return false;
            };
            if ((_seenExts[_extension] ?? false)) {
                return false;
            };
            _seenExts[_extension] = true;
            {
                final __value__ = _extension;
                if (__value__ == ((0 : stdgo.GoUInt16))) {
                    var _nameList:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_ = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);
                    if ((!_extData.readUint16LengthPrefixed((stdgo.Go.setRef(_nameList) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>)) || _nameList.empty() : Bool)) {
                        return false;
                    };
                    while (!_nameList.empty()) {
                        var _nameType:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
                        var _nameType__pointer__ = stdgo.Go.pointer(_nameType);
                        var _serverName:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_ = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);
                        if (((!_nameList.readUint8(_nameType__pointer__) || !_nameList.readUint16LengthPrefixed((stdgo.Go.setRef(_serverName) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>)) : Bool) || _serverName.empty() : Bool)) {
                            return false;
                        };
                        if (_nameType != ((0 : stdgo.GoUInt8))) {
                            continue;
                        };
                        if ((_m._serverName.length) != ((0 : stdgo.GoInt))) {
                            return false;
                        };
                        _m._serverName = (_serverName : stdgo.GoString)?.__copy__();
                        if (stdgo._internal.strings.Strings_hasSuffix.hasSuffix(_m._serverName?.__copy__(), ("." : stdgo.GoString))) {
                            return false;
                        };
                    };
                } else if (__value__ == ((5 : stdgo.GoUInt16))) {
                    var _statusType:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
                    var _statusType__pointer__ = stdgo.Go.pointer(_statusType);
                    var _ignored:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_ = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);
                    if (((!_extData.readUint8(_statusType__pointer__) || !_extData.readUint16LengthPrefixed((stdgo.Go.setRef(_ignored) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>)) : Bool) || !_extData.readUint16LengthPrefixed((stdgo.Go.setRef(_ignored) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>)) : Bool)) {
                        return false;
                    };
                    _m._ocspStapling = _statusType == ((1 : stdgo.GoUInt8));
                } else if (__value__ == ((10 : stdgo.GoUInt16))) {
                    var _curves:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_ = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);
                    if ((!_extData.readUint16LengthPrefixed((stdgo.Go.setRef(_curves) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>)) || _curves.empty() : Bool)) {
                        return false;
                    };
                    while (!_curves.empty()) {
                        var _curve:stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
                        var _curve__pointer__ = stdgo.Go.pointer(_curve);
                        if (!_curves.readUint16(_curve__pointer__)) {
                            return false;
                        };
                        _m._supportedCurves = (_m._supportedCurves.__append__((_curve : stdgo._internal.crypto.tls.Tls_CurveID.CurveID)));
                    };
                } else if (__value__ == ((11 : stdgo.GoUInt16))) {
                    if ((!stdgo._internal.crypto.tls.Tls__readUint8LengthPrefixed._readUint8LengthPrefixed((stdgo.Go.setRef(_extData) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>), (stdgo.Go.setRef(_m._supportedPoints) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)) || (_m._supportedPoints.length == (0 : stdgo.GoInt)) : Bool)) {
                        return false;
                    };
                } else if (__value__ == ((35 : stdgo.GoUInt16))) {
                    _m._ticketSupported = true;
                    _extData.readBytes((stdgo.Go.setRef(_m._sessionTicket) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>), (_extData.length));
                } else if (__value__ == ((13 : stdgo.GoUInt16))) {
                    var _sigAndAlgs:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_ = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);
                    if ((!_extData.readUint16LengthPrefixed((stdgo.Go.setRef(_sigAndAlgs) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>)) || _sigAndAlgs.empty() : Bool)) {
                        return false;
                    };
                    while (!_sigAndAlgs.empty()) {
                        var _sigAndAlg:stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
                        var _sigAndAlg__pointer__ = stdgo.Go.pointer(_sigAndAlg);
                        if (!_sigAndAlgs.readUint16(_sigAndAlg__pointer__)) {
                            return false;
                        };
                        _m._supportedSignatureAlgorithms = (_m._supportedSignatureAlgorithms.__append__((_sigAndAlg : stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme)));
                    };
                } else if (__value__ == ((50 : stdgo.GoUInt16))) {
                    var _sigAndAlgs:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_ = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);
                    if ((!_extData.readUint16LengthPrefixed((stdgo.Go.setRef(_sigAndAlgs) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>)) || _sigAndAlgs.empty() : Bool)) {
                        return false;
                    };
                    while (!_sigAndAlgs.empty()) {
                        var _sigAndAlg:stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
                        var _sigAndAlg__pointer__ = stdgo.Go.pointer(_sigAndAlg);
                        if (!_sigAndAlgs.readUint16(_sigAndAlg__pointer__)) {
                            return false;
                        };
                        _m._supportedSignatureAlgorithmsCert = (_m._supportedSignatureAlgorithmsCert.__append__((_sigAndAlg : stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme)));
                    };
                } else if (__value__ == ((65281 : stdgo.GoUInt16))) {
                    if (!stdgo._internal.crypto.tls.Tls__readUint8LengthPrefixed._readUint8LengthPrefixed((stdgo.Go.setRef(_extData) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>), (stdgo.Go.setRef(_m._secureRenegotiation) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>))) {
                        return false;
                    };
                    _m._secureRenegotiationSupported = true;
                } else if (__value__ == ((23 : stdgo.GoUInt16))) {
                    _m._extendedMasterSecret = true;
                } else if (__value__ == ((16 : stdgo.GoUInt16))) {
                    var _protoList:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_ = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);
                    if ((!_extData.readUint16LengthPrefixed((stdgo.Go.setRef(_protoList) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>)) || _protoList.empty() : Bool)) {
                        return false;
                    };
                    while (!_protoList.empty()) {
                        var _proto:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_ = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);
                        if ((!_protoList.readUint8LengthPrefixed((stdgo.Go.setRef(_proto) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>)) || _proto.empty() : Bool)) {
                            return false;
                        };
                        _m._alpnProtocols = (_m._alpnProtocols.__append__((_proto : stdgo.GoString)?.__copy__()));
                    };
                } else if (__value__ == ((18 : stdgo.GoUInt16))) {
                    _m._scts = true;
                } else if (__value__ == ((43 : stdgo.GoUInt16))) {
                    var _versList:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_ = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);
                    if ((!_extData.readUint8LengthPrefixed((stdgo.Go.setRef(_versList) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>)) || _versList.empty() : Bool)) {
                        return false;
                    };
                    while (!_versList.empty()) {
                        var _vers:stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
                        var _vers__pointer__ = stdgo.Go.pointer(_vers);
                        if (!_versList.readUint16(_vers__pointer__)) {
                            return false;
                        };
                        _m._supportedVersions = (_m._supportedVersions.__append__(_vers));
                    };
                } else if (__value__ == ((44 : stdgo.GoUInt16))) {
                    if ((!stdgo._internal.crypto.tls.Tls__readUint16LengthPrefixed._readUint16LengthPrefixed((stdgo.Go.setRef(_extData) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>), (stdgo.Go.setRef(_m._cookie) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)) || (_m._cookie.length == (0 : stdgo.GoInt)) : Bool)) {
                        return false;
                    };
                } else if (__value__ == ((51 : stdgo.GoUInt16))) {
                    var _clientShares:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_ = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);
                    if (!_extData.readUint16LengthPrefixed((stdgo.Go.setRef(_clientShares) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>))) {
                        return false;
                    };
                    while (!_clientShares.empty()) {
                        var _ks:stdgo._internal.crypto.tls.Tls_T_keyShare.T_keyShare = ({} : stdgo._internal.crypto.tls.Tls_T_keyShare.T_keyShare);
                        if (((!_clientShares.readUint16(new stdgo.Pointer<stdgo.GoUInt16>(() -> (stdgo.Go.pointer(_ks._group).value : stdgo.GoUInt16), v -> (stdgo.Go.pointer(_ks._group).value = (v : stdgo._internal.crypto.tls.Tls_CurveID.CurveID) : stdgo.GoUInt16))) || !stdgo._internal.crypto.tls.Tls__readUint16LengthPrefixed._readUint16LengthPrefixed((stdgo.Go.setRef(_clientShares) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>), (stdgo.Go.setRef(_ks._data) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)) : Bool) || (_ks._data.length == (0 : stdgo.GoInt)) : Bool)) {
                            return false;
                        };
                        _m._keyShares = (_m._keyShares.__append__(_ks?.__copy__()));
                    };
                } else if (__value__ == ((42 : stdgo.GoUInt16))) {
                    _m._earlyData = true;
                } else if (__value__ == ((45 : stdgo.GoUInt16))) {
                    if (!stdgo._internal.crypto.tls.Tls__readUint8LengthPrefixed._readUint8LengthPrefixed((stdgo.Go.setRef(_extData) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>), (stdgo.Go.setRef(_m._pskModes) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>))) {
                        return false;
                    };
                } else if (__value__ == ((57 : stdgo.GoUInt16))) {
                    _m._quicTransportParameters = (new stdgo.Slice<stdgo.GoUInt8>((_extData.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    if (!_extData.copyBytes(_m._quicTransportParameters)) {
                        return false;
                    };
                } else if (__value__ == ((41 : stdgo.GoUInt16))) {
                    if (!_extensions.empty()) {
                        return false;
                    };
                    var _identities:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_ = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);
                    if ((!_extData.readUint16LengthPrefixed((stdgo.Go.setRef(_identities) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>)) || _identities.empty() : Bool)) {
                        return false;
                    };
                    while (!_identities.empty()) {
                        var _psk:stdgo._internal.crypto.tls.Tls_T_pskIdentity.T_pskIdentity = ({} : stdgo._internal.crypto.tls.Tls_T_pskIdentity.T_pskIdentity);
                        if (((!stdgo._internal.crypto.tls.Tls__readUint16LengthPrefixed._readUint16LengthPrefixed((stdgo.Go.setRef(_identities) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>), (stdgo.Go.setRef(_psk._label) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)) || !_identities.readUint32(stdgo.Go.pointer(_psk._obfuscatedTicketAge)) : Bool) || (_psk._label.length == (0 : stdgo.GoInt)) : Bool)) {
                            return false;
                        };
                        _m._pskIdentities = (_m._pskIdentities.__append__(_psk?.__copy__()));
                    };
                    var _binders:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_ = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);
                    if ((!_extData.readUint16LengthPrefixed((stdgo.Go.setRef(_binders) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>)) || _binders.empty() : Bool)) {
                        return false;
                    };
                    while (!_binders.empty()) {
                        var _binder:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
                        if ((!stdgo._internal.crypto.tls.Tls__readUint8LengthPrefixed._readUint8LengthPrefixed((stdgo.Go.setRef(_binders) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>), (stdgo.Go.setRef(_binder) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)) || (_binder.length == (0 : stdgo.GoInt)) : Bool)) {
                            return false;
                        };
                        _m._pskBinders = (_m._pskBinders.__append__(_binder));
                    };
                } else {
                    continue;
                };
            };
            if (!_extData.empty()) {
                return false;
            };
        };
        return true;
    }
    @:keep
    static public function _updateBinders( _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg>, _pskBinders:stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>):stdgo.Error {
        @:recv var _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg> = _m;
        if ((_pskBinders.length) != ((_m._pskBinders.length))) {
            return stdgo._internal.errors.Errors_new_.new_(("tls: internal error: pskBinders length mismatch" : stdgo.GoString));
        };
        for (_i => _ in _m._pskBinders) {
            if ((_pskBinders[(_i : stdgo.GoInt)].length) != ((_m._pskBinders[(_i : stdgo.GoInt)].length))) {
                return stdgo._internal.errors.Errors_new_.new_(("tls: internal error: pskBinders length mismatch" : stdgo.GoString));
            };
        };
        _m._pskBinders = _pskBinders;
        if (_m._raw != null) {
            var __tmp__ = _m._marshalWithoutBinders(), _helloBytes:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
            var _lenWithoutBinders = (_helloBytes.length : stdgo.GoInt);
            var _b = _internal.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_newFixedBuilder.newFixedBuilder((_m._raw.__slice__(0, _lenWithoutBinders) : stdgo.Slice<stdgo.GoUInt8>));
            _b.addUint16LengthPrefixed(function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
                for (__65 => _binder in _m._pskBinders) {
                    _b.addUint8LengthPrefixed(function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
                        _b.addBytes(_binder);
                    });
                };
            });
            {
                var __tmp__ = _b.bytes(), _out:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (((_err != null) || (_out.length != (_m._raw.length)) : Bool)) {
                    return stdgo._internal.errors.Errors_new_.new_(("tls: internal error: failed to update binders" : stdgo.GoString));
                };
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function _marshalWithoutBinders( _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg> = _m;
        var _bindersLen = (2 : stdgo.GoInt);
        for (__65 => _binder in _m._pskBinders) {
            _bindersLen = (_bindersLen + ((1 : stdgo.GoInt)) : stdgo.GoInt);
            _bindersLen = (_bindersLen + ((_binder.length)) : stdgo.GoInt);
        };
        var __tmp__ = _m._marshal(), _fullMessage:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        return { _0 : (_fullMessage.__slice__(0, ((_fullMessage.length) - _bindersLen : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function _marshal( _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg> = _m;
        if (_m._raw != null) {
            return { _0 : _m._raw, _1 : (null : stdgo.Error) };
        };
        var _exts:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder = ({} : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder);
        if (((_m._serverName.length) > (0 : stdgo.GoInt) : Bool)) {
            _exts.addUint16((0 : stdgo.GoUInt16));
            _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
                _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
                    _exts.addUint8((0 : stdgo.GoUInt8));
                    _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
                        _exts.addBytes((_m._serverName : stdgo.Slice<stdgo.GoUInt8>));
                    });
                });
            });
        };
        if (_m._ocspStapling) {
            _exts.addUint16((5 : stdgo.GoUInt16));
            _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
                _exts.addUint8((1 : stdgo.GoUInt8));
                _exts.addUint16((0 : stdgo.GoUInt16));
                _exts.addUint16((0 : stdgo.GoUInt16));
            });
        };
        if (((_m._supportedCurves.length) > (0 : stdgo.GoInt) : Bool)) {
            _exts.addUint16((10 : stdgo.GoUInt16));
            _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
                _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
                    for (__65 => _curve in _m._supportedCurves) {
                        _exts.addUint16((_curve : stdgo.GoUInt16));
                    };
                });
            });
        };
        if (((_m._supportedPoints.length) > (0 : stdgo.GoInt) : Bool)) {
            _exts.addUint16((11 : stdgo.GoUInt16));
            _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
                _exts.addUint8LengthPrefixed(function(_exts:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
                    _exts.addBytes(_m._supportedPoints);
                });
            });
        };
        if (_m._ticketSupported) {
            _exts.addUint16((35 : stdgo.GoUInt16));
            _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
                _exts.addBytes(_m._sessionTicket);
            });
        };
        if (((_m._supportedSignatureAlgorithms.length) > (0 : stdgo.GoInt) : Bool)) {
            _exts.addUint16((13 : stdgo.GoUInt16));
            _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
                _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
                    for (__65 => _sigAlgo in _m._supportedSignatureAlgorithms) {
                        _exts.addUint16((_sigAlgo : stdgo.GoUInt16));
                    };
                });
            });
        };
        if (((_m._supportedSignatureAlgorithmsCert.length) > (0 : stdgo.GoInt) : Bool)) {
            _exts.addUint16((50 : stdgo.GoUInt16));
            _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
                _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
                    for (__65 => _sigAlgo in _m._supportedSignatureAlgorithmsCert) {
                        _exts.addUint16((_sigAlgo : stdgo.GoUInt16));
                    };
                });
            });
        };
        if (_m._secureRenegotiationSupported) {
            _exts.addUint16((65281 : stdgo.GoUInt16));
            _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
                _exts.addUint8LengthPrefixed(function(_exts:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
                    _exts.addBytes(_m._secureRenegotiation);
                });
            });
        };
        if (_m._extendedMasterSecret) {
            _exts.addUint16((23 : stdgo.GoUInt16));
            _exts.addUint16((0 : stdgo.GoUInt16));
        };
        if (((_m._alpnProtocols.length) > (0 : stdgo.GoInt) : Bool)) {
            _exts.addUint16((16 : stdgo.GoUInt16));
            _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
                _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
                    for (__65 => _proto in _m._alpnProtocols) {
                        _exts.addUint8LengthPrefixed(function(_exts:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
                            _exts.addBytes((_proto : stdgo.Slice<stdgo.GoUInt8>));
                        });
                    };
                });
            });
        };
        if (_m._scts) {
            _exts.addUint16((18 : stdgo.GoUInt16));
            _exts.addUint16((0 : stdgo.GoUInt16));
        };
        if (((_m._supportedVersions.length) > (0 : stdgo.GoInt) : Bool)) {
            _exts.addUint16((43 : stdgo.GoUInt16));
            _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
                _exts.addUint8LengthPrefixed(function(_exts:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
                    for (__65 => _vers in _m._supportedVersions) {
                        _exts.addUint16(_vers);
                    };
                });
            });
        };
        if (((_m._cookie.length) > (0 : stdgo.GoInt) : Bool)) {
            _exts.addUint16((44 : stdgo.GoUInt16));
            _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
                _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
                    _exts.addBytes(_m._cookie);
                });
            });
        };
        if (((_m._keyShares.length) > (0 : stdgo.GoInt) : Bool)) {
            _exts.addUint16((51 : stdgo.GoUInt16));
            _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
                _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
                    for (__65 => _ks in _m._keyShares) {
                        _exts.addUint16((_ks._group : stdgo.GoUInt16));
                        _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
                            _exts.addBytes(_ks._data);
                        });
                    };
                });
            });
        };
        if (_m._earlyData) {
            _exts.addUint16((42 : stdgo.GoUInt16));
            _exts.addUint16((0 : stdgo.GoUInt16));
        };
        if (((_m._pskModes.length) > (0 : stdgo.GoInt) : Bool)) {
            _exts.addUint16((45 : stdgo.GoUInt16));
            _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
                _exts.addUint8LengthPrefixed(function(_exts:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
                    _exts.addBytes(_m._pskModes);
                });
            });
        };
        if (_m._quicTransportParameters != null) {
            _exts.addUint16((57 : stdgo.GoUInt16));
            _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
                _exts.addBytes(_m._quicTransportParameters);
            });
        };
        if (((_m._pskIdentities.length) > (0 : stdgo.GoInt) : Bool)) {
            _exts.addUint16((41 : stdgo.GoUInt16));
            _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
                _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
                    for (__65 => _psk in _m._pskIdentities) {
                        _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
                            _exts.addBytes(_psk._label);
                        });
                        _exts.addUint32(_psk._obfuscatedTicketAge);
                    };
                });
                _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
                    for (__65 => _binder in _m._pskBinders) {
                        _exts.addUint8LengthPrefixed(function(_exts:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
                            _exts.addBytes(_binder);
                        });
                    };
                });
            });
        };
        var __tmp__ = _exts.bytes(), _extBytes:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        var _b:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder = ({} : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder);
        _b.addUint8((1 : stdgo.GoUInt8));
        _b.addUint24LengthPrefixed(function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
            _b.addUint16(_m._vers);
            stdgo._internal.crypto.tls.Tls__addBytesWithLength._addBytesWithLength(_b, _m._random, (32 : stdgo.GoInt));
            _b.addUint8LengthPrefixed(function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
                _b.addBytes(_m._sessionId);
            });
            _b.addUint16LengthPrefixed(function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
                for (__65 => _suite in _m._cipherSuites) {
                    _b.addUint16(_suite);
                };
            });
            _b.addUint8LengthPrefixed(function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
                _b.addBytes(_m._compressionMethods);
            });
            if (((_extBytes.length) > (0 : stdgo.GoInt) : Bool)) {
                _b.addUint16LengthPrefixed(function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
                    _b.addBytes(_extBytes);
                });
            };
        });
        {
            var __tmp__ = _b.bytes();
            _m._raw = __tmp__._0;
            _err = __tmp__._1;
        };
        return { _0 : _m._raw, _1 : _err };
    }
}
