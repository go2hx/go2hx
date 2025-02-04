package stdgo._internal.crypto.tls;
@:keep @:allow(stdgo._internal.crypto.tls.Tls.T_certificateVerifyMsg_asInterface) class T_certificateVerifyMsg_static_extension {
    @:keep
    @:tdfield
    static public function _unmarshal( _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certificateverifymsg.T_certificateVerifyMsg>, _data:stdgo.Slice<stdgo.GoUInt8>):Bool {
        @:recv var _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certificateverifymsg.T_certificateVerifyMsg> = _m;
        (@:checkr _m ?? throw "null pointer dereference")._raw = _data;
        var _s = (_data : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_);
        if (!@:check2 _s.skip((4 : stdgo.GoInt))) {
            return false;
        };
        if ((@:checkr _m ?? throw "null pointer dereference")._hasSignatureAlgorithm) {
            if (!@:check2 _s.readUint16(new stdgo.Pointer<stdgo.GoUInt16>(() -> (stdgo.Go.pointer((@:checkr _m ?? throw "null pointer dereference")._signatureAlgorithm).value : stdgo.GoUInt16), v -> (stdgo.Go.pointer((@:checkr _m ?? throw "null pointer dereference")._signatureAlgorithm).value = (v : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme) : stdgo.GoUInt16)))) {
                return false;
            };
        };
        return (stdgo._internal.crypto.tls.Tls__readuint16lengthprefixed._readUint16LengthPrefixed((stdgo.Go.setRef(_s) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (stdgo.Go.setRef((@:checkr _m ?? throw "null pointer dereference")._signature) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)) && _s.empty() : Bool);
    }
    @:keep
    @:tdfield
    static public function _marshal( _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certificateverifymsg.T_certificateVerifyMsg>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certificateverifymsg.T_certificateVerifyMsg> = _m;
        if ((@:checkr _m ?? throw "null pointer dereference")._raw != null) {
            return { _0 : (@:checkr _m ?? throw "null pointer dereference")._raw, _1 : (null : stdgo.Error) };
        };
        var _b:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder = ({} : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder);
        @:check2 _b.addUint8((15 : stdgo.GoUInt8));
        @:check2 _b.addUint24LengthPrefixed(function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
            if ((@:checkr _m ?? throw "null pointer dereference")._hasSignatureAlgorithm) {
                @:check2r _b.addUint16(((@:checkr _m ?? throw "null pointer dereference")._signatureAlgorithm : stdgo.GoUInt16));
            };
            @:check2r _b.addUint16LengthPrefixed(function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                @:check2r _b.addBytes((@:checkr _m ?? throw "null pointer dereference")._signature);
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
