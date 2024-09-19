package _internal.internal.profile;
@:keep @:allow(_internal.internal.profile.Profile.ValueType__asInterface) class ValueType__static_extension {
    @:keep
    static public function _encode( _p:stdgo.Ref<_internal.internal.profile.Profile_ValueType_.ValueType_>, _b:stdgo.Ref<_internal.internal.profile.Profile_T_buffer.T_buffer>):Void {
        @:recv var _p:stdgo.Ref<_internal.internal.profile.Profile_ValueType_.ValueType_> = _p;
        _internal.internal.profile.Profile__encodeInt64Opt._encodeInt64Opt(_b, (1 : stdgo.GoInt), _p._typeX);
        _internal.internal.profile.Profile__encodeInt64Opt._encodeInt64Opt(_b, (2 : stdgo.GoInt), _p._unitX);
    }
    @:keep
    static public function _decoder( _p:stdgo.Ref<_internal.internal.profile.Profile_ValueType_.ValueType_>):stdgo.Slice<_internal.internal.profile.Profile_T_decoder.T_decoder> {
        @:recv var _p:stdgo.Ref<_internal.internal.profile.Profile_ValueType_.ValueType_> = _p;
        return _internal.internal.profile.Profile__valueTypeDecoder._valueTypeDecoder;
    }
}
