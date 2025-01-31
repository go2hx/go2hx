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
@:keep @:allow(stdgo._internal.debug.dwarf.Dwarf.ArrayType_asInterface) class ArrayType_static_extension {
    @:keep
    @:tdfield
    static public function size( _t:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_ArrayType.ArrayType>):stdgo.GoInt64 {
        @:recv var _t:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_ArrayType.ArrayType> = _t;
        if ((@:checkr _t ?? throw "null pointer dereference").count == ((-1i64 : stdgo.GoInt64))) {
            return (0i64 : stdgo.GoInt64);
        };
        return ((@:checkr _t ?? throw "null pointer dereference").count * (@:checkr _t ?? throw "null pointer dereference").type.size() : stdgo.GoInt64);
    }
    @:keep
    @:tdfield
    static public function string( _t:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_ArrayType.ArrayType>):stdgo.GoString {
        @:recv var _t:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_ArrayType.ArrayType> = _t;
        return (((("[" : stdgo.GoString) + stdgo._internal.strconv.Strconv_formatInt.formatInt((@:checkr _t ?? throw "null pointer dereference").count, (10 : stdgo.GoInt))?.__copy__() : stdgo.GoString) + ("]" : stdgo.GoString)?.__copy__() : stdgo.GoString) + ((@:checkr _t ?? throw "null pointer dereference").type.string() : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
    @:embedded
    @:embeddededffieldsffun
    public static function common( __self__:stdgo._internal.debug.dwarf.Dwarf_ArrayType.ArrayType):stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_CommonType.CommonType> return @:_5 __self__.common();
}
