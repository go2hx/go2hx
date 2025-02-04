package stdgo._internal.debug.dwarf;
@:keep @:allow(stdgo._internal.debug.dwarf.Dwarf.StructField_asInterface) class StructField_static_extension {
    @:keep
    @:tdfield
    static public function _bitOffset( _f:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_structfield.StructField>):stdgo.GoInt64 {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_structfield.StructField> = _f;
        if ((@:checkr _f ?? throw "null pointer dereference").bitOffset != ((0i64 : stdgo.GoInt64))) {
            return (@:checkr _f ?? throw "null pointer dereference").bitOffset;
        };
        return (@:checkr _f ?? throw "null pointer dereference").dataBitOffset;
    }
}
