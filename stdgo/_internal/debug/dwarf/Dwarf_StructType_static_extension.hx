package stdgo._internal.debug.dwarf;
@:keep @:allow(stdgo._internal.debug.dwarf.Dwarf.StructType_asInterface) class StructType_static_extension {
    @:keep
    static public function defn( _t:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_StructType.StructType>):stdgo.GoString {
        @:recv var _t:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_StructType.StructType> = _t;
        var _s = (_t.kind?.__copy__() : stdgo.GoString);
        if (_t.structName != (stdgo.Go.str())) {
            _s = (_s + (((" " : stdgo.GoString) + _t.structName?.__copy__() : stdgo.GoString))?.__copy__() : stdgo.GoString);
        };
        if (_t.incomplete) {
            _s = (_s + ((" /*incomplete*/" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            return _s?.__copy__();
        };
        _s = (_s + ((" {" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        for (_i => _f in _t.field) {
            if ((_i > (0 : stdgo.GoInt) : Bool)) {
                _s = (_s + (("; " : stdgo.GoString))?.__copy__() : stdgo.GoString);
            };
            _s = (_s + (((_f.name + (" " : stdgo.GoString)?.__copy__() : stdgo.GoString) + (_f.type.string() : stdgo.GoString)?.__copy__() : stdgo.GoString))?.__copy__() : stdgo.GoString);
            _s = (_s + ((("@" : stdgo.GoString) + stdgo._internal.strconv.Strconv_formatInt.formatInt(_f.byteOffset, (10 : stdgo.GoInt))?.__copy__() : stdgo.GoString))?.__copy__() : stdgo.GoString);
            if ((_f.bitSize > (0i64 : stdgo.GoInt64) : Bool)) {
                _s = (_s + (((" : " : stdgo.GoString) + stdgo._internal.strconv.Strconv_formatInt.formatInt(_f.bitSize, (10 : stdgo.GoInt))?.__copy__() : stdgo.GoString))?.__copy__() : stdgo.GoString);
                _s = (_s + ((("@" : stdgo.GoString) + stdgo._internal.strconv.Strconv_formatInt.formatInt(_f._bitOffset(), (10 : stdgo.GoInt))?.__copy__() : stdgo.GoString))?.__copy__() : stdgo.GoString);
            };
        };
        _s = (_s + (("}" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        return _s?.__copy__();
    }
    @:keep
    static public function string( _t:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_StructType.StructType>):stdgo.GoString {
        @:recv var _t:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_StructType.StructType> = _t;
        if (_t.structName != (stdgo.Go.str())) {
            return ((_t.kind + (" " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _t.structName?.__copy__() : stdgo.GoString)?.__copy__();
        };
        return _t.defn()?.__copy__();
    }
    @:embedded
    public static function size( __self__:stdgo._internal.debug.dwarf.Dwarf_StructType.StructType):stdgo.GoInt64 return __self__.size();
    @:embedded
    public static function common( __self__:stdgo._internal.debug.dwarf.Dwarf_StructType.StructType):stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_CommonType.CommonType> return __self__.common();
}
