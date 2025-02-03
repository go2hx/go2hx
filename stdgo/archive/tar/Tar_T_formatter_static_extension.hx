package stdgo.archive.tar;
class T_formatter_static_extension {
    static public function _formatOctal(_f:T_formatter, _b:Array<std.UInt>, _x:haxe.Int64):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.archive.tar.Tar_T_formatter.T_formatter>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _x = (_x : stdgo.GoInt64);
        stdgo._internal.archive.tar.Tar_T_formatter_static_extension.T_formatter_static_extension._formatOctal(_f, _b, _x);
    }
    static public function _formatNumeric(_f:T_formatter, _b:Array<std.UInt>, _x:haxe.Int64):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.archive.tar.Tar_T_formatter.T_formatter>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _x = (_x : stdgo.GoInt64);
        stdgo._internal.archive.tar.Tar_T_formatter_static_extension.T_formatter_static_extension._formatNumeric(_f, _b, _x);
    }
    static public function _formatString(_f:T_formatter, _b:Array<std.UInt>, _s:String):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.archive.tar.Tar_T_formatter.T_formatter>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _s = (_s : stdgo.GoString);
        stdgo._internal.archive.tar.Tar_T_formatter_static_extension.T_formatter_static_extension._formatString(_f, _b, _s);
    }
}
