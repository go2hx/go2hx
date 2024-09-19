package stdgo._internal.debug.dwarf;
@:keep @:allow(stdgo._internal.debug.dwarf.Dwarf.UnsupportedType_asInterface) class UnsupportedType_static_extension {
    @:keep
    static public function string( _t:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_UnsupportedType.UnsupportedType>):stdgo.GoString {
        @:recv var _t:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_UnsupportedType.UnsupportedType> = _t;
        if (_t.commonType.name != (stdgo.Go.str())) {
            return _t.commonType.name?.__copy__();
        };
        return (((_t.commonType.name + ("(unsupported type " : stdgo.GoString)?.__copy__() : stdgo.GoString) + (_t.tag.string() : stdgo.GoString)?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
    @:embedded
    public static function size( __self__:stdgo._internal.debug.dwarf.Dwarf_UnsupportedType.UnsupportedType):stdgo.GoInt64 return __self__.size();
    @:embedded
    public static function common( __self__:stdgo._internal.debug.dwarf.Dwarf_UnsupportedType.UnsupportedType):stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_CommonType.CommonType> return __self__.common();
}
