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
@:keep class T_dataFormat_static_extension {
    @:interfacetypeffun
    static public function _addrsize(t:stdgo._internal.debug.dwarf.Dwarf_T_dataFormat.T_dataFormat):stdgo.GoInt return t._addrsize();
    @:interfacetypeffun
    static public function _dwarf64(t:stdgo._internal.debug.dwarf.Dwarf_T_dataFormat.T_dataFormat):{ var _0 : Bool; var _1 : Bool; } return t._dwarf64();
    @:interfacetypeffun
    static public function _version(t:stdgo._internal.debug.dwarf.Dwarf_T_dataFormat.T_dataFormat):stdgo.GoInt return t._version();
}
