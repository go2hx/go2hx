package stdgo._internal.debug.dwarf;
@:keep @:allow(stdgo._internal.debug.dwarf.Dwarf.ArrayType_asInterface) class ArrayType_static_extension {
    @:keep
    @:tdfield
    static public function size( _t:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_arraytype.ArrayType>):stdgo.GoInt64 {
        @:recv var _t:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_arraytype.ArrayType> = _t;
        if ((@:checkr _t ?? throw "null pointer dereference").count == ((-1i64 : stdgo.GoInt64))) {
            return (0i64 : stdgo.GoInt64);
        };
        return ((@:checkr _t ?? throw "null pointer dereference").count * (@:checkr _t ?? throw "null pointer dereference").type.size() : stdgo.GoInt64);
    }
    @:keep
    @:tdfield
    static public function string( _t:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_arraytype.ArrayType>):stdgo.GoString {
        @:recv var _t:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_arraytype.ArrayType> = _t;
        return (((("[" : stdgo.GoString) + stdgo._internal.strconv.Strconv_formatint.formatInt((@:checkr _t ?? throw "null pointer dereference").count, (10 : stdgo.GoInt))?.__copy__() : stdgo.GoString) + ("]" : stdgo.GoString)?.__copy__() : stdgo.GoString) + ((@:checkr _t ?? throw "null pointer dereference").type.string() : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
    @:embedded
    @:embeddededffieldsffun
    public static function common( __self__:stdgo._internal.debug.dwarf.Dwarf_arraytype.ArrayType):stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_commontype.CommonType> return @:_5 __self__.common();
}
