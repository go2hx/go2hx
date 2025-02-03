package stdgo.debug.dwarf;
@:structInit @:using(stdgo.debug.dwarf.Dwarf.T_typeFixer_static_extension) abstract T_typeFixer(stdgo._internal.debug.dwarf.Dwarf_T_typeFixer.T_typeFixer) from stdgo._internal.debug.dwarf.Dwarf_T_typeFixer.T_typeFixer to stdgo._internal.debug.dwarf.Dwarf_T_typeFixer.T_typeFixer {
    public var _typedefs(get, set) : Array<TypedefType>;
    function get__typedefs():Array<TypedefType> return [for (i in this._typedefs) i];
    function set__typedefs(v:Array<TypedefType>):Array<TypedefType> {
        this._typedefs = ([for (i in v) (i : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_TypedefType.TypedefType>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_TypedefType.TypedefType>>);
        return v;
    }
    public var _arraytypes(get, set) : Array<Type_>;
    function get__arraytypes():Array<Type_> return [for (i in this._arraytypes) i];
    function set__arraytypes(v:Array<Type_>):Array<Type_> {
        this._arraytypes = ([for (i in v) (i : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Type_.Type_>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Type_.Type_>>);
        return v;
    }
    public function new(?_typedefs:Array<TypedefType>, ?_arraytypes:Array<Type_>) this = new stdgo._internal.debug.dwarf.Dwarf_T_typeFixer.T_typeFixer(([for (i in _typedefs) (i : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_TypedefType.TypedefType>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_TypedefType.TypedefType>>), ([for (i in _arraytypes) (i : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Type_.Type_>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Type_.Type_>>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
