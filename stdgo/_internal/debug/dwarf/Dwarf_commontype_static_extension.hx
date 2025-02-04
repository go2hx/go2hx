package stdgo._internal.debug.dwarf;
@:keep @:allow(stdgo._internal.debug.dwarf.Dwarf.CommonType_asInterface) class CommonType_static_extension {
    @:keep
    @:tdfield
    static public function size( _c:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_commontype.CommonType>):stdgo.GoInt64 {
        @:recv var _c:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_commontype.CommonType> = _c;
        return (@:checkr _c ?? throw "null pointer dereference").byteSize;
    }
    @:keep
    @:tdfield
    static public function common( _c:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_commontype.CommonType>):stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_commontype.CommonType> {
        @:recv var _c:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_commontype.CommonType> = _c;
        return _c;
    }
}
