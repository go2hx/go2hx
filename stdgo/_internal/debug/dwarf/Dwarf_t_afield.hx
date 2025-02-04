package stdgo._internal.debug.dwarf;
@:structInit @:using(stdgo._internal.debug.dwarf.Dwarf_t_afield_static_extension.T_afield_static_extension) class T_afield {
    public var _attr : stdgo._internal.debug.dwarf.Dwarf_attr.Attr = ((0 : stdgo.GoUInt32) : stdgo._internal.debug.dwarf.Dwarf_attr.Attr);
    public var _fmt : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format = ((0 : stdgo.GoUInt32) : stdgo._internal.debug.dwarf.Dwarf_t_format.T_format);
    public var _class : stdgo._internal.debug.dwarf.Dwarf_class_.Class_ = ((0 : stdgo.GoInt) : stdgo._internal.debug.dwarf.Dwarf_class_.Class_);
    public var _val : stdgo.GoInt64 = 0;
    public function new(?_attr:stdgo._internal.debug.dwarf.Dwarf_attr.Attr, ?_fmt:stdgo._internal.debug.dwarf.Dwarf_t_format.T_format, ?_class:stdgo._internal.debug.dwarf.Dwarf_class_.Class_, ?_val:stdgo.GoInt64) {
        if (_attr != null) this._attr = _attr;
        if (_fmt != null) this._fmt = _fmt;
        if (_class != null) this._class = _class;
        if (_val != null) this._val = _val;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_afield(_attr, _fmt, _class, _val);
    }
}
