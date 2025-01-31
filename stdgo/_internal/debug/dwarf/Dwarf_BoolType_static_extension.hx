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
@:keep @:allow(stdgo._internal.debug.dwarf.Dwarf.BoolType_asInterface) class BoolType_static_extension {
    @:embedded
    @:embeddededffieldsffun
    public static function string( __self__:stdgo._internal.debug.dwarf.Dwarf_BoolType.BoolType):stdgo.GoString return @:_5 __self__.string();
    @:embedded
    @:embeddededffieldsffun
    public static function size( __self__:stdgo._internal.debug.dwarf.Dwarf_BoolType.BoolType):stdgo.GoInt64 return @:_5 __self__.size();
    @:embedded
    @:embeddededffieldsffun
    public static function common( __self__:stdgo._internal.debug.dwarf.Dwarf_BoolType.BoolType):stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_CommonType.CommonType> return @:_5 __self__.common();
    @:embedded
    @:embeddededffieldsffun
    public static function basic( __self__:stdgo._internal.debug.dwarf.Dwarf_BoolType.BoolType):stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_BasicType.BasicType> return @:_5 __self__.basic();
}
