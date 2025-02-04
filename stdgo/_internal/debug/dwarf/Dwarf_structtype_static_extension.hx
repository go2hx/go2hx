package stdgo._internal.debug.dwarf;
@:keep @:allow(stdgo._internal.debug.dwarf.Dwarf.StructType_asInterface) class StructType_static_extension {
    @:keep
    @:tdfield
    static public function defn( _t:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_structtype.StructType>):stdgo.GoString {
        @:recv var _t:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_structtype.StructType> = _t;
        var _s = ((@:checkr _t ?? throw "null pointer dereference").kind?.__copy__() : stdgo.GoString);
        if ((@:checkr _t ?? throw "null pointer dereference").structName != ((stdgo.Go.str() : stdgo.GoString))) {
            _s = (_s + (((" " : stdgo.GoString) + (@:checkr _t ?? throw "null pointer dereference").structName?.__copy__() : stdgo.GoString))?.__copy__() : stdgo.GoString);
        };
        if ((@:checkr _t ?? throw "null pointer dereference").incomplete) {
            _s = (_s + ((" /*incomplete*/" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            return _s?.__copy__();
        };
        _s = (_s + ((" {" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        for (_i => _f in (@:checkr _t ?? throw "null pointer dereference").field) {
            if ((_i > (0 : stdgo.GoInt) : Bool)) {
                _s = (_s + (("; " : stdgo.GoString))?.__copy__() : stdgo.GoString);
            };
            _s = (_s + ((((@:checkr _f ?? throw "null pointer dereference").name + (" " : stdgo.GoString)?.__copy__() : stdgo.GoString) + ((@:checkr _f ?? throw "null pointer dereference").type.string() : stdgo.GoString)?.__copy__() : stdgo.GoString))?.__copy__() : stdgo.GoString);
            _s = (_s + ((("@" : stdgo.GoString) + stdgo._internal.strconv.Strconv_formatint.formatInt((@:checkr _f ?? throw "null pointer dereference").byteOffset, (10 : stdgo.GoInt))?.__copy__() : stdgo.GoString))?.__copy__() : stdgo.GoString);
            if (((@:checkr _f ?? throw "null pointer dereference").bitSize > (0i64 : stdgo.GoInt64) : Bool)) {
                _s = (_s + (((" : " : stdgo.GoString) + stdgo._internal.strconv.Strconv_formatint.formatInt((@:checkr _f ?? throw "null pointer dereference").bitSize, (10 : stdgo.GoInt))?.__copy__() : stdgo.GoString))?.__copy__() : stdgo.GoString);
                _s = (_s + ((("@" : stdgo.GoString) + stdgo._internal.strconv.Strconv_formatint.formatInt(@:check2r _f._bitOffset(), (10 : stdgo.GoInt))?.__copy__() : stdgo.GoString))?.__copy__() : stdgo.GoString);
            };
        };
        _s = (_s + (("}" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        return _s?.__copy__();
    }
    @:keep
    @:tdfield
    static public function string( _t:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_structtype.StructType>):stdgo.GoString {
        @:recv var _t:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_structtype.StructType> = _t;
        if ((@:checkr _t ?? throw "null pointer dereference").structName != ((stdgo.Go.str() : stdgo.GoString))) {
            return (((@:checkr _t ?? throw "null pointer dereference").kind + (" " : stdgo.GoString)?.__copy__() : stdgo.GoString) + (@:checkr _t ?? throw "null pointer dereference").structName?.__copy__() : stdgo.GoString)?.__copy__();
        };
        return @:check2r _t.defn()?.__copy__();
    }
    @:embedded
    @:embeddededffieldsffun
    public static function size( __self__:stdgo._internal.debug.dwarf.Dwarf_structtype.StructType):stdgo.GoInt64 return @:_5 __self__.size();
    @:embedded
    @:embeddededffieldsffun
    public static function common( __self__:stdgo._internal.debug.dwarf.Dwarf_structtype.StructType):stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_commontype.CommonType> return @:_5 __self__.common();
}
