package stdgo._internal.debug.dwarf;
@:keep @:allow(stdgo._internal.debug.dwarf.Dwarf.FuncType_asInterface) class FuncType_static_extension {
    @:keep
    static public function string( _t:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_FuncType.FuncType>):stdgo.GoString {
        @:recv var _t:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_FuncType.FuncType> = _t;
        var _s = ("func(" : stdgo.GoString);
        for (_i => _t in _t.paramType) {
            if ((_i > (0 : stdgo.GoInt) : Bool)) {
                _s = (_s + ((", " : stdgo.GoString))?.__copy__() : stdgo.GoString);
            };
            _s = (_s + ((_t.string() : stdgo.GoString))?.__copy__() : stdgo.GoString);
        };
        _s = (_s + ((")" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        if (_t.returnType != null) {
            _s = (_s + (((" " : stdgo.GoString) + (_t.returnType.string() : stdgo.GoString)?.__copy__() : stdgo.GoString))?.__copy__() : stdgo.GoString);
        };
        return _s?.__copy__();
    }
    @:embedded
    public static function size( __self__:stdgo._internal.debug.dwarf.Dwarf_FuncType.FuncType):stdgo.GoInt64 return __self__.size();
    @:embedded
    public static function common( __self__:stdgo._internal.debug.dwarf.Dwarf_FuncType.FuncType):stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_CommonType.CommonType> return __self__.common();
}
