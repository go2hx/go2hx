package stdgo._internal.debug.dwarf;
class T_typeUnit_asInterface {
    @:embedded
    public dynamic function _version():stdgo.GoInt return __self__.value._version();
    @:embedded
    public dynamic function _dwarf64():{ var _0 : Bool; var _1 : Bool; } return __self__.value._dwarf64();
    @:embedded
    public dynamic function _addrsize():stdgo.GoInt return __self__.value._addrsize();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.debug.dwarf.Dwarf_T_typeUnit.T_typeUnit>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}