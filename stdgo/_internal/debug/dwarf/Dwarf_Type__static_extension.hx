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
@:keep class Type__static_extension {
    @:interfacetypeffun
    static public function size(t:stdgo._internal.debug.dwarf.Dwarf_Type_.Type_):stdgo.GoInt64 return t.size();
    @:interfacetypeffun
    static public function string(t:stdgo._internal.debug.dwarf.Dwarf_Type_.Type_):stdgo.GoString return t.string();
    @:interfacetypeffun
    static public function common(t:stdgo._internal.debug.dwarf.Dwarf_Type_.Type_):stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_CommonType.CommonType> return t.common();
}
