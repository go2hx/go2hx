package _internal.internal.profile;
@:keep @:allow(_internal.internal.profile.Profile.Label_asInterface) class Label_static_extension {
    @:keep
    static public function _encode( _p:_internal.internal.profile.Profile_Label.Label, _b:stdgo.Ref<_internal.internal.profile.Profile_T_buffer.T_buffer>):Void {
        @:recv var _p:_internal.internal.profile.Profile_Label.Label = _p?.__copy__();
        _internal.internal.profile.Profile__encodeInt64Opt._encodeInt64Opt(_b, (1 : stdgo.GoInt), _p._keyX);
        _internal.internal.profile.Profile__encodeInt64Opt._encodeInt64Opt(_b, (2 : stdgo.GoInt), _p._strX);
        _internal.internal.profile.Profile__encodeInt64Opt._encodeInt64Opt(_b, (3 : stdgo.GoInt), _p._numX);
    }
    @:keep
    static public function _decoder( _p:_internal.internal.profile.Profile_Label.Label):stdgo.Slice<_internal.internal.profile.Profile_T_decoder.T_decoder> {
        @:recv var _p:_internal.internal.profile.Profile_Label.Label = _p?.__copy__();
        return _internal.internal.profile.Profile__labelDecoder._labelDecoder;
    }
}
