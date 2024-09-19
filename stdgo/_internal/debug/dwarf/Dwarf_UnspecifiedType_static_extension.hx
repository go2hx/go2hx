package stdgo._internal.debug.dwarf;
@:keep @:allow(stdgo._internal.debug.dwarf.Dwarf.UnspecifiedType_asInterface) class UnspecifiedType_static_extension {
    @:embedded
    public static function string( __self__:stdgo._internal.debug.dwarf.Dwarf_UnspecifiedType.UnspecifiedType):stdgo.GoString return __self__.string();
    @:embedded
    public static function size( __self__:stdgo._internal.debug.dwarf.Dwarf_UnspecifiedType.UnspecifiedType):stdgo.GoInt64 return __self__.size();
    @:embedded
    public static function common( __self__:stdgo._internal.debug.dwarf.Dwarf_UnspecifiedType.UnspecifiedType):stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_CommonType.CommonType> return __self__.common();
    @:embedded
    public static function basic( __self__:stdgo._internal.debug.dwarf.Dwarf_UnspecifiedType.UnspecifiedType):stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_BasicType.BasicType> return __self__.basic();
}
