package stdgo.fmt;
class T_fmt_static_extension {
    static public function _fmtFloat(_f:T_fmt, _v:StdTypes.Float, _size:StdTypes.Int, _verb:StdTypes.Int, _prec:StdTypes.Int):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.fmt.Fmt_T_fmt.T_fmt>);
        final _v = (_v : stdgo.GoFloat64);
        final _size = (_size : stdgo.GoInt);
        final _verb = (_verb : stdgo.GoInt32);
        final _prec = (_prec : stdgo.GoInt);
        stdgo._internal.fmt.Fmt_T_fmt_static_extension.T_fmt_static_extension._fmtFloat(_f, _v, _size, _verb, _prec);
    }
    static public function _fmtQc(_f:T_fmt, _c:haxe.UInt64):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.fmt.Fmt_T_fmt.T_fmt>);
        final _c = (_c : stdgo.GoUInt64);
        stdgo._internal.fmt.Fmt_T_fmt_static_extension.T_fmt_static_extension._fmtQc(_f, _c);
    }
    static public function _fmtC(_f:T_fmt, _c:haxe.UInt64):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.fmt.Fmt_T_fmt.T_fmt>);
        final _c = (_c : stdgo.GoUInt64);
        stdgo._internal.fmt.Fmt_T_fmt_static_extension.T_fmt_static_extension._fmtC(_f, _c);
    }
    static public function _fmtQ(_f:T_fmt, _s:String):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.fmt.Fmt_T_fmt.T_fmt>);
        final _s = (_s : stdgo.GoString);
        stdgo._internal.fmt.Fmt_T_fmt_static_extension.T_fmt_static_extension._fmtQ(_f, _s);
    }
    static public function _fmtBx(_f:T_fmt, _b:Array<std.UInt>, _digits:String):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.fmt.Fmt_T_fmt.T_fmt>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _digits = (_digits : stdgo.GoString);
        stdgo._internal.fmt.Fmt_T_fmt_static_extension.T_fmt_static_extension._fmtBx(_f, _b, _digits);
    }
    static public function _fmtSx(_f:T_fmt, _s:String, _digits:String):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.fmt.Fmt_T_fmt.T_fmt>);
        final _s = (_s : stdgo.GoString);
        final _digits = (_digits : stdgo.GoString);
        stdgo._internal.fmt.Fmt_T_fmt_static_extension.T_fmt_static_extension._fmtSx(_f, _s, _digits);
    }
    static public function _fmtSbx(_f:T_fmt, _s:String, _b:Array<std.UInt>, _digits:String):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.fmt.Fmt_T_fmt.T_fmt>);
        final _s = (_s : stdgo.GoString);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _digits = (_digits : stdgo.GoString);
        stdgo._internal.fmt.Fmt_T_fmt_static_extension.T_fmt_static_extension._fmtSbx(_f, _s, _b, _digits);
    }
    static public function _fmtBs(_f:T_fmt, _b:Array<std.UInt>):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.fmt.Fmt_T_fmt.T_fmt>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.fmt.Fmt_T_fmt_static_extension.T_fmt_static_extension._fmtBs(_f, _b);
    }
    static public function _fmtS(_f:T_fmt, _s:String):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.fmt.Fmt_T_fmt.T_fmt>);
        final _s = (_s : stdgo.GoString);
        stdgo._internal.fmt.Fmt_T_fmt_static_extension.T_fmt_static_extension._fmtS(_f, _s);
    }
    static public function _truncate(_f:T_fmt, _b:Array<std.UInt>):Array<std.UInt> {
        final _f = (_f : stdgo.Ref<stdgo._internal.fmt.Fmt_T_fmt.T_fmt>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.fmt.Fmt_T_fmt_static_extension.T_fmt_static_extension._truncate(_f, _b)) i];
    }
    static public function _truncateString(_f:T_fmt, _s:String):String {
        final _f = (_f : stdgo.Ref<stdgo._internal.fmt.Fmt_T_fmt.T_fmt>);
        final _s = (_s : stdgo.GoString);
        return stdgo._internal.fmt.Fmt_T_fmt_static_extension.T_fmt_static_extension._truncateString(_f, _s);
    }
    static public function _fmtInteger(_f:T_fmt, _u:haxe.UInt64, _base:StdTypes.Int, _isSigned:Bool, _verb:StdTypes.Int, _digits:String):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.fmt.Fmt_T_fmt.T_fmt>);
        final _u = (_u : stdgo.GoUInt64);
        final _base = (_base : stdgo.GoInt);
        final _verb = (_verb : stdgo.GoInt32);
        final _digits = (_digits : stdgo.GoString);
        stdgo._internal.fmt.Fmt_T_fmt_static_extension.T_fmt_static_extension._fmtInteger(_f, _u, _base, _isSigned, _verb, _digits);
    }
    static public function _fmtUnicode(_f:T_fmt, _u:haxe.UInt64):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.fmt.Fmt_T_fmt.T_fmt>);
        final _u = (_u : stdgo.GoUInt64);
        stdgo._internal.fmt.Fmt_T_fmt_static_extension.T_fmt_static_extension._fmtUnicode(_f, _u);
    }
    static public function _fmtBoolean(_f:T_fmt, _v:Bool):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.fmt.Fmt_T_fmt.T_fmt>);
        stdgo._internal.fmt.Fmt_T_fmt_static_extension.T_fmt_static_extension._fmtBoolean(_f, _v);
    }
    static public function _padString(_f:T_fmt, _s:String):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.fmt.Fmt_T_fmt.T_fmt>);
        final _s = (_s : stdgo.GoString);
        stdgo._internal.fmt.Fmt_T_fmt_static_extension.T_fmt_static_extension._padString(_f, _s);
    }
    static public function _pad(_f:T_fmt, _b:Array<std.UInt>):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.fmt.Fmt_T_fmt.T_fmt>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.fmt.Fmt_T_fmt_static_extension.T_fmt_static_extension._pad(_f, _b);
    }
    static public function _writePadding(_f:T_fmt, _n:StdTypes.Int):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.fmt.Fmt_T_fmt.T_fmt>);
        final _n = (_n : stdgo.GoInt);
        stdgo._internal.fmt.Fmt_T_fmt_static_extension.T_fmt_static_extension._writePadding(_f, _n);
    }
    static public function _init(_f:T_fmt, _buf:T_buffer):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.fmt.Fmt_T_fmt.T_fmt>);
        final _buf = (_buf : stdgo.Ref<stdgo._internal.fmt.Fmt_T_buffer.T_buffer>);
        stdgo._internal.fmt.Fmt_T_fmt_static_extension.T_fmt_static_extension._init(_f, _buf);
    }
    static public function _clearflags(_f:T_fmt):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.fmt.Fmt_T_fmt.T_fmt>);
        stdgo._internal.fmt.Fmt_T_fmt_static_extension.T_fmt_static_extension._clearflags(_f);
    }
}
