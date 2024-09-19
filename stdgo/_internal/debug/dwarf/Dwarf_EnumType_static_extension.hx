package stdgo._internal.debug.dwarf;
@:keep @:allow(stdgo._internal.debug.dwarf.Dwarf.EnumType_asInterface) class EnumType_static_extension {
    @:keep
    static public function string( _t:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_EnumType.EnumType>):stdgo.GoString {
        @:recv var _t:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_EnumType.EnumType> = _t;
        var _s = ("enum" : stdgo.GoString);
        if (_t.enumName != (stdgo.Go.str())) {
            _s = (_s + (((" " : stdgo.GoString) + _t.enumName?.__copy__() : stdgo.GoString))?.__copy__() : stdgo.GoString);
        };
        _s = (_s + ((" {" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        for (_i => _v in _t.val) {
            if ((_i > (0 : stdgo.GoInt) : Bool)) {
                _s = (_s + (("; " : stdgo.GoString))?.__copy__() : stdgo.GoString);
            };
            _s = (_s + (((_v.name + ("=" : stdgo.GoString)?.__copy__() : stdgo.GoString) + stdgo._internal.strconv.Strconv_formatInt.formatInt(_v.val, (10 : stdgo.GoInt))?.__copy__() : stdgo.GoString))?.__copy__() : stdgo.GoString);
        };
        _s = (_s + (("}" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        return _s?.__copy__();
    }
    @:embedded
    public static function size( __self__:stdgo._internal.debug.dwarf.Dwarf_EnumType.EnumType):stdgo.GoInt64 return __self__.size();
    @:embedded
    public static function common( __self__:stdgo._internal.debug.dwarf.Dwarf_EnumType.EnumType):stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_CommonType.CommonType> return __self__.common();
}
