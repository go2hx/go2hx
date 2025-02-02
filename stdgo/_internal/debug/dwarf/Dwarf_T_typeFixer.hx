package stdgo._internal.debug.dwarf;
@:structInit @:using(stdgo._internal.debug.dwarf.Dwarf_T_typeFixer_static_extension.T_typeFixer_static_extension) class T_typeFixer {
    public var _typedefs : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_TypedefType.TypedefType>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_TypedefType.TypedefType>>);
    public var _arraytypes : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Type_.Type_>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Type_.Type_>>);
    public function new(?_typedefs:stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_TypedefType.TypedefType>>, ?_arraytypes:stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Type_.Type_>>) {
        if (_typedefs != null) this._typedefs = _typedefs;
        if (_arraytypes != null) this._arraytypes = _arraytypes;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_typeFixer(_typedefs, _arraytypes);
    }
}
