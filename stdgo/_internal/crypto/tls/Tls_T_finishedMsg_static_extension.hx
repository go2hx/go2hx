package stdgo._internal.crypto.tls;
@:keep @:allow(stdgo._internal.crypto.tls.Tls.T_finishedMsg_asInterface) class T_finishedMsg_static_extension {
    @:keep
    static public function _unmarshal( _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_finishedMsg.T_finishedMsg>, _data:stdgo.Slice<stdgo.GoUInt8>):Bool {
        @:recv var _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_finishedMsg.T_finishedMsg> = _m;
        _m._raw = _data;
        var _s = (_data : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_);
        return ((_s.skip((1 : stdgo.GoInt)) && stdgo._internal.crypto.tls.Tls__readUint24LengthPrefixed._readUint24LengthPrefixed((stdgo.Go.setRef(_s) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>), (stdgo.Go.setRef(_m._verifyData) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)) : Bool) && _s.empty() : Bool);
    }
    @:keep
    static public function _marshal( _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_finishedMsg.T_finishedMsg>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_finishedMsg.T_finishedMsg> = _m;
        if (_m._raw != null) {
            return { _0 : _m._raw, _1 : (null : stdgo.Error) };
        };
        var _b:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder = ({} : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder);
        _b.addUint8((20 : stdgo.GoUInt8));
        _b.addUint24LengthPrefixed(function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
            _b.addBytes(_m._verifyData);
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
