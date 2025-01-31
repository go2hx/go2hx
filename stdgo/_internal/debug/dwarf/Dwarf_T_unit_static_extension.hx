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
@:keep @:allow(stdgo._internal.debug.dwarf.Dwarf.T_unit_asInterface) class T_unit_static_extension {
    @:keep
    @:tdfield
    static public function _addrsize( _u:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_unit.T_unit>):stdgo.GoInt {
        @:recv var _u:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_unit.T_unit> = _u;
        return (@:checkr _u ?? throw "null pointer dereference")._asize;
    }
    @:keep
    @:tdfield
    static public function _dwarf64( _u:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_unit.T_unit>):{ var _0 : Bool; var _1 : Bool; } {
        @:recv var _u:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_unit.T_unit> = _u;
        return { _0 : (@:checkr _u ?? throw "null pointer dereference")._is64, _1 : true };
    }
    @:keep
    @:tdfield
    static public function _version( _u:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_unit.T_unit>):stdgo.GoInt {
        @:recv var _u:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_unit.T_unit> = _u;
        return (@:checkr _u ?? throw "null pointer dereference")._vers;
    }
}
