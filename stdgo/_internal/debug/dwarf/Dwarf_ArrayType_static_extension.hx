package stdgo._internal.debug.dwarf;
@:keep @:allow(stdgo._internal.debug.dwarf.Dwarf.ArrayType_asInterface) class ArrayType_static_extension {
    @:keep
    static public function size( _t:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_ArrayType.ArrayType>):stdgo.GoInt64 {
        @:recv var _t:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_ArrayType.ArrayType> = _t;
        if (_t.count == ((-1i64 : stdgo.GoInt64))) {
            return (0i64 : stdgo.GoInt64);
        };
        return (_t.count * _t.type.size() : stdgo.GoInt64);
    }
    @:keep
    static public function string( _t:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_ArrayType.ArrayType>):stdgo.GoString {
        @:recv var _t:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_ArrayType.ArrayType> = _t;
        return (((("[" : stdgo.GoString) + stdgo._internal.strconv.Strconv_formatInt.formatInt(_t.count, (10 : stdgo.GoInt))?.__copy__() : stdgo.GoString) + ("]" : stdgo.GoString)?.__copy__() : stdgo.GoString) + (_t.type.string() : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
    @:embedded
    public static function common( __self__:stdgo._internal.debug.dwarf.Dwarf_ArrayType.ArrayType):stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_CommonType.CommonType> return __self__.common();
}
