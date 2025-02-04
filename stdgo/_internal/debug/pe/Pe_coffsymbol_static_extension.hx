package stdgo._internal.debug.pe;
@:keep @:allow(stdgo._internal.debug.pe.Pe.COFFSymbol_asInterface) class COFFSymbol_static_extension {
    @:keep
    @:tdfield
    static public function fullName( _sym:stdgo.Ref<stdgo._internal.debug.pe.Pe_coffsymbol.COFFSymbol>, _st:stdgo._internal.debug.pe.Pe_stringtable.StringTable):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        @:recv var _sym:stdgo.Ref<stdgo._internal.debug.pe.Pe_coffsymbol.COFFSymbol> = _sym;
        {
            var __tmp__ = stdgo._internal.debug.pe.Pe__issymnameoffset._isSymNameOffset((@:checkr _sym ?? throw "null pointer dereference").name?.__copy__()), _ok:Bool = __tmp__._0, _offset:stdgo.GoUInt32 = __tmp__._1;
            if (_ok) {
                return _st.string(_offset);
            };
        };
        return { _0 : stdgo._internal.debug.pe.Pe__cstring._cstring(((@:checkr _sym ?? throw "null pointer dereference").name.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>))?.__copy__(), _1 : (null : stdgo.Error) };
    }
}
