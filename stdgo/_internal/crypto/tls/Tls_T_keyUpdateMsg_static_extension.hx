package stdgo._internal.crypto.tls;
@:keep @:allow(stdgo._internal.crypto.tls.Tls.T_keyUpdateMsg_asInterface) class T_keyUpdateMsg_static_extension {
    @:keep
    static public function _unmarshal( _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_keyUpdateMsg.T_keyUpdateMsg>, _data:stdgo.Slice<stdgo.GoUInt8>):Bool {
        @:recv var _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_keyUpdateMsg.T_keyUpdateMsg> = _m;
        _m._raw = _data;
        var _s = (_data : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_);
        var _updateRequested:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        if (((!_s.skip((4 : stdgo.GoInt)) || !_s.readUint8(stdgo.Go.pointer(_updateRequested)) : Bool) || !_s.empty() : Bool)) {
            return false;
        };
        {
            final __value__ = _updateRequested;
            if (__value__ == ((0 : stdgo.GoUInt8))) {
                _m._updateRequested = false;
            } else if (__value__ == ((1 : stdgo.GoUInt8))) {
                _m._updateRequested = true;
            } else {
                return false;
            };
        };
        return true;
    }
    @:keep
    static public function _marshal( _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_keyUpdateMsg.T_keyUpdateMsg>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_keyUpdateMsg.T_keyUpdateMsg> = _m;
        if (_m._raw != null) {
            return { _0 : _m._raw, _1 : (null : stdgo.Error) };
        };
        var _b:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder = ({} : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder);
        _b.addUint8((24 : stdgo.GoUInt8));
        _b.addUint24LengthPrefixed(function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
            if (_m._updateRequested) {
                _b.addUint8((1 : stdgo.GoUInt8));
            } else {
                _b.addUint8((0 : stdgo.GoUInt8));
            };
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
