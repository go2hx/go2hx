package stdgo._internal.internal.profile;
@:keep @:allow(stdgo._internal.internal.profile.Profile.ValueType__asInterface) class ValueType__static_extension {
    @:keep
    @:tdfield
    static public function _encode( _p:stdgo.Ref<stdgo._internal.internal.profile.Profile_valuetype_.ValueType_>, _b:stdgo.Ref<stdgo._internal.internal.profile.Profile_t_buffer.T_buffer>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.internal.profile.Profile_valuetype_.ValueType_> = _p;
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/encode.go#L302"
        stdgo._internal.internal.profile.Profile__encodeint64opt._encodeInt64Opt(_b, (1 : stdgo.GoInt), (@:checkr _p ?? throw "null pointer dereference")._typeX);
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/encode.go#L303"
        stdgo._internal.internal.profile.Profile__encodeint64opt._encodeInt64Opt(_b, (2 : stdgo.GoInt), (@:checkr _p ?? throw "null pointer dereference")._unitX);
    }
    @:keep
    @:tdfield
    static public function _decoder( _p:stdgo.Ref<stdgo._internal.internal.profile.Profile_valuetype_.ValueType_>):stdgo.Slice<stdgo._internal.internal.profile.Profile_t_decoder.T_decoder> {
        @:recv var _p:stdgo.Ref<stdgo._internal.internal.profile.Profile_valuetype_.ValueType_> = _p;
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/encode.go#L298"
        return stdgo._internal.internal.profile.Profile__valuetypedecoder._valueTypeDecoder;
    }
}
