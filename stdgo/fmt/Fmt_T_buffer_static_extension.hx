package stdgo.fmt;
class T_buffer_static_extension {
    static public function _writeRune(_bp:T_buffer, _r:StdTypes.Int):Void {
        final _bp = (_bp : stdgo.Ref<stdgo._internal.fmt.Fmt_T_buffer.T_buffer>);
        final _r = (_r : stdgo.GoInt32);
        stdgo._internal.fmt.Fmt_T_buffer_static_extension.T_buffer_static_extension._writeRune(_bp, _r);
    }
    static public function _writeByte(_b:T_buffer, _c:std.UInt):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.fmt.Fmt_T_buffer.T_buffer>);
        final _c = (_c : stdgo.GoUInt8);
        stdgo._internal.fmt.Fmt_T_buffer_static_extension.T_buffer_static_extension._writeByte(_b, _c);
    }
    static public function _writeString(_b:T_buffer, _s:String):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.fmt.Fmt_T_buffer.T_buffer>);
        final _s = (_s : stdgo.GoString);
        stdgo._internal.fmt.Fmt_T_buffer_static_extension.T_buffer_static_extension._writeString(_b, _s);
    }
    static public function _write(_b:T_buffer, _p:Array<std.UInt>):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.fmt.Fmt_T_buffer.T_buffer>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.fmt.Fmt_T_buffer_static_extension.T_buffer_static_extension._write(_b, _p);
    }
}
