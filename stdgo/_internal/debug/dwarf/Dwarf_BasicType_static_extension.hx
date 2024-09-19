package stdgo._internal.debug.dwarf;
@:keep @:allow(stdgo._internal.debug.dwarf.Dwarf.BasicType_asInterface) class BasicType_static_extension {
    @:keep
    static public function string( _t:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_BasicType.BasicType>):stdgo.GoString {
        @:recv var _t:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_BasicType.BasicType> = _t;
        if (_t.commonType.name != (stdgo.Go.str())) {
            return _t.commonType.name?.__copy__();
        };
        return ("?" : stdgo.GoString);
    }
    @:keep
    static public function basic( _b:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_BasicType.BasicType>):stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_BasicType.BasicType> {
        @:recv var _b:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_BasicType.BasicType> = _b;
        return _b;
    }
    @:embedded
    public static function size( __self__:stdgo._internal.debug.dwarf.Dwarf_BasicType.BasicType):stdgo.GoInt64 return __self__.size();
    @:embedded
    public static function common( __self__:stdgo._internal.debug.dwarf.Dwarf_BasicType.BasicType):stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_CommonType.CommonType> return __self__.common();
}
