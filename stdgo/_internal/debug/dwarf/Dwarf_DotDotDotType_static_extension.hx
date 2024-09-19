package stdgo._internal.debug.dwarf;
@:keep @:allow(stdgo._internal.debug.dwarf.Dwarf.DotDotDotType_asInterface) class DotDotDotType_static_extension {
    @:keep
    static public function string( _t:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_DotDotDotType.DotDotDotType>):stdgo.GoString {
        @:recv var _t:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_DotDotDotType.DotDotDotType> = _t;
        return ("..." : stdgo.GoString);
    }
    @:embedded
    public static function size( __self__:stdgo._internal.debug.dwarf.Dwarf_DotDotDotType.DotDotDotType):stdgo.GoInt64 return __self__.size();
    @:embedded
    public static function common( __self__:stdgo._internal.debug.dwarf.Dwarf_DotDotDotType.DotDotDotType):stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_CommonType.CommonType> return __self__.common();
}
