package stdgo._internal.debug.dwarf;
@:keep @:allow(stdgo._internal.debug.dwarf.Dwarf.PtrType_asInterface) class PtrType_static_extension {
    @:keep
    @:tdfield
    static public function string( _t:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_PtrType.PtrType>):stdgo.GoString {
        @:recv var _t:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_PtrType.PtrType> = _t;
        return (("*" : stdgo.GoString) + ((@:checkr _t ?? throw "null pointer dereference").type.string() : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
    @:embedded
    @:embeddededffieldsffun
    public static function size( __self__:stdgo._internal.debug.dwarf.Dwarf_PtrType.PtrType):stdgo.GoInt64 return @:_5 __self__.size();
    @:embedded
    @:embeddededffieldsffun
    public static function common( __self__:stdgo._internal.debug.dwarf.Dwarf_PtrType.PtrType):stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_CommonType.CommonType> return @:_5 __self__.common();
}
