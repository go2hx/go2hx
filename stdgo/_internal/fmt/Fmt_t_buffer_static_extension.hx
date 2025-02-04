package stdgo._internal.fmt;
@:keep @:allow(stdgo._internal.fmt.Fmt.T_buffer_asInterface) class T_buffer_static_extension {
    @:keep
    @:tdfield
    static public function _writeRune( _bp:stdgo.Ref<stdgo._internal.fmt.Fmt_t_buffer.T_buffer>, _r:stdgo.GoInt32):Void {
        @:recv var _bp:stdgo.Ref<stdgo._internal.fmt.Fmt_t_buffer.T_buffer> = _bp;
        (_bp : stdgo._internal.fmt.Fmt_t_buffer.T_buffer).__setData__(stdgo._internal.unicode.utf8.Utf8_appendrune.appendRune((_bp : stdgo._internal.fmt.Fmt_t_buffer.T_buffer), _r));
    }
    @:keep
    @:tdfield
    static public function _writeByte( _b:stdgo.Ref<stdgo._internal.fmt.Fmt_t_buffer.T_buffer>, _c:stdgo.GoUInt8):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.fmt.Fmt_t_buffer.T_buffer> = _b;
        (_b : stdgo._internal.fmt.Fmt_t_buffer.T_buffer).__setData__(((_b : stdgo._internal.fmt.Fmt_t_buffer.T_buffer).__append__(_c)));
    }
    @:keep
    @:tdfield
    static public function _writeString( _b:stdgo.Ref<stdgo._internal.fmt.Fmt_t_buffer.T_buffer>, _s:stdgo.GoString):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.fmt.Fmt_t_buffer.T_buffer> = _b;
        (_b : stdgo._internal.fmt.Fmt_t_buffer.T_buffer).__setData__(((_b : stdgo._internal.fmt.Fmt_t_buffer.T_buffer).__append__(...(_s : Array<stdgo.GoUInt8>))));
    }
    @:keep
    @:tdfield
    static public function _write( _b:stdgo.Ref<stdgo._internal.fmt.Fmt_t_buffer.T_buffer>, _p:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.fmt.Fmt_t_buffer.T_buffer> = _b;
        (_b : stdgo._internal.fmt.Fmt_t_buffer.T_buffer).__setData__(((_b : stdgo._internal.fmt.Fmt_t_buffer.T_buffer).__append__(...(_p : Array<stdgo.GoUInt8>))));
    }
}
