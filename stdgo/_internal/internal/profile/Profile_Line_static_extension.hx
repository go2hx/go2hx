package stdgo._internal.internal.profile;
@:keep @:allow(stdgo._internal.internal.profile.Profile.Line_asInterface) class Line_static_extension {
    @:keep
    @:tdfield
    static public function _encode( _p:stdgo.Ref<stdgo._internal.internal.profile.Profile_Line.Line>, _b:stdgo.Ref<stdgo._internal.internal.profile.Profile_T_buffer.T_buffer>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.internal.profile.Profile_Line.Line> = _p;
        stdgo._internal.internal.profile.Profile__encodeUint64Opt._encodeUint64Opt(_b, (1 : stdgo.GoInt), (@:checkr _p ?? throw "null pointer dereference")._functionIDX);
        stdgo._internal.internal.profile.Profile__encodeInt64Opt._encodeInt64Opt(_b, (2 : stdgo.GoInt), (@:checkr _p ?? throw "null pointer dereference").line);
    }
    @:keep
    @:tdfield
    static public function _decoder( _p:stdgo.Ref<stdgo._internal.internal.profile.Profile_Line.Line>):stdgo.Slice<stdgo._internal.internal.profile.Profile_T_decoder.T_decoder> {
        @:recv var _p:stdgo.Ref<stdgo._internal.internal.profile.Profile_Line.Line> = _p;
        return stdgo._internal.internal.profile.Profile__lineDecoder._lineDecoder;
    }
}
