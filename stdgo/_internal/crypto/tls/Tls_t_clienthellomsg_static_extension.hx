package stdgo._internal.crypto.tls;
@:keep @:allow(stdgo._internal.crypto.tls.Tls.T_clientHelloMsg_asInterface) class T_clientHelloMsg_static_extension {
    @:keep
    @:tdfield
    static public function _unmarshal( _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthellomsg.T_clientHelloMsg>, _data:stdgo.Slice<stdgo.GoUInt8>):Bool {
        @:recv var _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthellomsg.T_clientHelloMsg> = _m;
        {
            var __tmp__ = ({ _raw : _data } : stdgo._internal.crypto.tls.Tls_t_clienthellomsg.T_clientHelloMsg);
            var x = (_m : stdgo._internal.crypto.tls.Tls_t_clienthellomsg.T_clientHelloMsg);
            x._raw = __tmp__?._raw;
            x._vers = __tmp__?._vers;
            x._random = __tmp__?._random;
            x._sessionId = __tmp__?._sessionId;
            x._cipherSuites = __tmp__?._cipherSuites;
            x._compressionMethods = __tmp__?._compressionMethods;
            x._serverName = __tmp__?._serverName;
            x._ocspStapling = __tmp__?._ocspStapling;
            x._supportedCurves = __tmp__?._supportedCurves;
            x._supportedPoints = __tmp__?._supportedPoints;
            x._ticketSupported = __tmp__?._ticketSupported;
            x._sessionTicket = __tmp__?._sessionTicket;
            x._supportedSignatureAlgorithms = __tmp__?._supportedSignatureAlgorithms;
            x._supportedSignatureAlgorithmsCert = __tmp__?._supportedSignatureAlgorithmsCert;
            x._secureRenegotiationSupported = __tmp__?._secureRenegotiationSupported;
            x._secureRenegotiation = __tmp__?._secureRenegotiation;
            x._extendedMasterSecret = __tmp__?._extendedMasterSecret;
            x._alpnProtocols = __tmp__?._alpnProtocols;
            x._scts = __tmp__?._scts;
            x._supportedVersions = __tmp__?._supportedVersions;
            x._cookie = __tmp__?._cookie;
            x._keyShares = __tmp__?._keyShares;
            x._earlyData = __tmp__?._earlyData;
            x._pskModes = __tmp__?._pskModes;
            x._pskIdentities = __tmp__?._pskIdentities;
            x._pskBinders = __tmp__?._pskBinders;
            x._quicTransportParameters = __tmp__?._quicTransportParameters;
        };
        var _s = (_data : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_);
        if ((((!@:check2 _s.skip((4 : stdgo.GoInt)) || !@:check2 _s.readUint16(stdgo.Go.pointer((@:checkr _m ?? throw "null pointer dereference")._vers)) : Bool) || !@:check2 _s.readBytes((stdgo.Go.setRef((@:checkr _m ?? throw "null pointer dereference")._random) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>), (32 : stdgo.GoInt)) : Bool) || !stdgo._internal.crypto.tls.Tls__readuint8lengthprefixed._readUint8LengthPrefixed((stdgo.Go.setRef(_s) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (stdgo.Go.setRef((@:checkr _m ?? throw "null pointer dereference")._sessionId) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)) : Bool)) {
            return false;
        };
        var _cipherSuites:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_);
        if (!@:check2 _s.readUint16LengthPrefixed((stdgo.Go.setRef(_cipherSuites) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_>))) {
            return false;
        };
        (@:checkr _m ?? throw "null pointer dereference")._cipherSuites = (new stdgo.Slice<stdgo.GoUInt16>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt16>);
        (@:checkr _m ?? throw "null pointer dereference")._secureRenegotiationSupported = false;
        while (!_cipherSuites.empty()) {
            var _suite:stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
            var _suite__pointer__ = stdgo.Go.pointer(_suite);
            if (!@:check2 _cipherSuites.readUint16(_suite__pointer__)) {
                return false;
            };
            if (_suite == ((255 : stdgo.GoUInt16))) {
                (@:checkr _m ?? throw "null pointer dereference")._secureRenegotiationSupported = true;
            };
            (@:checkr _m ?? throw "null pointer dereference")._cipherSuites = ((@:checkr _m ?? throw "null pointer dereference")._cipherSuites.__append__(_suite));
        };
        if (!stdgo._internal.crypto.tls.Tls__readuint8lengthprefixed._readUint8LengthPrefixed((stdgo.Go.setRef(_s) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (stdgo.Go.setRef((@:checkr _m ?? throw "null pointer dereference")._compressionMethods) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>))) {
            return false;
        };
        if (_s.empty()) {
            return true;
        };
        var _extensions:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_);
        if ((!@:check2 _s.readUint16LengthPrefixed((stdgo.Go.setRef(_extensions) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_>)) || !_s.empty() : Bool)) {
            return false;
        };
        var _seenExts = (({
            final x = new stdgo.GoMap.GoIntMap<Bool>();
            x.__defaultValue__ = () -> false;
            {};
            x;
        } : stdgo.GoMap<stdgo.GoUInt16, Bool>) : stdgo.GoMap<stdgo.GoUInt16, Bool>);
        while (!_extensions.empty()) {
            var _extension:stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
            var _extension__pointer__ = stdgo.Go.pointer(_extension);
            var _extData:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_);
            if ((!@:check2 _extensions.readUint16(_extension__pointer__) || !@:check2 _extensions.readUint16LengthPrefixed((stdgo.Go.setRef(_extData) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_>)) : Bool)) {
                return false;
            };
            if ((_seenExts[_extension] ?? false)) {
                return false;
            };
            _seenExts[_extension] = true;
            {
                final __value__ = _extension;
                if (__value__ == ((0 : stdgo.GoUInt16))) {
                    var _nameList:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_);
                    if ((!@:check2 _extData.readUint16LengthPrefixed((stdgo.Go.setRef(_nameList) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_>)) || _nameList.empty() : Bool)) {
                        return false;
                    };
                    while (!_nameList.empty()) {
                        var _nameType:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
                        var _nameType__pointer__ = stdgo.Go.pointer(_nameType);
                        var _serverName:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_);
                        if (((!@:check2 _nameList.readUint8(_nameType__pointer__) || !@:check2 _nameList.readUint16LengthPrefixed((stdgo.Go.setRef(_serverName) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_>)) : Bool) || _serverName.empty() : Bool)) {
                            return false;
                        };
                        if (_nameType != ((0 : stdgo.GoUInt8))) {
                            continue;
                        };
                        if (((@:checkr _m ?? throw "null pointer dereference")._serverName.length) != ((0 : stdgo.GoInt))) {
                            return false;
                        };
                        (@:checkr _m ?? throw "null pointer dereference")._serverName = (_serverName : stdgo.GoString)?.__copy__();
                        if (stdgo._internal.strings.Strings_hassuffix.hasSuffix((@:checkr _m ?? throw "null pointer dereference")._serverName?.__copy__(), ("." : stdgo.GoString))) {
                            return false;
                        };
                    };
                } else if (__value__ == ((5 : stdgo.GoUInt16))) {
                    var _statusType:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
                    var _statusType__pointer__ = stdgo.Go.pointer(_statusType);
                    var _ignored:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_);
                    if (((!@:check2 _extData.readUint8(_statusType__pointer__) || !@:check2 _extData.readUint16LengthPrefixed((stdgo.Go.setRef(_ignored) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_>)) : Bool) || !@:check2 _extData.readUint16LengthPrefixed((stdgo.Go.setRef(_ignored) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_>)) : Bool)) {
                        return false;
                    };
                    (@:checkr _m ?? throw "null pointer dereference")._ocspStapling = _statusType == ((1 : stdgo.GoUInt8));
                } else if (__value__ == ((10 : stdgo.GoUInt16))) {
                    var _curves:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_);
                    if ((!@:check2 _extData.readUint16LengthPrefixed((stdgo.Go.setRef(_curves) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_>)) || _curves.empty() : Bool)) {
                        return false;
                    };
                    while (!_curves.empty()) {
                        var _curve:stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
                        var _curve__pointer__ = stdgo.Go.pointer(_curve);
                        if (!@:check2 _curves.readUint16(_curve__pointer__)) {
                            return false;
                        };
                        (@:checkr _m ?? throw "null pointer dereference")._supportedCurves = ((@:checkr _m ?? throw "null pointer dereference")._supportedCurves.__append__((_curve : stdgo._internal.crypto.tls.Tls_curveid.CurveID)));
                    };
                } else if (__value__ == ((11 : stdgo.GoUInt16))) {
                    if ((!stdgo._internal.crypto.tls.Tls__readuint8lengthprefixed._readUint8LengthPrefixed((stdgo.Go.setRef(_extData) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (stdgo.Go.setRef((@:checkr _m ?? throw "null pointer dereference")._supportedPoints) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)) || ((@:checkr _m ?? throw "null pointer dereference")._supportedPoints.length == (0 : stdgo.GoInt)) : Bool)) {
                        return false;
                    };
                } else if (__value__ == ((35 : stdgo.GoUInt16))) {
                    (@:checkr _m ?? throw "null pointer dereference")._ticketSupported = true;
                    @:check2 _extData.readBytes((stdgo.Go.setRef((@:checkr _m ?? throw "null pointer dereference")._sessionTicket) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>), (_extData.length));
                } else if (__value__ == ((13 : stdgo.GoUInt16))) {
                    var _sigAndAlgs:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_);
                    if ((!@:check2 _extData.readUint16LengthPrefixed((stdgo.Go.setRef(_sigAndAlgs) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_>)) || _sigAndAlgs.empty() : Bool)) {
                        return false;
                    };
                    while (!_sigAndAlgs.empty()) {
                        var _sigAndAlg:stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
                        var _sigAndAlg__pointer__ = stdgo.Go.pointer(_sigAndAlg);
                        if (!@:check2 _sigAndAlgs.readUint16(_sigAndAlg__pointer__)) {
                            return false;
                        };
                        (@:checkr _m ?? throw "null pointer dereference")._supportedSignatureAlgorithms = ((@:checkr _m ?? throw "null pointer dereference")._supportedSignatureAlgorithms.__append__((_sigAndAlg : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme)));
                    };
                } else if (__value__ == ((50 : stdgo.GoUInt16))) {
                    var _sigAndAlgs:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_);
                    if ((!@:check2 _extData.readUint16LengthPrefixed((stdgo.Go.setRef(_sigAndAlgs) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_>)) || _sigAndAlgs.empty() : Bool)) {
                        return false;
                    };
                    while (!_sigAndAlgs.empty()) {
                        var _sigAndAlg:stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
                        var _sigAndAlg__pointer__ = stdgo.Go.pointer(_sigAndAlg);
                        if (!@:check2 _sigAndAlgs.readUint16(_sigAndAlg__pointer__)) {
                            return false;
                        };
                        (@:checkr _m ?? throw "null pointer dereference")._supportedSignatureAlgorithmsCert = ((@:checkr _m ?? throw "null pointer dereference")._supportedSignatureAlgorithmsCert.__append__((_sigAndAlg : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme)));
                    };
                } else if (__value__ == ((65281 : stdgo.GoUInt16))) {
                    if (!stdgo._internal.crypto.tls.Tls__readuint8lengthprefixed._readUint8LengthPrefixed((stdgo.Go.setRef(_extData) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (stdgo.Go.setRef((@:checkr _m ?? throw "null pointer dereference")._secureRenegotiation) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>))) {
                        return false;
                    };
                    (@:checkr _m ?? throw "null pointer dereference")._secureRenegotiationSupported = true;
                } else if (__value__ == ((23 : stdgo.GoUInt16))) {
                    (@:checkr _m ?? throw "null pointer dereference")._extendedMasterSecret = true;
                } else if (__value__ == ((16 : stdgo.GoUInt16))) {
                    var _protoList:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_);
                    if ((!@:check2 _extData.readUint16LengthPrefixed((stdgo.Go.setRef(_protoList) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_>)) || _protoList.empty() : Bool)) {
                        return false;
                    };
                    while (!_protoList.empty()) {
                        var _proto:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_);
                        if ((!@:check2 _protoList.readUint8LengthPrefixed((stdgo.Go.setRef(_proto) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_>)) || _proto.empty() : Bool)) {
                            return false;
                        };
                        (@:checkr _m ?? throw "null pointer dereference")._alpnProtocols = ((@:checkr _m ?? throw "null pointer dereference")._alpnProtocols.__append__((_proto : stdgo.GoString)?.__copy__()));
                    };
                } else if (__value__ == ((18 : stdgo.GoUInt16))) {
                    (@:checkr _m ?? throw "null pointer dereference")._scts = true;
                } else if (__value__ == ((43 : stdgo.GoUInt16))) {
                    var _versList:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_);
                    if ((!@:check2 _extData.readUint8LengthPrefixed((stdgo.Go.setRef(_versList) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_>)) || _versList.empty() : Bool)) {
                        return false;
                    };
                    while (!_versList.empty()) {
                        var _vers:stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
                        var _vers__pointer__ = stdgo.Go.pointer(_vers);
                        if (!@:check2 _versList.readUint16(_vers__pointer__)) {
                            return false;
                        };
                        (@:checkr _m ?? throw "null pointer dereference")._supportedVersions = ((@:checkr _m ?? throw "null pointer dereference")._supportedVersions.__append__(_vers));
                    };
                } else if (__value__ == ((44 : stdgo.GoUInt16))) {
                    if ((!stdgo._internal.crypto.tls.Tls__readuint16lengthprefixed._readUint16LengthPrefixed((stdgo.Go.setRef(_extData) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (stdgo.Go.setRef((@:checkr _m ?? throw "null pointer dereference")._cookie) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)) || ((@:checkr _m ?? throw "null pointer dereference")._cookie.length == (0 : stdgo.GoInt)) : Bool)) {
                        return false;
                    };
                } else if (__value__ == ((51 : stdgo.GoUInt16))) {
                    var _clientShares:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_);
                    if (!@:check2 _extData.readUint16LengthPrefixed((stdgo.Go.setRef(_clientShares) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_>))) {
                        return false;
                    };
                    while (!_clientShares.empty()) {
                        var _ks:stdgo._internal.crypto.tls.Tls_t_keyshare.T_keyShare = ({} : stdgo._internal.crypto.tls.Tls_t_keyshare.T_keyShare);
                        if (((!@:check2 _clientShares.readUint16(new stdgo.Pointer<stdgo.GoUInt16>(() -> (stdgo.Go.pointer(_ks._group).value : stdgo.GoUInt16), v -> (stdgo.Go.pointer(_ks._group).value = (v : stdgo._internal.crypto.tls.Tls_curveid.CurveID) : stdgo.GoUInt16))) || !stdgo._internal.crypto.tls.Tls__readuint16lengthprefixed._readUint16LengthPrefixed((stdgo.Go.setRef(_clientShares) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (stdgo.Go.setRef(_ks._data) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)) : Bool) || (_ks._data.length == (0 : stdgo.GoInt)) : Bool)) {
                            return false;
                        };
                        (@:checkr _m ?? throw "null pointer dereference")._keyShares = ((@:checkr _m ?? throw "null pointer dereference")._keyShares.__append__(_ks?.__copy__()));
                    };
                } else if (__value__ == ((42 : stdgo.GoUInt16))) {
                    (@:checkr _m ?? throw "null pointer dereference")._earlyData = true;
                } else if (__value__ == ((45 : stdgo.GoUInt16))) {
                    if (!stdgo._internal.crypto.tls.Tls__readuint8lengthprefixed._readUint8LengthPrefixed((stdgo.Go.setRef(_extData) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (stdgo.Go.setRef((@:checkr _m ?? throw "null pointer dereference")._pskModes) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>))) {
                        return false;
                    };
                } else if (__value__ == ((57 : stdgo.GoUInt16))) {
                    (@:checkr _m ?? throw "null pointer dereference")._quicTransportParameters = (new stdgo.Slice<stdgo.GoUInt8>((_extData.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    if (!@:check2 _extData.copyBytes((@:checkr _m ?? throw "null pointer dereference")._quicTransportParameters)) {
                        return false;
                    };
                } else if (__value__ == ((41 : stdgo.GoUInt16))) {
                    if (!_extensions.empty()) {
                        return false;
                    };
                    var _identities:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_);
                    if ((!@:check2 _extData.readUint16LengthPrefixed((stdgo.Go.setRef(_identities) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_>)) || _identities.empty() : Bool)) {
                        return false;
                    };
                    while (!_identities.empty()) {
                        var _psk:stdgo._internal.crypto.tls.Tls_t_pskidentity.T_pskIdentity = ({} : stdgo._internal.crypto.tls.Tls_t_pskidentity.T_pskIdentity);
                        if (((!stdgo._internal.crypto.tls.Tls__readuint16lengthprefixed._readUint16LengthPrefixed((stdgo.Go.setRef(_identities) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (stdgo.Go.setRef(_psk._label) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)) || !@:check2 _identities.readUint32(stdgo.Go.pointer(_psk._obfuscatedTicketAge)) : Bool) || (_psk._label.length == (0 : stdgo.GoInt)) : Bool)) {
                            return false;
                        };
                        (@:checkr _m ?? throw "null pointer dereference")._pskIdentities = ((@:checkr _m ?? throw "null pointer dereference")._pskIdentities.__append__(_psk?.__copy__()));
                    };
                    var _binders:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_);
                    if ((!@:check2 _extData.readUint16LengthPrefixed((stdgo.Go.setRef(_binders) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_>)) || _binders.empty() : Bool)) {
                        return false;
                    };
                    while (!_binders.empty()) {
                        var _binder:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
                        if ((!stdgo._internal.crypto.tls.Tls__readuint8lengthprefixed._readUint8LengthPrefixed((stdgo.Go.setRef(_binders) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (stdgo.Go.setRef(_binder) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)) || (_binder.length == (0 : stdgo.GoInt)) : Bool)) {
                            return false;
                        };
                        (@:checkr _m ?? throw "null pointer dereference")._pskBinders = ((@:checkr _m ?? throw "null pointer dereference")._pskBinders.__append__(_binder));
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
    @:tdfield
    static public function _updateBinders( _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthellomsg.T_clientHelloMsg>, _pskBinders:stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>):stdgo.Error {
        @:recv var _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthellomsg.T_clientHelloMsg> = _m;
        if ((_pskBinders.length) != (((@:checkr _m ?? throw "null pointer dereference")._pskBinders.length))) {
            return stdgo._internal.errors.Errors_new_.new_(("tls: internal error: pskBinders length mismatch" : stdgo.GoString));
        };
        for (_i => _ in (@:checkr _m ?? throw "null pointer dereference")._pskBinders) {
            if ((_pskBinders[(_i : stdgo.GoInt)].length) != (((@:checkr _m ?? throw "null pointer dereference")._pskBinders[(_i : stdgo.GoInt)].length))) {
                return stdgo._internal.errors.Errors_new_.new_(("tls: internal error: pskBinders length mismatch" : stdgo.GoString));
            };
        };
        (@:checkr _m ?? throw "null pointer dereference")._pskBinders = _pskBinders;
        if ((@:checkr _m ?? throw "null pointer dereference")._raw != null) {
            var __tmp__ = @:check2r _m._marshalWithoutBinders(), _helloBytes:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
            var _lenWithoutBinders = (_helloBytes.length : stdgo.GoInt);
            var _b = _internal.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_newfixedbuilder.newFixedBuilder(((@:checkr _m ?? throw "null pointer dereference")._raw.__slice__(0, _lenWithoutBinders) : stdgo.Slice<stdgo.GoUInt8>));
            @:check2r _b.addUint16LengthPrefixed(function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                for (__65 => _binder in (@:checkr _m ?? throw "null pointer dereference")._pskBinders) {
                    @:check2r _b.addUint8LengthPrefixed(function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                        @:check2r _b.addBytes(_binder);
                    });
                };
            });
            {
                var __tmp__ = @:check2r _b.bytes(), _out:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (((_err != null) || (_out.length != ((@:checkr _m ?? throw "null pointer dereference")._raw.length)) : Bool)) {
                    return stdgo._internal.errors.Errors_new_.new_(("tls: internal error: failed to update binders" : stdgo.GoString));
                };
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _marshalWithoutBinders( _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthellomsg.T_clientHelloMsg>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthellomsg.T_clientHelloMsg> = _m;
        var _bindersLen = (2 : stdgo.GoInt);
        for (__65 => _binder in (@:checkr _m ?? throw "null pointer dereference")._pskBinders) {
            _bindersLen = (_bindersLen + ((1 : stdgo.GoInt)) : stdgo.GoInt);
            _bindersLen = (_bindersLen + ((_binder.length)) : stdgo.GoInt);
        };
        var __tmp__ = @:check2r _m._marshal(), _fullMessage:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        return { _0 : (_fullMessage.__slice__(0, ((_fullMessage.length) - _bindersLen : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _marshal( _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthellomsg.T_clientHelloMsg>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthellomsg.T_clientHelloMsg> = _m;
        if ((@:checkr _m ?? throw "null pointer dereference")._raw != null) {
            return { _0 : (@:checkr _m ?? throw "null pointer dereference")._raw, _1 : (null : stdgo.Error) };
        };
        var _exts:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder = ({} : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder);
        if ((((@:checkr _m ?? throw "null pointer dereference")._serverName.length) > (0 : stdgo.GoInt) : Bool)) {
            @:check2 _exts.addUint16((0 : stdgo.GoUInt16));
            @:check2 _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                @:check2r _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                    @:check2r _exts.addUint8((0 : stdgo.GoUInt8));
                    @:check2r _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                        @:check2r _exts.addBytes(((@:checkr _m ?? throw "null pointer dereference")._serverName : stdgo.Slice<stdgo.GoUInt8>));
                    });
                });
            });
        };
        if ((@:checkr _m ?? throw "null pointer dereference")._ocspStapling) {
            @:check2 _exts.addUint16((5 : stdgo.GoUInt16));
            @:check2 _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                @:check2r _exts.addUint8((1 : stdgo.GoUInt8));
                @:check2r _exts.addUint16((0 : stdgo.GoUInt16));
                @:check2r _exts.addUint16((0 : stdgo.GoUInt16));
            });
        };
        if ((((@:checkr _m ?? throw "null pointer dereference")._supportedCurves.length) > (0 : stdgo.GoInt) : Bool)) {
            @:check2 _exts.addUint16((10 : stdgo.GoUInt16));
            @:check2 _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                @:check2r _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                    for (__65 => _curve in (@:checkr _m ?? throw "null pointer dereference")._supportedCurves) {
                        @:check2r _exts.addUint16((_curve : stdgo.GoUInt16));
                    };
                });
            });
        };
        if ((((@:checkr _m ?? throw "null pointer dereference")._supportedPoints.length) > (0 : stdgo.GoInt) : Bool)) {
            @:check2 _exts.addUint16((11 : stdgo.GoUInt16));
            @:check2 _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                @:check2r _exts.addUint8LengthPrefixed(function(_exts:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                    @:check2r _exts.addBytes((@:checkr _m ?? throw "null pointer dereference")._supportedPoints);
                });
            });
        };
        if ((@:checkr _m ?? throw "null pointer dereference")._ticketSupported) {
            @:check2 _exts.addUint16((35 : stdgo.GoUInt16));
            @:check2 _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                @:check2r _exts.addBytes((@:checkr _m ?? throw "null pointer dereference")._sessionTicket);
            });
        };
        if ((((@:checkr _m ?? throw "null pointer dereference")._supportedSignatureAlgorithms.length) > (0 : stdgo.GoInt) : Bool)) {
            @:check2 _exts.addUint16((13 : stdgo.GoUInt16));
            @:check2 _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                @:check2r _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                    for (__65 => _sigAlgo in (@:checkr _m ?? throw "null pointer dereference")._supportedSignatureAlgorithms) {
                        @:check2r _exts.addUint16((_sigAlgo : stdgo.GoUInt16));
                    };
                });
            });
        };
        if ((((@:checkr _m ?? throw "null pointer dereference")._supportedSignatureAlgorithmsCert.length) > (0 : stdgo.GoInt) : Bool)) {
            @:check2 _exts.addUint16((50 : stdgo.GoUInt16));
            @:check2 _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                @:check2r _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                    for (__65 => _sigAlgo in (@:checkr _m ?? throw "null pointer dereference")._supportedSignatureAlgorithmsCert) {
                        @:check2r _exts.addUint16((_sigAlgo : stdgo.GoUInt16));
                    };
                });
            });
        };
        if ((@:checkr _m ?? throw "null pointer dereference")._secureRenegotiationSupported) {
            @:check2 _exts.addUint16((65281 : stdgo.GoUInt16));
            @:check2 _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                @:check2r _exts.addUint8LengthPrefixed(function(_exts:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                    @:check2r _exts.addBytes((@:checkr _m ?? throw "null pointer dereference")._secureRenegotiation);
                });
            });
        };
        if ((@:checkr _m ?? throw "null pointer dereference")._extendedMasterSecret) {
            @:check2 _exts.addUint16((23 : stdgo.GoUInt16));
            @:check2 _exts.addUint16((0 : stdgo.GoUInt16));
        };
        if ((((@:checkr _m ?? throw "null pointer dereference")._alpnProtocols.length) > (0 : stdgo.GoInt) : Bool)) {
            @:check2 _exts.addUint16((16 : stdgo.GoUInt16));
            @:check2 _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                @:check2r _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                    for (__65 => _proto in (@:checkr _m ?? throw "null pointer dereference")._alpnProtocols) {
                        @:check2r _exts.addUint8LengthPrefixed(function(_exts:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                            @:check2r _exts.addBytes((_proto : stdgo.Slice<stdgo.GoUInt8>));
                        });
                    };
                });
            });
        };
        if ((@:checkr _m ?? throw "null pointer dereference")._scts) {
            @:check2 _exts.addUint16((18 : stdgo.GoUInt16));
            @:check2 _exts.addUint16((0 : stdgo.GoUInt16));
        };
        if ((((@:checkr _m ?? throw "null pointer dereference")._supportedVersions.length) > (0 : stdgo.GoInt) : Bool)) {
            @:check2 _exts.addUint16((43 : stdgo.GoUInt16));
            @:check2 _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                @:check2r _exts.addUint8LengthPrefixed(function(_exts:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                    for (__65 => _vers in (@:checkr _m ?? throw "null pointer dereference")._supportedVersions) {
                        @:check2r _exts.addUint16(_vers);
                    };
                });
            });
        };
        if ((((@:checkr _m ?? throw "null pointer dereference")._cookie.length) > (0 : stdgo.GoInt) : Bool)) {
            @:check2 _exts.addUint16((44 : stdgo.GoUInt16));
            @:check2 _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                @:check2r _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                    @:check2r _exts.addBytes((@:checkr _m ?? throw "null pointer dereference")._cookie);
                });
            });
        };
        if ((((@:checkr _m ?? throw "null pointer dereference")._keyShares.length) > (0 : stdgo.GoInt) : Bool)) {
            @:check2 _exts.addUint16((51 : stdgo.GoUInt16));
            @:check2 _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                @:check2r _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                    for (__65 => _ks in (@:checkr _m ?? throw "null pointer dereference")._keyShares) {
                        @:check2r _exts.addUint16((_ks._group : stdgo.GoUInt16));
                        @:check2r _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                            @:check2r _exts.addBytes(_ks._data);
                        });
                    };
                });
            });
        };
        if ((@:checkr _m ?? throw "null pointer dereference")._earlyData) {
            @:check2 _exts.addUint16((42 : stdgo.GoUInt16));
            @:check2 _exts.addUint16((0 : stdgo.GoUInt16));
        };
        if ((((@:checkr _m ?? throw "null pointer dereference")._pskModes.length) > (0 : stdgo.GoInt) : Bool)) {
            @:check2 _exts.addUint16((45 : stdgo.GoUInt16));
            @:check2 _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                @:check2r _exts.addUint8LengthPrefixed(function(_exts:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                    @:check2r _exts.addBytes((@:checkr _m ?? throw "null pointer dereference")._pskModes);
                });
            });
        };
        if ((@:checkr _m ?? throw "null pointer dereference")._quicTransportParameters != null) {
            @:check2 _exts.addUint16((57 : stdgo.GoUInt16));
            @:check2 _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                @:check2r _exts.addBytes((@:checkr _m ?? throw "null pointer dereference")._quicTransportParameters);
            });
        };
        if ((((@:checkr _m ?? throw "null pointer dereference")._pskIdentities.length) > (0 : stdgo.GoInt) : Bool)) {
            @:check2 _exts.addUint16((41 : stdgo.GoUInt16));
            @:check2 _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                @:check2r _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                    for (__65 => _psk in (@:checkr _m ?? throw "null pointer dereference")._pskIdentities) {
                        @:check2r _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                            @:check2r _exts.addBytes(_psk._label);
                        });
                        @:check2r _exts.addUint32(_psk._obfuscatedTicketAge);
                    };
                });
                @:check2r _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                    for (__65 => _binder in (@:checkr _m ?? throw "null pointer dereference")._pskBinders) {
                        @:check2r _exts.addUint8LengthPrefixed(function(_exts:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                            @:check2r _exts.addBytes(_binder);
                        });
                    };
                });
            });
        };
        var __tmp__ = @:check2 _exts.bytes(), _extBytes:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        var _b:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder = ({} : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder);
        @:check2 _b.addUint8((1 : stdgo.GoUInt8));
        @:check2 _b.addUint24LengthPrefixed(function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
            @:check2r _b.addUint16((@:checkr _m ?? throw "null pointer dereference")._vers);
            stdgo._internal.crypto.tls.Tls__addbyteswithlength._addBytesWithLength(_b, (@:checkr _m ?? throw "null pointer dereference")._random, (32 : stdgo.GoInt));
            @:check2r _b.addUint8LengthPrefixed(function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                @:check2r _b.addBytes((@:checkr _m ?? throw "null pointer dereference")._sessionId);
            });
            @:check2r _b.addUint16LengthPrefixed(function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                for (__65 => _suite in (@:checkr _m ?? throw "null pointer dereference")._cipherSuites) {
                    @:check2r _b.addUint16(_suite);
                };
            });
            @:check2r _b.addUint8LengthPrefixed(function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                @:check2r _b.addBytes((@:checkr _m ?? throw "null pointer dereference")._compressionMethods);
            });
            if (((_extBytes.length) > (0 : stdgo.GoInt) : Bool)) {
                @:check2r _b.addUint16LengthPrefixed(function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                    @:check2r _b.addBytes(_extBytes);
                });
            };
        });
        {
            var __tmp__ = @:check2 _b.bytes();
            (@:checkr _m ?? throw "null pointer dereference")._raw = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        return { _0 : (@:checkr _m ?? throw "null pointer dereference")._raw, _1 : _err };
    }
}
