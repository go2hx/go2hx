package stdgo._internal.internal.profile;
@:keep @:allow(stdgo._internal.internal.profile.Profile.ValueType__asInterface) class ValueType__static_extension {
    @:keep
    @:tdfield
    static public function _encode( _p:stdgo.Ref<stdgo._internal.internal.profile.Profile_ValueType_.ValueType_>, _b:stdgo.Ref<stdgo._internal.internal.profile.Profile_T_buffer.T_buffer>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.internal.profile.Profile_ValueType_.ValueType_> = _p;
        stdgo._internal.internal.profile.Profile__encodeInt64Opt._encodeInt64Opt(_b, (1 : stdgo.GoInt), (@:checkr _p ?? throw "null pointer dereference")._typeX);
        stdgo._internal.internal.profile.Profile__encodeInt64Opt._encodeInt64Opt(_b, (2 : stdgo.GoInt), (@:checkr _p ?? throw "null pointer dereference")._unitX);
    }
    @:keep
    @:tdfield
    static public function _decoder( _p:stdgo.Ref<stdgo._internal.internal.profile.Profile_ValueType_.ValueType_>):stdgo.Slice<stdgo._internal.internal.profile.Profile_T_decoder.T_decoder> {
        @:recv var _p:stdgo.Ref<stdgo._internal.internal.profile.Profile_ValueType_.ValueType_> = _p;
        return stdgo._internal.internal.profile.Profile__valueTypeDecoder._valueTypeDecoder;
    }
}
