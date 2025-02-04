package stdgo._internal.internal.profile;
@:keep @:allow(stdgo._internal.internal.profile.Profile.Label_asInterface) class Label_static_extension {
    @:keep
    @:tdfield
    static public function _encode( _p:stdgo._internal.internal.profile.Profile_label.Label, _b:stdgo.Ref<stdgo._internal.internal.profile.Profile_t_buffer.T_buffer>):Void {
        @:recv var _p:stdgo._internal.internal.profile.Profile_label.Label = _p?.__copy__();
        stdgo._internal.internal.profile.Profile__encodeint64opt._encodeInt64Opt(_b, (1 : stdgo.GoInt), _p._keyX);
        stdgo._internal.internal.profile.Profile__encodeint64opt._encodeInt64Opt(_b, (2 : stdgo.GoInt), _p._strX);
        stdgo._internal.internal.profile.Profile__encodeint64opt._encodeInt64Opt(_b, (3 : stdgo.GoInt), _p._numX);
    }
    @:keep
    @:tdfield
    static public function _decoder( _p:stdgo._internal.internal.profile.Profile_label.Label):stdgo.Slice<stdgo._internal.internal.profile.Profile_t_decoder.T_decoder> {
        @:recv var _p:stdgo._internal.internal.profile.Profile_label.Label = _p?.__copy__();
        return stdgo._internal.internal.profile.Profile__labeldecoder._labelDecoder;
    }
}
