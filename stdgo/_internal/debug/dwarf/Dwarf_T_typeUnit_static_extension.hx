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
@:keep @:allow(stdgo._internal.debug.dwarf.Dwarf.T_typeUnit_asInterface) class T_typeUnit_static_extension {
    @:embedded
    @:embeddededffieldsffun
    public static function _version( __self__:stdgo._internal.debug.dwarf.Dwarf_T_typeUnit.T_typeUnit):stdgo.GoInt return @:_5 __self__._version();
    @:embedded
    @:embeddededffieldsffun
    public static function _dwarf64( __self__:stdgo._internal.debug.dwarf.Dwarf_T_typeUnit.T_typeUnit):{ var _0 : Bool; var _1 : Bool; } return @:_5 __self__._dwarf64();
    @:embedded
    @:embeddededffieldsffun
    public static function _addrsize( __self__:stdgo._internal.debug.dwarf.Dwarf_T_typeUnit.T_typeUnit):stdgo.GoInt return @:_5 __self__._addrsize();
}
