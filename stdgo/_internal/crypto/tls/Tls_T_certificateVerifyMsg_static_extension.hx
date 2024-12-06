package stdgo._internal.crypto.tls;
@:keep @:allow(stdgo._internal.crypto.tls.Tls.T_certificateVerifyMsg_asInterface) class T_certificateVerifyMsg_static_extension {
    @:keep
    static public function _unmarshal( _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_certificateVerifyMsg.T_certificateVerifyMsg>, _data:stdgo.Slice<stdgo.GoUInt8>):Bool {
        @:recv var _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_certificateVerifyMsg.T_certificateVerifyMsg> = _m;
        _m._raw = _data;
        var _s = (_data : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_);
        var _s__pointer__ = (stdgo.Go.setRef(_s) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>);
        if (!_s.skip((4 : stdgo.GoInt))) {
            return false;
        };
        if (_m._hasSignatureAlgorithm) {
            if (!_s.readUint16(new stdgo.Pointer<stdgo.GoUInt16>(() -> (stdgo.Go.pointer(_m._signatureAlgorithm).value : stdgo.GoUInt16), v -> (stdgo.Go.pointer(_m._signatureAlgorithm).value = (v : stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme) : stdgo.GoUInt16)))) {
                return false;
            };
        };
        return (stdgo._internal.crypto.tls.Tls__readUint16LengthPrefixed._readUint16LengthPrefixed(_s__pointer__, (stdgo.Go.setRef(_m._signature) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)) && _s.empty() : Bool);
    }
    @:keep
    static public function _marshal( _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_certificateVerifyMsg.T_certificateVerifyMsg>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_certificateVerifyMsg.T_certificateVerifyMsg> = _m;
        if (_m._raw != null) {
            return { _0 : _m._raw, _1 : (null : stdgo.Error) };
        };
        var _b:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder = ({} : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder);
        _b.addUint8((15 : stdgo.GoUInt8));
        _b.addUint24LengthPrefixed(function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
            if (_m._hasSignatureAlgorithm) {
                _b.addUint16((_m._signatureAlgorithm : stdgo.GoUInt16));
            };
            _b.addUint16LengthPrefixed(function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
                _b.addBytes(_m._signature);
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
