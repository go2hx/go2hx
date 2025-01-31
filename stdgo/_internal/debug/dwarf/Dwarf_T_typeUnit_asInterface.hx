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
class T_typeUnit_asInterface {
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _version():stdgo.GoInt return @:_0 __self__.value._version();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _dwarf64():{ var _0 : Bool; var _1 : Bool; } return @:_0 __self__.value._dwarf64();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _addrsize():stdgo.GoInt return @:_0 __self__.value._addrsize();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.debug.dwarf.Dwarf_T_typeUnitPointer.T_typeUnitPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
