package stdgo._internal.debug.dwarf;
@:keep @:allow(stdgo._internal.debug.dwarf.Dwarf.BasicType_asInterface) class BasicType_static_extension {
    @:keep
    @:tdfield
    static public function string( _t:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_basictype.BasicType>):stdgo.GoString {
        @:recv var _t:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_basictype.BasicType> = _t;
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/type.go#L49"
        if ((@:checkr _t ?? throw "null pointer dereference").commonType.name != ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/type.go#L50"
            return (@:checkr _t ?? throw "null pointer dereference").commonType.name?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/type.go#L52"
        return ("?" : stdgo.GoString);
    }
    @:keep
    @:tdfield
    static public function basic( _b:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_basictype.BasicType>):stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_basictype.BasicType> {
        @:recv var _b:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_basictype.BasicType> = _b;
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/type.go#L46"
        return _b;
    }
    @:embedded
    @:embeddededffieldsffun
    public static function size( __self__:stdgo._internal.debug.dwarf.Dwarf_basictype.BasicType):stdgo.GoInt64 return @:_5 __self__.size();
    @:embedded
    @:embeddededffieldsffun
    public static function common( __self__:stdgo._internal.debug.dwarf.Dwarf_basictype.BasicType):stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_commontype.CommonType> return @:_5 __self__.common();
}
