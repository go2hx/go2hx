package stdgo._internal.crypto.tls;
@:keep @:allow(stdgo._internal.crypto.tls.Tls.T_serverHelloMsg_asInterface) class T_serverHelloMsg_static_extension {
    @:keep
    @:tdfield
    static public function _unmarshal( _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhellomsg.T_serverHelloMsg>, _data:stdgo.Slice<stdgo.GoUInt8>):Bool {
        @:recv var _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhellomsg.T_serverHelloMsg> = _m;
        {
            var __tmp__ = ({ _raw : _data } : stdgo._internal.crypto.tls.Tls_t_serverhellomsg.T_serverHelloMsg);
            var x = (_m : stdgo._internal.crypto.tls.Tls_t_serverhellomsg.T_serverHelloMsg);
            x._raw = __tmp__?._raw;
            x._vers = __tmp__?._vers;
            x._random = __tmp__?._random;
            x._sessionId = __tmp__?._sessionId;
            x._cipherSuite = __tmp__?._cipherSuite;
            x._compressionMethod = __tmp__?._compressionMethod;
            x._ocspStapling = __tmp__?._ocspStapling;
            x._ticketSupported = __tmp__?._ticketSupported;
            x._secureRenegotiationSupported = __tmp__?._secureRenegotiationSupported;
            x._secureRenegotiation = __tmp__?._secureRenegotiation;
            x._extendedMasterSecret = __tmp__?._extendedMasterSecret;
            x._alpnProtocol = __tmp__?._alpnProtocol;
            x._scts = __tmp__?._scts;
            x._supportedVersion = __tmp__?._supportedVersion;
            x._serverShare = __tmp__?._serverShare;
            x._selectedIdentityPresent = __tmp__?._selectedIdentityPresent;
            x._selectedIdentity = __tmp__?._selectedIdentity;
            x._supportedPoints = __tmp__?._supportedPoints;
            x._cookie = __tmp__?._cookie;
            x._selectedGroup = __tmp__?._selectedGroup;
        };
        var _s = (_data : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_);
        if ((((((!@:check2 _s.skip((4 : stdgo.GoInt)) || !@:check2 _s.readUint16(stdgo.Go.pointer((@:checkr _m ?? throw "null pointer dereference")._vers)) : Bool) || !@:check2 _s.readBytes((stdgo.Go.setRef((@:checkr _m ?? throw "null pointer dereference")._random) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>), (32 : stdgo.GoInt)) : Bool) || !stdgo._internal.crypto.tls.Tls__readuint8lengthprefixed._readUint8LengthPrefixed((stdgo.Go.setRef(_s) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (stdgo.Go.setRef((@:checkr _m ?? throw "null pointer dereference")._sessionId) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)) : Bool) || !@:check2 _s.readUint16(stdgo.Go.pointer((@:checkr _m ?? throw "null pointer dereference")._cipherSuite)) : Bool) || !@:check2 _s.readUint8(stdgo.Go.pointer((@:checkr _m ?? throw "null pointer dereference")._compressionMethod)) : Bool)) {
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
                if (__value__ == ((5 : stdgo.GoUInt16))) {
                    (@:checkr _m ?? throw "null pointer dereference")._ocspStapling = true;
                } else if (__value__ == ((35 : stdgo.GoUInt16))) {
                    (@:checkr _m ?? throw "null pointer dereference")._ticketSupported = true;
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
                    var _proto:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_);
                    if (((!@:check2 _protoList.readUint8LengthPrefixed((stdgo.Go.setRef(_proto) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_>)) || _proto.empty() : Bool) || !_protoList.empty() : Bool)) {
                        return false;
                    };
                    (@:checkr _m ?? throw "null pointer dereference")._alpnProtocol = (_proto : stdgo.GoString)?.__copy__();
                } else if (__value__ == ((18 : stdgo.GoUInt16))) {
                    var _sctList:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_);
                    if ((!@:check2 _extData.readUint16LengthPrefixed((stdgo.Go.setRef(_sctList) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_>)) || _sctList.empty() : Bool)) {
                        return false;
                    };
                    while (!_sctList.empty()) {
                        var _sct:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
                        if ((!stdgo._internal.crypto.tls.Tls__readuint16lengthprefixed._readUint16LengthPrefixed((stdgo.Go.setRef(_sctList) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (stdgo.Go.setRef(_sct) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)) || (_sct.length == (0 : stdgo.GoInt)) : Bool)) {
                            return false;
                        };
                        (@:checkr _m ?? throw "null pointer dereference")._scts = ((@:checkr _m ?? throw "null pointer dereference")._scts.__append__(_sct));
                    };
                } else if (__value__ == ((43 : stdgo.GoUInt16))) {
                    if (!@:check2 _extData.readUint16(stdgo.Go.pointer((@:checkr _m ?? throw "null pointer dereference")._supportedVersion))) {
                        return false;
                    };
                } else if (__value__ == ((44 : stdgo.GoUInt16))) {
                    if ((!stdgo._internal.crypto.tls.Tls__readuint16lengthprefixed._readUint16LengthPrefixed((stdgo.Go.setRef(_extData) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (stdgo.Go.setRef((@:checkr _m ?? throw "null pointer dereference")._cookie) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)) || ((@:checkr _m ?? throw "null pointer dereference")._cookie.length == (0 : stdgo.GoInt)) : Bool)) {
                        return false;
                    };
                } else if (__value__ == ((51 : stdgo.GoUInt16))) {
                    if ((_extData.length) == ((2 : stdgo.GoInt))) {
                        if (!@:check2 _extData.readUint16(new stdgo.Pointer<stdgo.GoUInt16>(() -> (stdgo.Go.pointer((@:checkr _m ?? throw "null pointer dereference")._selectedGroup).value : stdgo.GoUInt16), v -> (stdgo.Go.pointer((@:checkr _m ?? throw "null pointer dereference")._selectedGroup).value = (v : stdgo._internal.crypto.tls.Tls_curveid.CurveID) : stdgo.GoUInt16)))) {
                            return false;
                        };
                    } else {
                        if ((!@:check2 _extData.readUint16(new stdgo.Pointer<stdgo.GoUInt16>(() -> (stdgo.Go.pointer((@:checkr _m ?? throw "null pointer dereference")._serverShare._group).value : stdgo.GoUInt16), v -> (stdgo.Go.pointer((@:checkr _m ?? throw "null pointer dereference")._serverShare._group).value = (v : stdgo._internal.crypto.tls.Tls_curveid.CurveID) : stdgo.GoUInt16))) || !stdgo._internal.crypto.tls.Tls__readuint16lengthprefixed._readUint16LengthPrefixed((stdgo.Go.setRef(_extData) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (stdgo.Go.setRef((@:checkr _m ?? throw "null pointer dereference")._serverShare._data) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)) : Bool)) {
                            return false;
                        };
                    };
                } else if (__value__ == ((41 : stdgo.GoUInt16))) {
                    (@:checkr _m ?? throw "null pointer dereference")._selectedIdentityPresent = true;
                    if (!@:check2 _extData.readUint16(stdgo.Go.pointer((@:checkr _m ?? throw "null pointer dereference")._selectedIdentity))) {
                        return false;
                    };
                } else if (__value__ == ((11 : stdgo.GoUInt16))) {
                    if ((!stdgo._internal.crypto.tls.Tls__readuint8lengthprefixed._readUint8LengthPrefixed((stdgo.Go.setRef(_extData) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (stdgo.Go.setRef((@:checkr _m ?? throw "null pointer dereference")._supportedPoints) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)) || ((@:checkr _m ?? throw "null pointer dereference")._supportedPoints.length == (0 : stdgo.GoInt)) : Bool)) {
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
    @:tdfield
    static public function _marshal( _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhellomsg.T_serverHelloMsg>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhellomsg.T_serverHelloMsg> = _m;
        if ((@:checkr _m ?? throw "null pointer dereference")._raw != null) {
            return { _0 : (@:checkr _m ?? throw "null pointer dereference")._raw, _1 : (null : stdgo.Error) };
        };
        var _exts:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder = ({} : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder);
        if ((@:checkr _m ?? throw "null pointer dereference")._ocspStapling) {
            @:check2 _exts.addUint16((5 : stdgo.GoUInt16));
            @:check2 _exts.addUint16((0 : stdgo.GoUInt16));
        };
        if ((@:checkr _m ?? throw "null pointer dereference")._ticketSupported) {
            @:check2 _exts.addUint16((35 : stdgo.GoUInt16));
            @:check2 _exts.addUint16((0 : stdgo.GoUInt16));
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
        if ((((@:checkr _m ?? throw "null pointer dereference")._alpnProtocol.length) > (0 : stdgo.GoInt) : Bool)) {
            @:check2 _exts.addUint16((16 : stdgo.GoUInt16));
            @:check2 _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                @:check2r _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                    @:check2r _exts.addUint8LengthPrefixed(function(_exts:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                        @:check2r _exts.addBytes(((@:checkr _m ?? throw "null pointer dereference")._alpnProtocol : stdgo.Slice<stdgo.GoUInt8>));
                    });
                });
            });
        };
        if ((((@:checkr _m ?? throw "null pointer dereference")._scts.length) > (0 : stdgo.GoInt) : Bool)) {
            @:check2 _exts.addUint16((18 : stdgo.GoUInt16));
            @:check2 _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                @:check2r _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                    for (__65 => _sct in (@:checkr _m ?? throw "null pointer dereference")._scts) {
                        @:check2r _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                            @:check2r _exts.addBytes(_sct);
                        });
                    };
                });
            });
        };
        if ((@:checkr _m ?? throw "null pointer dereference")._supportedVersion != ((0 : stdgo.GoUInt16))) {
            @:check2 _exts.addUint16((43 : stdgo.GoUInt16));
            @:check2 _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                @:check2r _exts.addUint16((@:checkr _m ?? throw "null pointer dereference")._supportedVersion);
            });
        };
        if ((@:checkr _m ?? throw "null pointer dereference")._serverShare._group != ((0 : stdgo._internal.crypto.tls.Tls_curveid.CurveID))) {
            @:check2 _exts.addUint16((51 : stdgo.GoUInt16));
            @:check2 _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                @:check2r _exts.addUint16(((@:checkr _m ?? throw "null pointer dereference")._serverShare._group : stdgo.GoUInt16));
                @:check2r _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                    @:check2r _exts.addBytes((@:checkr _m ?? throw "null pointer dereference")._serverShare._data);
                });
            });
        };
        if ((@:checkr _m ?? throw "null pointer dereference")._selectedIdentityPresent) {
            @:check2 _exts.addUint16((41 : stdgo.GoUInt16));
            @:check2 _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                @:check2r _exts.addUint16((@:checkr _m ?? throw "null pointer dereference")._selectedIdentity);
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
        if ((@:checkr _m ?? throw "null pointer dereference")._selectedGroup != ((0 : stdgo._internal.crypto.tls.Tls_curveid.CurveID))) {
            @:check2 _exts.addUint16((51 : stdgo.GoUInt16));
            @:check2 _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                @:check2r _exts.addUint16(((@:checkr _m ?? throw "null pointer dereference")._selectedGroup : stdgo.GoUInt16));
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
        var __tmp__ = @:check2 _exts.bytes(), _extBytes:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        var _b:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder = ({} : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder);
        @:check2 _b.addUint8((2 : stdgo.GoUInt8));
        @:check2 _b.addUint24LengthPrefixed(function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
            @:check2r _b.addUint16((@:checkr _m ?? throw "null pointer dereference")._vers);
            stdgo._internal.crypto.tls.Tls__addbyteswithlength._addBytesWithLength(_b, (@:checkr _m ?? throw "null pointer dereference")._random, (32 : stdgo.GoInt));
            @:check2r _b.addUint8LengthPrefixed(function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                @:check2r _b.addBytes((@:checkr _m ?? throw "null pointer dereference")._sessionId);
            });
            @:check2r _b.addUint16((@:checkr _m ?? throw "null pointer dereference")._cipherSuite);
            @:check2r _b.addUint8((@:checkr _m ?? throw "null pointer dereference")._compressionMethod);
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
