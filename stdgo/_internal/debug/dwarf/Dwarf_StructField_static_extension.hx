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
@:keep @:allow(stdgo._internal.debug.dwarf.Dwarf.StructField_asInterface) class StructField_static_extension {
    @:keep
    @:tdfield
    static public function _bitOffset( _f:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_StructField.StructField>):stdgo.GoInt64 {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_StructField.StructField> = _f;
        if ((@:checkr _f ?? throw "null pointer dereference").bitOffset != ((0i64 : stdgo.GoInt64))) {
            return (@:checkr _f ?? throw "null pointer dereference").bitOffset;
        };
        return (@:checkr _f ?? throw "null pointer dereference").dataBitOffset;
    }
}
