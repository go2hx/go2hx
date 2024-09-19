package stdgo._internal.crypto.tls;
@:keep @:allow(stdgo._internal.crypto.tls.Tls.T_certificateRequestMsgTLS13_asInterface) class T_certificateRequestMsgTLS13_static_extension {
    @:keep
    static public function _unmarshal( _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_certificateRequestMsgTLS13.T_certificateRequestMsgTLS13>, _data:stdgo.Slice<stdgo.GoUInt8>):Bool {
        @:recv var _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_certificateRequestMsgTLS13.T_certificateRequestMsgTLS13> = _m;
        {
            var __tmp__ = ({ _raw : _data } : stdgo._internal.crypto.tls.Tls_T_certificateRequestMsgTLS13.T_certificateRequestMsgTLS13);
            (_m : stdgo._internal.crypto.tls.Tls_T_certificateRequestMsgTLS13.T_certificateRequestMsgTLS13)._raw = __tmp__._raw;
            (_m : stdgo._internal.crypto.tls.Tls_T_certificateRequestMsgTLS13.T_certificateRequestMsgTLS13)._ocspStapling = __tmp__._ocspStapling;
            (_m : stdgo._internal.crypto.tls.Tls_T_certificateRequestMsgTLS13.T_certificateRequestMsgTLS13)._scts = __tmp__._scts;
            (_m : stdgo._internal.crypto.tls.Tls_T_certificateRequestMsgTLS13.T_certificateRequestMsgTLS13)._supportedSignatureAlgorithms = __tmp__._supportedSignatureAlgorithms;
            (_m : stdgo._internal.crypto.tls.Tls_T_certificateRequestMsgTLS13.T_certificateRequestMsgTLS13)._supportedSignatureAlgorithmsCert = __tmp__._supportedSignatureAlgorithmsCert;
            (_m : stdgo._internal.crypto.tls.Tls_T_certificateRequestMsgTLS13.T_certificateRequestMsgTLS13)._certificateAuthorities = __tmp__._certificateAuthorities;
        };
        var _s = (_data : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_);
        var __0:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_ = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0), __1:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_ = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);
var _extensions = __1, _context = __0;
        if (((((!_s.skip((4 : stdgo.GoInt)) || !_s.readUint8LengthPrefixed((stdgo.Go.setRef(_context) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>)) : Bool) || !_context.empty() : Bool) || !_s.readUint16LengthPrefixed((stdgo.Go.setRef(_extensions) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>)) : Bool) || !_s.empty() : Bool)) {
            return false;
        };
        while (!_extensions.empty()) {
            var _extension:stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
            var _extData:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_ = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);
            if ((!_extensions.readUint16(stdgo.Go.pointer(_extension)) || !_extensions.readUint16LengthPrefixed((stdgo.Go.setRef(_extData) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>)) : Bool)) {
                return false;
            };
            {
                final __value__ = _extension;
                if (__value__ == ((5 : stdgo.GoUInt16))) {
                    _m._ocspStapling = true;
                } else if (__value__ == ((18 : stdgo.GoUInt16))) {
                    _m._scts = true;
                } else if (__value__ == ((13 : stdgo.GoUInt16))) {
                    var _sigAndAlgs:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_ = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);
                    if ((!_extData.readUint16LengthPrefixed((stdgo.Go.setRef(_sigAndAlgs) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>)) || _sigAndAlgs.empty() : Bool)) {
                        return false;
                    };
                    while (!_sigAndAlgs.empty()) {
                        var _sigAndAlg:stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
                        if (!_sigAndAlgs.readUint16(stdgo.Go.pointer(_sigAndAlg))) {
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
                        if (!_sigAndAlgs.readUint16(stdgo.Go.pointer(_sigAndAlg))) {
                            return false;
                        };
                        _m._supportedSignatureAlgorithmsCert = (_m._supportedSignatureAlgorithmsCert.__append__((_sigAndAlg : stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme)));
                    };
                } else if (__value__ == ((47 : stdgo.GoUInt16))) {
                    var _auths:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_ = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);
                    if ((!_extData.readUint16LengthPrefixed((stdgo.Go.setRef(_auths) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>)) || _auths.empty() : Bool)) {
                        return false;
                    };
                    while (!_auths.empty()) {
                        var _ca:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
                        if ((!stdgo._internal.crypto.tls.Tls__readUint16LengthPrefixed._readUint16LengthPrefixed((stdgo.Go.setRef(_auths) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>), (stdgo.Go.setRef(_ca) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)) || (_ca.length == (0 : stdgo.GoInt)) : Bool)) {
                            return false;
                        };
                        _m._certificateAuthorities = (_m._certificateAuthorities.__append__(_ca));
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
    static public function _marshal( _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_certificateRequestMsgTLS13.T_certificateRequestMsgTLS13>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_certificateRequestMsgTLS13.T_certificateRequestMsgTLS13> = _m;
        if (_m._raw != null) {
            return { _0 : _m._raw, _1 : (null : stdgo.Error) };
        };
        var _b:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder = ({} : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder);
        _b.addUint8((13 : stdgo.GoUInt8));
        _b.addUint24LengthPrefixed(function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
            _b.addUint8((0 : stdgo.GoUInt8));
            _b.addUint16LengthPrefixed(function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
                if (_m._ocspStapling) {
                    _b.addUint16((5 : stdgo.GoUInt16));
                    _b.addUint16((0 : stdgo.GoUInt16));
                };
                if (_m._scts) {
                    _b.addUint16((18 : stdgo.GoUInt16));
                    _b.addUint16((0 : stdgo.GoUInt16));
                };
                if (((_m._supportedSignatureAlgorithms.length) > (0 : stdgo.GoInt) : Bool)) {
                    _b.addUint16((13 : stdgo.GoUInt16));
                    _b.addUint16LengthPrefixed(function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
                        _b.addUint16LengthPrefixed(function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
                            for (__65 => _sigAlgo in _m._supportedSignatureAlgorithms) {
                                _b.addUint16((_sigAlgo : stdgo.GoUInt16));
                            };
                        });
                    });
                };
                if (((_m._supportedSignatureAlgorithmsCert.length) > (0 : stdgo.GoInt) : Bool)) {
                    _b.addUint16((50 : stdgo.GoUInt16));
                    _b.addUint16LengthPrefixed(function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
                        _b.addUint16LengthPrefixed(function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
                            for (__65 => _sigAlgo in _m._supportedSignatureAlgorithmsCert) {
                                _b.addUint16((_sigAlgo : stdgo.GoUInt16));
                            };
                        });
                    });
                };
                if (((_m._certificateAuthorities.length) > (0 : stdgo.GoInt) : Bool)) {
                    _b.addUint16((47 : stdgo.GoUInt16));
                    _b.addUint16LengthPrefixed(function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
                        _b.addUint16LengthPrefixed(function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
                            for (__65 => _ca in _m._certificateAuthorities) {
                                _b.addUint16LengthPrefixed(function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
                                    _b.addBytes(_ca);
                                });
                            };
                        });
                    });
                };
            });
        });
        var _err:stdgo.Error = (null : stdgo.Error);
        {
            var __tmp__ = _b.bytes();
            _m._raw = __tmp__._0;
            _err = __tmp__._1;
        };
        return { _0 : _m._raw, _1 : _err };
    }
}
