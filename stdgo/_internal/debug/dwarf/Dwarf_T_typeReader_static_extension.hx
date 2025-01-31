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
@:keep class T_typeReader_static_extension {
    @:interfacetypeffun
    static public function addressSize(t:stdgo._internal.debug.dwarf.Dwarf_T_typeReader.T_typeReader):stdgo.GoInt return t.addressSize();
    @:interfacetypeffun
    static public function _offset(t:stdgo._internal.debug.dwarf.Dwarf_T_typeReader.T_typeReader):stdgo._internal.debug.dwarf.Dwarf_Offset.Offset return t._offset();
    @:interfacetypeffun
    static public function _clone(t:stdgo._internal.debug.dwarf.Dwarf_T_typeReader.T_typeReader):stdgo._internal.debug.dwarf.Dwarf_T_typeReader.T_typeReader return t._clone();
    @:interfacetypeffun
    static public function next(t:stdgo._internal.debug.dwarf.Dwarf_T_typeReader.T_typeReader):{ var _0 : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry>; var _1 : stdgo.Error; } return t.next();
    @:interfacetypeffun
    static public function seek(t:stdgo._internal.debug.dwarf.Dwarf_T_typeReader.T_typeReader, _0:stdgo._internal.debug.dwarf.Dwarf_Offset.Offset):Void t.seek(_0);
}
