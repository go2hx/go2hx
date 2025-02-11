package stdgo._internal.crypto.tls;
@:keep @:allow(stdgo._internal.crypto.tls.Tls.T_certificateRequestMsgTLS13_asInterface) class T_certificateRequestMsgTLS13_static_extension {
    @:keep
    @:tdfield
    static public function _unmarshal( _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certificaterequestmsgtls13.T_certificateRequestMsgTLS13>, _data:stdgo.Slice<stdgo.GoUInt8>):Bool {
        @:recv var _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certificaterequestmsgtls13.T_certificateRequestMsgTLS13> = _m;
        {
            var __tmp__ = ({ _raw : _data } : stdgo._internal.crypto.tls.Tls_t_certificaterequestmsgtls13.T_certificateRequestMsgTLS13);
            var x = (_m : stdgo._internal.crypto.tls.Tls_t_certificaterequestmsgtls13.T_certificateRequestMsgTLS13);
            x._raw = __tmp__?._raw;
            x._ocspStapling = __tmp__?._ocspStapling;
            x._scts = __tmp__?._scts;
            x._supportedSignatureAlgorithms = __tmp__?._supportedSignatureAlgorithms;
            x._supportedSignatureAlgorithmsCert = __tmp__?._supportedSignatureAlgorithmsCert;
            x._certificateAuthorities = __tmp__?._certificateAuthorities;
        };
        var _s = (_data : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_);
        var __0:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_), __1:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_);
var _extensions = __1, _context = __0;
        if (((((!@:check2 _s.skip((4 : stdgo.GoInt)) || !@:check2 _s.readUint8LengthPrefixed((stdgo.Go.setRef(_context) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_>)) : Bool) || !_context.empty() : Bool) || !@:check2 _s.readUint16LengthPrefixed((stdgo.Go.setRef(_extensions) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_>)) : Bool) || !_s.empty() : Bool)) {
            return false;
        };
        while (!_extensions.empty()) {
            var _extension:stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
            var _extension__pointer__ = stdgo.Go.pointer(_extension);
            var _extData:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_);
            if ((!@:check2 _extensions.readUint16(_extension__pointer__) || !@:check2 _extensions.readUint16LengthPrefixed((stdgo.Go.setRef(_extData) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_>)) : Bool)) {
                return false;
            };
            {
                final __value__ = _extension;
                if (__value__ == ((5 : stdgo.GoUInt16))) {
                    (@:checkr _m ?? throw "null pointer dereference")._ocspStapling = true;
                } else if (__value__ == ((18 : stdgo.GoUInt16))) {
                    (@:checkr _m ?? throw "null pointer dereference")._scts = true;
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
                } else if (__value__ == ((47 : stdgo.GoUInt16))) {
                    var _auths:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_);
                    if ((!@:check2 _extData.readUint16LengthPrefixed((stdgo.Go.setRef(_auths) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_>)) || _auths.empty() : Bool)) {
                        return false;
                    };
                    while (!_auths.empty()) {
                        var _ca:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
                        if ((!stdgo._internal.crypto.tls.Tls__readuint16lengthprefixed._readUint16LengthPrefixed((stdgo.Go.setRef(_auths) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (stdgo.Go.setRef(_ca) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)) || (_ca.length == (0 : stdgo.GoInt)) : Bool)) {
                            return false;
                        };
                        (@:checkr _m ?? throw "null pointer dereference")._certificateAuthorities = ((@:checkr _m ?? throw "null pointer dereference")._certificateAuthorities.__append__(_ca));
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
    static public function _marshal( _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certificaterequestmsgtls13.T_certificateRequestMsgTLS13>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certificaterequestmsgtls13.T_certificateRequestMsgTLS13> = _m;
        if ((@:checkr _m ?? throw "null pointer dereference")._raw != null) {
            return { _0 : (@:checkr _m ?? throw "null pointer dereference")._raw, _1 : (null : stdgo.Error) };
        };
        var _b:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder = ({} : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder);
        @:check2 _b.addUint8((13 : stdgo.GoUInt8));
        @:check2 _b.addUint24LengthPrefixed(function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
            @:check2r _b.addUint8((0 : stdgo.GoUInt8));
            @:check2r _b.addUint16LengthPrefixed(function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                if ((@:checkr _m ?? throw "null pointer dereference")._ocspStapling) {
                    @:check2r _b.addUint16((5 : stdgo.GoUInt16));
                    @:check2r _b.addUint16((0 : stdgo.GoUInt16));
                };
                if ((@:checkr _m ?? throw "null pointer dereference")._scts) {
                    @:check2r _b.addUint16((18 : stdgo.GoUInt16));
                    @:check2r _b.addUint16((0 : stdgo.GoUInt16));
                };
                if ((((@:checkr _m ?? throw "null pointer dereference")._supportedSignatureAlgorithms.length) > (0 : stdgo.GoInt) : Bool)) {
                    @:check2r _b.addUint16((13 : stdgo.GoUInt16));
                    @:check2r _b.addUint16LengthPrefixed(function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                        @:check2r _b.addUint16LengthPrefixed(function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                            for (__65 => _sigAlgo in (@:checkr _m ?? throw "null pointer dereference")._supportedSignatureAlgorithms) {
                                @:check2r _b.addUint16((_sigAlgo : stdgo.GoUInt16));
                            };
                        });
                    });
                };
                if ((((@:checkr _m ?? throw "null pointer dereference")._supportedSignatureAlgorithmsCert.length) > (0 : stdgo.GoInt) : Bool)) {
                    @:check2r _b.addUint16((50 : stdgo.GoUInt16));
                    @:check2r _b.addUint16LengthPrefixed(function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                        @:check2r _b.addUint16LengthPrefixed(function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                            for (__65 => _sigAlgo in (@:checkr _m ?? throw "null pointer dereference")._supportedSignatureAlgorithmsCert) {
                                @:check2r _b.addUint16((_sigAlgo : stdgo.GoUInt16));
                            };
                        });
                    });
                };
                if ((((@:checkr _m ?? throw "null pointer dereference")._certificateAuthorities.length) > (0 : stdgo.GoInt) : Bool)) {
                    @:check2r _b.addUint16((47 : stdgo.GoUInt16));
                    @:check2r _b.addUint16LengthPrefixed(function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                        @:check2r _b.addUint16LengthPrefixed(function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                            for (__65 => _ca in (@:checkr _m ?? throw "null pointer dereference")._certificateAuthorities) {
                                @:check2r _b.addUint16LengthPrefixed(function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                                    @:check2r _b.addBytes(_ca);
                                });
                            };
                        });
                    });
                };
            });
        });
        var _err:stdgo.Error = (null : stdgo.Error);
        {
            var __tmp__ = @:check2 _b.bytes();
            (@:checkr _m ?? throw "null pointer dereference")._raw = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        return { _0 : (@:checkr _m ?? throw "null pointer dereference")._raw, _1 : _err };
    }
}
