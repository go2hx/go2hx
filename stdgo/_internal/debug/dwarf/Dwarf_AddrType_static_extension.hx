package stdgo._internal.debug.dwarf;
@:keep @:allow(stdgo._internal.debug.dwarf.Dwarf.AddrType_asInterface) class AddrType_static_extension {
    @:embedded
    public static function string( __self__:stdgo._internal.debug.dwarf.Dwarf_AddrType.AddrType):stdgo.GoString return __self__.string();
    @:embedded
    public static function size( __self__:stdgo._internal.debug.dwarf.Dwarf_AddrType.AddrType):stdgo.GoInt64 return __self__.size();
    @:embedded
    public static function common( __self__:stdgo._internal.debug.dwarf.Dwarf_AddrType.AddrType):stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_CommonType.CommonType> return __self__.common();
    @:embedded
    public static function basic( __self__:stdgo._internal.debug.dwarf.Dwarf_AddrType.AddrType):stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_BasicType.BasicType> return __self__.basic();
}
