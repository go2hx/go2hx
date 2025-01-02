package stdgo._internal.debug.dwarf;
@:keep @:allow(stdgo._internal.debug.dwarf.Dwarf.TypedefType_asInterface) class TypedefType_static_extension {
    @:keep
    @:tdfield
    static public function size( _t:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_TypedefType.TypedefType>):stdgo.GoInt64 {
        @:recv var _t:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_TypedefType.TypedefType> = _t;
        return (@:checkr _t ?? throw "null pointer dereference").type.size();
    }
    @:keep
    @:tdfield
    static public function string( _t:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_TypedefType.TypedefType>):stdgo.GoString {
        @:recv var _t:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_TypedefType.TypedefType> = _t;
        return (@:checkr _t ?? throw "null pointer dereference").commonType.name?.__copy__();
    }
    @:embedded
    @:embeddededffieldsffun
    public static function common( __self__:stdgo._internal.debug.dwarf.Dwarf_TypedefType.TypedefType):stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_CommonType.CommonType> return @:_5 __self__.common();
}
