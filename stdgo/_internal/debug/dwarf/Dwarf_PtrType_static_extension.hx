package stdgo._internal.debug.dwarf;
@:keep @:allow(stdgo._internal.debug.dwarf.Dwarf.PtrType_asInterface) class PtrType_static_extension {
    @:keep
    static public function string( _t:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_PtrType.PtrType>):stdgo.GoString {
        @:recv var _t:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_PtrType.PtrType> = _t;
        return (("*" : stdgo.GoString) + (_t.type.string() : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
    @:embedded
    public static function size( __self__:stdgo._internal.debug.dwarf.Dwarf_PtrType.PtrType):stdgo.GoInt64 return __self__.size();
    @:embedded
    public static function common( __self__:stdgo._internal.debug.dwarf.Dwarf_PtrType.PtrType):stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_CommonType.CommonType> return __self__.common();
}
