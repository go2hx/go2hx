package _internal.internal.profile;
@:keep @:allow(_internal.internal.profile.Profile.Line_asInterface) class Line_static_extension {
    @:keep
    static public function _encode( _p:stdgo.Ref<_internal.internal.profile.Profile_Line.Line>, _b:stdgo.Ref<_internal.internal.profile.Profile_T_buffer.T_buffer>):Void {
        @:recv var _p:stdgo.Ref<_internal.internal.profile.Profile_Line.Line> = _p;
        _internal.internal.profile.Profile__encodeUint64Opt._encodeUint64Opt(_b, (1 : stdgo.GoInt), _p._functionIDX);
        _internal.internal.profile.Profile__encodeInt64Opt._encodeInt64Opt(_b, (2 : stdgo.GoInt), _p.line);
    }
    @:keep
    static public function _decoder( _p:stdgo.Ref<_internal.internal.profile.Profile_Line.Line>):stdgo.Slice<_internal.internal.profile.Profile_T_decoder.T_decoder> {
        @:recv var _p:stdgo.Ref<_internal.internal.profile.Profile_Line.Line> = _p;
        return _internal.internal.profile.Profile__lineDecoder._lineDecoder;
    }
}
