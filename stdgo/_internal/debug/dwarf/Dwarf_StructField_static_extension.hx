package stdgo._internal.debug.dwarf;
@:keep @:allow(stdgo._internal.debug.dwarf.Dwarf.StructField_asInterface) class StructField_static_extension {
    @:keep
    static public function _bitOffset( _f:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_StructField.StructField>):stdgo.GoInt64 {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_StructField.StructField> = _f;
        if (_f.bitOffset != ((0i64 : stdgo.GoInt64))) {
            return _f.bitOffset;
        };
        return _f.dataBitOffset;
    }
}
