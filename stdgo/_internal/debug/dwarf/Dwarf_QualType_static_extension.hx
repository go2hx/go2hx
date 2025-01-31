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
@:keep @:allow(stdgo._internal.debug.dwarf.Dwarf.QualType_asInterface) class QualType_static_extension {
    @:keep
    @:tdfield
    static public function size( _t:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_QualType.QualType>):stdgo.GoInt64 {
        @:recv var _t:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_QualType.QualType> = _t;
        return (@:checkr _t ?? throw "null pointer dereference").type.size();
    }
    @:keep
    @:tdfield
    static public function string( _t:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_QualType.QualType>):stdgo.GoString {
        @:recv var _t:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_QualType.QualType> = _t;
        return (((@:checkr _t ?? throw "null pointer dereference").qual + (" " : stdgo.GoString)?.__copy__() : stdgo.GoString) + ((@:checkr _t ?? throw "null pointer dereference").type.string() : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
    @:embedded
    @:embeddededffieldsffun
    public static function common( __self__:stdgo._internal.debug.dwarf.Dwarf_QualType.QualType):stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_CommonType.CommonType> return @:_5 __self__.common();
}
