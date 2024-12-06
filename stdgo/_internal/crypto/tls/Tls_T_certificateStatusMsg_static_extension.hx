package stdgo._internal.crypto.tls;
@:keep @:allow(stdgo._internal.crypto.tls.Tls.T_certificateStatusMsg_asInterface) class T_certificateStatusMsg_static_extension {
    @:keep
    static public function _unmarshal( _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_certificateStatusMsg.T_certificateStatusMsg>, _data:stdgo.Slice<stdgo.GoUInt8>):Bool {
        @:recv var _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_certificateStatusMsg.T_certificateStatusMsg> = _m;
        _m._raw = _data;
        var _s = (_data : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_);
        var _statusType:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _statusType__pointer__ = stdgo.Go.pointer(_statusType);
        if ((((((!_s.skip((4 : stdgo.GoInt)) || !_s.readUint8(_statusType__pointer__) : Bool) || _statusType != ((1 : stdgo.GoUInt8)) : Bool) || !stdgo._internal.crypto.tls.Tls__readUint24LengthPrefixed._readUint24LengthPrefixed((stdgo.Go.setRef(_s) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>), (stdgo.Go.setRef(_m._response) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)) : Bool) || (_m._response.length) == ((0 : stdgo.GoInt)) : Bool) || !_s.empty() : Bool)) {
            return false;
        };
        return true;
    }
    @:keep
    static public function _marshal( _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_certificateStatusMsg.T_certificateStatusMsg>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_certificateStatusMsg.T_certificateStatusMsg> = _m;
        if (_m._raw != null) {
            return { _0 : _m._raw, _1 : (null : stdgo.Error) };
        };
        var _b:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder = ({} : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder);
        _b.addUint8((22 : stdgo.GoUInt8));
        _b.addUint24LengthPrefixed(function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
            _b.addUint8((1 : stdgo.GoUInt8));
            _b.addUint24LengthPrefixed(function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
                _b.addBytes(_m._response);
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
