package stdgo._internal.debug.dwarf;
@:structInit @:using(stdgo._internal.debug.dwarf.Dwarf_t_typefixer_static_extension.T_typeFixer_static_extension) class T_typeFixer {
    public var _typedefs : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_typedeftype.TypedefType>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_typedeftype.TypedefType>>);
    public var _arraytypes : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_type_.Type_>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_type_.Type_>>);
    public function new(?_typedefs:stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_typedeftype.TypedefType>>, ?_arraytypes:stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_type_.Type_>>) {
        if (_typedefs != null) this._typedefs = _typedefs;
        if (_arraytypes != null) this._arraytypes = _arraytypes;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_typeFixer(_typedefs, _arraytypes);
    }
}
