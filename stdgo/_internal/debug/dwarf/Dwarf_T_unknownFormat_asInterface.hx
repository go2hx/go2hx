package stdgo._internal.debug.dwarf;
class T_unknownFormat_asInterface {
    @:keep
    public dynamic function _addrsize():stdgo.GoInt return __self__.value._addrsize();
    @:keep
    public dynamic function _dwarf64():{ var _0 : Bool; var _1 : Bool; } return __self__.value._dwarf64();
    @:keep
    public dynamic function _version():stdgo.GoInt return __self__.value._version();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.debug.dwarf.Dwarf_T_unknownFormat.T_unknownFormat>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}