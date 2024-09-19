package stdgo._internal.debug.dwarf;
@:keep @:allow(stdgo._internal.debug.dwarf.Dwarf.QualType_asInterface) class QualType_static_extension {
    @:keep
    static public function size( _t:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_QualType.QualType>):stdgo.GoInt64 {
        @:recv var _t:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_QualType.QualType> = _t;
        return _t.type.size();
    }
    @:keep
    static public function string( _t:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_QualType.QualType>):stdgo.GoString {
        @:recv var _t:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_QualType.QualType> = _t;
        return ((_t.qual + (" " : stdgo.GoString)?.__copy__() : stdgo.GoString) + (_t.type.string() : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
    @:embedded
    public static function common( __self__:stdgo._internal.debug.dwarf.Dwarf_QualType.QualType):stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_CommonType.CommonType> return __self__.common();
}
