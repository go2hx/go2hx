package stdgo._internal.crypto.tls;
@:keep @:allow(stdgo._internal.crypto.tls.Tls.T_keyUpdateMsg_asInterface) class T_keyUpdateMsg_static_extension {
    @:keep
    @:tdfield
    static public function _unmarshal( _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_keyupdatemsg.T_keyUpdateMsg>, _data:stdgo.Slice<stdgo.GoUInt8>):Bool {
        @:recv var _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_keyupdatemsg.T_keyUpdateMsg> = _m;
        (@:checkr _m ?? throw "null pointer dereference")._raw = _data;
        var _s = (_data : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_);
        var _updateRequested:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _updateRequested__pointer__ = stdgo.Go.pointer(_updateRequested);
        if (((!@:check2 _s.skip((4 : stdgo.GoInt)) || !@:check2 _s.readUint8(_updateRequested__pointer__) : Bool) || !_s.empty() : Bool)) {
            return false;
        };
        {
            final __value__ = _updateRequested;
            if (__value__ == ((0 : stdgo.GoUInt8))) {
                (@:checkr _m ?? throw "null pointer dereference")._updateRequested = false;
            } else if (__value__ == ((1 : stdgo.GoUInt8))) {
                (@:checkr _m ?? throw "null pointer dereference")._updateRequested = true;
            } else {
                return false;
            };
        };
        return true;
    }
    @:keep
    @:tdfield
    static public function _marshal( _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_keyupdatemsg.T_keyUpdateMsg>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_keyupdatemsg.T_keyUpdateMsg> = _m;
        if ((@:checkr _m ?? throw "null pointer dereference")._raw != null) {
            return { _0 : (@:checkr _m ?? throw "null pointer dereference")._raw, _1 : (null : stdgo.Error) };
        };
        var _b:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder = ({} : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder);
        @:check2 _b.addUint8((24 : stdgo.GoUInt8));
        @:check2 _b.addUint24LengthPrefixed(function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
            if ((@:checkr _m ?? throw "null pointer dereference")._updateRequested) {
                @:check2r _b.addUint8((1 : stdgo.GoUInt8));
            } else {
                @:check2r _b.addUint8((0 : stdgo.GoUInt8));
            };
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
