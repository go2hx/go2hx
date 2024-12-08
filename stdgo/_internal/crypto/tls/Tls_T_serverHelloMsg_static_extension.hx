package stdgo._internal.crypto.tls;
@:keep @:allow(stdgo._internal.crypto.tls.Tls.T_serverHelloMsg_asInterface) class T_serverHelloMsg_static_extension {
    @:keep
    static public function _unmarshal( _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHelloMsg.T_serverHelloMsg>, _data:stdgo.Slice<stdgo.GoUInt8>):Bool {
        @:recv var _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHelloMsg.T_serverHelloMsg> = _m;
        {
            var __tmp__ = ({ _raw : _data } : stdgo._internal.crypto.tls.Tls_T_serverHelloMsg.T_serverHelloMsg);
            var x = (_m : stdgo._internal.crypto.tls.Tls_T_serverHelloMsg.T_serverHelloMsg);
            x._raw = __tmp__._raw;
            x._vers = __tmp__._vers;
            x._random = __tmp__._random;
            x._sessionId = __tmp__._sessionId;
            x._cipherSuite = __tmp__._cipherSuite;
            x._compressionMethod = __tmp__._compressionMethod;
            x._ocspStapling = __tmp__._ocspStapling;
            x._ticketSupported = __tmp__._ticketSupported;
            x._secureRenegotiationSupported = __tmp__._secureRenegotiationSupported;
            x._secureRenegotiation = __tmp__._secureRenegotiation;
            x._extendedMasterSecret = __tmp__._extendedMasterSecret;
            x._alpnProtocol = __tmp__._alpnProtocol;
            x._scts = __tmp__._scts;
            x._supportedVersion = __tmp__._supportedVersion;
            x._serverShare = __tmp__._serverShare;
            x._selectedIdentityPresent = __tmp__._selectedIdentityPresent;
            x._selectedIdentity = __tmp__._selectedIdentity;
            x._supportedPoints = __tmp__._supportedPoints;
            x._cookie = __tmp__._cookie;
            x._selectedGroup = __tmp__._selectedGroup;
        };
        var _s = (_data : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_);
        if ((((((!_s.skip((4 : stdgo.GoInt)) || !_s.readUint16(stdgo.Go.pointer(_m._vers)) : Bool) || !_s.readBytes((stdgo.Go.setRef(_m._random) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>), (32 : stdgo.GoInt)) : Bool) || !stdgo._internal.crypto.tls.Tls__readUint8LengthPrefixed._readUint8LengthPrefixed((stdgo.Go.setRef(_s) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>), (stdgo.Go.setRef(_m._sessionId) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)) : Bool) || !_s.readUint16(stdgo.Go.pointer(_m._cipherSuite)) : Bool) || !_s.readUint8(stdgo.Go.pointer(_m._compressionMethod)) : Bool)) {
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
                if (__value__ == ((5 : stdgo.GoUInt16))) {
                    _m._ocspStapling = true;
                } else if (__value__ == ((35 : stdgo.GoUInt16))) {
                    _m._ticketSupported = true;
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
                    var _proto:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_ = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);
                    if (((!_protoList.readUint8LengthPrefixed((stdgo.Go.setRef(_proto) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>)) || _proto.empty() : Bool) || !_protoList.empty() : Bool)) {
                        return false;
                    };
                    _m._alpnProtocol = (_proto : stdgo.GoString)?.__copy__();
                } else if (__value__ == ((18 : stdgo.GoUInt16))) {
                    var _sctList:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_ = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);
                    if ((!_extData.readUint16LengthPrefixed((stdgo.Go.setRef(_sctList) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>)) || _sctList.empty() : Bool)) {
                        return false;
                    };
                    while (!_sctList.empty()) {
                        var _sct:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
                        if ((!stdgo._internal.crypto.tls.Tls__readUint16LengthPrefixed._readUint16LengthPrefixed((stdgo.Go.setRef(_sctList) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>), (stdgo.Go.setRef(_sct) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)) || (_sct.length == (0 : stdgo.GoInt)) : Bool)) {
                            return false;
                        };
                        _m._scts = (_m._scts.__append__(_sct));
                    };
                } else if (__value__ == ((43 : stdgo.GoUInt16))) {
                    if (!_extData.readUint16(stdgo.Go.pointer(_m._supportedVersion))) {
                        return false;
                    };
                } else if (__value__ == ((44 : stdgo.GoUInt16))) {
                    if ((!stdgo._internal.crypto.tls.Tls__readUint16LengthPrefixed._readUint16LengthPrefixed((stdgo.Go.setRef(_extData) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>), (stdgo.Go.setRef(_m._cookie) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)) || (_m._cookie.length == (0 : stdgo.GoInt)) : Bool)) {
                        return false;
                    };
                } else if (__value__ == ((51 : stdgo.GoUInt16))) {
                    if ((_extData.length) == ((2 : stdgo.GoInt))) {
                        if (!_extData.readUint16(new stdgo.Pointer<stdgo.GoUInt16>(() -> (stdgo.Go.pointer(_m._selectedGroup).value : stdgo.GoUInt16), v -> (stdgo.Go.pointer(_m._selectedGroup).value = (v : stdgo._internal.crypto.tls.Tls_CurveID.CurveID) : stdgo.GoUInt16)))) {
                            return false;
                        };
                    } else {
                        if ((!_extData.readUint16(new stdgo.Pointer<stdgo.GoUInt16>(() -> (stdgo.Go.pointer(_m._serverShare._group).value : stdgo.GoUInt16), v -> (stdgo.Go.pointer(_m._serverShare._group).value = (v : stdgo._internal.crypto.tls.Tls_CurveID.CurveID) : stdgo.GoUInt16))) || !stdgo._internal.crypto.tls.Tls__readUint16LengthPrefixed._readUint16LengthPrefixed((stdgo.Go.setRef(_extData) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>), (stdgo.Go.setRef(_m._serverShare._data) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)) : Bool)) {
                            return false;
                        };
                    };
                } else if (__value__ == ((41 : stdgo.GoUInt16))) {
                    _m._selectedIdentityPresent = true;
                    if (!_extData.readUint16(stdgo.Go.pointer(_m._selectedIdentity))) {
                        return false;
                    };
                } else if (__value__ == ((11 : stdgo.GoUInt16))) {
                    if ((!stdgo._internal.crypto.tls.Tls__readUint8LengthPrefixed._readUint8LengthPrefixed((stdgo.Go.setRef(_extData) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>), (stdgo.Go.setRef(_m._supportedPoints) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)) || (_m._supportedPoints.length == (0 : stdgo.GoInt)) : Bool)) {
                        return false;
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
    static public function _marshal( _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHelloMsg.T_serverHelloMsg>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHelloMsg.T_serverHelloMsg> = _m;
        if (_m._raw != null) {
            return { _0 : _m._raw, _1 : (null : stdgo.Error) };
        };
        var _exts:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder = ({} : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder);
        if (_m._ocspStapling) {
            _exts.addUint16((5 : stdgo.GoUInt16));
            _exts.addUint16((0 : stdgo.GoUInt16));
        };
        if (_m._ticketSupported) {
            _exts.addUint16((35 : stdgo.GoUInt16));
            _exts.addUint16((0 : stdgo.GoUInt16));
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
        if (((_m._alpnProtocol.length) > (0 : stdgo.GoInt) : Bool)) {
            _exts.addUint16((16 : stdgo.GoUInt16));
            _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
                _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
                    _exts.addUint8LengthPrefixed(function(_exts:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
                        _exts.addBytes((_m._alpnProtocol : stdgo.Slice<stdgo.GoUInt8>));
                    });
                });
            });
        };
        if (((_m._scts.length) > (0 : stdgo.GoInt) : Bool)) {
            _exts.addUint16((18 : stdgo.GoUInt16));
            _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
                _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
                    for (__65 => _sct in _m._scts) {
                        _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
                            _exts.addBytes(_sct);
                        });
                    };
                });
            });
        };
        if (_m._supportedVersion != ((0 : stdgo.GoUInt16))) {
            _exts.addUint16((43 : stdgo.GoUInt16));
            _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
                _exts.addUint16(_m._supportedVersion);
            });
        };
        if (_m._serverShare._group != ((0 : stdgo._internal.crypto.tls.Tls_CurveID.CurveID))) {
            _exts.addUint16((51 : stdgo.GoUInt16));
            _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
                _exts.addUint16((_m._serverShare._group : stdgo.GoUInt16));
                _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
                    _exts.addBytes(_m._serverShare._data);
                });
            });
        };
        if (_m._selectedIdentityPresent) {
            _exts.addUint16((41 : stdgo.GoUInt16));
            _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
                _exts.addUint16(_m._selectedIdentity);
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
        if (_m._selectedGroup != ((0 : stdgo._internal.crypto.tls.Tls_CurveID.CurveID))) {
            _exts.addUint16((51 : stdgo.GoUInt16));
            _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
                _exts.addUint16((_m._selectedGroup : stdgo.GoUInt16));
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
        var __tmp__ = _exts.bytes(), _extBytes:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        var _b:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder = ({} : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder);
        _b.addUint8((2 : stdgo.GoUInt8));
        _b.addUint24LengthPrefixed(function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
            _b.addUint16(_m._vers);
            stdgo._internal.crypto.tls.Tls__addBytesWithLength._addBytesWithLength(_b, _m._random, (32 : stdgo.GoInt));
            _b.addUint8LengthPrefixed(function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
                _b.addBytes(_m._sessionId);
            });
            _b.addUint16(_m._cipherSuite);
            _b.addUint8(_m._compressionMethod);
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
