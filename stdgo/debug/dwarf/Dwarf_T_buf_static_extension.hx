package stdgo.debug.dwarf;
class T_buf_static_extension {
    static public function _entry(_b:T_buf, _cu:Entry, _atab:T_abbrevTable, _ubase:Offset, _vers:StdTypes.Int):Entry {
        final _b = (_b : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_buf.T_buf>);
        final _cu = (_cu : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry>);
        final _vers = (_vers : stdgo.GoInt);
        return stdgo._internal.debug.dwarf.Dwarf_T_buf_static_extension.T_buf_static_extension._entry(_b, _cu, _atab, _ubase, _vers);
    }
    static public function _error(_b:T_buf, _s:String):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_buf.T_buf>);
        final _s = (_s : stdgo.GoString);
        stdgo._internal.debug.dwarf.Dwarf_T_buf_static_extension.T_buf_static_extension._error(_b, _s);
    }
    static public function _unitLength(_b:T_buf):stdgo.Tuple<Offset, Bool> {
        final _b = (_b : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_buf.T_buf>);
        return {
            final obj = stdgo._internal.debug.dwarf.Dwarf_T_buf_static_extension.T_buf_static_extension._unitLength(_b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _addr(_b:T_buf):haxe.UInt64 {
        final _b = (_b : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_buf.T_buf>);
        return stdgo._internal.debug.dwarf.Dwarf_T_buf_static_extension.T_buf_static_extension._addr(_b);
    }
    static public function _int(_b:T_buf):haxe.Int64 {
        final _b = (_b : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_buf.T_buf>);
        return stdgo._internal.debug.dwarf.Dwarf_T_buf_static_extension.T_buf_static_extension._int(_b);
    }
    static public function _uint(_b:T_buf):haxe.UInt64 {
        final _b = (_b : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_buf.T_buf>);
        return stdgo._internal.debug.dwarf.Dwarf_T_buf_static_extension.T_buf_static_extension._uint(_b);
    }
    static public function _varint(_b:T_buf):stdgo.Tuple<haxe.UInt64, std.UInt> {
        final _b = (_b : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_buf.T_buf>);
        return {
            final obj = stdgo._internal.debug.dwarf.Dwarf_T_buf_static_extension.T_buf_static_extension._varint(_b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _uint64(_b:T_buf):haxe.UInt64 {
        final _b = (_b : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_buf.T_buf>);
        return stdgo._internal.debug.dwarf.Dwarf_T_buf_static_extension.T_buf_static_extension._uint64(_b);
    }
    static public function _uint32(_b:T_buf):std.UInt {
        final _b = (_b : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_buf.T_buf>);
        return stdgo._internal.debug.dwarf.Dwarf_T_buf_static_extension.T_buf_static_extension._uint32(_b);
    }
    static public function _uint24(_b:T_buf):std.UInt {
        final _b = (_b : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_buf.T_buf>);
        return stdgo._internal.debug.dwarf.Dwarf_T_buf_static_extension.T_buf_static_extension._uint24(_b);
    }
    static public function _uint16(_b:T_buf):std.UInt {
        final _b = (_b : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_buf.T_buf>);
        return stdgo._internal.debug.dwarf.Dwarf_T_buf_static_extension.T_buf_static_extension._uint16(_b);
    }
    static public function _string(_b:T_buf):String {
        final _b = (_b : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_buf.T_buf>);
        return stdgo._internal.debug.dwarf.Dwarf_T_buf_static_extension.T_buf_static_extension._string(_b);
    }
    static public function _skip(_b:T_buf, _n:StdTypes.Int):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_buf.T_buf>);
        final _n = (_n : stdgo.GoInt);
        stdgo._internal.debug.dwarf.Dwarf_T_buf_static_extension.T_buf_static_extension._skip(_b, _n);
    }
    static public function _bytes(_b:T_buf, _n:StdTypes.Int):Array<std.UInt> {
        final _b = (_b : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_buf.T_buf>);
        final _n = (_n : stdgo.GoInt);
        return [for (i in stdgo._internal.debug.dwarf.Dwarf_T_buf_static_extension.T_buf_static_extension._bytes(_b, _n)) i];
    }
    static public function _uint8(_b:T_buf):std.UInt {
        final _b = (_b : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_buf.T_buf>);
        return stdgo._internal.debug.dwarf.Dwarf_T_buf_static_extension.T_buf_static_extension._uint8(_b);
    }
}
