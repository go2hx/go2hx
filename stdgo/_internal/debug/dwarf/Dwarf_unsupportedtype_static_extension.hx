package stdgo._internal.debug.dwarf;
@:keep @:allow(stdgo._internal.debug.dwarf.Dwarf.UnsupportedType_asInterface) class UnsupportedType_static_extension {
    @:keep
    @:tdfield
    static public function string( _t:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_unsupportedtype.UnsupportedType>):stdgo.GoString {
        @:recv var _t:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_unsupportedtype.UnsupportedType> = _t;
        if ((@:checkr _t ?? throw "null pointer dereference").commonType.name != ((stdgo.Go.str() : stdgo.GoString))) {
            return (@:checkr _t ?? throw "null pointer dereference").commonType.name?.__copy__();
        };
        return ((((@:checkr _t ?? throw "null pointer dereference").commonType.name + ("(unsupported type " : stdgo.GoString)?.__copy__() : stdgo.GoString) + ((@:checkr _t ?? throw "null pointer dereference").tag.string() : stdgo.GoString)?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
    @:embedded
    @:embeddededffieldsffun
    public static function size( __self__:stdgo._internal.debug.dwarf.Dwarf_unsupportedtype.UnsupportedType):stdgo.GoInt64 return @:_5 __self__.size();
    @:embedded
    @:embeddededffieldsffun
    public static function common( __self__:stdgo._internal.debug.dwarf.Dwarf_unsupportedtype.UnsupportedType):stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_commontype.CommonType> return @:_5 __self__.common();
}
