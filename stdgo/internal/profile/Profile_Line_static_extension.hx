package stdgo.internal.profile;
class Line_static_extension {
    static public function _encode(_p:Line, _b:T_buffer):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.internal.profile.Profile_Line.Line>);
        final _b = (_b : stdgo.Ref<stdgo._internal.internal.profile.Profile_T_buffer.T_buffer>);
        stdgo._internal.internal.profile.Profile_Line_static_extension.Line_static_extension._encode(_p, _b);
    }
    static public function _decoder(_p:Line):Array<T_decoder> {
        final _p = (_p : stdgo.Ref<stdgo._internal.internal.profile.Profile_Line.Line>);
        return [for (i in stdgo._internal.internal.profile.Profile_Line_static_extension.Line_static_extension._decoder(_p)) i];
    }
}
