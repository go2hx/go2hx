package stdgo._internal.debug.dwarf;
import stdgo._internal.errors.Errors;
import stdgo._internal.path.Path;
import stdgo._internal.strings.Strings;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
import stdgo._internal.sort.Sort;
@:keep @:allow(stdgo._internal.debug.dwarf.Dwarf.Attr_asInterface) class Attr_static_extension {
    @:keep
    @:tdfield
    static public function goString( _a:stdgo._internal.debug.dwarf.Dwarf_Attr.Attr):stdgo.GoString {
        @:recv var _a:stdgo._internal.debug.dwarf.Dwarf_Attr.Attr = _a;
        {
            var __tmp__ = (stdgo._internal.debug.dwarf.Dwarf___Attr_map.__Attr_map != null && stdgo._internal.debug.dwarf.Dwarf___Attr_map.__Attr_map.exists(_a) ? { _0 : stdgo._internal.debug.dwarf.Dwarf___Attr_map.__Attr_map[_a], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false }), _str:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                return (("dwarf.Attr" : stdgo.GoString) + _str?.__copy__() : stdgo.GoString)?.__copy__();
            };
        };
        return (("dwarf." : stdgo.GoString) + (_a.string() : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function string( _i:stdgo._internal.debug.dwarf.Dwarf_Attr.Attr):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.dwarf.Dwarf_Attr.Attr = _i;
        {
            var __tmp__ = (stdgo._internal.debug.dwarf.Dwarf___Attr_map.__Attr_map != null && stdgo._internal.debug.dwarf.Dwarf___Attr_map.__Attr_map.exists(_i) ? { _0 : stdgo._internal.debug.dwarf.Dwarf___Attr_map.__Attr_map[_i], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false }), _str:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                return _str?.__copy__();
            };
        };
        return ((("Attr(" : stdgo.GoString) + stdgo._internal.strconv.Strconv_formatInt.formatInt((_i : stdgo.GoInt64), (10 : stdgo.GoInt))?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
