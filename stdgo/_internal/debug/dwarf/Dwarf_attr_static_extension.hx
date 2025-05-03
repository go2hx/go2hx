package stdgo._internal.debug.dwarf;
@:keep @:allow(stdgo._internal.debug.dwarf.Dwarf.Attr_asInterface) class Attr_static_extension {
    @:keep
    @:tdfield
    static public function goString( _a:stdgo._internal.debug.dwarf.Dwarf_attr.Attr):stdgo.GoString {
        @:recv var _a:stdgo._internal.debug.dwarf.Dwarf_attr.Attr = _a;
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/const.go#L142"
        {
            var __tmp__ = (stdgo._internal.debug.dwarf.Dwarf___attr_map.__Attr_map != null && stdgo._internal.debug.dwarf.Dwarf___attr_map.__Attr_map.__exists__(_a) ? { _0 : stdgo._internal.debug.dwarf.Dwarf___attr_map.__Attr_map[_a], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false }), _str:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/const.go#L143"
                return (("dwarf.Attr" : stdgo.GoString) + _str?.__copy__() : stdgo.GoString)?.__copy__();
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/const.go#L145"
        return (("dwarf." : stdgo.GoString) + (_a.string() : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function string( _i:stdgo._internal.debug.dwarf.Dwarf_attr.Attr):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.dwarf.Dwarf_attr.Attr = _i;
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/attr_string.go#L261"
        {
            var __tmp__ = (stdgo._internal.debug.dwarf.Dwarf___attr_map.__Attr_map != null && stdgo._internal.debug.dwarf.Dwarf___attr_map.__Attr_map.__exists__(_i) ? { _0 : stdgo._internal.debug.dwarf.Dwarf___attr_map.__Attr_map[_i], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false }), _str:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/attr_string.go#L262"
                return _str?.__copy__();
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/attr_string.go#L264"
        return ((("Attr(" : stdgo.GoString) + stdgo._internal.strconv.Strconv_formatint.formatInt((_i : stdgo.GoInt64), (10 : stdgo.GoInt))?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
