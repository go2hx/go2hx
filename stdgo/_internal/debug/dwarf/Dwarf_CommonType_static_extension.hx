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
@:keep @:allow(stdgo._internal.debug.dwarf.Dwarf.CommonType_asInterface) class CommonType_static_extension {
    @:keep
    @:tdfield
    static public function size( _c:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_CommonType.CommonType>):stdgo.GoInt64 {
        @:recv var _c:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_CommonType.CommonType> = _c;
        return (@:checkr _c ?? throw "null pointer dereference").byteSize;
    }
    @:keep
    @:tdfield
    static public function common( _c:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_CommonType.CommonType>):stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_CommonType.CommonType> {
        @:recv var _c:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_CommonType.CommonType> = _c;
        return _c;
    }
}
