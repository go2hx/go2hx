package stdgo._internal.internal.profile;
@:keep @:allow(stdgo._internal.internal.profile.Profile.Label_asInterface) class Label_static_extension {
    @:keep
    @:tdfield
    static public function _encode( _p:stdgo._internal.internal.profile.Profile_Label.Label, _b:stdgo.Ref<stdgo._internal.internal.profile.Profile_T_buffer.T_buffer>):Void {
        @:recv var _p:stdgo._internal.internal.profile.Profile_Label.Label = _p?.__copy__();
        stdgo._internal.internal.profile.Profile__encodeInt64Opt._encodeInt64Opt(_b, (1 : stdgo.GoInt), _p._keyX);
        stdgo._internal.internal.profile.Profile__encodeInt64Opt._encodeInt64Opt(_b, (2 : stdgo.GoInt), _p._strX);
        stdgo._internal.internal.profile.Profile__encodeInt64Opt._encodeInt64Opt(_b, (3 : stdgo.GoInt), _p._numX);
    }
    @:keep
    @:tdfield
    static public function _decoder( _p:stdgo._internal.internal.profile.Profile_Label.Label):stdgo.Slice<stdgo._internal.internal.profile.Profile_T_decoder.T_decoder> {
        @:recv var _p:stdgo._internal.internal.profile.Profile_Label.Label = _p?.__copy__();
        return stdgo._internal.internal.profile.Profile__labelDecoder._labelDecoder;
    }
}
