package stdgo._internal.debug.dwarf;
@:keep @:allow(stdgo._internal.debug.dwarf.Dwarf.FuncType_asInterface) class FuncType_static_extension {
    @:keep
    @:tdfield
    static public function string( _t:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_functype.FuncType>):stdgo.GoString {
        @:recv var _t:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_functype.FuncType> = _t;
        var _s = (("func(" : stdgo.GoString) : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/type.go#L318"
        for (_i => _t in (@:checkr _t ?? throw "null pointer dereference").paramType) {
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/type.go#L319"
            if ((_i > (0 : stdgo.GoInt) : Bool)) {
                _s = (_s + ((", " : stdgo.GoString))?.__copy__() : stdgo.GoString);
            };
            _s = (_s + ((_t.string() : stdgo.GoString))?.__copy__() : stdgo.GoString);
        };
        _s = (_s + ((")" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/type.go#L325"
        if ((@:checkr _t ?? throw "null pointer dereference").returnType != null) {
            _s = (_s + (((" " : stdgo.GoString) + ((@:checkr _t ?? throw "null pointer dereference").returnType.string() : stdgo.GoString)?.__copy__() : stdgo.GoString))?.__copy__() : stdgo.GoString);
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/type.go#L328"
        return _s?.__copy__();
    }
    @:embedded
    @:embeddededffieldsffun
    public static function size( __self__:stdgo._internal.debug.dwarf.Dwarf_functype.FuncType):stdgo.GoInt64 return @:_5 __self__.size();
    @:embedded
    @:embeddededffieldsffun
    public static function common( __self__:stdgo._internal.debug.dwarf.Dwarf_functype.FuncType):stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_commontype.CommonType> return @:_5 __self__.common();
}
