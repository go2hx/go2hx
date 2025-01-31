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
@:keep @:allow(stdgo._internal.debug.dwarf.Dwarf.T_unknownFormat_asInterface) class T_unknownFormat_static_extension {
    @:keep
    @:tdfield
    static public function _addrsize( _u:stdgo._internal.debug.dwarf.Dwarf_T_unknownFormat.T_unknownFormat):stdgo.GoInt {
        @:recv var _u:stdgo._internal.debug.dwarf.Dwarf_T_unknownFormat.T_unknownFormat = _u?.__copy__();
        return (0 : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _dwarf64( _u:stdgo._internal.debug.dwarf.Dwarf_T_unknownFormat.T_unknownFormat):{ var _0 : Bool; var _1 : Bool; } {
        @:recv var _u:stdgo._internal.debug.dwarf.Dwarf_T_unknownFormat.T_unknownFormat = _u?.__copy__();
        return { _0 : false, _1 : false };
    }
    @:keep
    @:tdfield
    static public function _version( _u:stdgo._internal.debug.dwarf.Dwarf_T_unknownFormat.T_unknownFormat):stdgo.GoInt {
        @:recv var _u:stdgo._internal.debug.dwarf.Dwarf_T_unknownFormat.T_unknownFormat = _u?.__copy__();
        return (0 : stdgo.GoInt);
    }
}
