package stdgo._internal.debug.dwarf;
@:keep @:allow(stdgo._internal.debug.dwarf.Dwarf.BasicType_asInterface) class BasicType_static_extension {
    @:keep
    @:tdfield
    static public function string( _t:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_BasicType.BasicType>):stdgo.GoString {
        @:recv var _t:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_BasicType.BasicType> = _t;
        if ((@:checkr _t ?? throw "null pointer dereference").commonType.name != (stdgo.Go.str())) {
            return (@:checkr _t ?? throw "null pointer dereference").commonType.name?.__copy__();
        };
        return ("?" : stdgo.GoString);
    }
    @:keep
    @:tdfield
    static public function basic( _b:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_BasicType.BasicType>):stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_BasicType.BasicType> {
        @:recv var _b:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_BasicType.BasicType> = _b;
        return _b;
    }
    @:embedded
    @:embeddededffieldsffun
    public static function size( __self__:stdgo._internal.debug.dwarf.Dwarf_BasicType.BasicType):stdgo.GoInt64 return @:_5 __self__.size();
    @:embedded
    @:embeddededffieldsffun
    public static function common( __self__:stdgo._internal.debug.dwarf.Dwarf_BasicType.BasicType):stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_CommonType.CommonType> return @:_5 __self__.common();
}
