package stdgo._internal.debug.dwarf;
@:structInit @:using(stdgo._internal.debug.dwarf.Dwarf_t_abbrev_static_extension.T_abbrev_static_extension) class T_abbrev {
    public var _tag : stdgo._internal.debug.dwarf.Dwarf_tag.Tag = ((0 : stdgo.GoUInt32) : stdgo._internal.debug.dwarf.Dwarf_tag.Tag);
    public var _children : Bool = false;
    public var _field : stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_t_afield.T_afield> = (null : stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_t_afield.T_afield>);
    public function new(?_tag:stdgo._internal.debug.dwarf.Dwarf_tag.Tag, ?_children:Bool, ?_field:stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_t_afield.T_afield>) {
        if (_tag != null) this._tag = _tag;
        if (_children != null) this._children = _children;
        if (_field != null) this._field = _field;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_abbrev(_tag, _children, _field);
    }
}
